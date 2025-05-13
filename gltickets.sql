-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2025 at 08:32 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gltickets`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL,
  `note` varchar(191) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `priority_id` int(11) DEFAULT NULL,
  `agent_id` varchar(191) DEFAULT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `log_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  `schedule_date` datetime DEFAULT NULL,
  `log_file` varchar(191) DEFAULT NULL,
  `log_file_type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `type`, `note`, `title`, `status_id`, `branch_id`, `priority_id`, `agent_id`, `ticket_id`, `log_id`, `created_by`, `description`, `created_at`, `updated_at`, `task_id`, `schedule_date`, `log_file`, `log_file_type`) VALUES
(1, 'customer', 'add', 'Super Admin add customer Akhiil', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2024-12-13 06:37:22', '2024-12-13 06:37:22', NULL, NULL, NULL, NULL),
(2, 'product', 'add', 'Spare Part added to ticket', NULL, NULL, NULL, NULL, 1, NULL, 1, 'Super Admin Added  to the ticket', '2024-12-13 06:41:53', '2024-12-13 06:41:53', NULL, NULL, NULL, NULL),
(3, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"1\"]', 1, NULL, 1, 'Super Admin created a ticket with title Package Missing and assigned to Super Admin', '2024-12-13 06:41:53', '2024-12-13 06:41:53', NULL, NULL, NULL, NULL),
(4, 'log', 'created', 'Log Added To Ticket', NULL, NULL, NULL, NULL, 1, 1, 1, 'Super Admin added a log: Parcel missing from Trivandrum', '2024-12-13 06:43:00', '2024-12-13 06:43:00', NULL, NULL, NULL, NULL),
(5, 'task', 'created', 'Task Added For Ticket', 1, NULL, NULL, '[1]', 1, NULL, 1, 'Super Admin created a new task. #Track the Material for Super Admin', '2024-12-13 06:45:33', '2024-12-13 06:45:33', 1, '2024-12-13 13:13:00', NULL, NULL),
(6, 'ticket', 'deleted', 'Super Admin deleted Package Missing', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, '2024-12-13 07:02:59', '2024-12-13 07:02:59', NULL, NULL, NULL, NULL),
(7, 'product', 'add', 'Spare Part added to ticket', NULL, NULL, NULL, NULL, 2, NULL, 1, 'Super Admin Added  to the ticket', '2024-12-20 13:38:02', '2024-12-20 13:38:02', NULL, NULL, NULL, NULL),
(8, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"1\"]', 2, NULL, 1, 'Super Admin created a ticket with title Item missing and assigned to Super Admin', '2024-12-20 13:38:02', '2024-12-20 13:38:02', NULL, NULL, NULL, NULL),
(9, 'log', 'created', 'Log Added To Ticket', NULL, NULL, NULL, NULL, 2, 2, 1, 'Super Admin added a log: checked', '2024-12-20 13:38:26', '2024-12-20 13:38:26', NULL, NULL, NULL, NULL),
(10, 'ticket', 'deleted', 'Super Admin deleted Item missing', NULL, NULL, NULL, NULL, 2, NULL, 1, NULL, '2024-12-21 05:35:16', '2024-12-21 05:35:16', NULL, NULL, NULL, NULL),
(11, 'ticket', 'restore', 'Super Admin restored Item missing', 2, NULL, NULL, NULL, 2, NULL, 1, NULL, '2024-12-21 05:37:28', '2024-12-21 05:37:28', NULL, NULL, NULL, NULL),
(12, 'log', 'created', 'Log Added To Ticket', NULL, NULL, NULL, NULL, 2, 3, 1, 'Super Admin added a log: sjjshs', '2024-12-23 03:26:57', '2024-12-23 03:26:57', NULL, NULL, NULL, NULL),
(13, 'customer', 'add', 'Anusha add customer Ramshad', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '2024-12-28 06:50:07', '2024-12-28 06:50:07', NULL, NULL, NULL, NULL),
(14, 'customer', 'add', 'Anusha add customer Antony\'s fashions', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '2024-12-28 06:58:46', '2024-12-28 06:58:46', NULL, NULL, NULL, NULL),
(15, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"8\"]', 3, NULL, 8, 'Anusha created a ticket with title Consignment Short and assigned to Anusha', '2024-12-28 09:56:13', '2024-12-28 09:56:13', NULL, NULL, NULL, NULL),
(16, 'log', 'created', 'Log Added To Ticket', NULL, NULL, NULL, NULL, 3, 4, 8, 'Anusha added a log: delhi office informed-correctly despatched to Clttr\nCalicut tr - received as 1 item short out of 4', '2024-12-28 09:59:17', '2024-12-28 09:59:17', NULL, NULL, NULL, NULL),
(17, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"8\"]', 4, NULL, 8, 'Anusha created a ticket with title Consignment Short and assigned to Anusha', '2024-12-28 10:11:58', '2024-12-28 10:11:58', NULL, NULL, NULL, NULL),
(18, 'log', 'created', 'Log Added To Ticket', NULL, NULL, NULL, NULL, 4, 5, 8, 'Anusha added a log: AHD- Correctly Despatched', '2024-12-28 10:16:09', '2024-12-28 10:16:09', NULL, NULL, NULL, NULL),
(19, 'customer', 'add', 'Anusha add customer FINE PAPER MART', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '2025-01-06 04:32:30', '2025-01-06 04:32:30', NULL, NULL, NULL, NULL),
(20, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"8\"]', 5, NULL, 8, 'Anusha created a ticket with title Short Delivery and assigned to Anusha', '2025-01-06 04:35:03', '2025-01-06 04:35:03', NULL, NULL, NULL, NULL),
(21, 'customer', 'add', 'Anusha add customer jyothi textiies', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '2025-01-06 04:54:41', '2025-01-06 04:54:41', NULL, NULL, NULL, NULL),
(22, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"8\"]', 6, NULL, 8, 'Anusha created a ticket with title Short item and assigned to Anusha', '2025-01-06 04:56:16', '2025-01-06 04:56:16', NULL, NULL, NULL, NULL),
(23, 'customer', 'add', 'Anusha add customer Liberty marketers', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '2025-01-06 05:02:13', '2025-01-06 05:02:13', NULL, NULL, NULL, NULL),
(24, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"8\"]', 7, NULL, 8, 'Anusha created a ticket with title short items and assigned to Anusha', '2025-01-06 05:05:49', '2025-01-06 05:05:49', NULL, NULL, NULL, NULL),
(25, 'customer', 'add', 'Anusha add customer ENLIGHT BUSINESS', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '2025-01-06 05:09:03', '2025-01-06 05:09:03', NULL, NULL, NULL, NULL),
(26, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"8\"]', 8, NULL, 8, 'Anusha created a ticket with title Short items and assigned to Anusha', '2025-01-06 05:09:55', '2025-01-06 05:09:55', NULL, NULL, NULL, NULL),
(27, 'customer', 'add', 'Anusha add customer Metro wedding plaza', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '2025-01-06 05:27:12', '2025-01-06 05:27:12', NULL, NULL, NULL, NULL),
(28, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"8\"]', 9, NULL, 8, 'Anusha created a ticket with title Short item and assigned to Anusha', '2025-01-06 05:28:14', '2025-01-06 05:28:14', NULL, NULL, NULL, NULL),
(29, 'customer', 'add', 'Anusha add customer Neerose silks', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '2025-01-06 05:52:46', '2025-01-06 05:52:46', NULL, NULL, NULL, NULL),
(30, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"8\"]', 10, NULL, 8, 'Anusha created a ticket with title SHORT ITEM and assigned to Anusha', '2025-01-06 06:15:47', '2025-01-06 06:15:47', NULL, NULL, NULL, NULL),
(31, 'customer', 'add', 'Anusha add customer Pulimoottil silks', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '2025-01-06 06:18:24', '2025-01-06 06:18:24', NULL, NULL, NULL, NULL),
(32, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"8\"]', 11, NULL, 8, 'Anusha created a ticket with title SHORT ITEM and assigned to Anusha', '2025-01-06 06:19:37', '2025-01-06 06:19:37', NULL, NULL, NULL, NULL),
(33, 'log', 'created', 'Log Added To Ticket', NULL, NULL, NULL, NULL, 10, 6, 8, 'Anusha added a log: excess received at ekmdo and despatched to KTKM through KSYTR.', '2025-01-06 06:33:01', '2025-01-06 06:33:01', NULL, NULL, NULL, NULL),
(34, 'ticket', 'change', 'Anusha change SHORT ITEM status to Closed', 4, NULL, NULL, NULL, 10, NULL, 8, NULL, '2025-01-06 06:33:09', '2025-01-06 06:33:09', NULL, NULL, NULL, NULL),
(35, 'log', 'created', 'Log Added To Ticket', NULL, NULL, NULL, NULL, 11, 7, 8, 'Anusha added a log: Excess received at EKMDO and despatched to KSYTR and they sent the item to TPZ without any record, As per VA BMY office despatched item to KTMTR.', '2025-01-06 06:52:40', '2025-01-06 06:52:40', NULL, NULL, NULL, NULL),
(36, 'ticket', 'change', 'Anusha change SHORT ITEM status to Closed', 4, NULL, NULL, NULL, 11, NULL, 8, NULL, '2025-01-06 06:52:48', '2025-01-06 06:52:48', NULL, NULL, NULL, NULL),
(37, 'customer', 'add', 'Anusha add customer N K SILKS', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '2025-01-06 08:14:56', '2025-01-06 08:14:56', NULL, NULL, NULL, NULL),
(38, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"8\"]', 12, NULL, 8, 'Anusha created a ticket with title short item and assigned to Anusha', '2025-01-06 08:17:16', '2025-01-06 08:17:16', NULL, NULL, NULL, NULL),
(39, 'customer', 'add', 'Anusha add customer NOVELTY TEXTILES', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '2025-01-06 08:22:32', '2025-01-06 08:22:32', NULL, NULL, NULL, NULL),
(40, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"8\"]', 13, NULL, 8, 'Anusha created a ticket with title short item and assigned to Anusha', '2025-01-06 08:23:24', '2025-01-06 08:23:24', NULL, NULL, NULL, NULL),
(41, 'customer', 'add', 'Anusha add customer F.GEORGE LEATHER WORK', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '2025-01-06 08:56:13', '2025-01-06 08:56:13', NULL, NULL, NULL, NULL),
(42, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"8\"]', 14, NULL, 8, 'Anusha created a ticket with title SHORT ITEM and assigned to Anusha', '2025-01-06 08:57:06', '2025-01-06 08:57:06', NULL, NULL, NULL, NULL),
(43, 'customer', 'add', 'Anusha add customer Kannamma Fashion', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '2025-01-06 09:06:13', '2025-01-06 09:06:13', NULL, NULL, NULL, NULL),
(44, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"8\"]', 15, NULL, 8, 'Anusha created a ticket with title short item and assigned to Anusha', '2025-01-06 09:07:31', '2025-01-06 09:07:31', NULL, NULL, NULL, NULL),
(45, 'customer', 'add', 'Anusha add customer SOBHA LTD', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '2025-01-06 09:09:31', '2025-01-06 09:09:31', NULL, NULL, NULL, NULL),
(46, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"8\"]', 16, NULL, 8, 'Anusha created a ticket with title short item and assigned to Anusha', '2025-01-06 09:10:40', '2025-01-06 09:10:40', NULL, NULL, NULL, NULL),
(47, 'customer', 'add', 'Anusha add customer NELLISSERY TRADERS', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '2025-01-06 09:13:31', '2025-01-06 09:13:31', NULL, NULL, NULL, NULL),
(48, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"8\"]', 17, NULL, 8, 'Anusha created a ticket with title short item and assigned to Anusha', '2025-01-06 09:14:24', '2025-01-06 09:14:24', NULL, NULL, NULL, NULL),
(49, 'customer', 'add', 'Anusha add customer POTHYS RETAILS PVT LTD', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '2025-01-06 09:20:34', '2025-01-06 09:20:34', NULL, NULL, NULL, NULL),
(50, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"8\"]', 18, NULL, 8, 'Anusha created a ticket with title short item and assigned to Anusha', '2025-01-06 09:21:44', '2025-01-06 09:21:44', NULL, NULL, NULL, NULL),
(51, 'customer', 'add', 'Anusha add customer Prabha Textiles', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '2025-01-06 09:26:18', '2025-01-06 09:26:18', NULL, NULL, NULL, NULL),
(52, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"7\"]', 19, NULL, 8, 'Anusha created a ticket with title Missing consignment and assigned to Manoj.M', '2025-01-06 09:27:37', '2025-01-06 09:27:37', NULL, NULL, NULL, NULL),
(53, 'customer', 'add', 'Anusha add customer CRYSTAL AGENCIES', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '2025-01-06 09:32:39', '2025-01-06 09:32:39', NULL, NULL, NULL, NULL),
(54, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"7\"]', 20, NULL, 8, 'Anusha created a ticket with title MISSING CONSIGNMENT and assigned to Manoj.M', '2025-01-06 09:33:49', '2025-01-06 09:33:49', NULL, NULL, NULL, NULL),
(55, 'customer', 'add', 'Anusha add customer NOVELTY TEXTILES', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '2025-01-07 04:07:59', '2025-01-07 04:07:59', NULL, NULL, NULL, NULL),
(56, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"8\"]', 21, NULL, 8, 'Anusha created a ticket with title Missing consignment and assigned to Anusha', '2025-01-07 04:10:47', '2025-01-07 04:10:47', NULL, NULL, NULL, NULL),
(57, 'customer', 'add', 'Anusha add customer POTHYS', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '2025-01-07 04:15:22', '2025-01-07 04:15:22', NULL, NULL, NULL, NULL),
(58, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"8\"]', 22, NULL, 8, 'Anusha created a ticket with title Missing consignment and assigned to Anusha', '2025-01-07 04:16:07', '2025-01-07 04:16:07', NULL, NULL, NULL, NULL),
(59, 'customer', 'add', 'Anusha add customer SAFCO DOOR', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '2025-01-07 04:20:10', '2025-01-07 04:20:10', NULL, NULL, NULL, NULL),
(60, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"7\"]', 23, NULL, 8, 'Anusha created a ticket with title Missing consignment and assigned to Manoj.M', '2025-01-07 04:21:02', '2025-01-07 04:21:02', NULL, NULL, NULL, NULL),
(61, 'customer', 'add', 'Anusha add customer Kalyan silks', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '2025-01-07 04:32:35', '2025-01-07 04:32:35', NULL, NULL, NULL, NULL),
(62, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"8\"]', 24, NULL, 8, 'Anusha created a ticket with title Missing consignment and assigned to Anusha', '2025-01-07 04:33:23', '2025-01-07 04:33:23', NULL, NULL, NULL, NULL),
(63, 'customer', 'add', 'Anusha add customer JAYALAKSHMI', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '2025-01-07 04:35:26', '2025-01-07 04:35:26', NULL, NULL, NULL, NULL),
(64, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"9\"]', 25, NULL, 8, 'Anusha created a ticket with title Missing consignment and assigned to Shaheera', '2025-01-07 04:37:08', '2025-01-07 04:37:08', NULL, NULL, NULL, NULL),
(65, 'customer', 'add', 'Anusha add customer Sagar marine industrial', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '2025-01-07 04:41:42', '2025-01-07 04:41:42', NULL, NULL, NULL, NULL),
(66, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"9\"]', 26, NULL, 8, 'Anusha created a ticket with title Missing consignment and assigned to Shaheera', '2025-01-07 04:43:33', '2025-01-07 04:43:33', NULL, NULL, NULL, NULL),
(67, 'customer', 'add', 'Anusha add customer CHEMIND', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '2025-01-07 04:45:44', '2025-01-07 04:45:44', NULL, NULL, NULL, NULL),
(68, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"9\"]', 27, NULL, 8, 'Anusha created a ticket with title Missing consignment and assigned to Shaheera', '2025-01-07 04:46:32', '2025-01-07 04:46:32', NULL, NULL, NULL, NULL),
(69, 'customer', 'add', 'Anusha add customer GRAND THEJAS', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '2025-01-07 04:48:53', '2025-01-07 04:48:53', NULL, NULL, NULL, NULL),
(70, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"9\"]', 28, NULL, 8, 'Anusha created a ticket with title Missing consignment and assigned to Shaheera', '2025-01-07 04:49:35', '2025-01-07 04:49:35', NULL, NULL, NULL, NULL),
(71, 'customer', 'add', 'Anusha add customer SIMLA SEASON', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '2025-01-07 05:00:16', '2025-01-07 05:00:16', NULL, NULL, NULL, NULL),
(72, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"9\"]', 29, NULL, 8, 'Anusha created a ticket with title Missing consignment and assigned to Shaheera', '2025-01-07 05:01:00', '2025-01-07 05:01:00', NULL, NULL, NULL, NULL),
(73, 'customer', 'add', 'Anusha add customer JAYALAKSHMI', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '2025-01-07 05:03:01', '2025-01-07 05:03:01', NULL, NULL, NULL, NULL),
(74, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"9\"]', 30, NULL, 8, 'Anusha created a ticket with title MISSING CONSIGNMENT and assigned to Shaheera', '2025-01-07 05:03:40', '2025-01-07 05:03:40', NULL, NULL, NULL, NULL),
(75, 'customer', 'add', 'Anusha add customer MERICON ENTERPRISES', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '2025-01-07 05:05:40', '2025-01-07 05:05:40', NULL, NULL, NULL, NULL),
(76, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"9\"]', 31, NULL, 8, 'Anusha created a ticket with title Missing consignment and assigned to Shaheera', '2025-01-07 05:06:18', '2025-01-07 05:06:18', NULL, NULL, NULL, NULL),
(77, 'customer', 'add', 'Anusha add customer KALYAN SILK', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '2025-01-07 05:10:49', '2025-01-07 05:10:49', NULL, NULL, NULL, NULL),
(78, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"9\"]', 32, NULL, 8, 'Anusha created a ticket with title SHORT ITEM and assigned to Shaheera', '2025-01-07 05:11:53', '2025-01-07 05:11:53', NULL, NULL, NULL, NULL),
(79, 'ticket', 'deleted', 'Ticket Deleted', NULL, NULL, NULL, NULL, 2, NULL, 1, 'Super Admin deleted this ticket #', '2025-01-07 05:13:31', '2025-01-07 05:13:31', NULL, NULL, NULL, NULL),
(80, 'customer', 'add', 'Anusha add customer DESIGN HUB', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '2025-01-07 05:15:55', '2025-01-07 05:15:55', NULL, NULL, NULL, NULL),
(81, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"8\"]', 33, NULL, 8, 'Anusha created a ticket with title Short item and assigned to Anusha', '2025-01-07 05:16:23', '2025-01-07 05:16:23', NULL, NULL, NULL, NULL),
(82, 'customer', 'add', 'Anusha add customer POTHYS', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '2025-01-07 05:17:54', '2025-01-07 05:17:54', NULL, NULL, NULL, NULL),
(83, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"8\"]', 34, NULL, 8, 'Anusha created a ticket with title short items and assigned to Anusha', '2025-01-07 05:18:59', '2025-01-07 05:18:59', NULL, NULL, NULL, NULL),
(84, 'log', 'created', 'Log Added To Ticket', NULL, NULL, NULL, NULL, 9, 8, 8, 'Anusha added a log: KSYTR excess loaded to AGY on 26/12/24 through KL 11M 1932, But they did not mentioned the same in system.', '2025-01-07 06:51:55', '2025-01-07 06:51:55', NULL, NULL, NULL, NULL),
(85, 'ticket', 'change', 'Anusha change Short item status to Closed', 4, NULL, NULL, NULL, 9, NULL, 8, NULL, '2025-01-07 06:51:59', '2025-01-07 06:51:59', NULL, NULL, NULL, NULL),
(86, 'customer', 'add', 'Anusha add customer MEGHA MARKETTING', NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '2025-01-07 08:40:45', '2025-01-07 08:40:45', NULL, NULL, NULL, NULL),
(87, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"8\"]', 35, NULL, 8, 'Anusha created a ticket with title short item and assigned to Anusha', '2025-01-07 08:44:32', '2025-01-07 08:44:32', NULL, NULL, NULL, NULL),
(88, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"8\"]', 36, NULL, 8, 'Anusha created a ticket with title short item and assigned to Anusha', '2025-01-07 08:44:33', '2025-01-07 08:44:33', NULL, NULL, NULL, NULL),
(89, 'ticket', 'change', 'Anusha change short item status to Closed', 4, NULL, NULL, NULL, 36, NULL, 8, NULL, '2025-01-07 09:45:28', '2025-01-07 09:45:28', NULL, NULL, NULL, NULL),
(90, 'ticket', 'deleted', 'Ticket Deleted', NULL, NULL, NULL, NULL, 35, NULL, 8, 'Anusha deleted this ticket #', '2025-01-07 09:48:37', '2025-01-07 09:48:37', NULL, NULL, NULL, NULL),
(91, 'log', 'created', 'Log Added To Ticket', NULL, NULL, NULL, NULL, 12, 9, 8, 'Anusha added a log: 1 bdl exess received from TVMTR on 31.12.24', '2025-01-07 09:52:07', '2025-01-07 09:52:07', NULL, NULL, NULL, NULL),
(92, 'ticket', 'change', 'Anusha change short item status to Closed', 4, NULL, NULL, NULL, 12, NULL, 8, NULL, '2025-01-07 09:52:14', '2025-01-07 09:52:14', NULL, NULL, NULL, NULL),
(93, 'log', 'created', 'Log Added To Ticket', NULL, NULL, NULL, NULL, 14, 10, 8, 'Anusha added a log: short item received', '2025-01-07 09:55:25', '2025-01-07 09:55:25', NULL, NULL, NULL, NULL),
(94, 'ticket', 'change', 'Anusha change SHORT ITEM status to Closed', 4, NULL, NULL, NULL, 14, NULL, 8, NULL, '2025-01-07 09:55:29', '2025-01-07 09:55:29', NULL, NULL, NULL, NULL),
(95, 'log', 'created', 'Log Added To Ticket', NULL, NULL, NULL, NULL, 24, 11, 8, 'Anusha added a log: short item (1 bdl) delivered to the party on02/01/25', '2025-01-07 09:58:57', '2025-01-07 09:58:57', NULL, NULL, NULL, NULL),
(96, 'ticket', 'change', 'Anusha change Missing consignment status to Closed', 4, NULL, NULL, NULL, 24, NULL, 8, NULL, '2025-01-07 09:59:06', '2025-01-07 09:59:06', NULL, NULL, NULL, NULL),
(97, 'log', 'created', 'Log Added To Ticket', NULL, NULL, NULL, NULL, 25, 12, 8, 'Anusha added a log: item received as excess and delivered to the party', '2025-01-07 10:14:06', '2025-01-07 10:14:06', NULL, NULL, NULL, NULL),
(98, 'ticket', 'change', 'Ticket Agent Changed', NULL, NULL, NULL, '[\"8\"]', 25, NULL, 8, 'Anusha changed ticket agent from Shaheera to Anusha', '2025-01-07 10:18:57', '2025-01-07 10:18:57', NULL, NULL, NULL, NULL),
(99, 'ticket', 'change', 'Anusha change Missing consignment status to Closed', 4, NULL, NULL, NULL, 25, NULL, 8, NULL, '2025-01-07 10:19:04', '2025-01-07 10:19:04', NULL, NULL, NULL, NULL),
(100, 'log', 'created', 'Log Added To Ticket', NULL, NULL, NULL, NULL, 26, 13, 8, 'Anusha added a log: fully delivered to the party', '2025-01-07 10:22:34', '2025-01-07 10:22:34', NULL, NULL, NULL, NULL),
(101, 'ticket', 'change', 'Ticket Agent Changed', NULL, NULL, NULL, '[\"7\"]', 26, NULL, 8, 'Anusha changed ticket agent from Shaheera to Manoj.M', '2025-01-07 10:22:58', '2025-01-07 10:22:58', NULL, NULL, NULL, NULL),
(102, 'ticket', 'change', 'Ticket Agent Changed', NULL, NULL, NULL, '[\"8\"]', 26, NULL, 8, 'Anusha changed ticket agent from Manoj.M to Anusha', '2025-01-07 10:23:15', '2025-01-07 10:23:15', NULL, NULL, NULL, NULL),
(103, 'ticket', 'change', 'Anusha change Missing consignment status to Closed', 4, NULL, NULL, NULL, 26, NULL, 8, NULL, '2025-01-07 10:23:20', '2025-01-07 10:23:20', NULL, NULL, NULL, NULL),
(104, 'log', 'created', 'Log Added To Ticket', NULL, NULL, NULL, NULL, 29, 14, 8, 'Anusha added a log: item delivere to the party', '2025-01-07 10:26:29', '2025-01-07 10:26:29', NULL, NULL, NULL, NULL),
(105, 'ticket', 'change', 'Ticket Agent Changed', NULL, NULL, NULL, '[\"8\"]', 29, NULL, 8, 'Anusha changed ticket agent from Shaheera to Anusha', '2025-01-07 10:26:48', '2025-01-07 10:26:48', NULL, NULL, NULL, NULL),
(106, 'ticket', 'change', 'Anusha change Missing consignment status to Closed', 4, NULL, NULL, NULL, 29, NULL, 8, NULL, '2025-01-07 10:26:51', '2025-01-07 10:26:51', NULL, NULL, NULL, NULL),
(107, 'log', 'created', 'Log Added To Ticket', NULL, NULL, NULL, NULL, 18, 15, 8, 'Anusha added a log: fully delivered', '2025-01-07 10:29:22', '2025-01-07 10:29:22', NULL, NULL, NULL, NULL),
(108, 'ticket', 'change', 'Anusha change short item status to Closed', 4, NULL, NULL, NULL, 18, NULL, 8, NULL, '2025-01-07 10:29:29', '2025-01-07 10:29:29', NULL, NULL, NULL, NULL),
(109, 'log', 'created', 'Log Added To Ticket', NULL, NULL, NULL, NULL, 20, 16, 8, 'Anusha added a log: short item received and delivered to the party', '2025-01-07 10:31:31', '2025-01-07 10:31:31', NULL, NULL, NULL, NULL),
(110, 'ticket', 'change', 'Ticket Agent Changed', NULL, NULL, NULL, '[\"8\"]', 20, NULL, 8, 'Anusha changed ticket agent from Manoj.M to Anusha', '2025-01-07 10:31:50', '2025-01-07 10:31:50', NULL, NULL, NULL, NULL),
(111, 'ticket', 'change', 'Anusha change MISSING CONSIGNMENT status to Closed', 4, NULL, NULL, NULL, 20, NULL, 8, NULL, '2025-01-07 10:31:57', '2025-01-07 10:31:57', NULL, NULL, NULL, NULL),
(112, 'log', 'created', 'Log Added To Ticket', NULL, NULL, NULL, NULL, 34, 17, 8, 'Anusha added a log: short item received and delivered to the party', '2025-01-07 10:36:25', '2025-01-07 10:36:25', NULL, NULL, NULL, NULL),
(113, 'ticket', 'change', 'Anusha change short items status to Closed', 4, NULL, NULL, NULL, 34, NULL, 8, NULL, '2025-01-07 10:36:33', '2025-01-07 10:36:33', NULL, NULL, NULL, NULL),
(114, 'log', 'created', 'Log Added To Ticket', NULL, NULL, NULL, NULL, 21, 18, 8, 'Anusha added a log: short item received and deliver to the party', '2025-01-07 10:43:45', '2025-01-07 10:43:45', NULL, NULL, NULL, NULL),
(115, 'ticket', 'change', 'Anusha change Missing consignment status to Closed', 4, NULL, NULL, NULL, 21, NULL, 8, NULL, '2025-01-07 10:43:49', '2025-01-07 10:43:49', NULL, NULL, NULL, NULL),
(116, 'log', 'created', 'Log Added To Ticket', NULL, NULL, NULL, NULL, 13, 19, 8, 'Anusha added a log: LYING AT EKM DO', '2025-01-18 06:34:48', '2025-01-18 06:34:48', NULL, NULL, NULL, NULL),
(117, 'ticket', 'change', 'Anusha change short item status to Closed', 4, NULL, NULL, NULL, 13, NULL, 8, NULL, '2025-01-18 06:34:58', '2025-01-18 06:34:58', NULL, NULL, NULL, NULL),
(118, 'log', 'created', 'Log Added To Ticket', NULL, NULL, NULL, NULL, 15, 20, 8, 'Anusha added a log: LYING AT EKM DO', '2025-01-18 06:36:34', '2025-01-18 06:36:34', NULL, NULL, NULL, NULL),
(119, 'ticket', 'change', 'Anusha change short item status to Closed', 4, NULL, NULL, NULL, 15, NULL, 8, NULL, '2025-01-18 06:36:37', '2025-01-18 06:36:37', NULL, NULL, NULL, NULL),
(120, 'log', 'created', 'Log Added To Ticket', NULL, NULL, NULL, NULL, 8, 21, 8, 'Anusha added a log: RECEIVED FROM KSYTR', '2025-01-18 06:56:53', '2025-01-18 06:56:53', NULL, NULL, NULL, NULL),
(121, 'ticket', 'change', 'Anusha change Short items status to Closed', 4, NULL, NULL, NULL, 8, NULL, 8, NULL, '2025-01-18 06:56:55', '2025-01-18 06:56:55', NULL, NULL, NULL, NULL),
(122, 'log', 'created', 'Log Added To Ticket', NULL, NULL, NULL, NULL, 23, 22, 8, 'Anusha added a log: MARKED 71081622 RECEIVED FROM KSYTR', '2025-01-18 07:14:11', '2025-01-18 07:14:11', NULL, NULL, NULL, NULL),
(123, 'ticket', 'remove', 'Anusha remove Manoj.M from Missing consignment', NULL, NULL, NULL, '7', 23, NULL, 8, NULL, '2025-01-18 07:15:11', '2025-01-18 07:15:11', NULL, NULL, NULL, NULL),
(124, 'ticket', 'change', 'Ticket Agent Changed', NULL, NULL, NULL, '[\"8\"]', 23, NULL, 8, 'Anusha changed ticket agent from  to Anusha', '2025-01-18 07:15:28', '2025-01-18 07:15:28', NULL, NULL, NULL, NULL),
(125, 'ticket', 'change', 'Anusha change Missing consignment status to Closed', 4, NULL, NULL, NULL, 23, NULL, 8, NULL, '2025-01-18 07:15:36', '2025-01-18 07:15:36', NULL, NULL, NULL, NULL),
(126, 'ticket', 'remove', 'Anusha remove Shaheera from Missing consignment', NULL, NULL, NULL, '9', 31, NULL, 8, NULL, '2025-01-18 07:17:06', '2025-01-18 07:17:06', NULL, NULL, NULL, NULL),
(127, 'ticket', 'change', 'Ticket Agent Changed', NULL, NULL, NULL, '[\"8\"]', 31, NULL, 8, 'Anusha changed ticket agent from  to Anusha', '2025-01-18 07:17:13', '2025-01-18 07:17:13', NULL, NULL, NULL, NULL),
(128, 'log', 'created', 'Log Added To Ticket', NULL, NULL, NULL, NULL, 31, 23, 8, 'Anusha added a log: TRACE OUT FROM KTMTR', '2025-01-18 07:18:18', '2025-01-18 07:18:18', NULL, NULL, NULL, NULL),
(129, 'ticket', 'change', 'Anusha change Missing consignment status to Closed', 4, NULL, NULL, NULL, 31, NULL, 8, NULL, '2025-01-18 07:18:22', '2025-01-18 07:18:22', NULL, NULL, NULL, NULL),
(130, 'task', 'created', 'Task Added For Ticket', 1, NULL, NULL, '[2]', 36, NULL, 1, 'Super Admin created a new task. #Test for Manjunath Swamy', '2025-01-28 03:43:40', '2025-01-28 03:43:40', 2, '2025-01-28 08:43:00', NULL, NULL),
(131, 'task', 'Deleted', 'Super Admin deleted #task - Test', 1, NULL, NULL, '1', 36, NULL, 1, 'test', '2025-01-28 03:47:55', '2025-01-28 03:47:55', 2, NULL, NULL, NULL),
(132, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"1\"]', 37, NULL, 1, 'Super Admin created a ticket with title Delay and assigned to Super Admin', '2025-01-28 04:30:58', '2025-01-28 04:30:58', NULL, NULL, NULL, NULL),
(133, 'ticket', 'change', 'Ticket Status Changed', 3, NULL, NULL, NULL, 37, NULL, 1, 'Super Admin changed ticket status from Open to In Progress', '2025-01-28 04:32:11', '2025-01-28 04:32:11', NULL, NULL, NULL, NULL),
(134, 'ticket', 'change', 'Super Admin change Delay priority to High', NULL, NULL, 1, NULL, 37, NULL, 1, 'dispatch delayed', '2025-01-28 04:32:25', '2025-01-28 04:32:25', NULL, NULL, NULL, NULL),
(135, 'ticket', 'change', 'Ticket Closed', 4, NULL, NULL, NULL, 37, NULL, 1, 'Super Admin changed ticket status from In Progress to Closed at 2025-01-28 10:22:03', '2025-01-28 04:33:23', '2025-01-28 04:33:23', NULL, NULL, NULL, NULL),
(136, 'ticket', 'change', 'Ticket Status Changed', 2, NULL, NULL, NULL, 37, NULL, 1, 'Super Admin changed ticket status from Closed to Open', '2025-01-28 04:33:26', '2025-01-28 04:33:26', NULL, NULL, NULL, NULL),
(137, 'ticket', 'change', 'Ticket Status Changed', 3, NULL, NULL, NULL, 37, NULL, 1, 'Super Admin changed ticket status from Open to In Progress', '2025-01-28 04:33:34', '2025-01-28 04:33:34', NULL, NULL, NULL, NULL),
(138, 'ticket', 'change', 'Ticket Status Changed', 2, NULL, NULL, NULL, 37, NULL, 1, 'Super Admin changed ticket status from In Progress to Open', '2025-01-28 04:33:41', '2025-01-28 04:33:41', NULL, NULL, NULL, NULL),
(139, 'ticket', 'change', 'Ticket Status Changed', 2, NULL, NULL, NULL, 37, NULL, 1, 'Super Admin changed ticket status from Open to Open', '2025-01-28 04:34:15', '2025-01-28 04:34:15', NULL, NULL, NULL, NULL),
(140, 'ticket', 'change', 'Super Admin change Delay priority to Low', NULL, NULL, 2, NULL, 37, NULL, 1, 'dispatch delayed', '2025-01-28 04:37:31', '2025-01-28 04:37:31', NULL, NULL, NULL, NULL),
(141, 'ticket', 'created', 'Ticket Created', 2, NULL, NULL, '[\"8\"]', 38, NULL, 12, 'Candan Mathai Francis created a ticket with title Shipment short and assigned to Anusha', '2025-01-29 04:50:24', '2025-01-29 04:50:24', NULL, NULL, NULL, NULL),
(142, 'ticket', 'remove', 'Candan Mathai Francis remove Anusha from Shipment short', NULL, NULL, NULL, '8', 38, NULL, 12, NULL, '2025-01-29 04:50:57', '2025-01-29 04:50:57', NULL, NULL, NULL, NULL),
(143, 'ticket', 'add', 'Candan Mathai Francis add Candan Mathai Francis to Shipment short', NULL, NULL, NULL, '12', 38, NULL, 12, NULL, '2025-01-29 04:51:03', '2025-01-29 04:51:03', NULL, NULL, NULL, NULL),
(144, 'ticket', 'remove', 'Candan Mathai Francis remove Candan Mathai Francis from Shipment short', NULL, NULL, NULL, '12', 38, NULL, 12, NULL, '2025-01-29 04:51:05', '2025-01-29 04:51:05', NULL, NULL, NULL, NULL),
(145, 'ticket', 'add', 'Candan Mathai Francis add Anusha to Shipment short', NULL, NULL, NULL, '8', 38, NULL, 12, NULL, '2025-01-29 04:51:16', '2025-01-29 04:51:16', NULL, NULL, NULL, NULL),
(146, 'ticket', 'change', 'Ticket Notifying Agents Changed', NULL, NULL, NULL, NULL, 38, NULL, 1, 'Super Admin changed ticket notify agents from Anusha to Anusha,Candan Mathai Francis', '2025-02-05 04:36:17', '2025-02-05 04:36:17', NULL, NULL, NULL, NULL),
(147, 'ticket', 'change', 'Ticket Agent Changed', NULL, NULL, NULL, '[\"8\",\"12\"]', 38, NULL, 1, 'Super Admin changed ticket agent from Anusha to Anusha,Candan Mathai Francis', '2025-02-05 04:37:08', '2025-02-05 04:37:08', NULL, NULL, NULL, NULL),
(148, 'ticket', 'change', 'Ticket Agent Changed', NULL, NULL, NULL, '[\"8\",\"5\"]', 36, NULL, 1, 'Super Admin changed ticket agent from Anusha to Jayaraj k,Anusha', '2025-02-05 05:34:21', '2025-02-05 05:34:21', NULL, NULL, NULL, NULL),
(149, 'ticket', 'change', 'Ticket Agent Changed', NULL, NULL, NULL, '[\"8\",\"12\"]', 36, NULL, 1, 'Super Admin changed ticket agent from Anusha,Jayaraj k to Anusha,Candan Mathai Francis', '2025-02-05 05:34:27', '2025-02-05 05:34:27', NULL, NULL, NULL, NULL),
(150, 'user', 'update', 'system update user Getlead', NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL, '2025-02-11 05:05:49', '2025-02-11 05:05:49', NULL, NULL, NULL, NULL),
(151, 'user', 'update', 'Super Admin update user Manjunath Swamy N', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-15 14:20:17', '2025-02-15 14:20:17', NULL, NULL, NULL, NULL),
(152, 'user', 'update', 'Super Admin update user Manjunath Swamy N', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 05:08:25', '2025-02-16 05:08:25', NULL, NULL, NULL, NULL),
(153, 'user', 'update', 'Super Admin update user Manjunath Swamy N', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 05:11:53', '2025-02-16 05:11:53', NULL, NULL, NULL, NULL),
(154, 'user', 'update', 'Super Admin update user Manjunath Swamy N', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 05:16:47', '2025-02-16 05:16:47', NULL, NULL, NULL, NULL),
(155, 'agents', 'Assign agents to Manager', 'Super Admin assign agents to manager Manjunath Swamy N', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 05:16:55', '2025-02-16 05:16:55', NULL, NULL, NULL, NULL),
(156, 'user', 'update', 'Super Admin update user Prashanth', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 07:59:31', '2025-02-16 07:59:31', NULL, NULL, NULL, NULL),
(157, 'agents', 'Assign agents to Manager', 'Super Admin assign agents to manager Prashanth', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 07:59:31', '2025-02-16 07:59:31', NULL, NULL, NULL, NULL),
(158, 'user', 'update', 'Super Admin update user Prashanth', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 07:59:45', '2025-02-16 07:59:45', NULL, NULL, NULL, NULL),
(159, 'user', 'update', 'Super Admin update user Manjunath Swamy Testing', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 08:18:42', '2025-02-16 08:18:42', NULL, NULL, NULL, NULL),
(160, 'user', 'update', 'Super Admin update user Manjunath Swamy Testing', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 08:18:52', '2025-02-16 08:18:52', NULL, NULL, NULL, NULL),
(161, 'agents', 'Assign agents to Manager', 'Super Admin assign agents to manager Manjunath Swamy Testing', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 08:18:52', '2025-02-16 08:18:52', NULL, NULL, NULL, NULL),
(162, 'user', 'update', 'Super Admin update user Manjunath Swamy Testing', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 08:19:02', '2025-02-16 08:19:02', NULL, NULL, NULL, NULL),
(163, 'user', 'update', 'Super Admin update user Manjunath Swamy Testing', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 08:19:33', '2025-02-16 08:19:33', NULL, NULL, NULL, NULL),
(164, 'agents', 'Assign agents to Manager', 'Super Admin assign agents to manager Manjunath Swamy Testing', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 08:19:33', '2025-02-16 08:19:33', NULL, NULL, NULL, NULL),
(165, 'user', 'update', 'Super Admin update user Manjunath Swamy Testing', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 08:19:43', '2025-02-16 08:19:43', NULL, NULL, NULL, NULL),
(166, 'user', 'update', 'Super Admin update user Prashanth', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 08:20:03', '2025-02-16 08:20:03', NULL, NULL, NULL, NULL),
(167, 'agents', 'Assign agents to Manager', 'Super Admin assign agents to manager Prashanth', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 08:20:03', '2025-02-16 08:20:03', NULL, NULL, NULL, NULL),
(168, 'agents', 'Assign agents to Manager', 'Super Admin assign agents to manager Manjunath Swamy Testing', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 08:23:50', '2025-02-16 08:23:50', NULL, NULL, NULL, NULL),
(169, 'user', 'update', 'Super Admin update user Manjunath Swamy Testing', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 15:57:54', '2025-02-16 15:57:54', NULL, NULL, NULL, NULL),
(170, 'agents', 'Assign agents to Manager', 'Super Admin assign agents to manager Manjunath Swamy Testing', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 15:57:55', '2025-02-16 15:57:55', NULL, NULL, NULL, NULL),
(171, 'user', 'update', 'Super Admin update user Manjunath Swamy Testing', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 15:59:35', '2025-02-16 15:59:35', NULL, NULL, NULL, NULL),
(172, 'agents', 'Assign agents to Manager', 'Super Admin assign agents to manager Manjunath Swamy Testing', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 15:59:35', '2025-02-16 15:59:35', NULL, NULL, NULL, NULL),
(173, 'user', 'update', 'Super Admin update user Manjunath Swamy Testing', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 15:59:52', '2025-02-16 15:59:52', NULL, NULL, NULL, NULL),
(174, 'agents', 'Assign agents to Manager', 'Super Admin assign agents to manager Manjunath Swamy Testing', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:00:39', '2025-02-16 16:00:39', NULL, NULL, NULL, NULL),
(175, 'user', 'update', 'Super Admin update user Manjunath Swamy Testing', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:05:41', '2025-02-16 16:05:41', NULL, NULL, NULL, NULL),
(176, 'user', 'update', 'Super Admin update user Manjunath Swamy Testing', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:06:08', '2025-02-16 16:06:08', NULL, NULL, NULL, NULL),
(177, 'user', 'update', 'Super Admin update user Manjunath Swamy Testing', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:06:43', '2025-02-16 16:06:43', NULL, NULL, NULL, NULL),
(178, 'user', 'update', 'Super Admin update user Prashanth', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:07:28', '2025-02-16 16:07:28', NULL, NULL, NULL, NULL),
(179, 'user', 'update', 'Super Admin update user Manjunath Swamy Testing', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:08:49', '2025-02-16 16:08:49', NULL, NULL, NULL, NULL),
(180, 'user', 'update', 'Super Admin update user Manjunath Swamy Testing', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:09:03', '2025-02-16 16:09:03', NULL, NULL, NULL, NULL),
(181, 'user', 'update', 'Super Admin update user Prashanth', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:09:17', '2025-02-16 16:09:17', NULL, NULL, NULL, NULL),
(182, 'user', 'update', 'Super Admin update user Prashanth', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:09:32', '2025-02-16 16:09:32', NULL, NULL, NULL, NULL),
(183, 'user', 'update', 'Super Admin update user Mehaboob', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:10:03', '2025-02-16 16:10:03', NULL, NULL, NULL, NULL),
(184, 'agents', 'Assign agents to Manager', 'Super Admin assign agents to manager Mehaboob', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:10:03', '2025-02-16 16:10:03', NULL, NULL, NULL, NULL),
(185, 'user', 'update', 'Super Admin update user Mehaboob', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:10:21', '2025-02-16 16:10:21', NULL, NULL, NULL, NULL),
(186, 'user', 'update', 'Super Admin update user Mehaboob', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:10:44', '2025-02-16 16:10:44', NULL, NULL, NULL, NULL),
(187, 'user', 'update', 'Super Admin update user Mehaboob', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:10:55', '2025-02-16 16:10:55', NULL, NULL, NULL, NULL),
(188, 'user', 'update', 'Super Admin update user Mehaboob', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:13:12', '2025-02-16 16:13:12', NULL, NULL, NULL, NULL),
(189, 'user', 'update', 'Super Admin update user Mehaboob', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:14:03', '2025-02-16 16:14:03', NULL, NULL, NULL, NULL),
(190, 'user', 'update', 'Super Admin update user Mehaboob', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:14:16', '2025-02-16 16:14:16', NULL, NULL, NULL, NULL),
(191, 'user', 'update', 'Super Admin update user Mehaboob', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:14:34', '2025-02-16 16:14:34', NULL, NULL, NULL, NULL),
(192, 'user', 'update', 'Super Admin update user Mehaboob', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:15:55', '2025-02-16 16:15:55', NULL, NULL, NULL, NULL),
(193, 'user', 'update', 'Super Admin update user Mehaboob', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:19:25', '2025-02-16 16:19:25', NULL, NULL, NULL, NULL),
(194, 'user', 'update', 'Super Admin update user Mehaboob', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:20:44', '2025-02-16 16:20:44', NULL, NULL, NULL, NULL),
(195, 'user', 'update', 'Super Admin update user Mehaboob', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:21:10', '2025-02-16 16:21:10', NULL, NULL, NULL, NULL),
(196, 'user', 'update', 'Super Admin update user Mehaboob', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:33:40', '2025-02-16 16:33:40', NULL, NULL, NULL, NULL),
(197, 'user', 'update', 'Super Admin update user Prashanth', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:33:48', '2025-02-16 16:33:48', NULL, NULL, NULL, NULL),
(198, 'agents', 'Assign agents to Manager', 'Super Admin assign agents to manager Prashanth', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:33:48', '2025-02-16 16:33:48', NULL, NULL, NULL, NULL),
(199, 'user', 'update', 'Super Admin update user Prashanth', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:33:59', '2025-02-16 16:33:59', NULL, NULL, NULL, NULL),
(200, 'user', 'update', 'Super Admin update user Manjunath Swamy Testing', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:34:20', '2025-02-16 16:34:20', NULL, NULL, NULL, NULL),
(201, 'user', 'update', 'Super Admin update user Prashanth', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:34:38', '2025-02-16 16:34:38', NULL, NULL, NULL, NULL),
(202, 'agents', 'Assign agents to Manager', 'Super Admin assign agents to manager Prashanth', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:34:38', '2025-02-16 16:34:38', NULL, NULL, NULL, NULL),
(203, 'user', 'update', 'Super Admin update user Prashanth', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:36:27', '2025-02-16 16:36:27', NULL, NULL, NULL, NULL),
(204, 'user', 'update', 'Super Admin update user Mehaboob', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:36:54', '2025-02-16 16:36:54', NULL, NULL, NULL, NULL),
(205, 'agents', 'Assign agents to Manager', 'Super Admin assign agents to manager Mehaboob', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:36:54', '2025-02-16 16:36:54', NULL, NULL, NULL, NULL),
(206, 'user', 'update', 'Super Admin update user Mehaboob', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:37:38', '2025-02-16 16:37:38', NULL, NULL, NULL, NULL),
(207, 'user', 'update', 'Super Admin update user Manjunath Swamy', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:37:58', '2025-02-16 16:37:58', NULL, NULL, NULL, NULL),
(208, 'user', 'update', 'Super Admin update user Manjunath Swamy', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:38:08', '2025-02-16 16:38:08', NULL, NULL, NULL, NULL),
(209, 'agents', 'Assign agents to Manager', 'Super Admin assign agents to manager Manjunath Swamy', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:38:08', '2025-02-16 16:38:08', NULL, NULL, NULL, NULL),
(210, 'user', 'update', 'Super Admin update user Manjunath Swamy', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:38:25', '2025-02-16 16:38:25', NULL, NULL, NULL, NULL),
(211, 'user', 'update', 'Super Admin update user Manjunath Swamy', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:38:31', '2025-02-16 16:38:31', NULL, NULL, NULL, NULL),
(212, 'user', 'update', 'Super Admin update user Manjunath Swamy', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:38:48', '2025-02-16 16:38:48', NULL, NULL, NULL, NULL),
(213, 'agents', 'Assign agents to Manager', 'Super Admin assign agents to manager Manjunath Swamy', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-16 16:38:48', '2025-02-16 16:38:48', NULL, NULL, NULL, NULL),
(214, 'ticket', 'add', 'system add Jithin to Shipment short', NULL, NULL, NULL, '10', 38, NULL, 13, NULL, '2025-02-18 04:38:11', '2025-02-18 04:38:11', NULL, NULL, NULL, NULL),
(215, 'user', 'update', 'Super Admin update user Getlead testing', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-19 06:00:52', '2025-02-19 06:00:52', NULL, NULL, NULL, NULL),
(216, 'user', 'update', 'Super Admin update user Manjunath Swamy', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-19 16:16:32', '2025-02-19 16:16:32', NULL, NULL, NULL, NULL),
(217, 'user', 'update', 'Super Admin update user Prashanth', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-19 16:18:38', '2025-02-19 16:18:38', NULL, NULL, NULL, NULL),
(218, 'user', 'update', 'Super Admin update user Jayaraj k', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-20 04:01:09', '2025-02-20 04:01:09', NULL, NULL, NULL, NULL),
(219, 'user', 'update', 'Super Admin update user system', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-20 05:12:38', '2025-02-20 05:12:38', NULL, NULL, NULL, NULL),
(220, 'agents', 'Assign agents to Manager', 'Super Admin assign agents to manager system', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-20 05:12:38', '2025-02-20 05:12:38', NULL, NULL, NULL, NULL),
(221, 'user', 'update', 'Super Admin update user system', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-02-20 05:13:15', '2025-02-20 05:13:15', NULL, NULL, NULL, NULL),
(222, 'user', 'update', 'Super Admin update user Candan Mathai Francis', NULL, NULL, NULL, NULL, 657, NULL, 1, NULL, '2025-02-20 05:14:11', '2025-02-20 05:14:11', NULL, NULL, NULL, NULL),
(223, 'user', 'update', 'Super Admin update user Candan Mathai Francis', NULL, NULL, NULL, NULL, 657, NULL, 1, NULL, '2025-02-20 05:14:52', '2025-02-20 05:14:52', NULL, NULL, NULL, NULL),
(224, 'user', 'update', 'Super Admin update user Candan Mathai Francis', NULL, NULL, NULL, NULL, 657, NULL, 1, NULL, '2025-02-20 05:16:01', '2025-02-20 05:16:01', NULL, NULL, NULL, NULL),
(225, 'ticket', 'created', 'Super Admin created  a qwerty nnnnnnnnnnnnnnnn for Manjunath Swamy,Prashanth', NULL, NULL, NULL, '[\"2\",\"3\"]', 658, NULL, 1, 'xdffdsfa fsdafasdfdsfds fdsafdsafsdf', '2025-04-18 01:32:01', '2025-04-18 01:32:01', NULL, NULL, NULL, NULL),
(226, 'ticket', 'created', 'Super Admin created  a qqqqqqqqq qqqqqq for Prashanth', NULL, NULL, NULL, '[\"3\"]', 658, NULL, 1, 'sdfsfsfdsfdsfdsf', '2025-04-19 01:35:59', '2025-04-19 01:35:59', NULL, NULL, NULL, NULL),
(227, 'ticket', 'change', 'Ticket status changed', 2, NULL, NULL, NULL, 654, NULL, 1, 'Super Admin changed ticket status from In Progress to Open', '2025-04-22 06:07:46', '2025-04-22 06:07:46', NULL, NULL, NULL, NULL),
(228, 'ticket', 'change', 'Ticket status changed', 3, NULL, NULL, NULL, 654, NULL, 1, 'Super Admin changed ticket status from Closed to In Progress', '2025-04-22 06:08:25', '2025-04-22 06:08:25', NULL, NULL, NULL, NULL),
(229, 'ticket', 'change', 'Ticket status changed', 3, NULL, NULL, NULL, 654, NULL, 1, 'Super Admin changed ticket status from Closed to In Progress', '2025-04-22 06:09:17', '2025-04-22 06:09:17', NULL, NULL, NULL, NULL),
(230, 'ticket', 'change', 'Ticket Closed', 4, NULL, NULL, NULL, 654, NULL, 1, 'Super Admin changed ticket status from In Progress to Closed at 2025-04-22 11:22:39', '2025-04-22 06:09:22', '2025-04-22 06:09:22', NULL, NULL, NULL, NULL),
(231, 'ticket', 'change', 'Ticket priority changed', NULL, NULL, 2, NULL, 654, NULL, 1, 'Super Admin changed ticket priority from Low to Low', '2025-04-22 06:32:38', '2025-04-22 06:32:38', NULL, NULL, NULL, NULL),
(232, 'ticket', 'change', 'Ticket priority changed', NULL, NULL, 1, NULL, 654, NULL, 1, 'Super Admin changed ticket priority from High to High', '2025-04-22 06:33:46', '2025-04-22 06:33:46', NULL, NULL, NULL, NULL),
(233, 'ticket', 'change', 'Ticket priority changed', NULL, NULL, 2, NULL, 654, NULL, 1, 'Super Admin changed ticket priority from Low to Low', '2025-04-22 06:35:23', '2025-04-22 06:35:23', NULL, NULL, NULL, NULL),
(234, 'ticket', 'change', 'Ticket priority changed', NULL, NULL, 3, NULL, 654, NULL, 1, 'Super Admin changed ticket priority from Medium to Medium', '2025-04-22 06:35:35', '2025-04-22 06:35:35', NULL, NULL, NULL, NULL),
(235, 'ticket', 'change', 'Ticket priority changed', NULL, NULL, 2, NULL, 654, NULL, 1, 'Super Admin changed ticket priority from Low to Low', '2025-04-22 06:38:08', '2025-04-22 06:38:08', NULL, NULL, NULL, NULL),
(236, 'ticket', 'change', 'Ticket priority changed', NULL, NULL, 1, NULL, 654, NULL, 1, 'Super Admin changed ticket priority from High to High', '2025-04-22 06:38:33', '2025-04-22 06:38:33', NULL, NULL, NULL, NULL),
(237, 'ticket', 'change', 'Ticket priority changed', NULL, NULL, 2, NULL, 654, NULL, 1, 'Super Admin changed ticket priority from Low to Low', '2025-04-22 06:39:31', '2025-04-22 06:39:31', NULL, NULL, NULL, NULL),
(238, 'ticket', 'change', 'Ticket priority changed', NULL, NULL, 1, NULL, 654, NULL, 1, 'Super Admin changed ticket priority from High to High', '2025-04-22 06:39:36', '2025-04-22 06:39:36', NULL, NULL, NULL, NULL),
(239, 'ticket', 'change', 'Ticket priority changed', NULL, NULL, 2, NULL, 654, NULL, 1, 'Super Admin changed ticket priority from Low to Low', '2025-04-22 06:41:05', '2025-04-22 06:41:05', NULL, NULL, NULL, NULL),
(240, 'ticket', 'change', 'Ticket priority changed', NULL, NULL, 1, NULL, 654, NULL, 1, 'Super Admin changed ticket priority from High to High', '2025-04-22 06:43:22', '2025-04-22 06:43:22', NULL, NULL, NULL, NULL),
(241, 'ticket', 'change', 'Ticket priority changed', NULL, NULL, 2, NULL, 654, NULL, 1, 'Super Admin changed ticket priority from Low to Low', '2025-04-22 06:46:15', '2025-04-22 06:46:15', NULL, NULL, NULL, NULL),
(242, 'ticket', 'change', 'Ticket priority changed', NULL, NULL, 1, NULL, 654, NULL, 1, 'Super Admin changed ticket priority from High to High', '2025-04-22 06:46:55', '2025-04-22 06:46:55', NULL, NULL, NULL, NULL),
(243, 'ticket', 'change', 'Ticket priority changed', NULL, NULL, 2, NULL, 654, NULL, 1, 'Super Admin changed ticket priority from Low to Low', '2025-04-22 06:48:58', '2025-04-22 06:48:58', NULL, NULL, NULL, NULL),
(244, 'ticket', 'change', 'Ticket priority changed', NULL, NULL, 3, NULL, 654, NULL, 1, 'Super Admin changed ticket priority from Medium to Medium', '2025-04-22 06:49:01', '2025-04-22 06:49:01', NULL, NULL, NULL, NULL),
(245, 'ticket', 'change', 'Ticket priority changed', NULL, NULL, 2, NULL, 654, NULL, 1, 'Super Admin changed ticket priority from Low to Low', '2025-04-22 06:49:13', '2025-04-22 06:49:13', NULL, NULL, NULL, NULL),
(246, 'ticket', 'change', 'Ticket priority changed', NULL, NULL, 1, NULL, 654, NULL, 1, 'Super Admin changed ticket priority from High to High', '2025-04-22 06:49:16', '2025-04-22 06:49:16', NULL, NULL, NULL, NULL),
(247, 'ticket', 'change', 'Ticket status changed', 3, NULL, NULL, NULL, 654, NULL, 1, 'Super Admin changed ticket status from Closed to In Progress', '2025-04-22 06:49:30', '2025-04-22 06:49:30', NULL, NULL, NULL, NULL),
(248, 'ticket', 'change', 'Ticket Closed', 4, NULL, NULL, NULL, 654, NULL, 1, 'Super Admin changed ticket status from In Progress to Closed at 2025-04-22 12:41:20', '2025-04-22 06:50:41', '2025-04-22 06:50:41', NULL, NULL, NULL, NULL);
INSERT INTO `activities` (`id`, `type`, `note`, `title`, `status_id`, `branch_id`, `priority_id`, `agent_id`, `ticket_id`, `log_id`, `created_by`, `description`, `created_at`, `updated_at`, `task_id`, `schedule_date`, `log_file`, `log_file_type`) VALUES
(249, 'ticket', 'change', 'Ticket status changed', 2, NULL, NULL, NULL, 654, NULL, 1, 'Super Admin changed ticket status from Closed to Open', '2025-04-22 07:07:18', '2025-04-22 07:07:18', NULL, NULL, NULL, NULL),
(250, 'ticket', 'change', 'Ticket status changed', 3, NULL, NULL, NULL, 654, NULL, 1, 'Super Admin changed ticket status from Open to In Progress', '2025-04-22 07:08:54', '2025-04-22 07:08:54', NULL, NULL, NULL, NULL),
(251, 'ticket', 'change', 'Ticket priority changed', NULL, NULL, 2, NULL, 654, NULL, 1, 'Super Admin changed ticket priority from Low to Low', '2025-04-22 07:09:08', '2025-04-22 07:09:08', NULL, NULL, NULL, NULL),
(252, 'ticket', 'change', 'Ticket priority changed', NULL, NULL, 3, NULL, 654, NULL, 1, 'Super Admin changed ticket priority from Medium to Medium', '2025-04-22 07:09:12', '2025-04-22 07:09:12', NULL, NULL, NULL, NULL),
(253, 'ticket', 'change', 'Ticket priority changed', NULL, NULL, 2, NULL, 654, NULL, 1, 'Super Admin changed ticket priority from Low to Low', '2025-04-22 07:09:21', '2025-04-22 07:09:21', NULL, NULL, NULL, NULL),
(254, 'ticket', 'change', 'Ticket Closed', 4, NULL, NULL, NULL, 654, NULL, 1, 'Super Admin changed ticket status from In Progress to Closed at 2025-04-22 12:26:39', '2025-04-22 07:09:26', '2025-04-22 07:09:26', NULL, NULL, NULL, NULL),
(255, 'ticket', 'change', 'Ticket status changed', 3, NULL, NULL, NULL, 654, NULL, 1, 'Super Admin changed ticket status from Closed to In Progress', '2025-04-22 07:21:49', '2025-04-22 07:21:49', NULL, NULL, NULL, NULL),
(256, 'ticket', 'change', 'Ticket priority changed', NULL, NULL, 1, NULL, 654, NULL, 1, 'Super Admin changed ticket priority from High to High', '2025-04-22 23:11:30', '2025-04-22 23:11:30', NULL, NULL, NULL, NULL),
(257, 'ticket', 'change', 'Ticket priority changed', NULL, NULL, 3, NULL, 654, NULL, 1, 'Super Admin changed ticket priority from Medium to Medium', '2025-04-22 23:11:37', '2025-04-22 23:11:37', NULL, NULL, NULL, NULL),
(258, 'ticket', 'change', 'Ticket status changed', 2, NULL, NULL, NULL, 654, NULL, 1, 'Super Admin changed ticket status from In Progress to Open', '2025-04-23 04:55:17', '2025-04-23 04:55:17', NULL, NULL, NULL, NULL),
(259, 'ticket', 'change', 'Ticket Closed', 4, NULL, NULL, NULL, 654, NULL, 1, 'Super Admin changed ticket status from Open to Closed at 2025-04-23 10:04:27', '2025-04-23 04:57:04', '2025-04-23 04:57:04', NULL, NULL, NULL, NULL),
(260, 'ticket', 'change', 'Ticket status changed', 2, NULL, NULL, NULL, 654, NULL, 1, 'Super Admin changed ticket status from Closed to Open', '2025-04-23 04:57:44', '2025-04-23 04:57:44', NULL, NULL, NULL, NULL),
(261, 'ticket', 'change', 'Ticket Closed', 4, NULL, NULL, NULL, 654, NULL, 1, 'Super Admin changed ticket status from Open to Closed at 2025-04-23 10:51:27', '2025-04-23 04:57:51', '2025-04-23 04:57:51', NULL, NULL, NULL, NULL),
(262, 'ticket', 'change', 'Ticket status changed', 2, NULL, NULL, NULL, 654, NULL, 1, 'Super Admin changed ticket status from Closed to Open', '2025-04-23 04:59:09', '2025-04-23 04:59:09', NULL, NULL, NULL, NULL),
(263, 'ticket', 'change', 'Ticket Closed', 4, NULL, NULL, NULL, 654, NULL, 1, 'Super Admin changed ticket status from Open to Closed at 2025-04-23 10:15:29', '2025-04-23 04:59:15', '2025-04-23 04:59:15', NULL, NULL, NULL, NULL),
(264, 'ticket', 'change', 'Ticket status changed', 2, NULL, NULL, NULL, 654, NULL, 1, 'Super Admin changed ticket status from Closed to Open', '2025-04-23 04:59:55', '2025-04-23 04:59:55', NULL, NULL, NULL, NULL),
(265, 'ticket', 'change', 'Ticket Closed', 4, NULL, NULL, NULL, 654, NULL, 1, 'Super Admin changed ticket status from Open to Closed at 2025-04-23 10:03:30', '2025-04-23 05:00:03', '2025-04-23 05:00:03', NULL, NULL, NULL, NULL),
(266, 'ticket', 'change', 'Ticket status changed', 2, NULL, NULL, NULL, 654, NULL, 1, 'Super Admin changed ticket status from Closed to Open', '2025-04-23 05:00:43', '2025-04-23 05:00:43', NULL, NULL, NULL, NULL),
(267, 'ticket', 'change', 'Ticket status changed', 3, NULL, NULL, NULL, 654, NULL, 1, 'Super Admin changed ticket status from Open to In Progress', '2025-04-23 05:01:18', '2025-04-23 05:01:18', NULL, NULL, NULL, NULL),
(268, 'ticket', 'change', 'Ticket status changed', 2, NULL, NULL, NULL, 654, NULL, 1, 'Super Admin changed ticket status from In Progress to Open', '2025-04-23 05:05:42', '2025-04-23 05:05:42', NULL, NULL, NULL, NULL),
(269, 'ticket', 'change', 'Ticket status changed', 3, NULL, NULL, NULL, 654, NULL, 1, 'Super Admin changed ticket status from Open to In Progress', '2025-04-23 05:05:59', '2025-04-23 05:05:59', NULL, NULL, NULL, NULL),
(270, 'ticket', 'change', 'Ticket priority changed', NULL, NULL, 1, NULL, 654, NULL, 1, 'Super Admin changed ticket priority from High to High', '2025-04-23 05:06:21', '2025-04-23 05:06:21', NULL, NULL, NULL, NULL),
(271, 'ticket', 'change', 'Ticket priority changed', NULL, NULL, 2, NULL, 654, NULL, 1, 'Super Admin changed ticket priority from Low to Low', '2025-04-23 05:06:49', '2025-04-23 05:06:49', NULL, NULL, NULL, NULL),
(272, 'ticket', 'change', 'Ticket status changed', 2, NULL, NULL, NULL, 654, NULL, 1, 'Super Admin changed ticket status from In Progress to Open', '2025-04-23 05:55:38', '2025-04-23 05:55:38', NULL, NULL, NULL, NULL),
(273, 'ticket', 'change', 'Ticket status changed', 3, NULL, NULL, NULL, 654, NULL, 1, 'Super Admin changed ticket status from Open to In Progress', '2025-04-23 05:56:23', '2025-04-23 05:56:23', NULL, NULL, NULL, NULL),
(274, 'ticket', 'change', 'Ticket status changed', 2, NULL, NULL, NULL, 654, NULL, 1, 'Super Admin changed ticket status from In Progress to Open', '2025-04-23 05:56:35', '2025-04-23 05:56:35', NULL, NULL, NULL, NULL),
(275, 'ticket', 'change', 'Ticket Closed', 4, NULL, NULL, NULL, 654, NULL, 1, 'Super Admin changed ticket status from Open to Closed at 2025-04-23 11:59:26', '2025-04-23 05:56:59', '2025-04-23 05:56:59', NULL, NULL, NULL, NULL),
(276, 'ticket', 'change', 'Ticket status changed', 2, NULL, NULL, NULL, 15, NULL, 1, 'Super Admin changed ticket status from Closed to Open', '2025-04-24 00:59:07', '2025-04-24 00:59:07', NULL, NULL, NULL, NULL),
(277, 'ticket', 'change', 'Ticket status changed', 2, NULL, NULL, NULL, 14, NULL, 1, 'Super Admin changed ticket status from Closed to Open', '2025-04-24 01:00:47', '2025-04-24 01:00:47', NULL, NULL, NULL, NULL),
(278, 'ticket', 'change', 'Ticket Closed', 4, NULL, NULL, NULL, 644, NULL, 1, 'Super Admin changed ticket status from Open to Closed at 2025-04-24 09:56:09', '2025-04-24 03:39:56', '2025-04-24 03:39:56', NULL, NULL, NULL, NULL),
(279, 'ticket', 'change', 'Ticket Closed', 4, NULL, NULL, NULL, 646, NULL, 1, 'Super Admin changed ticket status from In Progress to Closed at 2025-04-24 09:13:17', '2025-04-24 03:47:13', '2025-04-24 03:47:13', NULL, NULL, NULL, NULL),
(280, 'ticket', 'change', 'Ticket Closed', 4, NULL, NULL, NULL, 641, NULL, 1, 'Super Admin changed ticket status from Open to Closed at 2025-04-24 09:01:23', '2025-04-24 03:53:01', '2025-04-24 03:53:01', NULL, NULL, NULL, NULL),
(281, 'ticket', 'change', 'Ticket Closed', 4, NULL, NULL, NULL, 654, NULL, 1, 'Super Admin changed ticket status from Open to Closed at 2025-04-24 14:45:55', '2025-04-24 09:25:45', '2025-04-24 09:25:45', NULL, NULL, NULL, NULL),
(282, 'ticket', 'restored', 'Super Admin restored this ticket , Issue is: this is testing 353454353 for Manjunath Swamy,Mehaboob,Jayaraj k', 2, NULL, NULL, NULL, 658, NULL, 1, 'testing f dsf fddf gdffdf  f dsfsd fdsfsdfdsfd', '2025-05-03 11:03:36', '2025-05-03 11:03:36', NULL, NULL, NULL, NULL),
(283, 'ticket', 'restored', 'Super Admin restored this ticket , Issue is: this is testing 353454353 for Manjunath Swamy,Mehaboob,Jayaraj k', 2, NULL, NULL, NULL, 658, NULL, 1, 'testing f dsf fddf gdffdf  f dsfsd fdsfsdfdsfd', '2025-05-03 11:03:45', '2025-05-03 11:03:45', NULL, NULL, NULL, NULL),
(284, 'ticket', 'restored', 'Super Admin restored this ticket , Issue is: this is testing 353454353 for Manjunath Swamy,Mehaboob,Jayaraj k', 2, NULL, NULL, NULL, 658, NULL, 1, 'testing f dsf fddf gdffdf  f dsfsd fdsfsdfdsfd', '2025-05-03 11:04:06', '2025-05-03 11:04:06', NULL, NULL, NULL, NULL),
(285, 'ticket', 'restored', 'Super Admin restored this ticket , Issue is: qwerty nnnnnnnnnnnnnnnn for Manjunath Swamy,Prashanth', 2, NULL, NULL, NULL, 657, NULL, 1, 'xdffdsfa fsdafasdfdsfds fdsafdsafsdf fsdfsdfsdfsdf', '2025-05-03 11:04:41', '2025-05-03 11:04:41', NULL, NULL, NULL, NULL),
(286, 'ticket', 'restored', 'Super Admin restored this ticket , Issue is: dsfffsdf for Mehaboob', 2, NULL, NULL, NULL, 656, NULL, 1, 'fsdfdfdsfsdfsd', '2025-05-03 11:06:01', '2025-05-03 11:06:01', NULL, NULL, NULL, NULL),
(287, 'ticket', 'restored', 'Super Admin restored this ticket , Issue is: short item for ', 2, NULL, NULL, NULL, 643, NULL, 1, 'KNR TO EKM', '2025-05-03 11:21:23', '2025-05-03 11:21:23', NULL, NULL, NULL, NULL),
(288, 'ticket', 'restored', 'Super Admin restored this ticket, short item. Agents are ', 2, NULL, NULL, NULL, 605, NULL, 1, 'KNR TO EKM', '2025-05-03 11:36:03', '2025-05-03 11:36:03', NULL, NULL, NULL, NULL),
(289, 'ticket', 'created', 'Super Admin created  a qwerty for Prashanth,Mehaboob', NULL, NULL, NULL, '[\"3\",\"4\"]', 659, NULL, 1, 'dsf dsfdsfsdfdsfsdfdsfsadfdsf', '2025-05-06 06:37:22', '2025-05-06 06:37:22', NULL, NULL, NULL, NULL),
(290, 'ticket', 'created', 'Super Admin created  a nnnnnnnnnnnnnnnnnnnnnn for Prashanth', 2, NULL, NULL, '[\"3\"]', 662, NULL, 1, 'dsfafsdffdsfsdfdsfsdfsdf', '2025-05-06 06:49:18', '2025-05-06 06:49:18', NULL, NULL, NULL, NULL),
(291, 'ticket', 'change', 'Ticket status changed', 3, NULL, NULL, NULL, 645, NULL, 1, 'Super Admin changed ticket status from Open to In Progress', '2025-05-06 10:32:50', '2025-05-06 10:32:50', NULL, NULL, NULL, NULL),
(292, 'ticket', 'change', 'Ticket status changed', 3, NULL, NULL, NULL, 659, NULL, 1, 'Super Admin changed ticket status from Open to In Progress', '2025-05-06 10:35:01', '2025-05-06 10:35:01', NULL, NULL, NULL, NULL),
(293, 'ticket', 'change', 'Ticket Closed', 4, NULL, NULL, NULL, 659, NULL, 1, 'Super Admin changed ticket status from In Progress to Closed at 2025-05-06 16:19:05', '2025-05-06 10:35:19', '2025-05-06 10:35:19', NULL, NULL, NULL, NULL),
(294, 'ticket', 'change', 'Ticket Closed', 4, NULL, NULL, NULL, 645, NULL, 1, 'Super Admin changed ticket status from In Progress to Closed at 2025-05-06 16:06:07', '2025-05-06 10:37:06', '2025-05-06 10:37:06', NULL, NULL, NULL, NULL),
(295, 'ticket', 'upload', 'Super Admin upload  file', 2, NULL, NULL, NULL, 662, NULL, 1, 'dsfafsdffdsfsdfdsfsdfsdf', '2025-05-08 10:14:24', '2025-05-08 10:14:24', NULL, NULL, NULL, NULL),
(296, 'ticket', 'upload', 'Super Admin upload  file', 2, NULL, NULL, NULL, 662, NULL, 1, 'dsfafsdffdsfsdfdsfsdfsdf', '2025-05-08 10:15:06', '2025-05-08 10:15:06', NULL, NULL, NULL, NULL),
(297, 'ticket', 'upload', 'Super Admin upload  file', 2, NULL, NULL, NULL, 662, NULL, 1, 'dsfafsdffdsfsdfdsfsdfsdf', '2025-05-08 10:15:33', '2025-05-08 10:15:33', NULL, NULL, NULL, NULL),
(298, 'ticket', 'upload', 'Super Admin upload  file', 2, NULL, NULL, NULL, 662, NULL, 1, 'dsfafsdffdsfsdfdsfsdfsdf', '2025-05-08 10:15:51', '2025-05-08 10:15:51', NULL, NULL, NULL, NULL),
(299, 'ticket', 'upload', 'Super Admin upload  file', 2, NULL, NULL, NULL, 662, NULL, 1, 'dsfafsdffdsfsdfdsfsdfsdf', '2025-05-08 10:16:30', '2025-05-08 10:16:30', NULL, NULL, NULL, NULL),
(300, 'ticket', 'upload', 'Super Admin upload  file', 2, NULL, NULL, NULL, 662, NULL, 1, 'dsfafsdffdsfsdfdsfsdfsdf', '2025-05-08 11:47:00', '2025-05-08 11:47:00', NULL, NULL, NULL, NULL),
(301, 'ticket', 'upload', 'Super Admin upload  file', 2, NULL, NULL, NULL, 662, NULL, 1, 'dsfafsdffdsfsdfdsfsdfsdf', '2025-05-08 11:47:08', '2025-05-08 11:47:08', NULL, NULL, NULL, NULL),
(302, 'ticket', 'upload', 'Super Admin upload  file', 2, NULL, NULL, NULL, 662, NULL, 1, 'dsfafsdffdsfsdfdsfsdfsdf', '2025-05-08 12:21:17', '2025-05-08 12:21:17', NULL, NULL, NULL, NULL),
(303, 'ticket', 'upload', 'Super Admin upload  file', 2, NULL, NULL, NULL, 662, NULL, 1, 'dsfafsdffdsfsdfdsfsdfsdf', '2025-05-08 12:22:15', '2025-05-08 12:22:15', NULL, NULL, NULL, NULL),
(304, 'ticket', 'upload', 'Super Admin upload  file', 2, NULL, NULL, NULL, 662, NULL, 1, 'dsfafsdffdsfsdfdsfsdfsdf', '2025-05-08 12:23:48', '2025-05-08 12:23:48', NULL, NULL, NULL, NULL),
(305, 'ticket', 'upload', 'Super Admin upload  file', 2, NULL, NULL, NULL, 662, NULL, 1, 'dsfafsdffdsfsdfdsfsdfsdf', '2025-05-08 12:26:16', '2025-05-08 12:26:16', NULL, NULL, NULL, NULL),
(306, 'ticket', 'upload', 'Super Admin upload  file', 2, NULL, NULL, NULL, 662, NULL, 1, 'dsfafsdffdsfsdfdsfsdfsdf', '2025-05-08 12:27:52', '2025-05-08 12:27:52', NULL, NULL, NULL, NULL),
(307, 'ticket', 'upload', 'Super Admin upload  file', 2, NULL, NULL, NULL, 662, NULL, 1, 'dsfafsdffdsfsdfdsfsdfsdf', '2025-05-08 12:39:50', '2025-05-08 12:39:50', NULL, NULL, NULL, NULL),
(308, 'ticket', 'upload', 'Super Admin upload  file', 2, NULL, NULL, NULL, 662, NULL, 1, 'dsfafsdffdsfsdfdsfsdfsdf', '2025-05-08 12:41:26', '2025-05-08 12:41:26', NULL, NULL, NULL, NULL),
(309, 'ticket', 'upload', 'Super Admin upload  file', 2, NULL, NULL, NULL, 662, NULL, 1, 'dsfafsdffdsfsdfdsfsdfsdf', '2025-05-08 12:41:42', '2025-05-08 12:41:42', NULL, NULL, NULL, NULL),
(310, 'ticket', 'upload', 'Super Admin upload  file', 2, NULL, NULL, NULL, 662, NULL, 1, 'dsfafsdffdsfsdfdsfsdfsdf', '2025-05-08 12:44:22', '2025-05-08 12:44:22', NULL, NULL, NULL, NULL),
(311, 'ticket', 'change', 'Ticket status changed', 3, NULL, NULL, NULL, 662, NULL, 1, 'Super Admin changed ticket status from Open to In Progress', '2025-05-12 04:20:22', '2025-05-12 04:20:22', NULL, NULL, NULL, NULL),
(312, 'ticket', 'change', 'Ticket status changed', 2, NULL, NULL, NULL, 662, NULL, 1, 'Super Admin changed ticket status from In Progress to Open', '2025-05-12 04:20:28', '2025-05-12 04:20:28', NULL, NULL, NULL, NULL),
(313, 'ticket', 'change', 'Ticket priority changed', NULL, NULL, 2, NULL, 658, NULL, 1, 'Super Admin changed ticket priority from Low to Low', '2025-05-12 04:53:23', '2025-05-12 04:53:23', NULL, NULL, NULL, NULL),
(314, 'ticket', 'created', 'Super Admin created  a ggggggg gggggggg ggggg for Manoj.M', 2, NULL, NULL, '[\"7\"]', 664, NULL, 1, 'dggdsg gfdgdfgfd gfdgdfgfdg', '2025-05-12 08:01:42', '2025-05-12 08:01:42', NULL, NULL, NULL, NULL),
(315, 'ticket', 'created', 'Super Admin created  a kkkkkkk kkkkkkkk kkkkk kkkk for Manoj.M', 2, NULL, NULL, '[\"7\"]', 667, NULL, 1, 'gfdfd fdfsfsd ff fsdfdfdfdsfsdfsd f', '2025-05-12 08:20:04', '2025-05-12 08:20:04', NULL, NULL, NULL, NULL),
(316, 'ticket', 'change', 'Ticket branch changed', NULL, 4, NULL, NULL, 667, NULL, 1, 'Super Admin changed ticket branch from branch three to branch three', '2025-05-12 08:38:03', '2025-05-12 08:38:03', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `additional_fields`
--

CREATE TABLE `additional_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `selection` varchar(191) DEFAULT NULL,
  `mandatory` int(11) NOT NULL,
  `show_filter` int(11) NOT NULL DEFAULT 0,
  `show_list` int(11) NOT NULL DEFAULT 0,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`value`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `additional_fields`
--

INSERT INTO `additional_fields` (`id`, `user_id`, `type`, `name`, `title`, `selection`, `mandatory`, `show_filter`, `show_list`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'select', 'district', 'District', 'single', 1, 1, 1, '[{\"id\": 1, \"value\": \"Calicut\"}, {\"id\": 2, \"value\": \"Ernakulam\"}, {\"id\": 3, \"value\": \"Mumbai\"}]', '2024-12-13 06:39:50', '2024-12-13 06:39:50'),
(2, 1, 'text', 'LR_Number', 'Tracking Number', 'single', 1, 0, 0, NULL, '2024-12-13 06:40:39', '2025-05-03 09:49:09'),
(3, 1, 'date', 'entry_date', 'Entry date', 'single', 1, 0, 0, NULL, NULL, NULL),
(9, 1, 'select', 'werty_uuu', 'werty', 'single', 0, 0, 0, '[{\"id\":1,\"value\":\"a1\"},{\"id\":2,\"value\":\"bbbbb\"}]', '2025-05-02 10:09:14', '2025-05-03 09:48:43'),
(10, 1, 'select', 'gggggg', 'mmm', 'single', 0, 0, 0, '[{\"id\":1,\"value\":\"a1\"},{\"id\":3,\"value\":\"b1\"}]', '2025-05-02 10:13:25', '2025-05-02 10:13:25'),
(11, 1, 'select', 'hhhhh', 'mmmmm nn', 'single', 0, 0, 0, '[{\"id\":1,\"value\":\"a1\"},{\"id\":2,\"value\":\"b1\"}]', '2025-05-02 10:15:02', '2025-05-02 10:15:02');

-- --------------------------------------------------------

--
-- Table structure for table `additional_field_options`
--

CREATE TABLE `additional_field_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `additional_field_id` bigint(20) UNSIGNED NOT NULL,
  `option` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `additional_field_options`
--

INSERT INTO `additional_field_options` (`id`, `additional_field_id`, `option`, `created_at`, `updated_at`) VALUES
(1, 1, 'Calicut', '2024-12-13 06:39:50', '2024-12-13 06:39:50'),
(2, 1, 'Ernakulam', '2024-12-13 06:39:50', '2024-12-13 06:39:50'),
(3, 1, 'Mumbai', '2024-12-13 06:39:50', '2024-12-13 06:39:50'),
(4, 5, 'a1', '2025-05-02 09:33:57', '2025-05-02 09:33:57'),
(5, 5, 'a2', '2025-05-02 09:33:57', '2025-05-02 09:33:57'),
(6, 5, 'a3', '2025-05-02 09:33:57', '2025-05-02 09:33:57'),
(7, 5, 'a4', '2025-05-02 09:33:57', '2025-05-02 09:33:57'),
(8, 8, 'w1', '2025-05-02 09:52:33', '2025-05-02 09:52:33'),
(9, 8, 'w2', '2025-05-02 09:52:33', '2025-05-02 09:52:33'),
(10, 8, 'w3', '2025-05-02 09:52:33', '2025-05-02 09:52:33');

-- --------------------------------------------------------

--
-- Table structure for table `agent_task`
--

CREATE TABLE `agent_task` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `agent_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agent_task`
--

INSERT INTO `agent_task` (`id`, `task_id`, `agent_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(3, 5, 3, '2025-04-21 03:04:35', '2025-04-21 03:04:35'),
(4, 5, 4, '2025-04-21 03:04:35', '2025-04-21 03:04:35'),
(5, 5, 5, '2025-04-21 03:04:35', '2025-04-21 03:04:35'),
(6, 6, 3, '2025-04-21 03:05:34', '2025-04-21 03:05:34'),
(7, 6, 4, '2025-04-21 03:05:34', '2025-04-21 03:05:34'),
(8, 6, 5, '2025-04-21 03:05:34', '2025-04-21 03:05:34'),
(25, 13, 3, '2025-04-21 04:53:25', '2025-04-21 04:53:25'),
(26, 13, 5, '2025-04-21 04:53:25', '2025-04-21 04:53:25'),
(27, 14, 3, '2025-04-21 04:53:55', '2025-04-21 04:53:55'),
(28, 15, 3, '2025-04-21 04:54:52', '2025-04-21 04:54:52'),
(29, 15, 5, '2025-04-21 04:54:52', '2025-04-21 04:54:52'),
(30, 15, 6, '2025-04-21 04:54:52', '2025-04-21 04:54:52'),
(31, 16, 4, '2025-04-21 05:30:14', '2025-04-21 05:30:14'),
(32, 16, 5, '2025-04-21 05:30:14', '2025-04-21 05:30:14'),
(33, 17, 3, '2025-05-06 04:34:57', '2025-05-06 04:34:57'),
(34, 17, 4, '2025-05-06 04:34:57', '2025-05-06 04:34:57'),
(35, 18, 6, '2025-05-08 13:01:10', '2025-05-08 13:01:10');

-- --------------------------------------------------------

--
-- Table structure for table `agent_ticket`
--

CREATE TABLE `agent_ticket` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `agent_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agent_ticket`
--

INSERT INTO `agent_ticket` (`id`, `ticket_id`, `agent_id`, `created_at`, `updated_at`, `total_time`) VALUES
(1, 1, 1, '2024-12-12 18:30:00', NULL, NULL),
(2, 2, 1, '2024-12-19 18:30:00', NULL, NULL),
(3, 38, 8, '2024-12-27 18:30:00', NULL, NULL),
(4, 76, 8, '2024-12-27 18:30:00', NULL, NULL),
(5, 114, 8, '2025-01-05 18:30:00', NULL, NULL),
(6, 228, 8, '2025-01-05 18:30:00', NULL, NULL),
(7, 342, 8, '2025-01-05 18:30:00', NULL, NULL),
(8, 418, 8, '2025-01-05 18:30:00', '2025-01-18 06:56:55', 300),
(9, 532, 8, '2025-01-05 18:30:00', '2025-01-07 06:51:59', 36),
(10, 608, 8, '2025-01-05 18:30:00', '2025-01-06 06:33:09', 12),
(11, 646, 8, '2025-01-05 18:30:00', '2025-01-06 06:52:48', 12),
(19, 19, 7, '2025-01-05 18:30:00', NULL, NULL),
(27, 27, 9, '2025-01-06 18:30:00', NULL, NULL),
(28, 28, 9, '2025-01-06 18:30:00', NULL, NULL),
(30, 30, 9, '2025-01-06 18:30:00', NULL, NULL),
(32, 32, 9, '2025-01-06 18:30:00', NULL, NULL),
(44, 37, 1, '2025-01-27 18:30:00', '2025-01-28 04:33:22', 10),
(49, 38, 12, '2025-02-04 18:30:00', NULL, NULL),
(53, 36, 12, '2025-02-04 18:30:00', NULL, NULL),
(55, 651, 4, '2025-04-17 18:30:00', NULL, NULL),
(58, 654, 5, '2025-04-17 18:30:00', NULL, NULL),
(59, 655, 3, '2025-04-17 18:30:00', NULL, NULL),
(60, 655, 4, '2025-04-17 18:30:00', NULL, NULL),
(61, 655, 5, '2025-04-17 18:30:00', NULL, NULL),
(65, 657, 2, '2025-04-17 18:30:00', NULL, NULL),
(66, 657, 3, '2025-04-17 18:30:00', NULL, NULL),
(68, 658, 4, '2025-04-18 02:21:31', '2025-04-18 02:21:31', NULL),
(69, 650, 3, '2025-04-18 02:23:19', '2025-04-18 02:23:19', NULL),
(70, 650, 4, '2025-04-18 02:23:19', '2025-04-18 02:23:19', NULL),
(71, 658, 5, '2025-04-18 02:24:41', '2025-04-18 02:24:41', NULL),
(72, 658, 2, '2025-04-18 02:28:38', '2025-04-18 02:28:38', NULL),
(73, 656, 4, '2025-04-18 03:18:42', '2025-04-18 03:18:42', NULL),
(74, 654, 1, '2025-04-23 00:10:17', '2025-04-23 00:10:17', -152),
(77, 662, 3, '2025-05-05 18:30:00', NULL, NULL),
(78, 653, 3, '2025-05-06 09:39:35', '2025-05-06 09:39:35', NULL),
(80, 607, 3, '2025-05-06 09:46:48', '2025-05-06 09:46:48', NULL),
(81, 569, 5, '2025-05-06 09:52:31', '2025-05-06 09:52:31', NULL),
(83, 607, 4, '2025-05-06 10:14:53', '2025-05-06 10:14:53', NULL),
(84, 645, 7, '2025-05-06 10:17:49', '2025-05-06 10:17:49', NULL),
(87, 569, 6, '2025-05-06 10:23:03', '2025-05-06 10:23:03', NULL),
(90, 531, 4, '2025-05-06 10:29:01', '2025-05-06 10:29:01', NULL),
(91, 662, 2, '2025-05-06 11:03:00', '2025-05-06 11:03:00', NULL),
(92, 659, 2, '2025-05-06 11:04:20', '2025-05-06 11:04:20', NULL),
(94, 663, 7, '2025-05-11 18:30:00', NULL, NULL),
(95, 664, 7, '2025-05-11 18:30:00', NULL, NULL),
(96, 665, 7, '2025-05-11 18:30:00', NULL, NULL),
(97, 666, 7, '2025-05-11 18:30:00', NULL, NULL),
(98, 667, 7, '2025-05-11 18:30:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `apis`
--

CREATE TABLE `apis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `end_point` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `batch` varchar(191) NOT NULL,
  `request` text NOT NULL,
  `response` text NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `api_logs`
--

CREATE TABLE `api_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `params` varchar(191) DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `response` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `api_params`
--

CREATE TABLE `api_params` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `api_id` int(11) NOT NULL,
  `param` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `position` varchar(191) NOT NULL,
  `required` int(11) NOT NULL,
  `description` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assign_agents`
--

CREATE TABLE `assign_agents` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_agents`
--

INSERT INTO `assign_agents` (`id`, `user_id`, `agent_id`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 5, 6, 1, '2025-02-16 16:33:48', '2025-02-16 16:33:48', NULL),
(2, 5, 7, 1, '2025-02-16 16:38:48', '2025-02-16 16:38:48', NULL),
(3, 5, 8, 1, '2025-02-16 23:50:36', '2025-02-16 23:50:36', NULL),
(4, 5, 9, 1, '2025-02-16 23:50:36', '2025-02-16 23:50:36', NULL),
(5, 13, 11, 1, '2025-02-20 05:12:38', '2025-02-20 05:12:38', NULL),
(6, 13, 12, 1, '2025-02-20 05:12:38', '2025-02-20 05:12:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attachements`
--

CREATE TABLE `attachements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tikcet_id` int(11) NOT NULL,
  `file` varchar(191) DEFAULT NULL,
  `file_type` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(11) NOT NULL,
  `branch` varchar(100) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `branch`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 'branch one', 1, '2025-05-12 12:54:10', '2025-05-12 12:54:10'),
(3, 'branch two', 1, '2025-05-12 12:54:16', '2025-05-12 12:54:16'),
(4, 'branch three', 1, '2025-05-12 12:54:22', '2025-05-12 12:54:22'),
(5, 'branch five', 1, '2025-05-12 12:54:31', '2025-05-12 12:54:31');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 'nnnnnnnn', 1, '2025-05-07 10:52:06', '2025-05-07 10:52:06'),
(3, 'mmmmmmmmmmmm', 1, '2025-05-07 10:52:09', '2025-05-07 10:52:09'),
(4, 'mmmmmmmmmmmmm', 1, '2025-05-07 10:52:20', '2025-05-07 10:52:20');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(191) NOT NULL,
  `owner` varchar(191) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `call_reasons`
--

CREATE TABLE `call_reasons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reason` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(191) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `brand_id`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 'nnnnnnnnnnn', 2, 1, '2025-05-07 10:57:29', '2025-05-07 10:57:29'),
(3, 'mmmmmmm', 2, 1, '2025-05-07 10:57:33', '2025-05-07 10:57:33');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `country_code` varchar(191) DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `code` varchar(191) DEFAULT NULL,
  `currency` varchar(191) DEFAULT NULL,
  `currency_code` varchar(191) DEFAULT NULL,
  `flags` varchar(191) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `country_code`, `tax`, `code`, `currency`, `currency_code`, `flags`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'UNITED ARAB EMIRATES', 'AE', NULL, '971', 'United Arab Emirates Dirham', 'AED', '/backend/images/flag-icons/ae.png', NULL, '2019-04-01 05:34:05', '2019-04-01 05:34:05'),
(2, 'AFGHANISTAN', 'AF', NULL, '93', 'Afghanistan Afghani', 'AFN', '/backend/images/flag-icons/af.png', NULL, '2019-04-01 05:34:05', '2019-04-01 05:34:05'),
(3, 'NETHERLANDS ANTILLES', 'AN', NULL, '599', 'Netherlands Antillean guilder', 'ANG', '/backend/images/flag-icons/am.png', NULL, '2019-04-01 05:34:05', '2019-04-01 05:34:05'),
(4, 'ARGENTINA', 'AR', NULL, '54', 'Argentine peso', 'ARS', '/backend/images/flag-icons/ar.png', NULL, '2019-04-01 05:34:05', '2019-04-01 05:34:05'),
(5, 'AUSTRIA', 'AT', NULL, '43', 'Euro', 'EUR', '/backend/images/flag-icons/at.png', NULL, '2019-04-01 05:34:05', '2019-04-01 05:34:05'),
(6, 'AUSTRALIA', 'AU', NULL, '61', 'Australian dollar', 'AUD', '/backend/images/flag-icons/au.png', NULL, '2019-04-01 05:34:05', '2019-04-01 05:34:05'),
(7, 'BANGLADESH', 'BD', NULL, '880', 'Bangladeshi taka', 'BDT', '/backend/images/flag-icons/bd.png', NULL, '2019-04-01 05:34:05', '2019-04-01 05:34:05'),
(8, 'BELGIUM', 'BE', NULL, '32', 'Euro', 'EUR', '/backend/images/flag-icons/be.png', NULL, '2019-04-01 05:34:05', '2019-04-01 05:34:05'),
(9, 'BAHRAIN', 'BH', NULL, '973', 'Bahraini dinar', 'BHD', '/backend/images/flag-icons/bh.png', NULL, '2019-04-01 05:34:05', '2019-04-01 05:34:05'),
(10, 'BRAZIL', 'BR', NULL, '55', 'Brazilian real', 'BRL', '/backend/images/flag-icons/br.png', NULL, '2019-04-01 05:34:05', '2019-04-01 05:34:05'),
(11, 'BHUTAN', 'BT', NULL, '975', 'Bhutanese ngultrum', 'BTN', '/backend/images/flag-icons/bt.png', NULL, '2019-04-01 05:34:06', '2019-04-01 05:34:06'),
(12, 'CANADA', 'CA', NULL, '1', 'Canadian dollar', 'CAD', '/backend/images/flag-icons/ca.png', NULL, '2019-04-01 05:34:06', '2019-04-01 05:34:06'),
(13, 'CONGO', 'CG', NULL, '242', 'Central African CFA franc', 'XAF', '/backend/images/flag-icons/cg.png', NULL, '2019-04-01 05:34:06', '2019-04-01 05:34:06'),
(14, 'SWITZERLAND', 'CH', NULL, '41', 'wiss franc', 'CHF', '/backend/images/flag-icons/ch.png', NULL, '2019-04-01 05:34:06', '2019-04-01 05:34:06'),
(15, 'CHILE', 'CL', NULL, '56', 'Chilean peso', 'CLP', '/backend/images/flag-icons/cl.png', NULL, '2019-04-01 05:34:06', '2019-04-01 05:34:06'),
(16, 'CHINA', 'CN', NULL, '86', 'Renminbi|Chinese yuan', 'CNY', '/backend/images/flag-icons/cn.png', NULL, '2019-04-01 05:34:06', '2019-04-01 05:34:06'),
(17, 'COLOMBIA', 'CO', NULL, '57', 'Colombian peso', 'COP', '/backend/images/flag-icons/co.png', NULL, '2019-04-01 05:34:06', '2019-04-01 05:34:06'),
(18, 'COSTA RICA', 'CR', NULL, '506', 'Costa Rican colon', 'CRC', '/backend/images/flag-icons/cr.png', NULL, '2019-04-01 05:34:06', '2019-04-01 05:34:06'),
(19, 'CUBA', 'CU', NULL, '53', 'Cuban peso', 'CUP', '/backend/images/flag-icons/cu.png', NULL, '2019-04-01 05:34:06', '2019-04-01 05:34:06'),
(20, 'CZECH REPUBLIC', 'CZ', NULL, '420', 'Czech koruna', 'CZK', '/backend/images/flag-icons/cz.png', NULL, '2019-04-01 05:34:06', '2019-04-01 05:34:06'),
(21, 'GERMANY', 'DE', NULL, '49', 'Euro', 'EUR', '/backend/images/flag-icons/de.png', NULL, '2019-04-01 05:34:06', '2019-04-01 05:34:06'),
(22, 'DENMARK', 'DK', NULL, '45', 'Danish krone', 'DKK', '/backend/images/flag-icons/dk.png', NULL, '2019-04-01 05:34:06', '2019-04-01 05:34:06'),
(23, 'ECUADOR', 'EC', NULL, '593', 'Ecuadorian sucre', 'ECS', '/backend/images/flag-icons/ec.png', NULL, '2019-04-01 05:34:06', '2019-04-01 05:34:06'),
(24, 'SPAIN', 'ES', NULL, '34', 'Euro', 'EUR', '/backend/images/flag-icons/es.png', NULL, '2019-04-01 05:34:06', '2019-04-01 05:34:06'),
(25, 'FINLAND', 'FI', NULL, '358', 'Euro', 'EUR', '/backend/images/flag-icons/fi.png', NULL, '2019-04-01 05:34:06', '2019-04-01 05:34:06'),
(26, 'FRANCE', 'FR', NULL, '33', 'Euro', 'EUR', '/backend/images/flag-icons/fr.png', NULL, '2019-04-01 05:34:06', '2019-04-01 05:34:06'),
(27, 'UNITED KINGDOM', 'GB', NULL, '44', 'Pound sterling', 'GBP', '/backend/images/flag-icons/gb.png', NULL, '2019-04-01 05:34:06', '2019-04-01 05:34:06'),
(28, 'HONG KONG', 'HK', NULL, '852', 'Hong Kong dollar', 'HKD', '/backend/images/flag-icons/hn.png', NULL, '2019-04-01 05:34:06', '2019-04-01 05:34:06'),
(29, 'INDIA', 'IN', NULL, '91', 'Indian rupee', 'INR', '/backend/images/flag-icons/in.png', NULL, '2019-04-01 05:34:06', '2019-04-01 05:34:06'),
(30, 'IRAQ', 'IQ', NULL, '964', 'Iraqi dinar', 'IQD', '/backend/images/flag-icons/iq.png', NULL, '2019-04-01 05:34:06', '2019-04-01 05:34:06'),
(31, 'JAPAN', 'JP', NULL, '81', 'Japan Yen', 'JPY', '/backend/images/flag-icons/jp.png', NULL, '2019-04-01 05:34:07', '2019-04-01 05:34:07'),
(32, 'KUWAIT', 'KW', NULL, '965', 'Kuwaiti dinar', 'KWD', '/backend/images/flag-icons/kw.png', NULL, '2019-04-01 05:34:07', '2019-04-01 05:34:07'),
(33, 'SRI LANKA', 'LK', NULL, '94', 'Sri Lanka Rupee', 'LKR', '/backend/images/flag-icons/lk.png', NULL, '2019-04-01 05:34:07', '2019-04-01 05:34:07'),
(34, 'MALAYSIA', 'MY', NULL, '60', 'Malaysia Ringgit', 'MYR', '/backend/images/flag-icons/my.png', NULL, '2019-04-01 05:34:07', '2019-04-01 05:34:07'),
(35, 'NETHERLANDS', 'NL', NULL, '31', 'Euro', 'EUR', '/backend/images/flag-icons/nl.png', NULL, '2019-04-01 05:34:07', '2019-04-01 05:34:07'),
(36, 'NEPAL', 'NP', NULL, '977', 'Nepal Rupee', 'NPR', '/backend/images/flag-icons/np.png', NULL, '2019-04-01 05:34:07', '2019-04-01 05:34:07'),
(37, 'NEW ZEALAND', 'NZ', NULL, '64', 'New Zealand dollar', 'NZD', '/backend/images/flag-icons/nz.png', NULL, '2019-04-01 05:34:07', '2019-04-01 05:34:07'),
(38, 'OMAN', 'OM', NULL, '968', 'Omani rial', 'OMR', '/backend/images/flag-icons/om.png', NULL, '2019-04-01 05:34:07', '2019-04-01 05:34:07'),
(39, 'PHILIPPINES', 'PH', NULL, '63', 'Philippines Peso', 'PHP', '/backend/images/flag-icons/ph.png', NULL, '2019-04-01 05:34:07', '2019-04-01 05:34:07'),
(40, 'PAKISTAN', 'PK', NULL, '92', 'Pakistani rupee', 'PKR', '/backend/images/flag-icons/pk.png', NULL, '2019-04-01 05:34:07', '2019-04-01 05:34:07'),
(41, 'POLAND', 'PL', NULL, '48', 'Polish złoty', 'PLN', '/backend/images/flag-icons/pl.png', NULL, '2019-04-01 05:34:07', '2019-04-01 05:34:07'),
(42, 'PORTUGAL', 'PT', NULL, '351', 'Euro', 'EUR', '/backend/images/flag-icons/pt.png', NULL, '2019-04-01 05:34:07', '2019-04-01 05:34:07'),
(43, 'QATAR', 'QA', NULL, '974', 'Qatar Riyal', 'QAR', '/backend/images/flag-icons/qa.png', NULL, '2019-04-01 05:34:07', '2019-04-01 05:34:07'),
(44, 'RUSSIAN FEDERATION', 'RU', NULL, '7', 'Russia Ruble', 'RUB', '/backend/images/flag-icons/ru.png', NULL, '2019-04-01 05:34:07', '2019-04-01 05:34:07'),
(45, 'SAUDI ARABIA', 'SA', NULL, '966', 'Saudi Arabia Riyal', 'SAR', '/backend/images/flag-icons/sa.png', NULL, '2019-04-01 05:34:07', '2019-04-01 05:34:07'),
(46, 'SINGAPORE', 'SG', NULL, '65', 'Singapore Dollar', 'SGD', '/backend/images/flag-icons/sg.png', NULL, '2019-04-01 05:34:07', '2019-04-01 05:34:07'),
(47, 'TURKEY', 'TR', NULL, '90', 'Turkey Lira', 'TRL', '/backend/images/flag-icons/tr.png', NULL, '2019-04-01 05:34:07', '2019-04-01 05:34:07'),
(48, 'UNITED STATES', 'US', NULL, '1', 'United States dollar', 'USD', '/backend/images/flag-icons/us.png', NULL, '2019-04-01 05:34:07', '2019-04-01 05:34:07'),
(49, 'YEMEN', 'YE', NULL, '967', 'Yemeni rial', 'YER', '/backend/images/flag-icons/ye.png', NULL, '2019-04-01 05:34:07', '2019-04-01 05:34:07'),
(50, 'SOUTH AFRICA', 'ZA', NULL, '27', 'South African rand', 'ZAR', '/backend/images/flag-icons/za.png', NULL, '2019-04-01 05:34:07', '2019-04-01 05:34:07'),
(51, 'Ghana', 'GH', NULL, '233', 'Ghanaian Cedi', 'GHS', '/backend/images/flag-icons/za.png', NULL, '2019-04-01 05:34:07', '2019-04-01 05:34:07');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `contact` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country_code` varchar(191) NOT NULL,
  `company_name` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `contact`, `created_by`, `created_at`, `updated_at`, `country_code`, `company_name`) VALUES
(1, 'Akhiil', 'akhil@getleadcrm.com', '9048333535', 1, '2024-12-13 06:37:22', '2024-12-13 06:37:22', '91', 'Getlead'),
(2, 'Ramshad', NULL, '9846337019', 8, '2024-12-28 06:50:07', '2024-12-28 06:50:07', '91', NULL),
(3, 'Antony\'s fashions', NULL, '9446197893', 8, '2024-12-28 06:58:46', '2024-12-28 06:58:46', '91', 'Antony\'s Fashions'),
(4, 'FINE PAPER MART', 'gmc@krs.in', '04843504938', 8, '2025-01-06 04:32:30', '2025-01-06 04:32:30', '91', NULL),
(5, 'jyothi textiies', 'bdi@krs.in', '9321446995', 8, '2025-01-06 04:54:41', '2025-01-06 04:54:41', '91', NULL),
(6, 'Liberty marketers', 'tpr@krs.in', '04844099991', 8, '2025-01-06 05:02:13', '2025-01-06 05:02:13', '91', NULL),
(7, 'ENLIGHT BUSINESS', 'tcrm@krs.in', '04872253458', 8, '2025-01-06 05:09:03', '2025-01-06 05:09:03', '91', NULL),
(8, 'Metro wedding plaza', 'anushakk4266@gmail.com', '8921324229', 8, '2025-01-06 05:27:12', '2025-01-06 05:27:12', '91', NULL),
(9, 'Neerose silks', 'agm.marketing@krs.in', '9061208999', 8, '2025-01-06 05:52:46', '2025-01-06 05:52:46', '91', NULL),
(10, 'Pulimoottil silks', 'prathiksha1970@gmail.com', '6282254912', 8, '2025-01-06 06:18:24', '2025-01-06 06:18:24', '91', NULL),
(11, 'N K SILKS', 'dlikb@krs.in', '9990360990', 8, '2025-01-06 08:14:55', '2025-01-06 08:14:55', '91', NULL),
(12, 'NOVELTY TEXTILES', 'bmy@krs.in', '9820156099', 8, '2025-01-06 08:22:32', '2025-01-06 08:22:32', '91', NULL),
(13, 'F.GEORGE LEATHER WORK', 'clt@krs.in', '04954180909', 8, '2025-01-06 08:56:13', '2025-01-06 08:56:13', '91', NULL),
(14, 'Kannamma Fashion', 'kldy@krs', '9207715834', 8, '2025-01-06 09:06:13', '2025-01-06 09:06:13', '91', NULL),
(15, 'SOBHA LTD', 'sbc@krs.in', '08041682399', 8, '2025-01-06 09:09:31', '2025-01-06 09:09:31', '91', NULL),
(16, 'NELLISSERY TRADERS', 'etmr@krs.in', '9207715827', 8, '2025-01-06 09:13:31', '2025-01-06 09:13:31', '91', NULL),
(17, 'POTHYS RETAILS PVT LTD', 'ekm@krs.in', '04844099992', 8, '2025-01-06 09:20:34', '2025-01-06 09:20:34', '91', NULL),
(18, 'Prabha Textiles', 'rjp@krs.in', '04954180907', 8, '2025-01-06 09:26:18', '2025-01-06 09:26:18', '91', NULL),
(19, 'CRYSTAL AGENCIES', 'kotim@krs.in', '9207383999', 8, '2025-01-06 09:32:39', '2025-01-06 09:32:39', '91', NULL),
(20, 'NOVELTY TEXTILES', 'ksytr@krs.in', '9207883999', 8, '2025-01-07 04:07:59', '2025-01-07 04:07:59', '91', NULL),
(21, 'POTHYS', 'jpr@krs.in', '9069921220', 8, '2025-01-07 04:15:22', '2025-01-07 04:15:22', '91', NULL),
(22, 'SAFCO DOOR', 'cply@krs.in', '9207715819', 8, '2025-01-07 04:20:10', '2025-01-07 04:20:10', '91', NULL),
(23, 'Kalyan silks', 'srt@krs.in', '9099153699', 8, '2025-01-07 04:32:35', '2025-01-07 04:32:35', '91', NULL),
(24, 'JAYALAKSHMI', 'tvm@krs.in', '04712475418', 8, '2025-01-07 04:35:26', '2025-01-07 04:35:26', '91', NULL),
(25, 'Sagar marine industrial', 'ahd@krs.in', '9898496699', 8, '2025-01-07 04:41:42', '2025-01-07 04:41:42', '91', NULL),
(26, 'CHEMIND', 'mds@krs.in', '9840886599', 8, '2025-01-07 04:45:44', '2025-01-07 04:45:44', '91', NULL),
(27, 'GRAND THEJAS', 'pyr@krs.in', '9207715902', 8, '2025-01-07 04:48:53', '2025-01-07 04:48:53', '91', NULL),
(28, 'SIMLA SEASON', 'ktm@krs.in', '04812977999', 8, '2025-01-07 05:00:16', '2025-01-07 05:00:16', '91', NULL),
(29, 'JAYALAKSHMI', 'cltmd@krs.in', '9995944499', 8, '2025-01-07 05:03:01', '2025-01-07 05:03:01', '91', NULL),
(30, 'MERICON ENTERPRISES', 'bmsa@krs.in', '9980129115', 8, '2025-01-07 05:05:40', '2025-01-07 05:05:40', '91', NULL),
(31, 'KALYAN SILK', 'asly@krs.in', '9377831969', 8, '2025-01-07 05:10:48', '2025-01-07 05:10:48', '91', NULL),
(32, 'DESIGN HUB', 'qdy@krs.in', '9207715914', 8, '2025-01-07 05:15:55', '2025-01-07 05:15:55', '91', NULL),
(33, 'POTHYS', 'adh@krs.in', '9321446998', 8, '2025-01-07 05:17:54', '2025-01-07 05:17:54', '91', NULL),
(34, 'MEGHA MARKETTING', 'knrbo@krs.in', '9207715839', 8, '2025-01-07 08:40:45', '2025-01-07 08:40:45', '91', NULL),
(49, 'dfgdfgdgdfgfdg', 'me34@webos.com', '543543543', 1, '2025-04-18 01:35:07', '2025-04-18 01:35:07', '91', 'dsfsdafsdfdsfdsf');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'SALES', 1, '2025-05-07 10:15:26', '2025-05-07 10:15:26'),
(2, 'SERVICE', 1, '2025-05-07 10:15:32', '2025-05-07 10:15:32');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `designation` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `designation`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Customer Support', 1, '2024-12-13 07:21:13', '2024-12-13 07:21:13'),
(2, 'Sales & Marketing', 1, '2024-12-13 07:21:23', '2024-12-13 07:21:23'),
(3, 'IT', 1, '2024-12-13 07:21:59', '2024-12-13 07:21:59'),
(4, 'CS Team Lead', 1, '2025-01-27 06:56:34', '2025-01-27 06:56:34'),
(6, 'Develeoper', 1, '2025-04-28 12:45:42', '2025-04-28 12:45:42'),
(7, 'manager', 1, '2025-04-28 12:46:22', '2025-04-28 12:46:22'),
(8, 'sales executive', 1, '2025-04-28 12:46:46', '2025-04-28 12:46:46'),
(9, 'bbbbbbbbbbb', 1, '2025-04-28 12:54:35', '2025-04-28 12:54:35');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `file_logs`
--

CREATE TABLE `file_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_id` int(11) NOT NULL,
  `log` varchar(191) DEFAULT NULL,
  `file_type` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `firms`
--

CREATE TABLE `firms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `contact` varchar(191) NOT NULL,
  `address` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` varchar(191) DEFAULT NULL,
  `ticket_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `invoice_date` datetime NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  `service_charge` double NOT NULL,
  `item_cost` double NOT NULL DEFAULT 0,
  `total_amount` double NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pdf_file_name` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_id`, `ticket_id`, `customer_id`, `invoice_date`, `payment_method`, `status`, `service_charge`, `item_cost`, `total_amount`, `created_by`, `created_at`, `updated_at`, `pdf_file_name`) VALUES
(2, '0000000002', 662, 2, '2025-05-09 11:39:58', 'offline', 'paid', 250, 900, 1150, 1, '2025-05-09 06:09:58', '2025-05-09 10:13:29', '00000000021746788305_invoice.pdf'),
(3, '0000000003', 658, 4, '2025-05-09 13:03:05', 'offline', 'paid', 200, 0, 200, 1, '2025-05-09 07:33:05', '2025-05-09 12:06:43', '00000000031746792403_invoice.pdf'),
(4, '0000000004', 657, 5, '2025-05-09 13:03:18', 'offline', 'pending', 350, 0, 350, 1, '2025-05-09 07:33:18', '2025-05-09 07:33:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `cost` double NOT NULL,
  `total_cost` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"cfa989d3-eb04-4a99-93cd-ff2f9c9b4ab2\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:1:{i:0;s:12:\\\"ticketStatus\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"1\\\";}s:11:\\\"customer_id\\\";s:1:\\\"1\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1734072113, 1734072113),
(2, 'default', '{\"uuid\":\"3e3f5d2a-6f44-40c2-a164-b618b9224dcf\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"6ad20a46-64db-4449-bb33-26762c5ca441\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1734072113, 1734072113),
(3, 'default', '{\"uuid\":\"94e38c0b-811a-4079-b4e6-fa7f2780aeb1\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"6ad20a46-64db-4449-bb33-26762c5ca441\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1734072113, 1734072113),
(4, 'default', '{\"uuid\":\"e79197aa-d815-43b0-9109-0f4ea52fa177\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"86bbf0e1-2866-4208-a450-dcaed21432d8\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1734072113, 1734072113),
(5, 'default', '{\"uuid\":\"a3c5d9fa-0f41-426f-91ff-fef7dfccbfde\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"86bbf0e1-2866-4208-a450-dcaed21432d8\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1734072113, 1734072113),
(6, 'default', '{\"uuid\":\"0e656fd8-20ec-4fe6-8d35-679069ad921d\",\"displayName\":\"App\\\\Notifications\\\\CommonNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\CommonNotification\\\":4:{s:8:\\\"channels\\\";a:2:{i:0;s:4:\\\"mail\\\";i:1;s:8:\\\"database\\\";}s:5:\\\"event\\\";s:12:\\\"Task Created\\\";s:4:\\\"data\\\";a:2:{s:4:\\\"mail\\\";a:2:{s:7:\\\"subject\\\";s:20:\\\"Task Assigned to you\\\";s:5:\\\"lines\\\";a:4:{i:0;s:29:\\\"Task Name: Track the Material\\\";i:1;s:15:\\\"Task Type: open\\\";i:2;s:28:\\\"Ticket Name: Package Missing\\\";i:3;s:23:\\\"Assigned By:Super Admin\\\";}}s:8:\\\"database\\\";a:1:{s:12:\\\"notification\\\";a:3:{s:5:\\\"title\\\";s:12:\\\"Task Created\\\";s:4:\\\"body\\\";s:66:\\\"Super Admin created #task - Track the Material and Assigned to you\\\";s:9:\\\"meta_data\\\";a:4:{s:4:\\\"type\\\";s:4:\\\"task\\\";s:7:\\\"task_id\\\";i:1;s:4:\\\"slug\\\";s:17:\\\"package-missing-1\\\";s:9:\\\"ticket_id\\\";i:1;}}}}s:2:\\\"id\\\";s:36:\\\"584e3f2a-10c7-4d0e-a465-ad3a0c23281b\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1734072333, 1734072333),
(7, 'default', '{\"uuid\":\"dda072ad-3227-453c-b174-751866c0d2e8\",\"displayName\":\"App\\\\Notifications\\\\CommonNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\CommonNotification\\\":4:{s:8:\\\"channels\\\";a:2:{i:0;s:4:\\\"mail\\\";i:1;s:8:\\\"database\\\";}s:5:\\\"event\\\";s:12:\\\"Task Created\\\";s:4:\\\"data\\\";a:2:{s:4:\\\"mail\\\";a:2:{s:7:\\\"subject\\\";s:20:\\\"Task Assigned to you\\\";s:5:\\\"lines\\\";a:4:{i:0;s:29:\\\"Task Name: Track the Material\\\";i:1;s:15:\\\"Task Type: open\\\";i:2;s:28:\\\"Ticket Name: Package Missing\\\";i:3;s:23:\\\"Assigned By:Super Admin\\\";}}s:8:\\\"database\\\";a:1:{s:12:\\\"notification\\\";a:3:{s:5:\\\"title\\\";s:12:\\\"Task Created\\\";s:4:\\\"body\\\";s:66:\\\"Super Admin created #task - Track the Material and Assigned to you\\\";s:9:\\\"meta_data\\\";a:4:{s:4:\\\"type\\\";s:4:\\\"task\\\";s:7:\\\"task_id\\\";i:1;s:4:\\\"slug\\\";s:17:\\\"package-missing-1\\\";s:9:\\\"ticket_id\\\";i:1;}}}}s:2:\\\"id\\\";s:36:\\\"584e3f2a-10c7-4d0e-a465-ad3a0c23281b\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1734072333, 1734072333),
(8, 'default', '{\"uuid\":\"480ff56d-339a-41d7-a36a-a076a3295960\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:1:{i:0;s:12:\\\"ticketStatus\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"1\\\";}s:11:\\\"customer_id\\\";s:1:\\\"1\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1734701882, 1734701882),
(9, 'default', '{\"uuid\":\"c78fbdab-cbeb-4f7c-9eaf-0dcb7252f0d1\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"d759362b-abe3-4e52-8bc9-39049934efb7\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1734701882, 1734701882),
(10, 'default', '{\"uuid\":\"229e2ca3-70c2-49cb-93ad-c1ad7834fc6c\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"d759362b-abe3-4e52-8bc9-39049934efb7\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1734701882, 1734701882),
(11, 'default', '{\"uuid\":\"454f5eba-4374-48b2-a755-3c7b5297a6ba\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"53daa86b-d45d-40e5-ab6a-910f2256a6b8\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1734701882, 1734701882),
(12, 'default', '{\"uuid\":\"28d919f4-dcdc-42ef-875e-9256a0a92b2f\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"53daa86b-d45d-40e5-ab6a-910f2256a6b8\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1734701882, 1734701882),
(13, 'default', '{\"uuid\":\"45f586c6-41c8-40fc-8f15-b399a3ce264c\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:1:{i:0;s:12:\\\"ticketStatus\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"8\\\";}s:11:\\\"customer_id\\\";s:1:\\\"2\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1735379773, 1735379773),
(14, 'default', '{\"uuid\":\"a8d822ca-a1e4-45ee-81e5-2870df69f766\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"ebdc1869-0e26-4eff-90cd-2997108f4be8\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1735379773, 1735379773),
(15, 'default', '{\"uuid\":\"69d60fa0-9f90-4d54-9832-3fe6d13db7e6\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"ebdc1869-0e26-4eff-90cd-2997108f4be8\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1735379774, 1735379774),
(16, 'default', '{\"uuid\":\"5df1c548-7038-40de-af5a-4b687026aea7\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"74cd23c6-809b-4aae-adbb-9ec20d8b1f34\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1735379774, 1735379774),
(17, 'default', '{\"uuid\":\"13c4ddff-03f4-417d-83fc-7d590f8a933c\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"74cd23c6-809b-4aae-adbb-9ec20d8b1f34\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1735379774, 1735379774),
(18, 'default', '{\"uuid\":\"d7a7af85-f4dc-495a-9caa-ef3aa4b1de17\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:1:{i:0;s:12:\\\"ticketStatus\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"8\\\";}s:11:\\\"customer_id\\\";s:1:\\\"3\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1735380718, 1735380718),
(19, 'default', '{\"uuid\":\"c6ab2612-969d-41c2-b13c-80c04bf7a54d\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"2dce0b63-d5c0-48aa-9cd5-c59398acaea9\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1735380718, 1735380718),
(20, 'default', '{\"uuid\":\"294ad719-c2ff-451a-a88c-e02356e1b589\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"2dce0b63-d5c0-48aa-9cd5-c59398acaea9\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1735380718, 1735380718),
(21, 'default', '{\"uuid\":\"0fd485bf-85a8-44a4-96f4-27d4db984615\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"b4c7e51f-ce91-4753-935a-a349e7746ae7\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1735380718, 1735380718),
(22, 'default', '{\"uuid\":\"17da7ed7-621e-4859-9a60-200e44d1371f\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"b4c7e51f-ce91-4753-935a-a349e7746ae7\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1735380718, 1735380718),
(23, 'default', '{\"uuid\":\"ec4594bf-0939-4002-a5b8-aabf2f7e4098\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:5;s:9:\\\"relations\\\";a:1:{i:0;s:12:\\\"ticketStatus\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"8\\\";}s:11:\\\"customer_id\\\";s:1:\\\"4\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1736138103, 1736138103),
(24, 'default', '{\"uuid\":\"9cce5bfc-156c-49e2-beb7-52c52e8515f9\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:5;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"63997e98-acc4-4d54-8026-cf1a05b04ca0\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736138103, 1736138103),
(25, 'default', '{\"uuid\":\"d05b7dd1-77a9-4c95-a6b2-6f5c8d9deffc\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:5;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"63997e98-acc4-4d54-8026-cf1a05b04ca0\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736138103, 1736138103),
(26, 'default', '{\"uuid\":\"53d71aa9-c1de-4a6e-a122-5a3d9680f74d\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:5;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"bb3dace6-46f2-4229-83fe-f0a6839e506d\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736138103, 1736138103),
(27, 'default', '{\"uuid\":\"6e8b4dcd-5efa-4db9-9b7c-86caac9cbe81\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:5;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"bb3dace6-46f2-4229-83fe-f0a6839e506d\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736138103, 1736138103),
(28, 'default', '{\"uuid\":\"0db75840-b41a-42ed-aa56-e745ff9d0e59\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:1:{i:0;s:12:\\\"ticketStatus\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"8\\\";}s:11:\\\"customer_id\\\";s:1:\\\"5\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1736139376, 1736139376),
(29, 'default', '{\"uuid\":\"400f446b-0ab0-4fb0-8910-1866a0bc25c6\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"2f336d22-a01b-4391-b664-ec823d1a9c25\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736139376, 1736139376);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(30, 'default', '{\"uuid\":\"50059afd-3502-416a-a10e-e99e37788bda\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"2f336d22-a01b-4391-b664-ec823d1a9c25\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736139376, 1736139376),
(31, 'default', '{\"uuid\":\"c021065a-6bd1-4ca1-8864-c034b5a76737\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"395f3e0e-51be-4f6b-8e58-0a719ec74a7f\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736139376, 1736139376),
(32, 'default', '{\"uuid\":\"ace10873-0872-4def-bded-8ba67336c440\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"395f3e0e-51be-4f6b-8e58-0a719ec74a7f\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736139376, 1736139376),
(33, 'default', '{\"uuid\":\"3a0f27fb-30e6-4564-980c-62dc843e789c\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:7;s:9:\\\"relations\\\";a:1:{i:0;s:12:\\\"ticketStatus\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"8\\\";}s:11:\\\"customer_id\\\";s:1:\\\"6\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1736139949, 1736139949),
(34, 'default', '{\"uuid\":\"7dc332c2-4a69-4989-bccc-a222a4f9dc49\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:7;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"a6b9c665-ad0b-4238-97cd-ec1cfb2da688\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736139949, 1736139949),
(35, 'default', '{\"uuid\":\"d9bd056d-c079-41e1-ae2a-7ea3e4538b06\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:7;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"a6b9c665-ad0b-4238-97cd-ec1cfb2da688\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736139949, 1736139949),
(36, 'default', '{\"uuid\":\"1a1f0846-c64e-4c20-9753-1a238f926f1a\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:7;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"353eea5c-769b-4738-9118-291a1eb23232\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736139949, 1736139949),
(37, 'default', '{\"uuid\":\"4302373d-0a36-4dd5-9874-c4345b72b8a3\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:7;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"353eea5c-769b-4738-9118-291a1eb23232\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736139949, 1736139949),
(38, 'default', '{\"uuid\":\"15551a41-52a0-4342-a66b-613a8d5931a1\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:1:{i:0;s:12:\\\"ticketStatus\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"8\\\";}s:11:\\\"customer_id\\\";s:1:\\\"7\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1736140195, 1736140195),
(39, 'default', '{\"uuid\":\"478e4643-80b7-48ac-a576-b80626cfd6f7\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"a343d5fa-3a25-4971-926e-73f80b92282a\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736140195, 1736140195),
(40, 'default', '{\"uuid\":\"7f4033fa-d262-468d-b636-7eaf6fec8028\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"a343d5fa-3a25-4971-926e-73f80b92282a\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736140195, 1736140195),
(41, 'default', '{\"uuid\":\"1143560e-bb31-473f-b6d0-6f2ada116c66\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"7c1a5402-7dad-4c11-8f32-628b8a629cb3\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736140195, 1736140195),
(42, 'default', '{\"uuid\":\"a4331021-2151-45d8-8505-fca45b90feba\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"7c1a5402-7dad-4c11-8f32-628b8a629cb3\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736140195, 1736140195),
(43, 'default', '{\"uuid\":\"e4ab340b-cee0-493c-9711-d00f6374a386\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:9;s:9:\\\"relations\\\";a:1:{i:0;s:12:\\\"ticketStatus\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"8\\\";}s:11:\\\"customer_id\\\";s:1:\\\"8\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1736141294, 1736141294),
(44, 'default', '{\"uuid\":\"693cadfa-3ae1-4983-8592-59d1a3d60677\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:9;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"1ed8208b-4f8b-4f47-bc19-13e4620d389c\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736141294, 1736141294),
(45, 'default', '{\"uuid\":\"7db12f33-0b65-490c-9604-0f12ab96ff3e\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:9;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"1ed8208b-4f8b-4f47-bc19-13e4620d389c\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736141294, 1736141294),
(46, 'default', '{\"uuid\":\"a8b993cf-f3f7-45a6-be0f-7a59f4c7dc7f\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:9;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"6eb4a9f5-3a62-49cf-a7cd-5e63b57e2dc4\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736141294, 1736141294),
(47, 'default', '{\"uuid\":\"5334fd5b-1487-48b2-9782-c4dac84bbfa1\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:9;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"6eb4a9f5-3a62-49cf-a7cd-5e63b57e2dc4\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736141294, 1736141294),
(48, 'default', '{\"uuid\":\"6ddc142a-a157-464b-b91d-4a34bcd3d1b6\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:10;s:9:\\\"relations\\\";a:1:{i:0;s:12:\\\"ticketStatus\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"8\\\";}s:11:\\\"customer_id\\\";s:1:\\\"9\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1736144147, 1736144147),
(49, 'default', '{\"uuid\":\"1c742392-7a4d-43ce-a816-6275dc764733\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:10;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"f32a7974-dcc3-43c8-a2b1-e1e7a3ecf6c6\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736144147, 1736144147),
(50, 'default', '{\"uuid\":\"0df19765-eb6a-4450-a010-a760f0b17f4d\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:10;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"f32a7974-dcc3-43c8-a2b1-e1e7a3ecf6c6\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736144147, 1736144147),
(51, 'default', '{\"uuid\":\"e0225ed3-4d02-4663-87fa-0f643ce4cab2\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:10;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"d000e5a5-6f05-43b1-bb1d-d2887210b7a9\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736144147, 1736144147),
(52, 'default', '{\"uuid\":\"1dc26d67-8106-4f93-965d-5d25dbaafcfa\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:10;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"d000e5a5-6f05-43b1-bb1d-d2887210b7a9\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736144147, 1736144147),
(53, 'default', '{\"uuid\":\"c438137d-73c4-4f55-b552-7c5bc52cbc2b\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:11;s:9:\\\"relations\\\";a:1:{i:0;s:12:\\\"ticketStatus\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"8\\\";}s:11:\\\"customer_id\\\";s:2:\\\"10\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1736144377, 1736144377),
(54, 'default', '{\"uuid\":\"1b47590e-0610-42b8-b8d6-f3694d7d9a83\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:11;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"5b5013f2-70c4-44b8-b154-140d00124b44\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736144377, 1736144377),
(55, 'default', '{\"uuid\":\"42398d07-af9d-48dc-9164-17e24a4e1745\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:11;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"5b5013f2-70c4-44b8-b154-140d00124b44\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736144377, 1736144377),
(56, 'default', '{\"uuid\":\"870d7a38-6015-4871-a629-77b18b3b9996\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:11;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"b0443a15-6941-4282-aada-afa701df5c80\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736144377, 1736144377),
(57, 'default', '{\"uuid\":\"b7bdadff-66bf-4142-a708-c442acd450e1\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:11;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"b0443a15-6941-4282-aada-afa701df5c80\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736144377, 1736144377);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(58, 'default', '{\"uuid\":\"3d76e3e1-14c2-43cb-898d-b6aa39542bf5\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:12;s:9:\\\"relations\\\";a:1:{i:0;s:12:\\\"ticketStatus\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"8\\\";}s:11:\\\"customer_id\\\";s:2:\\\"11\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1736151436, 1736151436),
(59, 'default', '{\"uuid\":\"a67311b3-867c-4a5a-b3a6-3ca2a7e661f0\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:12;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"90bfebc0-5864-4dcb-b24a-964a9aa6ab02\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736151436, 1736151436),
(60, 'default', '{\"uuid\":\"56777c72-3a8c-46da-bbc7-c6b1839a837e\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:12;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"90bfebc0-5864-4dcb-b24a-964a9aa6ab02\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736151436, 1736151436),
(61, 'default', '{\"uuid\":\"9b056836-ba38-4353-8cf4-14d158572819\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:12;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"de92d15c-16bc-40b7-896d-9fd189209f54\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736151436, 1736151436),
(62, 'default', '{\"uuid\":\"e7b13bf4-e767-4b45-9dbe-63adf5dc7a14\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:12;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"de92d15c-16bc-40b7-896d-9fd189209f54\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736151436, 1736151436),
(63, 'default', '{\"uuid\":\"b1b3bfbd-60c2-48ae-b14a-cc8219adf386\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:13;s:9:\\\"relations\\\";a:1:{i:0;s:12:\\\"ticketStatus\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"8\\\";}s:11:\\\"customer_id\\\";s:2:\\\"12\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1736151804, 1736151804),
(64, 'default', '{\"uuid\":\"6b87c2b4-81ce-4cd9-9e50-42c73e797bfc\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:13;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"d134c2da-8655-4aab-876d-a7ebbe617b12\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736151804, 1736151804),
(65, 'default', '{\"uuid\":\"a63e0ac9-5a48-40aa-8d32-ad117214c905\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:13;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"d134c2da-8655-4aab-876d-a7ebbe617b12\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736151804, 1736151804),
(66, 'default', '{\"uuid\":\"4ae6df91-048d-4704-89c2-a871ff727858\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:13;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"e587adce-9b39-4c2b-b97a-43664a7e8025\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736151804, 1736151804),
(67, 'default', '{\"uuid\":\"032a6eef-4906-4b74-a6af-57b641ad3c7a\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:13;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"e587adce-9b39-4c2b-b97a-43664a7e8025\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736151804, 1736151804),
(68, 'default', '{\"uuid\":\"4b22358c-1a16-4ca3-bbdf-b40da78e3e68\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:14;s:9:\\\"relations\\\";a:1:{i:0;s:12:\\\"ticketStatus\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"8\\\";}s:11:\\\"customer_id\\\";s:2:\\\"13\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1736153826, 1736153826),
(69, 'default', '{\"uuid\":\"79461e22-45b5-45ff-8f09-98afbebded0f\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:14;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"9e475094-065b-4260-a53e-7fef26ee3bfe\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736153826, 1736153826),
(70, 'default', '{\"uuid\":\"177fe6d0-d861-4766-93b1-6bf1218d089c\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:14;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"9e475094-065b-4260-a53e-7fef26ee3bfe\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736153826, 1736153826),
(71, 'default', '{\"uuid\":\"ad31babd-085b-4df3-a159-a42cd195919d\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:14;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"d502b831-e3c1-43b1-9cd1-1eb1454fd4aa\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736153826, 1736153826),
(72, 'default', '{\"uuid\":\"b52e9383-e33d-45a6-9d17-066c9b253b40\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:14;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"d502b831-e3c1-43b1-9cd1-1eb1454fd4aa\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736153826, 1736153826),
(73, 'default', '{\"uuid\":\"f7cc66f8-faed-49d0-9fc5-dd890b96022d\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:12:\\\"ticketStatus\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"8\\\";}s:11:\\\"customer_id\\\";s:2:\\\"14\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1736154451, 1736154451),
(74, 'default', '{\"uuid\":\"9f4ebba3-1e87-4286-8619-4e1943dfd92d\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"530b1444-8913-45a9-9328-5fffcdc6dcdb\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736154451, 1736154451),
(75, 'default', '{\"uuid\":\"8945d5d3-df56-4535-ba42-d39202459aed\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"530b1444-8913-45a9-9328-5fffcdc6dcdb\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736154451, 1736154451),
(76, 'default', '{\"uuid\":\"f33a0d84-4beb-4667-9008-e390d7a147cc\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"c47ef9ef-193d-4a3c-927a-bd56ac69e07e\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736154451, 1736154451),
(77, 'default', '{\"uuid\":\"5b54d94a-6ba1-4bab-a1e1-1806d1239d3c\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"c47ef9ef-193d-4a3c-927a-bd56ac69e07e\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736154451, 1736154451),
(78, 'default', '{\"uuid\":\"370c0440-a5b7-45ce-b847-90b3f921930b\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:1:{i:0;s:12:\\\"ticketStatus\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"8\\\";}s:11:\\\"customer_id\\\";s:2:\\\"15\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1736154640, 1736154640),
(79, 'default', '{\"uuid\":\"5d6ed9b2-c74a-4d2d-8c40-89fd32ae4d66\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"350fa7fc-989b-499e-9019-2c5e00a7cd5e\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736154640, 1736154640),
(80, 'default', '{\"uuid\":\"78fcdb01-85da-4eed-8f21-596755a5a638\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"350fa7fc-989b-499e-9019-2c5e00a7cd5e\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736154640, 1736154640),
(81, 'default', '{\"uuid\":\"75e87950-c678-4b4d-8112-40584b2da07b\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"71499ba5-0f86-4961-9456-b1b9fb5bf0e7\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736154640, 1736154640),
(82, 'default', '{\"uuid\":\"b1157605-8d4f-4704-b63a-84286d2634ce\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"71499ba5-0f86-4961-9456-b1b9fb5bf0e7\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736154640, 1736154640),
(83, 'default', '{\"uuid\":\"dfe9d8b0-0a8f-4b2b-8312-839e6658864b\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:17;s:9:\\\"relations\\\";a:1:{i:0;s:12:\\\"ticketStatus\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"8\\\";}s:11:\\\"customer_id\\\";s:2:\\\"16\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1736154864, 1736154864),
(84, 'default', '{\"uuid\":\"a910a0fa-3401-4f99-a78b-6b1bd411e38d\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:17;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"3cf9654c-032e-44b9-af63-a6282abbc4f2\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736154864, 1736154864),
(85, 'default', '{\"uuid\":\"922e4c90-0fee-47d3-ba7d-797fdc701d78\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:17;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"3cf9654c-032e-44b9-af63-a6282abbc4f2\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736154864, 1736154864),
(86, 'default', '{\"uuid\":\"6d2e910c-0e3f-4fd6-b747-b4d5aefb4b22\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:17;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"8913b70a-52af-4d0a-a63a-ccf76f92e81e\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736154864, 1736154864);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(87, 'default', '{\"uuid\":\"cf381731-e446-4b09-98f7-73f9d5d1dd73\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:17;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"8913b70a-52af-4d0a-a63a-ccf76f92e81e\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736154864, 1736154864),
(88, 'default', '{\"uuid\":\"ae851f4e-dd51-4874-b585-7b0a66793f35\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:18;s:9:\\\"relations\\\";a:1:{i:0;s:12:\\\"ticketStatus\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"8\\\";}s:11:\\\"customer_id\\\";s:2:\\\"17\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1736155304, 1736155304),
(89, 'default', '{\"uuid\":\"a45525d2-7153-4e9a-890a-42776be68c7d\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:18;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"6c5d4d58-f5bd-4aa5-ab4d-52e443f36e02\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736155304, 1736155304),
(90, 'default', '{\"uuid\":\"16b6f183-2243-4cd1-ac2a-bde4fa5b75f6\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:18;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"6c5d4d58-f5bd-4aa5-ab4d-52e443f36e02\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736155304, 1736155304),
(91, 'default', '{\"uuid\":\"080099ed-cd4d-4484-ad8b-285c8ffb0d17\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:18;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"bb4e8f83-ccf1-4adf-bb35-a8948721bcc7\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736155304, 1736155304),
(92, 'default', '{\"uuid\":\"eeaddb49-0f46-4789-b39e-1a9073346b56\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:18;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"bb4e8f83-ccf1-4adf-bb35-a8948721bcc7\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736155304, 1736155304),
(93, 'default', '{\"uuid\":\"63f28d3b-2725-45b9-a2b9-96764570ed43\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:19;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"7\\\";}s:11:\\\"customer_id\\\";s:2:\\\"18\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1736155657, 1736155657),
(94, 'default', '{\"uuid\":\"19e66976-3fb2-44f5-8e72-f29423023e4d\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:7;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:19;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"2cc9025e-ef53-4a68-b891-15c5d72f3897\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736155657, 1736155657),
(95, 'default', '{\"uuid\":\"2707d236-66b6-46a3-afe9-86e7c4e5403e\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:7;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:19;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"2cc9025e-ef53-4a68-b891-15c5d72f3897\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736155657, 1736155657),
(96, 'default', '{\"uuid\":\"6cd9b2ca-b3d7-4502-a29e-e326ee7b6a69\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:7;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:19;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"4fd681f6-eb2a-49ec-8b07-23ba4f445607\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736155657, 1736155657),
(97, 'default', '{\"uuid\":\"77884c62-33a3-4978-9aea-2118abd6d81b\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:7;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:19;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"4fd681f6-eb2a-49ec-8b07-23ba4f445607\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736155657, 1736155657),
(98, 'default', '{\"uuid\":\"fa99c57f-6b96-4361-ad6e-3dc9cb86f06a\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:20;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"7\\\";}s:11:\\\"customer_id\\\";s:2:\\\"19\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1736156029, 1736156029),
(99, 'default', '{\"uuid\":\"59480eaf-dd9c-421f-b850-5800b87756e2\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:7;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:20;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"784c13d8-ba28-486b-8c7e-5a467105de54\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736156029, 1736156029),
(100, 'default', '{\"uuid\":\"41c35220-2dff-4dd2-b666-5e3ced8fb93f\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:7;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:20;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"784c13d8-ba28-486b-8c7e-5a467105de54\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736156029, 1736156029),
(101, 'default', '{\"uuid\":\"f7d1ea4e-6754-4861-a5d6-c1a0f1d11f96\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:7;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:20;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"216d04af-7c53-43eb-97dc-b5194d241a93\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736156029, 1736156029),
(102, 'default', '{\"uuid\":\"5b6f0dac-a203-4729-ad4a-720a0e33cbd2\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:7;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:20;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"216d04af-7c53-43eb-97dc-b5194d241a93\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736156029, 1736156029),
(103, 'default', '{\"uuid\":\"0b4a853d-090e-411e-be85-59288b50c781\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:21;s:9:\\\"relations\\\";a:1:{i:0;s:12:\\\"ticketStatus\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"8\\\";}s:11:\\\"customer_id\\\";s:2:\\\"20\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1736223047, 1736223047),
(104, 'default', '{\"uuid\":\"b00a7298-8d39-41ef-85ef-33e22c5580d7\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:21;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"f57b4bd4-9635-47a0-b2af-3423afaa738d\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736223047, 1736223047),
(105, 'default', '{\"uuid\":\"108eeb08-2dd3-4302-b79e-9594e081731f\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:21;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"f57b4bd4-9635-47a0-b2af-3423afaa738d\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736223047, 1736223047),
(106, 'default', '{\"uuid\":\"67316821-c20c-4eed-a05c-2f79ab961ee5\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:21;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"cae34305-c60c-4668-b545-9aed405bfef3\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736223047, 1736223047),
(107, 'default', '{\"uuid\":\"6bd4cbb4-4b3b-463b-b1bc-5b9b49a38058\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:21;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"cae34305-c60c-4668-b545-9aed405bfef3\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736223047, 1736223047),
(108, 'default', '{\"uuid\":\"71a5f9d2-1b89-4711-838c-0626ce98e7cc\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:22;s:9:\\\"relations\\\";a:1:{i:0;s:12:\\\"ticketStatus\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"8\\\";}s:11:\\\"customer_id\\\";s:2:\\\"21\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1736223367, 1736223367),
(109, 'default', '{\"uuid\":\"ce8f8608-957d-4534-8f61-3a72375239a7\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:22;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"9d9f7a6b-a21d-43e2-a800-b79bc743d7f3\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736223367, 1736223367),
(110, 'default', '{\"uuid\":\"f1b334b7-55df-4575-8921-311f6aac3221\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:22;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"9d9f7a6b-a21d-43e2-a800-b79bc743d7f3\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736223367, 1736223367),
(111, 'default', '{\"uuid\":\"080d42b2-ed5d-4480-8b7c-1074eebc88b9\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:22;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"bd74ebeb-0273-4221-8bef-18da7d333bfc\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736223367, 1736223367),
(112, 'default', '{\"uuid\":\"9d2ec1b9-819e-4743-b5ce-719d5c5896d8\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:22;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"bd74ebeb-0273-4221-8bef-18da7d333bfc\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736223367, 1736223367),
(113, 'default', '{\"uuid\":\"c204bd2a-506e-4ea2-9f87-14aa4c698e45\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:23;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"7\\\";}s:11:\\\"customer_id\\\";s:2:\\\"22\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1736223662, 1736223662),
(114, 'default', '{\"uuid\":\"ad9a8656-a359-4c47-bd76-5d09ad5918ec\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:7;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:23;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"807a50dd-24a2-435a-a14c-00b80de537f8\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736223662, 1736223662),
(115, 'default', '{\"uuid\":\"c6b8ef96-25a4-4360-9953-67af10a8417d\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:7;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:23;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"807a50dd-24a2-435a-a14c-00b80de537f8\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736223662, 1736223662);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(116, 'default', '{\"uuid\":\"914fbb05-3f42-40bf-993f-8b97a8d19729\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:7;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:23;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"58f75dee-a024-41db-9334-9b9b22a2ae1f\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736223662, 1736223662),
(117, 'default', '{\"uuid\":\"98811ffe-ac86-46f2-8e6f-675512c1231d\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:7;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:23;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"58f75dee-a024-41db-9334-9b9b22a2ae1f\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736223662, 1736223662),
(118, 'default', '{\"uuid\":\"39a88038-aa70-4e11-a7d2-5eacd4fd8d55\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:7;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:23;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"27bc10a8-642f-4969-a32c-eeddf77c8640\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736223662, 1736223662),
(119, 'default', '{\"uuid\":\"f6491f6e-08c1-4b21-a096-8f478bb4739f\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:7;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:23;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"27bc10a8-642f-4969-a32c-eeddf77c8640\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736223662, 1736223662),
(120, 'default', '{\"uuid\":\"f2d8df01-a8a6-449f-8c22-c5d747056bb8\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:24;s:9:\\\"relations\\\";a:1:{i:0;s:12:\\\"ticketStatus\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"8\\\";}s:11:\\\"customer_id\\\";s:2:\\\"23\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1736224403, 1736224403),
(121, 'default', '{\"uuid\":\"7c146b0e-9017-4031-aee0-b023bbd920e1\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:24;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"e1defc5e-d0a6-40c9-8ddf-35046d1cdb88\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736224403, 1736224403),
(122, 'default', '{\"uuid\":\"5d287522-5da3-4137-9b46-da1f2417ccce\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:24;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"e1defc5e-d0a6-40c9-8ddf-35046d1cdb88\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736224403, 1736224403),
(123, 'default', '{\"uuid\":\"0592f1b5-54bc-41dd-af66-7e691f6129b9\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:24;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"6cf7bed1-7014-4a9c-a516-e2758caad552\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736224403, 1736224403),
(124, 'default', '{\"uuid\":\"e8fed0ba-223f-4c9a-b23c-e1014ad78189\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:24;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"6cf7bed1-7014-4a9c-a516-e2758caad552\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736224403, 1736224403),
(125, 'default', '{\"uuid\":\"9a35f840-5a4a-4c7d-9e17-08c26f4034e4\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:25;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"9\\\";}s:11:\\\"customer_id\\\";s:2:\\\"24\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1736224628, 1736224628),
(126, 'default', '{\"uuid\":\"31fbbdf2-b820-41c5-af10-dd6d2be43925\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:9;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:25;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"03944cfc-3ab0-4339-ba00-80fd87dd39ed\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736224628, 1736224628),
(127, 'default', '{\"uuid\":\"3f298247-d2e0-4c7e-ad1b-44eae7d48711\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:9;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:25;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"03944cfc-3ab0-4339-ba00-80fd87dd39ed\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736224628, 1736224628),
(128, 'default', '{\"uuid\":\"e97d90b6-5c71-43ea-8e77-f7ac86d3cc1f\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:9;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:25;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"6c5937c0-0c6f-4c6b-adf0-1c1758a2f969\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736224628, 1736224628),
(129, 'default', '{\"uuid\":\"f65dbc6b-9a91-4cea-83c9-8ddff4eb2429\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:9;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:25;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"6c5937c0-0c6f-4c6b-adf0-1c1758a2f969\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736224628, 1736224628),
(130, 'default', '{\"uuid\":\"ed076df1-323f-4577-8044-4cf9d56b6359\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:26;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"9\\\";}s:11:\\\"customer_id\\\";s:2:\\\"25\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1736225013, 1736225013),
(131, 'default', '{\"uuid\":\"72856d23-6ff7-4153-82b2-8700dab54d49\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:9;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:26;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"5516cbed-61c1-43c7-9352-bfe68a8202b4\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736225013, 1736225013),
(132, 'default', '{\"uuid\":\"ecd4ce1f-b43c-406a-b22e-db2e07b84c5f\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:9;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:26;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"5516cbed-61c1-43c7-9352-bfe68a8202b4\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736225013, 1736225013),
(133, 'default', '{\"uuid\":\"33690603-cc22-423c-b279-567b6ae48eca\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:9;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:26;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"e48f02a0-f945-46a4-aac7-5ebaefef79d2\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736225013, 1736225013),
(134, 'default', '{\"uuid\":\"12997793-99cf-4b45-b6d0-e8a3096d6ab2\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:9;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:26;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"e48f02a0-f945-46a4-aac7-5ebaefef79d2\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736225013, 1736225013),
(135, 'default', '{\"uuid\":\"8018ba72-8264-46f0-b298-9dba1f446b38\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:27;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"9\\\";}s:11:\\\"customer_id\\\";s:2:\\\"26\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1736225192, 1736225192),
(136, 'default', '{\"uuid\":\"0efcc164-6b25-4a7a-9415-9a96a5102a0b\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:9;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:27;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"fa8beb42-5565-43f8-a29c-09c980ee8e78\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736225192, 1736225192),
(137, 'default', '{\"uuid\":\"7b1fcb0b-f422-4124-aa7a-6273615171b7\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:9;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:27;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"fa8beb42-5565-43f8-a29c-09c980ee8e78\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736225192, 1736225192),
(138, 'default', '{\"uuid\":\"f035d13d-70ee-4e3b-95f6-fec2a59d4114\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:9;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:27;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"be764783-f32d-46b7-b154-e6842d3bab96\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736225192, 1736225192),
(139, 'default', '{\"uuid\":\"463f03f8-8900-4186-8506-f1de857458fe\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:9;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:27;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"be764783-f32d-46b7-b154-e6842d3bab96\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736225192, 1736225192),
(140, 'default', '{\"uuid\":\"4b470c6f-53ee-4807-993b-89332b0e686f\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:28;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"9\\\";}s:11:\\\"customer_id\\\";s:2:\\\"27\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1736225375, 1736225375),
(141, 'default', '{\"uuid\":\"7085628e-5320-4df4-84d4-94d25ee0fffd\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:9;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:28;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"b243552c-d0b3-4183-94cf-60d1fd22b06b\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736225375, 1736225375),
(142, 'default', '{\"uuid\":\"29ee4408-72df-473f-8457-fc294a7eafce\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:9;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:28;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"b243552c-d0b3-4183-94cf-60d1fd22b06b\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736225375, 1736225375),
(143, 'default', '{\"uuid\":\"692bd989-d35b-474b-952e-20a9f6556117\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:9;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:28;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"1bd8ad82-c9cf-40f8-9a68-396a1e5d18a4\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736225375, 1736225375);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(144, 'default', '{\"uuid\":\"b5cf8838-536d-4250-b253-9ba21d541a47\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:9;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:28;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"1bd8ad82-c9cf-40f8-9a68-396a1e5d18a4\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736225375, 1736225375),
(145, 'default', '{\"uuid\":\"bbf96544-feb4-487a-b0b1-d4d5b1c7a4f3\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:29;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"9\\\";}s:11:\\\"customer_id\\\";s:2:\\\"28\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1736226060, 1736226060),
(146, 'default', '{\"uuid\":\"fd53e66e-10fe-47eb-b0ae-a5f74b92ff59\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:9;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:29;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"be39bca1-3048-4f76-bddc-52ece580037e\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736226060, 1736226060),
(147, 'default', '{\"uuid\":\"6b495345-1194-4263-a2ec-76e6436078d8\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:9;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:29;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"be39bca1-3048-4f76-bddc-52ece580037e\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736226060, 1736226060),
(148, 'default', '{\"uuid\":\"26dd59b7-2ecb-4300-bb25-c1cff3eef19d\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:9;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:29;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"18c05ab8-277e-425b-90a2-eedaf8954cca\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736226060, 1736226060),
(149, 'default', '{\"uuid\":\"0cf5353b-c71d-4d14-a5c0-17767c05d58b\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:9;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:29;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"18c05ab8-277e-425b-90a2-eedaf8954cca\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736226060, 1736226060),
(150, 'default', '{\"uuid\":\"631beac6-4fb6-4f6a-b0b7-b32cf8e19449\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:30;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"9\\\";}s:11:\\\"customer_id\\\";s:2:\\\"29\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1736226220, 1736226220),
(151, 'default', '{\"uuid\":\"1a5719fa-f450-422d-af60-359af89a97f0\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:9;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:30;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"1344e1c2-9cdd-4d76-9ba7-b576e71206cb\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736226220, 1736226220),
(152, 'default', '{\"uuid\":\"252aa52d-1ffe-448c-996c-20039a90f7d5\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:9;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:30;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"1344e1c2-9cdd-4d76-9ba7-b576e71206cb\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736226220, 1736226220),
(153, 'default', '{\"uuid\":\"8129acd2-9217-4d39-9fa9-11c12d928b99\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:9;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:30;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"e7fbeea1-f74e-45b7-bfad-56567ec00bc4\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736226220, 1736226220),
(154, 'default', '{\"uuid\":\"718fd953-7917-4b6d-8c32-99326d8263be\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:9;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:30;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"e7fbeea1-f74e-45b7-bfad-56567ec00bc4\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736226220, 1736226220),
(155, 'default', '{\"uuid\":\"4ceae327-c477-4cf7-805e-5a94c489d00f\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:31;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"9\\\";}s:11:\\\"customer_id\\\";s:2:\\\"30\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1736226378, 1736226378),
(156, 'default', '{\"uuid\":\"32721293-ab7d-48a3-8e86-851a09b018d1\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:9;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:31;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"2c6e240b-abe9-4f53-af22-e1e5455905d5\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736226378, 1736226378),
(157, 'default', '{\"uuid\":\"2297e2cc-98bf-48e1-a99e-fe97573b83a4\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:9;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:31;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"2c6e240b-abe9-4f53-af22-e1e5455905d5\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736226378, 1736226378),
(158, 'default', '{\"uuid\":\"4cfcdca4-7beb-4732-9270-cbcd273a1039\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:9;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:31;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"941af7fd-b576-4eac-8694-52b402b46d3d\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736226378, 1736226378),
(159, 'default', '{\"uuid\":\"984739c6-9244-4808-ac28-3411b5cdfa94\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:9;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:31;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"941af7fd-b576-4eac-8694-52b402b46d3d\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736226378, 1736226378),
(160, 'default', '{\"uuid\":\"af53b5d7-1d3e-414a-a9f7-2a71894e1dc4\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:32;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"9\\\";}s:11:\\\"customer_id\\\";s:2:\\\"31\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1736226713, 1736226713),
(161, 'default', '{\"uuid\":\"515b9686-580d-492f-b943-cc1fa3aa5cbe\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:9;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:32;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"393ae4f3-ef1b-490f-8ea1-cb5441172de2\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736226713, 1736226713),
(162, 'default', '{\"uuid\":\"dfe4abd4-2ff9-4f96-b252-864ff3c2f1b2\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:9;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:32;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"393ae4f3-ef1b-490f-8ea1-cb5441172de2\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736226713, 1736226713),
(163, 'default', '{\"uuid\":\"d61883d8-608c-416c-adf3-480fdd2e83b5\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:9;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:32;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"9c5afbcc-b683-418b-a8b7-2d08f1201a01\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736226713, 1736226713),
(164, 'default', '{\"uuid\":\"d59ef34a-722c-418a-86b4-053b8b642486\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:9;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:32;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"9c5afbcc-b683-418b-a8b7-2d08f1201a01\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736226713, 1736226713),
(165, 'default', '{\"uuid\":\"8b352525-4c89-4c21-82c9-2ebc96200465\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:33;s:9:\\\"relations\\\";a:1:{i:0;s:12:\\\"ticketStatus\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"8\\\";}s:11:\\\"customer_id\\\";s:2:\\\"32\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1736226983, 1736226983),
(166, 'default', '{\"uuid\":\"747388cb-fb46-4ca0-bee5-dca1d88e236e\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:33;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"8f71f1c3-4bb1-4515-a357-ed66b29316c9\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736226983, 1736226983),
(167, 'default', '{\"uuid\":\"0d303632-ea44-4f24-bee1-1b42ab39ce64\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:33;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"8f71f1c3-4bb1-4515-a357-ed66b29316c9\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736226983, 1736226983),
(168, 'default', '{\"uuid\":\"e90dc5ff-ebe0-4579-bfcd-458b92ae343b\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:33;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"62375110-86b9-45df-93e0-0569763957bb\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736226983, 1736226983),
(169, 'default', '{\"uuid\":\"1bebee08-ffd3-42cb-89e3-c61b1dff0198\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:33;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"62375110-86b9-45df-93e0-0569763957bb\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736226983, 1736226983),
(170, 'default', '{\"uuid\":\"b01e5515-604d-4454-b5ca-bf63aa088011\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:34;s:9:\\\"relations\\\";a:1:{i:0;s:12:\\\"ticketStatus\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"8\\\";}s:11:\\\"customer_id\\\";s:2:\\\"33\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1736227139, 1736227139),
(171, 'default', '{\"uuid\":\"01f6f819-e6a2-4678-94e3-420efd1d617f\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:34;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"46f9aff1-bb1d-4e70-8204-17de519d90b2\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736227139, 1736227139),
(172, 'default', '{\"uuid\":\"7c6ffd55-89c1-407d-b825-6ddb20bac1eb\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:34;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"46f9aff1-bb1d-4e70-8204-17de519d90b2\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736227139, 1736227139);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(173, 'default', '{\"uuid\":\"1dba76ac-ddda-4ae2-acf5-778cabf59605\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:34;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"6f392c4e-7233-4d14-aefd-9e5b16a9513a\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736227139, 1736227139),
(174, 'default', '{\"uuid\":\"a2ab7ce1-adb9-4371-9fd9-90e4a30535bd\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:34;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"6f392c4e-7233-4d14-aefd-9e5b16a9513a\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736227139, 1736227139),
(175, 'default', '{\"uuid\":\"a2e3e946-ae9a-4a4b-a2c8-515102bab7e0\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:35;s:9:\\\"relations\\\";a:1:{i:0;s:12:\\\"ticketStatus\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"8\\\";}s:11:\\\"customer_id\\\";s:2:\\\"34\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1736239472, 1736239472),
(176, 'default', '{\"uuid\":\"28cc6195-080f-49b8-a6dc-ba47ccc84cb5\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:35;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"4eab8b3f-04b3-4718-b227-2523c773f695\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736239472, 1736239472),
(177, 'default', '{\"uuid\":\"46e5c85d-f444-4df7-ab2d-fa56df283d87\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:35;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"4eab8b3f-04b3-4718-b227-2523c773f695\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736239473, 1736239473),
(178, 'default', '{\"uuid\":\"329a76de-9734-4dd2-9007-b6289964d1ea\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:35;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"70ee2789-df6c-43b0-b85c-9663faa4bad6\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736239473, 1736239473),
(179, 'default', '{\"uuid\":\"466bb174-6a95-4111-96d8-3a2bf6ac63c7\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:35;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"70ee2789-df6c-43b0-b85c-9663faa4bad6\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736239473, 1736239473),
(180, 'default', '{\"uuid\":\"5424d55e-8ffd-4c30-be34-8ab6f2bd9812\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:36;s:9:\\\"relations\\\";a:1:{i:0;s:12:\\\"ticketStatus\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"8\\\";}s:11:\\\"customer_id\\\";s:2:\\\"34\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1736239473, 1736239473),
(181, 'default', '{\"uuid\":\"f0a89eff-6fa8-4deb-ae7e-38301e99d112\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:36;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"7d99c1c7-f8c2-42d4-8578-f1d8aaecf4d5\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736239473, 1736239473),
(182, 'default', '{\"uuid\":\"f4c01995-2820-4f8e-9aaa-816d465311b2\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:36;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"7d99c1c7-f8c2-42d4-8578-f1d8aaecf4d5\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736239473, 1736239473),
(183, 'default', '{\"uuid\":\"5b59fc86-2e59-4b3a-9709-2f11b87295bb\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:36;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"58956766-6a2c-49d5-b95e-88f490ef7d7e\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736239473, 1736239473),
(184, 'default', '{\"uuid\":\"3358e8d6-d338-457c-8e53-58674d936b9e\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:1;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:36;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"58956766-6a2c-49d5-b95e-88f490ef7d7e\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1736239473, 1736239473),
(185, 'default', '{\"uuid\":\"499b16f6-bf40-4c06-b8ad-ca3b072cbe2d\",\"displayName\":\"App\\\\Notifications\\\\CommonNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\CommonNotification\\\":4:{s:8:\\\"channels\\\";a:2:{i:0;s:4:\\\"mail\\\";i:1;s:8:\\\"database\\\";}s:5:\\\"event\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"data\\\";a:2:{s:4:\\\"mail\\\";a:2:{s:7:\\\"subject\\\";s:22:\\\"Ticket Assigned To You\\\";s:5:\\\"lines\\\";a:4:{i:0;s:52:\\\"Anusha Assigned #ticket - Missing consignment to you\\\";i:1;s:26:\\\"Issue: Missing consignment\\\";i:2;s:23:\\\"Description: JPR TO TVM\\\";i:3;s:18:\\\"Assigned By:Anusha\\\";}}s:8:\\\"database\\\";a:1:{s:12:\\\"notification\\\";a:3:{s:5:\\\"title\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"body\\\";s:56:\\\"Anusha Assigned #ticket - Missing consignment and to you\\\";s:9:\\\"meta_data\\\";a:3:{s:4:\\\"type\\\";s:4:\\\"task\\\";s:4:\\\"slug\\\";s:22:\\\"missing-consignment-25\\\";s:9:\\\"ticket_id\\\";i:25;}}}}s:2:\\\"id\\\";s:36:\\\"bc483065-31be-403f-8b9f-6331bd84aab2\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1736245137, 1736245137),
(186, 'default', '{\"uuid\":\"e953992d-bb5a-45e6-907e-4e78f3839d1d\",\"displayName\":\"App\\\\Notifications\\\\CommonNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\CommonNotification\\\":4:{s:8:\\\"channels\\\";a:2:{i:0;s:4:\\\"mail\\\";i:1;s:8:\\\"database\\\";}s:5:\\\"event\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"data\\\";a:2:{s:4:\\\"mail\\\";a:2:{s:7:\\\"subject\\\";s:22:\\\"Ticket Assigned To You\\\";s:5:\\\"lines\\\";a:4:{i:0;s:52:\\\"Anusha Assigned #ticket - Missing consignment to you\\\";i:1;s:26:\\\"Issue: Missing consignment\\\";i:2;s:23:\\\"Description: JPR TO TVM\\\";i:3;s:18:\\\"Assigned By:Anusha\\\";}}s:8:\\\"database\\\";a:1:{s:12:\\\"notification\\\";a:3:{s:5:\\\"title\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"body\\\";s:56:\\\"Anusha Assigned #ticket - Missing consignment and to you\\\";s:9:\\\"meta_data\\\";a:3:{s:4:\\\"type\\\";s:4:\\\"task\\\";s:4:\\\"slug\\\";s:22:\\\"missing-consignment-25\\\";s:9:\\\"ticket_id\\\";i:25;}}}}s:2:\\\"id\\\";s:36:\\\"bc483065-31be-403f-8b9f-6331bd84aab2\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1736245137, 1736245137),
(187, 'default', '{\"uuid\":\"200455c4-bffc-40a6-aea9-3246396c38a5\",\"displayName\":\"App\\\\Notifications\\\\CommonNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:7;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\CommonNotification\\\":4:{s:8:\\\"channels\\\";a:2:{i:0;s:4:\\\"mail\\\";i:1;s:8:\\\"database\\\";}s:5:\\\"event\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"data\\\";a:2:{s:4:\\\"mail\\\";a:2:{s:7:\\\"subject\\\";s:22:\\\"Ticket Assigned To You\\\";s:5:\\\"lines\\\";a:4:{i:0;s:52:\\\"Anusha Assigned #ticket - Missing consignment to you\\\";i:1;s:26:\\\"Issue: Missing consignment\\\";i:2;s:23:\\\"Description: AHD TO EKM\\\";i:3;s:18:\\\"Assigned By:Anusha\\\";}}s:8:\\\"database\\\";a:1:{s:12:\\\"notification\\\";a:3:{s:5:\\\"title\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"body\\\";s:56:\\\"Anusha Assigned #ticket - Missing consignment and to you\\\";s:9:\\\"meta_data\\\";a:3:{s:4:\\\"type\\\";s:4:\\\"task\\\";s:4:\\\"slug\\\";s:22:\\\"missing-consignment-26\\\";s:9:\\\"ticket_id\\\";i:26;}}}}s:2:\\\"id\\\";s:36:\\\"c83cdfd3-a1e7-4539-865b-f0283cab68bf\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1736245378, 1736245378),
(188, 'default', '{\"uuid\":\"995e17d9-1c14-44ea-9d46-2e075270a5ca\",\"displayName\":\"App\\\\Notifications\\\\CommonNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:7;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\CommonNotification\\\":4:{s:8:\\\"channels\\\";a:2:{i:0;s:4:\\\"mail\\\";i:1;s:8:\\\"database\\\";}s:5:\\\"event\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"data\\\";a:2:{s:4:\\\"mail\\\";a:2:{s:7:\\\"subject\\\";s:22:\\\"Ticket Assigned To You\\\";s:5:\\\"lines\\\";a:4:{i:0;s:52:\\\"Anusha Assigned #ticket - Missing consignment to you\\\";i:1;s:26:\\\"Issue: Missing consignment\\\";i:2;s:23:\\\"Description: AHD TO EKM\\\";i:3;s:18:\\\"Assigned By:Anusha\\\";}}s:8:\\\"database\\\";a:1:{s:12:\\\"notification\\\";a:3:{s:5:\\\"title\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"body\\\";s:56:\\\"Anusha Assigned #ticket - Missing consignment and to you\\\";s:9:\\\"meta_data\\\";a:3:{s:4:\\\"type\\\";s:4:\\\"task\\\";s:4:\\\"slug\\\";s:22:\\\"missing-consignment-26\\\";s:9:\\\"ticket_id\\\";i:26;}}}}s:2:\\\"id\\\";s:36:\\\"c83cdfd3-a1e7-4539-865b-f0283cab68bf\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1736245378, 1736245378),
(189, 'default', '{\"uuid\":\"a841ed9f-ba81-47af-bc14-1e7d9154a746\",\"displayName\":\"App\\\\Notifications\\\\CommonNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\CommonNotification\\\":4:{s:8:\\\"channels\\\";a:2:{i:0;s:4:\\\"mail\\\";i:1;s:8:\\\"database\\\";}s:5:\\\"event\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"data\\\";a:2:{s:4:\\\"mail\\\";a:2:{s:7:\\\"subject\\\";s:22:\\\"Ticket Assigned To You\\\";s:5:\\\"lines\\\";a:4:{i:0;s:52:\\\"Anusha Assigned #ticket - Missing consignment to you\\\";i:1;s:26:\\\"Issue: Missing consignment\\\";i:2;s:23:\\\"Description: AHD TO EKM\\\";i:3;s:18:\\\"Assigned By:Anusha\\\";}}s:8:\\\"database\\\";a:1:{s:12:\\\"notification\\\";a:3:{s:5:\\\"title\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"body\\\";s:56:\\\"Anusha Assigned #ticket - Missing consignment and to you\\\";s:9:\\\"meta_data\\\";a:3:{s:4:\\\"type\\\";s:4:\\\"task\\\";s:4:\\\"slug\\\";s:22:\\\"missing-consignment-26\\\";s:9:\\\"ticket_id\\\";i:26;}}}}s:2:\\\"id\\\";s:36:\\\"9857d8f0-2470-4096-a739-ce6ec4f27fc4\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1736245395, 1736245395),
(190, 'default', '{\"uuid\":\"0ef6a600-e941-4176-8ed5-41acf48ee7a0\",\"displayName\":\"App\\\\Notifications\\\\CommonNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\CommonNotification\\\":4:{s:8:\\\"channels\\\";a:2:{i:0;s:4:\\\"mail\\\";i:1;s:8:\\\"database\\\";}s:5:\\\"event\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"data\\\";a:2:{s:4:\\\"mail\\\";a:2:{s:7:\\\"subject\\\";s:22:\\\"Ticket Assigned To You\\\";s:5:\\\"lines\\\";a:4:{i:0;s:52:\\\"Anusha Assigned #ticket - Missing consignment to you\\\";i:1;s:26:\\\"Issue: Missing consignment\\\";i:2;s:23:\\\"Description: AHD TO EKM\\\";i:3;s:18:\\\"Assigned By:Anusha\\\";}}s:8:\\\"database\\\";a:1:{s:12:\\\"notification\\\";a:3:{s:5:\\\"title\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"body\\\";s:56:\\\"Anusha Assigned #ticket - Missing consignment and to you\\\";s:9:\\\"meta_data\\\";a:3:{s:4:\\\"type\\\";s:4:\\\"task\\\";s:4:\\\"slug\\\";s:22:\\\"missing-consignment-26\\\";s:9:\\\"ticket_id\\\";i:26;}}}}s:2:\\\"id\\\";s:36:\\\"9857d8f0-2470-4096-a739-ce6ec4f27fc4\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1736245395, 1736245395),
(191, 'default', '{\"uuid\":\"c8302cea-20a3-4c98-8320-8a916a7c0c7e\",\"displayName\":\"App\\\\Notifications\\\\CommonNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\CommonNotification\\\":4:{s:8:\\\"channels\\\";a:2:{i:0;s:4:\\\"mail\\\";i:1;s:8:\\\"database\\\";}s:5:\\\"event\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"data\\\";a:2:{s:4:\\\"mail\\\";a:2:{s:7:\\\"subject\\\";s:22:\\\"Ticket Assigned To You\\\";s:5:\\\"lines\\\";a:4:{i:0;s:52:\\\"Anusha Assigned #ticket - Missing consignment to you\\\";i:1;s:26:\\\"Issue: Missing consignment\\\";i:2;s:25:\\\"Description: BMY to KOTIM\\\";i:3;s:18:\\\"Assigned By:Anusha\\\";}}s:8:\\\"database\\\";a:1:{s:12:\\\"notification\\\";a:3:{s:5:\\\"title\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"body\\\";s:56:\\\"Anusha Assigned #ticket - Missing consignment and to you\\\";s:9:\\\"meta_data\\\";a:3:{s:4:\\\"type\\\";s:4:\\\"task\\\";s:4:\\\"slug\\\";s:22:\\\"missing-consignment-29\\\";s:9:\\\"ticket_id\\\";i:29;}}}}s:2:\\\"id\\\";s:36:\\\"10acdcab-f703-48c7-a27d-7e81e5503cee\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1736245608, 1736245608),
(192, 'default', '{\"uuid\":\"1a72e865-f23c-4260-94b7-c04bcc6a2b16\",\"displayName\":\"App\\\\Notifications\\\\CommonNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\CommonNotification\\\":4:{s:8:\\\"channels\\\";a:2:{i:0;s:4:\\\"mail\\\";i:1;s:8:\\\"database\\\";}s:5:\\\"event\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"data\\\";a:2:{s:4:\\\"mail\\\";a:2:{s:7:\\\"subject\\\";s:22:\\\"Ticket Assigned To You\\\";s:5:\\\"lines\\\";a:4:{i:0;s:52:\\\"Anusha Assigned #ticket - Missing consignment to you\\\";i:1;s:26:\\\"Issue: Missing consignment\\\";i:2;s:25:\\\"Description: BMY to KOTIM\\\";i:3;s:18:\\\"Assigned By:Anusha\\\";}}s:8:\\\"database\\\";a:1:{s:12:\\\"notification\\\";a:3:{s:5:\\\"title\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"body\\\";s:56:\\\"Anusha Assigned #ticket - Missing consignment and to you\\\";s:9:\\\"meta_data\\\";a:3:{s:4:\\\"type\\\";s:4:\\\"task\\\";s:4:\\\"slug\\\";s:22:\\\"missing-consignment-29\\\";s:9:\\\"ticket_id\\\";i:29;}}}}s:2:\\\"id\\\";s:36:\\\"10acdcab-f703-48c7-a27d-7e81e5503cee\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1736245608, 1736245608),
(193, 'default', '{\"uuid\":\"8ba844d9-69e8-4e6f-a389-7b280976f7f9\",\"displayName\":\"App\\\\Notifications\\\\CommonNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\CommonNotification\\\":4:{s:8:\\\"channels\\\";a:2:{i:0;s:4:\\\"mail\\\";i:1;s:8:\\\"database\\\";}s:5:\\\"event\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"data\\\";a:2:{s:4:\\\"mail\\\";a:2:{s:7:\\\"subject\\\";s:22:\\\"Ticket Assigned To You\\\";s:5:\\\"lines\\\";a:4:{i:0;s:52:\\\"Anusha Assigned #ticket - MISSING CONSIGNMENT to you\\\";i:1;s:26:\\\"Issue: MISSING CONSIGNMENT\\\";i:2;s:25:\\\"Description: KOTIM TO EKM\\\";i:3;s:18:\\\"Assigned By:Anusha\\\";}}s:8:\\\"database\\\";a:1:{s:12:\\\"notification\\\";a:3:{s:5:\\\"title\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"body\\\";s:56:\\\"Anusha Assigned #ticket - MISSING CONSIGNMENT and to you\\\";s:9:\\\"meta_data\\\";a:3:{s:4:\\\"type\\\";s:4:\\\"task\\\";s:4:\\\"slug\\\";s:22:\\\"missing-consignment-20\\\";s:9:\\\"ticket_id\\\";i:20;}}}}s:2:\\\"id\\\";s:36:\\\"162ccc48-af29-46f4-9dba-de5064d01289\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1736245910, 1736245910),
(194, 'default', '{\"uuid\":\"35009271-b197-4b46-b4aa-cd81bf026f5a\",\"displayName\":\"App\\\\Notifications\\\\CommonNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\CommonNotification\\\":4:{s:8:\\\"channels\\\";a:2:{i:0;s:4:\\\"mail\\\";i:1;s:8:\\\"database\\\";}s:5:\\\"event\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"data\\\";a:2:{s:4:\\\"mail\\\";a:2:{s:7:\\\"subject\\\";s:22:\\\"Ticket Assigned To You\\\";s:5:\\\"lines\\\";a:4:{i:0;s:52:\\\"Anusha Assigned #ticket - MISSING CONSIGNMENT to you\\\";i:1;s:26:\\\"Issue: MISSING CONSIGNMENT\\\";i:2;s:25:\\\"Description: KOTIM TO EKM\\\";i:3;s:18:\\\"Assigned By:Anusha\\\";}}s:8:\\\"database\\\";a:1:{s:12:\\\"notification\\\";a:3:{s:5:\\\"title\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"body\\\";s:56:\\\"Anusha Assigned #ticket - MISSING CONSIGNMENT and to you\\\";s:9:\\\"meta_data\\\";a:3:{s:4:\\\"type\\\";s:4:\\\"task\\\";s:4:\\\"slug\\\";s:22:\\\"missing-consignment-20\\\";s:9:\\\"ticket_id\\\";i:20;}}}}s:2:\\\"id\\\";s:36:\\\"162ccc48-af29-46f4-9dba-de5064d01289\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1736245910, 1736245910),
(195, 'default', '{\"uuid\":\"c7aca496-f01d-4f80-829a-2be0005b5943\",\"displayName\":\"App\\\\Notifications\\\\CommonNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\CommonNotification\\\":4:{s:8:\\\"channels\\\";a:2:{i:0;s:4:\\\"mail\\\";i:1;s:8:\\\"database\\\";}s:5:\\\"event\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"data\\\";a:2:{s:4:\\\"mail\\\";a:2:{s:7:\\\"subject\\\";s:22:\\\"Ticket Assigned To You\\\";s:5:\\\"lines\\\";a:4:{i:0;s:52:\\\"Anusha Assigned #ticket - Missing consignment to you\\\";i:1;s:26:\\\"Issue: Missing consignment\\\";i:2;s:24:\\\"Description: AHD TO CPLY\\\";i:3;s:18:\\\"Assigned By:Anusha\\\";}}s:8:\\\"database\\\";a:1:{s:12:\\\"notification\\\";a:3:{s:5:\\\"title\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"body\\\";s:56:\\\"Anusha Assigned #ticket - Missing consignment and to you\\\";s:9:\\\"meta_data\\\";a:3:{s:4:\\\"type\\\";s:4:\\\"task\\\";s:4:\\\"slug\\\";s:22:\\\"missing-consignment-23\\\";s:9:\\\"ticket_id\\\";i:23;}}}}s:2:\\\"id\\\";s:36:\\\"0f0f96d8-622e-4e66-830b-1cb45e529ea4\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1737184528, 1737184528),
(196, 'default', '{\"uuid\":\"7ce8b04c-a758-4460-958d-6fad76e78bbe\",\"displayName\":\"App\\\\Notifications\\\\CommonNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\CommonNotification\\\":4:{s:8:\\\"channels\\\";a:2:{i:0;s:4:\\\"mail\\\";i:1;s:8:\\\"database\\\";}s:5:\\\"event\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"data\\\";a:2:{s:4:\\\"mail\\\";a:2:{s:7:\\\"subject\\\";s:22:\\\"Ticket Assigned To You\\\";s:5:\\\"lines\\\";a:4:{i:0;s:52:\\\"Anusha Assigned #ticket - Missing consignment to you\\\";i:1;s:26:\\\"Issue: Missing consignment\\\";i:2;s:24:\\\"Description: AHD TO CPLY\\\";i:3;s:18:\\\"Assigned By:Anusha\\\";}}s:8:\\\"database\\\";a:1:{s:12:\\\"notification\\\";a:3:{s:5:\\\"title\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"body\\\";s:56:\\\"Anusha Assigned #ticket - Missing consignment and to you\\\";s:9:\\\"meta_data\\\";a:3:{s:4:\\\"type\\\";s:4:\\\"task\\\";s:4:\\\"slug\\\";s:22:\\\"missing-consignment-23\\\";s:9:\\\"ticket_id\\\";i:23;}}}}s:2:\\\"id\\\";s:36:\\\"0f0f96d8-622e-4e66-830b-1cb45e529ea4\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1737184528, 1737184528),
(197, 'default', '{\"uuid\":\"7d286c90-161b-4493-9120-007fc8ea99cb\",\"displayName\":\"App\\\\Notifications\\\\CommonNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\CommonNotification\\\":4:{s:8:\\\"channels\\\";a:2:{i:0;s:4:\\\"mail\\\";i:1;s:8:\\\"database\\\";}s:5:\\\"event\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"data\\\";a:2:{s:4:\\\"mail\\\";a:2:{s:7:\\\"subject\\\";s:22:\\\"Ticket Assigned To You\\\";s:5:\\\"lines\\\";a:4:{i:0;s:52:\\\"Anusha Assigned #ticket - Missing consignment to you\\\";i:1;s:26:\\\"Issue: Missing consignment\\\";i:2;s:24:\\\"Description: BMSA TO KTM\\\";i:3;s:18:\\\"Assigned By:Anusha\\\";}}s:8:\\\"database\\\";a:1:{s:12:\\\"notification\\\";a:3:{s:5:\\\"title\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"body\\\";s:56:\\\"Anusha Assigned #ticket - Missing consignment and to you\\\";s:9:\\\"meta_data\\\";a:3:{s:4:\\\"type\\\";s:4:\\\"task\\\";s:4:\\\"slug\\\";s:22:\\\"missing-consignment-31\\\";s:9:\\\"ticket_id\\\";i:31;}}}}s:2:\\\"id\\\";s:36:\\\"ddb1f9e0-105a-48a7-bd5a-96f5264385c1\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1737184633, 1737184633),
(198, 'default', '{\"uuid\":\"9d2057d9-e262-4cf7-a855-ed95490375aa\",\"displayName\":\"App\\\\Notifications\\\\CommonNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\CommonNotification\\\":4:{s:8:\\\"channels\\\";a:2:{i:0;s:4:\\\"mail\\\";i:1;s:8:\\\"database\\\";}s:5:\\\"event\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"data\\\";a:2:{s:4:\\\"mail\\\";a:2:{s:7:\\\"subject\\\";s:22:\\\"Ticket Assigned To You\\\";s:5:\\\"lines\\\";a:4:{i:0;s:52:\\\"Anusha Assigned #ticket - Missing consignment to you\\\";i:1;s:26:\\\"Issue: Missing consignment\\\";i:2;s:24:\\\"Description: BMSA TO KTM\\\";i:3;s:18:\\\"Assigned By:Anusha\\\";}}s:8:\\\"database\\\";a:1:{s:12:\\\"notification\\\";a:3:{s:5:\\\"title\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"body\\\";s:56:\\\"Anusha Assigned #ticket - Missing consignment and to you\\\";s:9:\\\"meta_data\\\";a:3:{s:4:\\\"type\\\";s:4:\\\"task\\\";s:4:\\\"slug\\\";s:22:\\\"missing-consignment-31\\\";s:9:\\\"ticket_id\\\";i:31;}}}}s:2:\\\"id\\\";s:36:\\\"ddb1f9e0-105a-48a7-bd5a-96f5264385c1\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1737184633, 1737184633),
(199, 'default', '{\"uuid\":\"dcc56b4f-579d-4089-833a-02dc723eeee1\",\"displayName\":\"App\\\\Notifications\\\\CommonNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\CommonNotification\\\":4:{s:8:\\\"channels\\\";a:2:{i:0;s:4:\\\"mail\\\";i:1;s:8:\\\"database\\\";}s:5:\\\"event\\\";s:12:\\\"Task Created\\\";s:4:\\\"data\\\";a:2:{s:4:\\\"mail\\\";a:2:{s:7:\\\"subject\\\";s:20:\\\"Task Assigned to you\\\";s:5:\\\"lines\\\";a:4:{i:0;s:15:\\\"Task Name: Test\\\";i:1;s:15:\\\"Task Type: open\\\";i:2;s:23:\\\"Ticket Name: short item\\\";i:3;s:23:\\\"Assigned By:Super Admin\\\";}}s:8:\\\"database\\\";a:1:{s:12:\\\"notification\\\";a:3:{s:5:\\\"title\\\";s:12:\\\"Task Created\\\";s:4:\\\"body\\\";s:52:\\\"Super Admin created #task - Test and Assigned to you\\\";s:9:\\\"meta_data\\\";a:4:{s:4:\\\"type\\\";s:4:\\\"task\\\";s:7:\\\"task_id\\\";i:2;s:4:\\\"slug\\\";s:13:\\\"short-item-36\\\";s:9:\\\"ticket_id\\\";i:36;}}}}s:2:\\\"id\\\";s:36:\\\"ba5e00ca-063d-4e5e-aa97-b1b839a56472\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1738035820, 1738035820),
(200, 'default', '{\"uuid\":\"786101fa-9fdc-45b5-9606-6e72dca01d75\",\"displayName\":\"App\\\\Notifications\\\\CommonNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\CommonNotification\\\":4:{s:8:\\\"channels\\\";a:2:{i:0;s:4:\\\"mail\\\";i:1;s:8:\\\"database\\\";}s:5:\\\"event\\\";s:12:\\\"Task Created\\\";s:4:\\\"data\\\";a:2:{s:4:\\\"mail\\\";a:2:{s:7:\\\"subject\\\";s:20:\\\"Task Assigned to you\\\";s:5:\\\"lines\\\";a:4:{i:0;s:15:\\\"Task Name: Test\\\";i:1;s:15:\\\"Task Type: open\\\";i:2;s:23:\\\"Ticket Name: short item\\\";i:3;s:23:\\\"Assigned By:Super Admin\\\";}}s:8:\\\"database\\\";a:1:{s:12:\\\"notification\\\";a:3:{s:5:\\\"title\\\";s:12:\\\"Task Created\\\";s:4:\\\"body\\\";s:52:\\\"Super Admin created #task - Test and Assigned to you\\\";s:9:\\\"meta_data\\\";a:4:{s:4:\\\"type\\\";s:4:\\\"task\\\";s:7:\\\"task_id\\\";i:2;s:4:\\\"slug\\\";s:13:\\\"short-item-36\\\";s:9:\\\"ticket_id\\\";i:36;}}}}s:2:\\\"id\\\";s:36:\\\"ba5e00ca-063d-4e5e-aa97-b1b839a56472\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1738035820, 1738035820);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(201, 'default', '{\"uuid\":\"787b16d0-e892-4a44-b148-9557638c289c\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:37;s:9:\\\"relations\\\";a:1:{i:0;s:12:\\\"ticketStatus\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"1\\\";}s:11:\\\"customer_id\\\";s:1:\\\"1\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1738038658, 1738038658),
(202, 'default', '{\"uuid\":\"975340a6-d2fa-4cec-9de7-bdbc240d3251\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:37;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"2dc7afb3-1bdc-4845-b546-a5d88a7ee7eb\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1738038658, 1738038658),
(203, 'default', '{\"uuid\":\"892251aa-308d-4ec0-b884-10eb5db25f82\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:37;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"2dc7afb3-1bdc-4845-b546-a5d88a7ee7eb\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1738038658, 1738038658),
(204, 'default', '{\"uuid\":\"496b253f-6e03-41b8-ae10-8cd0f6a6474a\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:37;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"46da333e-d69e-42a5-b732-a8a5b36ea1ba\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1738038658, 1738038658),
(205, 'default', '{\"uuid\":\"eaec31f0-e63f-4219-a98d-4b3530fa0491\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:37;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"46da333e-d69e-42a5-b732-a8a5b36ea1ba\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1738038658, 1738038658),
(206, 'default', '{\"uuid\":\"f19ced43-bcb3-4c06-bcc9-9774ba51d64e\",\"displayName\":\"App\\\\Notifications\\\\NotifyingAgentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:44:\\\"App\\\\Notifications\\\\NotifyingAgentNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:37;s:9:\\\"relations\\\";a:1:{i:0;s:12:\\\"ticketStatus\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"initiated_agent\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"action\\\";s:13:\\\"ticket.closed\\\";s:2:\\\"id\\\";s:36:\\\"1d9555b1-5894-42e2-abca-4c5a1fabc259\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1738038802, 1738038802),
(207, 'default', '{\"uuid\":\"585ac6c6-00ea-4681-b1a6-6ddb5b7a947d\",\"displayName\":\"App\\\\Notifications\\\\NotifyingAgentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:44:\\\"App\\\\Notifications\\\\NotifyingAgentNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:37;s:9:\\\"relations\\\";a:1:{i:0;s:12:\\\"ticketStatus\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"initiated_agent\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"action\\\";s:13:\\\"ticket.closed\\\";s:2:\\\"id\\\";s:36:\\\"1d9555b1-5894-42e2-abca-4c5a1fabc259\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1738038802, 1738038802),
(208, 'default', '{\"uuid\":\"cf091b95-cb0d-4528-8acc-f37eeaaa1597\",\"displayName\":\"App\\\\Notifications\\\\AssignedAgentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"App\\\\Notifications\\\\AssignedAgentNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:37;s:9:\\\"relations\\\";a:1:{i:0;s:12:\\\"ticketStatus\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"initiated_agent\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"action\\\";s:13:\\\"ticket.closed\\\";s:2:\\\"id\\\";s:36:\\\"5f00b1c1-b664-4950-a3c4-2af34f1ad602\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1738038802, 1738038802),
(209, 'default', '{\"uuid\":\"672a396c-5276-44ec-b8d5-13ae813b00a8\",\"displayName\":\"App\\\\Notifications\\\\AssignedAgentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"App\\\\Notifications\\\\AssignedAgentNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:37;s:9:\\\"relations\\\";a:1:{i:0;s:12:\\\"ticketStatus\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"initiated_agent\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"action\\\";s:13:\\\"ticket.closed\\\";s:2:\\\"id\\\";s:36:\\\"5f00b1c1-b664-4950-a3c4-2af34f1ad602\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1738038803, 1738038803),
(210, 'default', '{\"uuid\":\"f1605f56-186c-4443-8550-ca6613fd7a19\",\"displayName\":\"App\\\\Listeners\\\\CustomerNotificationListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\CustomerNotificationListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\CustomerNotificationEvent\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:38;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:15:\\\"assigned_agents\\\";a:1:{i:0;s:1:\\\"8\\\";}s:11:\\\"customer_id\\\";s:1:\\\"3\\\";s:6:\\\"action\\\";s:13:\\\"ticket_create\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1738126224, 1738126224),
(211, 'default', '{\"uuid\":\"f98b2285-4cb5-4020-bb2c-9af2422ce7a0\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:38;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:12;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"644306ae-a2bc-432e-81d1-59ea3b11fbc9\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1738126224, 1738126224),
(212, 'default', '{\"uuid\":\"d8c2fb12-28ef-44f0-9f34-2bc0e3cc7cf0\",\"displayName\":\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:50:\\\"App\\\\Notifications\\\\NotifyTicketAssignedNotification\\\":4:{s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:38;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:12;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"644306ae-a2bc-432e-81d1-59ea3b11fbc9\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1738126224, 1738126224),
(213, 'default', '{\"uuid\":\"bf8230fd-a4ac-4860-a913-cea18030629d\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:38;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:12;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"b21b43bf-cad7-4dd7-ab2f-362b67a0638b\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1738126224, 1738126224),
(214, 'default', '{\"uuid\":\"831a1911-9bdf-4f14-9928-d4e3dfccf19a\",\"displayName\":\"App\\\\Notifications\\\\NewTicketCreatedNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":4:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\NewTicketCreatedNotification\\\":5:{s:6:\\\"agents\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:8;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:6:\\\"ticket\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:17:\\\"App\\\\Models\\\\Ticket\\\";s:2:\\\"id\\\";i:38;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"created_by\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:12;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"b21b43bf-cad7-4dd7-ab2f-362b67a0638b\\\";s:11:\\\"afterCommit\\\";b:1;}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1738126224, 1738126224),
(215, 'default', '{\"uuid\":\"c42ec866-077d-43d8-bad1-37ec874d6e78\",\"displayName\":\"App\\\\Notifications\\\\CommonNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:12;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\CommonNotification\\\":4:{s:8:\\\"channels\\\";a:2:{i:0;s:4:\\\"mail\\\";i:1;s:8:\\\"database\\\";}s:5:\\\"event\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"data\\\";a:2:{s:4:\\\"mail\\\";a:2:{s:7:\\\"subject\\\";s:22:\\\"Ticket Assigned To You\\\";s:5:\\\"lines\\\";a:4:{i:0;s:52:\\\"Super Admin Assigned #ticket - Shipment short to you\\\";i:1;s:21:\\\"Issue: Shipment short\\\";i:2;s:57:\\\"Description: Incomplete shipment recieved at the facility\\\";i:3;s:23:\\\"Assigned By:Super Admin\\\";}}s:8:\\\"database\\\";a:1:{s:12:\\\"notification\\\";a:3:{s:5:\\\"title\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"body\\\";s:56:\\\"Super Admin Assigned #ticket - Shipment short and to you\\\";s:9:\\\"meta_data\\\";a:3:{s:4:\\\"type\\\";s:4:\\\"task\\\";s:4:\\\"slug\\\";s:17:\\\"shipment-short-38\\\";s:9:\\\"ticket_id\\\";i:38;}}}}s:2:\\\"id\\\";s:36:\\\"f5d3819f-a295-4e37-8e79-c7e7c4df2b28\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1738730228, 1738730228),
(216, 'default', '{\"uuid\":\"2558f7bc-5cc3-4969-8750-cd361bbe8ca6\",\"displayName\":\"App\\\\Notifications\\\\CommonNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:12;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\CommonNotification\\\":4:{s:8:\\\"channels\\\";a:2:{i:0;s:4:\\\"mail\\\";i:1;s:8:\\\"database\\\";}s:5:\\\"event\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"data\\\";a:2:{s:4:\\\"mail\\\";a:2:{s:7:\\\"subject\\\";s:22:\\\"Ticket Assigned To You\\\";s:5:\\\"lines\\\";a:4:{i:0;s:52:\\\"Super Admin Assigned #ticket - Shipment short to you\\\";i:1;s:21:\\\"Issue: Shipment short\\\";i:2;s:57:\\\"Description: Incomplete shipment recieved at the facility\\\";i:3;s:23:\\\"Assigned By:Super Admin\\\";}}s:8:\\\"database\\\";a:1:{s:12:\\\"notification\\\";a:3:{s:5:\\\"title\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"body\\\";s:56:\\\"Super Admin Assigned #ticket - Shipment short and to you\\\";s:9:\\\"meta_data\\\";a:3:{s:4:\\\"type\\\";s:4:\\\"task\\\";s:4:\\\"slug\\\";s:17:\\\"shipment-short-38\\\";s:9:\\\"ticket_id\\\";i:38;}}}}s:2:\\\"id\\\";s:36:\\\"f5d3819f-a295-4e37-8e79-c7e7c4df2b28\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1738730228, 1738730228),
(217, 'default', '{\"uuid\":\"2ae02123-dac2-40dc-81c9-2daac66e54c3\",\"displayName\":\"App\\\\Notifications\\\\CommonNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\CommonNotification\\\":4:{s:8:\\\"channels\\\";a:2:{i:0;s:4:\\\"mail\\\";i:1;s:8:\\\"database\\\";}s:5:\\\"event\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"data\\\";a:2:{s:4:\\\"mail\\\";a:2:{s:7:\\\"subject\\\";s:22:\\\"Ticket Assigned To You\\\";s:5:\\\"lines\\\";a:4:{i:0;s:48:\\\"Super Admin Assigned #ticket - short item to you\\\";i:1;s:17:\\\"Issue: short item\\\";i:2;s:23:\\\"Description: KNR TO EKM\\\";i:3;s:23:\\\"Assigned By:Super Admin\\\";}}s:8:\\\"database\\\";a:1:{s:12:\\\"notification\\\";a:3:{s:5:\\\"title\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"body\\\";s:52:\\\"Super Admin Assigned #ticket - short item and to you\\\";s:9:\\\"meta_data\\\";a:3:{s:4:\\\"type\\\";s:4:\\\"task\\\";s:4:\\\"slug\\\";s:13:\\\"short-item-36\\\";s:9:\\\"ticket_id\\\";i:36;}}}}s:2:\\\"id\\\";s:36:\\\"94abd6cf-b4cf-4c24-9e1e-683eb4a0d96f\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1738733661, 1738733661),
(218, 'default', '{\"uuid\":\"b6d83e21-a476-4428-ac16-ce002693384d\",\"displayName\":\"App\\\\Notifications\\\\CommonNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\CommonNotification\\\":4:{s:8:\\\"channels\\\";a:2:{i:0;s:4:\\\"mail\\\";i:1;s:8:\\\"database\\\";}s:5:\\\"event\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"data\\\";a:2:{s:4:\\\"mail\\\";a:2:{s:7:\\\"subject\\\";s:22:\\\"Ticket Assigned To You\\\";s:5:\\\"lines\\\";a:4:{i:0;s:48:\\\"Super Admin Assigned #ticket - short item to you\\\";i:1;s:17:\\\"Issue: short item\\\";i:2;s:23:\\\"Description: KNR TO EKM\\\";i:3;s:23:\\\"Assigned By:Super Admin\\\";}}s:8:\\\"database\\\";a:1:{s:12:\\\"notification\\\";a:3:{s:5:\\\"title\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"body\\\";s:52:\\\"Super Admin Assigned #ticket - short item and to you\\\";s:9:\\\"meta_data\\\";a:3:{s:4:\\\"type\\\";s:4:\\\"task\\\";s:4:\\\"slug\\\";s:13:\\\"short-item-36\\\";s:9:\\\"ticket_id\\\";i:36;}}}}s:2:\\\"id\\\";s:36:\\\"94abd6cf-b4cf-4c24-9e1e-683eb4a0d96f\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1738733661, 1738733661),
(219, 'default', '{\"uuid\":\"93d03179-f9fa-4609-81a1-287a5d93bce9\",\"displayName\":\"App\\\\Notifications\\\\CommonNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:12;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\CommonNotification\\\":4:{s:8:\\\"channels\\\";a:2:{i:0;s:4:\\\"mail\\\";i:1;s:8:\\\"database\\\";}s:5:\\\"event\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"data\\\";a:2:{s:4:\\\"mail\\\";a:2:{s:7:\\\"subject\\\";s:22:\\\"Ticket Assigned To You\\\";s:5:\\\"lines\\\";a:4:{i:0;s:48:\\\"Super Admin Assigned #ticket - short item to you\\\";i:1;s:17:\\\"Issue: short item\\\";i:2;s:23:\\\"Description: KNR TO EKM\\\";i:3;s:23:\\\"Assigned By:Super Admin\\\";}}s:8:\\\"database\\\";a:1:{s:12:\\\"notification\\\";a:3:{s:5:\\\"title\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"body\\\";s:52:\\\"Super Admin Assigned #ticket - short item and to you\\\";s:9:\\\"meta_data\\\";a:3:{s:4:\\\"type\\\";s:4:\\\"task\\\";s:4:\\\"slug\\\";s:13:\\\"short-item-36\\\";s:9:\\\"ticket_id\\\";i:36;}}}}s:2:\\\"id\\\";s:36:\\\"3e1ceed3-54b3-40ad-8382-1cb8d985ac94\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1738733667, 1738733667),
(220, 'default', '{\"uuid\":\"bc5b03fc-0ef7-41e0-8c60-0eec697f9e67\",\"displayName\":\"App\\\\Notifications\\\\CommonNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:12;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\CommonNotification\\\":4:{s:8:\\\"channels\\\";a:2:{i:0;s:4:\\\"mail\\\";i:1;s:8:\\\"database\\\";}s:5:\\\"event\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"data\\\";a:2:{s:4:\\\"mail\\\";a:2:{s:7:\\\"subject\\\";s:22:\\\"Ticket Assigned To You\\\";s:5:\\\"lines\\\";a:4:{i:0;s:48:\\\"Super Admin Assigned #ticket - short item to you\\\";i:1;s:17:\\\"Issue: short item\\\";i:2;s:23:\\\"Description: KNR TO EKM\\\";i:3;s:23:\\\"Assigned By:Super Admin\\\";}}s:8:\\\"database\\\";a:1:{s:12:\\\"notification\\\";a:3:{s:5:\\\"title\\\";s:22:\\\"Ticket Assigned To You\\\";s:4:\\\"body\\\";s:52:\\\"Super Admin Assigned #ticket - short item and to you\\\";s:9:\\\"meta_data\\\";a:3:{s:4:\\\"type\\\";s:4:\\\"task\\\";s:4:\\\"slug\\\";s:13:\\\"short-item-36\\\";s:9:\\\"ticket_id\\\";i:36;}}}}s:2:\\\"id\\\";s:36:\\\"3e1ceed3-54b3-40ad-8382-1cb8d985ac94\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1738733667, 1738733667);

-- --------------------------------------------------------

--
-- Table structure for table `label_ticket`
--

CREATE TABLE `label_ticket` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `label_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `label_ticket`
--

INSERT INTO `label_ticket` (`id`, `ticket_id`, `label_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-12-12 18:30:00', NULL),
(2, 2, 3, '2024-12-19 18:30:00', NULL),
(3, 3, 5, '2024-12-27 18:30:00', NULL),
(4, 4, 5, '2024-12-27 18:30:00', NULL),
(5, 5, 5, '2025-01-05 18:30:00', NULL),
(6, 6, 6, '2025-01-05 18:30:00', NULL),
(7, 7, 6, '2025-01-05 18:30:00', NULL),
(8, 8, 6, '2025-01-05 18:30:00', NULL),
(9, 9, 5, '2025-01-05 18:30:00', NULL),
(10, 10, 6, '2025-01-05 18:30:00', NULL),
(11, 11, 6, '2025-01-05 18:30:00', NULL),
(12, 12, 6, '2025-01-05 18:30:00', NULL),
(13, 13, 6, '2025-01-05 18:30:00', NULL),
(14, 14, 6, '2025-01-05 18:30:00', NULL),
(15, 15, 6, '2025-01-05 18:30:00', NULL),
(16, 16, 6, '2025-01-05 18:30:00', NULL),
(17, 17, 6, '2025-01-05 18:30:00', NULL),
(18, 18, 5, '2025-01-05 18:30:00', NULL),
(19, 19, 5, '2025-01-05 18:30:00', NULL),
(20, 20, 3, '2025-01-05 18:30:00', NULL),
(21, 21, 6, '2025-01-06 18:30:00', NULL),
(22, 22, 5, '2025-01-06 18:30:00', NULL),
(23, 23, 5, '2025-01-06 18:30:00', NULL),
(24, 24, 6, '2025-01-06 18:30:00', NULL),
(25, 25, 6, '2025-01-06 18:30:00', NULL),
(26, 26, 6, '2025-01-06 18:30:00', NULL),
(27, 27, 6, '2025-01-06 18:30:00', NULL),
(28, 28, 6, '2025-01-06 18:30:00', NULL),
(29, 29, 6, '2025-01-06 18:30:00', NULL),
(30, 30, 6, '2025-01-06 18:30:00', NULL),
(31, 31, 6, '2025-01-06 18:30:00', NULL),
(32, 32, 6, '2025-01-06 18:30:00', NULL),
(33, 33, 6, '2025-01-06 18:30:00', NULL),
(34, 34, 6, '2025-01-06 18:30:00', NULL),
(35, 35, 6, '2025-01-06 18:30:00', NULL),
(36, 36, 6, '2025-01-06 18:30:00', NULL),
(37, 37, 3, '2025-01-27 18:30:00', NULL),
(38, 38, 5, '2025-01-28 18:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `agent_id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `type_id` int(11) NOT NULL,
  `outcome_id` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `description` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `log` varchar(191) DEFAULT NULL,
  `file_type` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `agent_id`, `ticket_id`, `type_id`, `outcome_id`, `time`, `description`, `created_at`, `updated_at`, `log`, `file_type`) VALUES
(1, 1, 658, 1, 1, '2024-12-13 12:12:57', 'Parcel missing from Trivandrum', '2024-12-13 06:43:00', '2024-12-13 06:43:00', NULL, NULL),
(2, 1, 658, 2, NULL, '2024-12-20 19:08:26', 'checked', '2024-12-20 13:38:26', '2024-12-20 13:38:26', NULL, NULL),
(3, 1, 658, 2, NULL, '2024-12-23 08:56:57', 'sjjshs', '2024-12-23 03:26:57', '2024-12-23 03:26:57', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `log_outcomes`
--

CREATE TABLE `log_outcomes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outcome` varchar(191) NOT NULL,
  `type_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_types`
--

CREATE TABLE `log_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log_types`
--

INSERT INTO `log_types` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Call', NULL, NULL),
(2, 'Note', NULL, NULL),
(3, 'Meeting', NULL, NULL),
(4, 'Email', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_28_091826_create_ticket_statuses_table', 1),
(6, '2023_04_28_094802_create_priorities_table', 1),
(7, '2023_04_28_095906_create_firms_table', 1),
(8, '2023_04_28_100401_create_customers_table', 1),
(9, '2023_04_28_295844_create_tickets_table', 1),
(10, '2023_05_03_073124_create_additional_fields_table', 1),
(11, '2023_05_03_101712_create_ticket_additional_fields_table', 1),
(12, '2023_06_05_045703_make_email_nullable_on_customer_table', 1),
(13, '2023_06_06_081745_create_agent_ticket_table', 1),
(14, '2023_06_07_072816_create_log_types_table', 1),
(15, '2023_06_07_072907_create_log_outcomes_table', 1),
(16, '2023_06_07_072925_create_logs_table', 1),
(17, '2023_06_07_105106_create_tasks_table', 1),
(18, '2023_06_07_105630_create_task_types_table', 1),
(19, '2023_06_07_110609_create_agent_task_table', 1),
(20, '2023_06_09_093427_make_time_date_time_on_tasks_table', 1),
(21, '2023_06_09_094432_make_time_date_time_on_logs_table', 1),
(22, '2023_06_13_053912_create_ticket_types_table', 1),
(23, '2023_06_13_061617_create_ticket_labels_table', 1),
(24, '2023_06_13_115419_create_apis_table', 1),
(25, '2023_06_13_115440_create_api_params_table', 1),
(26, '2023_06_20_112830_create_designations_table', 1),
(27, '2023_06_20_112942_create_departments_table', 1),
(28, '2023_06_28_044420_create_ticket_images_table', 1),
(29, '2023_06_28_103946_add_color_to_priorities_table', 1),
(30, '2023_06_30_050714_add_countrycode_to_customers_table', 1),
(31, '2023_07_03_055755_create_task_categories_table', 1),
(32, '2023_07_03_061455_add_category_id_to_tasks_table', 1),
(33, '2023_07_04_035742_add_total_time_to_agent_ticket_table', 1),
(34, '2023_07_04_040244_create_ticket_status_histories_table', 1),
(35, '2023_07_11_104829_create_activities_table', 1),
(36, '2023_07_12_090652_add_parent_id_to_users_table', 1),
(37, '2023_07_17_103546_add_created_by_to_tickets_table', 1),
(38, '2023_07_18_045201_add_slug_to_tickets_table', 1),
(39, '2023_07_19_105645_add_firebase_id_to_users_table', 1),
(40, '2023_07_20_102857_add_task_id_to_activities_table', 1),
(41, '2023_07_21_042425_add_schedule_date_to_activities_table', 1),
(42, '2023_07_28_114716_add_logs_to_logs_table', 1),
(43, '2023_07_28_121940_create_file_logs_table', 1),
(44, '2023_08_02_155814_add_log_file_to_activities_table', 1),
(45, '2023_08_07_071433_create_api_logs_table', 1),
(46, '2023_08_09_101202_add_image_to_users_table', 1),
(47, '2023_08_16_065210_add_phone_to_users_table', 1),
(48, '2023_08_22_094341_add_designation_id_to_users_table', 1),
(49, '2023_12_11_114933_create_attachements_table', 1),
(50, '2024_05_28_095214_create_call_reasons_table', 1),
(51, '2024_06_05_061456_create_notify_ticket_table', 1),
(52, '2024_06_05_063311_create_label_ticket_table', 1),
(53, '2024_06_12_053620_add_created_by_to_ticket_labels_table', 1),
(54, '2024_06_12_065644_add_created_by_to_call_reasons_table', 1),
(55, '2024_06_12_072225_add_created_by_to_task_categories_table', 1),
(56, '2024_06_12_072328_add_created_by_to_task_types_table', 1),
(57, '2024_07_22_091919_create_stages_table', 1),
(58, '2024_07_22_092300_add_stage_id_to_ticket_statuses_table', 1),
(59, '2024_07_24_043537_add_order_to_ticket_statuses_table', 1),
(60, '2024_07_25_050228_add_service_id_to_tickets_table', 1),
(61, '2024_07_26_160352_create_jobs_table', 1),
(62, '2024_07_27_120304_create_brands_table', 1),
(63, '2024_07_27_120334_create_categories_table', 1),
(64, '2024_07_27_120405_create_products_table', 1),
(65, '2024_07_27_120434_create_product_tickets_table', 1),
(66, '2024_07_29_105650_add_address_to__users_table', 1),
(67, '2024_07_29_121134_add_created_by_to_product_tickets_table', 1),
(68, '2024_07_29_131803_create_invoices_table', 1),
(69, '2024_07_29_131834_create_refunds_table', 1),
(70, '2024_07_29_132707_create_invoice_items_table', 1),
(71, '2024_07_29_173033_add_address_to_users_table', 1),
(72, '2024_09_25_171400_change_column_type_in_tickets_table', 1),
(73, '2024_09_26_145043_create_permission_tables', 1),
(74, '2024_09_26_153548_add_module_column_to_permissions_table', 1),
(75, '2024_10_08_131303_create_notifications_table', 1),
(76, '2024_10_29_160246_add_columns_to_tasks_table', 1),
(77, '2024_11_04_175101_change_category_id_column_as_nullable_in_tasks_table', 1),
(78, '2024_11_06_125439_change_datatype_of_description_field_in_activities_table', 1),
(79, '2024_11_08_140646_add_columns_to_tasks_table', 1),
(80, '2024_11_12_174732_change_column_type_of_invoices_table', 1),
(81, '2024_11_13_152852_add_closed_time_column_to_tickets_table', 1),
(82, '2024_11_29_102351_create_additional_field_options_table', 1),
(83, '2024_11_29_113039_add_selected_option_ids_column_to_ticket_additional_fields_table', 1),
(84, '2024_12_10_152639_add_pdf_file_name_column_to_invoices_table', 1),
(85, '2024_12_11_105223_add_soft_delete_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(191) NOT NULL,
  `notifiable_type` varchar(191) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notify_ticket`
--

CREATE TABLE `notify_ticket` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `agent_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notify_ticket`
--

INSERT INTO `notify_ticket` (`id`, `ticket_id`, `agent_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-12-12 18:30:00', NULL),
(2, 2, 2, '2024-12-19 18:30:00', NULL),
(3, 3, 5, '2024-12-27 18:30:00', NULL),
(4, 4, 5, '2024-12-27 18:30:00', NULL),
(5, 5, 5, '2025-01-05 18:30:00', NULL),
(6, 6, 5, '2025-01-05 18:30:00', NULL),
(7, 7, 5, '2025-01-05 18:30:00', NULL),
(8, 8, 5, '2025-01-05 18:30:00', NULL),
(9, 9, 5, '2025-01-05 18:30:00', NULL),
(10, 10, 5, '2025-01-05 18:30:00', NULL),
(11, 11, 5, '2025-01-05 18:30:00', NULL),
(12, 12, 5, '2025-01-05 18:30:00', NULL),
(13, 13, 5, '2025-01-05 18:30:00', NULL),
(14, 14, 5, '2025-01-05 18:30:00', NULL),
(15, 15, 5, '2025-01-05 18:30:00', NULL),
(16, 16, 5, '2025-01-05 18:30:00', NULL),
(17, 17, 5, '2025-01-05 18:30:00', NULL),
(18, 18, 5, '2025-01-05 18:30:00', NULL),
(19, 19, 5, '2025-01-05 18:30:00', NULL),
(20, 20, 5, '2025-01-05 18:30:00', NULL),
(21, 21, 5, '2025-01-06 18:30:00', NULL),
(22, 22, 5, '2025-01-06 18:30:00', NULL),
(23, 23, 8, '2025-01-06 18:30:00', NULL),
(24, 23, 5, '2025-01-06 18:30:00', NULL),
(25, 24, 5, '2025-01-06 18:30:00', NULL),
(26, 25, 5, '2025-01-06 18:30:00', NULL),
(27, 26, 5, '2025-01-06 18:30:00', NULL),
(28, 27, 5, '2025-01-06 18:30:00', NULL),
(29, 28, 5, '2025-01-06 18:30:00', NULL),
(30, 29, 5, '2025-01-06 18:30:00', NULL),
(31, 30, 5, '2025-01-06 18:30:00', NULL),
(32, 31, 5, '2025-01-06 18:30:00', NULL),
(33, 32, 5, '2025-01-06 18:30:00', NULL),
(34, 33, 5, '2025-01-06 18:30:00', NULL),
(35, 34, 5, '2025-01-06 18:30:00', NULL),
(36, 35, 5, '2025-01-06 18:30:00', NULL),
(37, 36, 5, '2025-01-06 18:30:00', NULL),
(38, 37, 1, '2025-01-27 18:30:00', NULL),
(40, 38, 8, '2025-02-04 18:30:00', NULL),
(41, 38, 12, '2025-02-04 18:30:00', NULL),
(42, 651, 5, '2025-04-17 18:30:00', NULL),
(46, 655, 3, '2025-04-17 18:30:00', NULL),
(47, 655, 4, '2025-04-17 18:30:00', NULL),
(48, 655, 6, '2025-04-17 18:30:00', NULL),
(49, 656, 3, '2025-04-17 18:30:00', NULL),
(50, 656, 4, '2025-04-17 18:30:00', NULL),
(51, 656, 6, '2025-04-17 18:30:00', NULL),
(52, 657, 3, '2025-04-17 18:30:00', NULL),
(53, 657, 4, '2025-04-17 18:30:00', NULL),
(54, 658, 3, '2025-04-17 18:30:00', NULL),
(58, 654, 1, '2025-04-23 01:46:18', '2025-04-23 01:46:18'),
(59, 654, 4, '2025-04-23 01:46:18', '2025-04-23 01:46:18'),
(60, 659, 3, '2025-05-05 18:30:00', NULL),
(61, 659, 4, '2025-05-05 18:30:00', NULL),
(62, 662, 3, '2025-05-05 18:30:00', NULL),
(63, 663, 7, '2025-05-11 18:30:00', NULL),
(64, 664, 7, '2025-05-11 18:30:00', NULL),
(65, 665, 7, '2025-05-11 18:30:00', NULL),
(66, 666, 7, '2025-05-11 18:30:00', NULL),
(67, 667, 7, '2025-05-11 18:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `ticket_id` bigint(20) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `service_charge` int(11) DEFAULT NULL,
  `item_amount` int(11) DEFAULT NULL,
  `total_amount` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT 0,
  `net_amount` int(11) DEFAULT NULL,
  `payment_mode` varchar(20) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `invoice_id`, `ticket_id`, `customer_id`, `service_charge`, `item_amount`, `total_amount`, `discount`, `net_amount`, `payment_mode`, `created_by`, `created_at`, `updated_at`) VALUES
(5, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(16, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(17, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(18, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(19, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(20, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(21, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(22, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(23, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(24, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(25, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(26, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(27, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(28, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(29, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(30, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(31, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(32, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(33, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(34, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(35, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(36, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(37, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(38, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(39, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(40, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(41, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(42, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(43, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(44, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(45, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(46, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(47, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(48, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(49, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(50, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(51, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(52, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(53, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(54, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(55, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(56, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(57, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(58, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(59, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(60, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(61, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(62, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(63, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(64, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(65, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(66, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(67, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(68, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(69, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(70, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(71, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(72, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(73, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(74, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(75, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(76, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(77, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(78, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(79, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(80, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(81, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(82, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(83, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(84, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(85, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(86, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(87, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(88, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(89, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(90, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(91, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(92, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(93, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(94, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(95, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(96, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(97, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(98, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(99, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(100, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(101, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(102, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(103, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(104, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(105, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(106, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(107, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(108, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(109, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(110, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(111, 2, 662, 2, 250, 900, 1150, 100, 1050, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(112, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(113, 2, 662, 2, 250, 900, 1150, 100, 1150, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(114, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(115, 2, 662, 2, 250, 900, 1150, 100, 1025, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(116, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(117, 2, 662, 2, 250, 900, 1150, 100, 1350, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(118, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(119, 2, 662, 2, 250, 900, 1150, 100, 1035, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(120, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(121, 2, 662, 2, 250, 900, 1150, 100, 1045, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(122, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43'),
(123, 2, 662, 2, 250, 900, 1150, 100, 1043, 'offline', 1, '2025-05-09 13:46:53', '2025-05-09 13:46:53'),
(124, 3, 658, 4, 200, 0, 200, 0, 200, 'online', 1, '2025-05-09 17:36:43', '2025-05-09 17:36:43');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `display_name` varchar(191) NOT NULL,
  `module` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `display_name`, `module`) VALUES
(1, 'user.agents.view.all', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'View agents', 'Agents'),
(2, 'user.agents.create', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Create agents', 'Agents'),
(3, 'user.agents.update', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Update agents', 'Agents'),
(4, 'user.agents.delete', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Delete agents', 'Agents'),
(5, 'user.departments.view.all', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'View departments', 'Departments'),
(6, 'user.departments.create', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Create departments', 'Departments'),
(7, 'user.departments.update', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Update departments', 'Departments'),
(8, 'user.departments.delete', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Delete departments', 'Departments'),
(9, 'user.designations.view.all', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'View designations', 'Designations'),
(10, 'user.designations.create', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Create designations', 'Designations'),
(11, 'user.designations.update', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Update designations', 'Designations'),
(12, 'user.designations.delete', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Delete designations', 'Designations'),
(13, 'user.ticket_types.view.all', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'View ticket types', 'Ticket Types'),
(14, 'user.ticket_types.create', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Create ticket types', 'Ticket Types'),
(15, 'user.ticket_types.update', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Update ticket types', 'Ticket Types'),
(16, 'user.ticket_types.delete', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Delete ticket types', 'Ticket Types'),
(17, 'user.ticket_statuses.view.all', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'View ticket statuses', 'Ticket Statuses'),
(18, 'user.ticket_statuses.create', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Create ticket statuses', 'Ticket Statuses'),
(19, 'user.ticket_statuses.update', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Update ticket statuses', 'Ticket Statuses'),
(20, 'user.ticket_statuses.delete', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Delete ticket statuses', 'Ticket Statuses'),
(21, 'user.brands.view.all', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'View brands', 'Brands'),
(22, 'user.brands.create', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Create brands', 'Brands'),
(23, 'user.brands.update', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Update brands', 'Brands'),
(24, 'user.brands.delete', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Delete brands', 'Brands'),
(25, 'user.categories.view.all', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'View categories', 'Categories'),
(26, 'user.categories.create', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Create categories', 'Categories'),
(27, 'user.categories.update', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Update categories', 'Categories'),
(28, 'user.categories.delete', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Delete categories', 'Categories'),
(29, 'user.additional_fields.view.all', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'View additional fields', 'Additional Fields'),
(30, 'user.additional_fields.create', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Create additional fields', 'Additional Fields'),
(31, 'user.additional_fields.update', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Update additional fields', 'Additional Fields'),
(32, 'user.additional_fields.delete', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Delete additional fields', 'Additional Fields'),
(33, 'user.task_categories.view.all', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'View task categories', 'Task Categories'),
(34, 'user.task_categories.create', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Create task categories', 'Task Categories'),
(35, 'user.task_categories.update', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Update task categories', 'Task Categories'),
(36, 'user.task_categories.delete', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Delete task categories', 'Task Categories'),
(37, 'user.meeting_outcomes.view.all', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'View meeting outcomes', 'Meeting Outcomes'),
(38, 'user.meeting_outcomes.create', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Create meeting outcomes', 'Meeting Outcomes'),
(39, 'user.meeting_outcomes.update', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Update meeting outcomes', 'Meeting Outcomes'),
(40, 'user.meeting_outcomes.delete', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Delete meeting outcomes', 'Meeting Outcomes'),
(41, 'user.call_statuses.view.all', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'View call statuses', 'Call Statuses'),
(42, 'user.call_statuses.create', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Create call statuses', 'Call Statuses'),
(43, 'user.call_statuses.update', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Update call statuses', 'Call Statuses'),
(44, 'user.call_statuses.delete', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Delete call statuses', 'Call Statuses'),
(45, 'user.call_reasons.view.all', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'View call reasons', 'Call Reasons'),
(46, 'user.call_reasons.create', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Create call reasons', 'Call Reasons'),
(47, 'user.call_reasons.update', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Update call reasons', 'Call Reasons'),
(48, 'user.call_reasons.delete', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Delete call reasons', 'Call Reasons'),
(49, 'user.products.view.all', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'View products', 'Products'),
(50, 'user.products.create', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Create products', 'Products'),
(51, 'user.products.update', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Update products', 'Products'),
(52, 'user.products.delete', 'web', '2024-12-12 10:27:49', '2024-12-12 10:27:49', 'Delete products', 'Products');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '49d0f2ddbab6b5805e8f8988c89ca6bd236d0cdd0bbd0b73cfe97cc4c43ae288', '[\"*\"]', '2025-01-09 04:28:14', NULL, '2024-12-12 12:06:32', '2025-01-09 04:28:14'),
(2, 'App\\Models\\User', 1, 'auth_token', '4493a9d41171ddd48bbbf6991b3b360d39b88c66d27346e5d5f04f4b123a1122', '[\"*\"]', '2024-12-12 12:07:59', NULL, '2024-12-12 12:07:53', '2024-12-12 12:07:59'),
(3, 'App\\Models\\User', 1, 'auth_token', '594917021045761c442e355985c32631202fa19ad2b0ca5c778da69b70eb0e92', '[\"*\"]', '2024-12-23 05:33:09', NULL, '2024-12-13 04:41:41', '2024-12-23 05:33:09'),
(4, 'App\\Models\\User', 1, 'auth_token', '0e8834f8baa39e845a768d0978ad2549305bbaf4bc8efad1f526fb710f8a20ae', '[\"*\"]', '2024-12-13 04:42:03', NULL, '2024-12-13 04:41:47', '2024-12-13 04:42:03'),
(5, 'App\\Models\\User', 1, 'auth_token', '3a422db2989aed0bafb96f6de9802f7a88b0c9a783ea2cc82711e9ce9525b3bf', '[\"*\"]', '2024-12-13 06:48:28', NULL, '2024-12-13 06:31:29', '2024-12-13 06:48:28'),
(6, 'App\\Models\\User', 1, 'auth_token', '5ff689716c2ac3b5f1022cf100fd22631087a80136ca46498ebeac0c7b9c9c0d', '[\"*\"]', '2024-12-20 17:07:10', NULL, '2024-12-13 06:51:54', '2024-12-20 17:07:10'),
(7, 'App\\Models\\User', 1, 'auth_token', 'd9118add61844a051c5f7dbca4540e889762cbac5d6bd803cd126849d70c46d8', '[\"*\"]', '2024-12-13 07:29:18', NULL, '2024-12-13 07:02:22', '2024-12-13 07:29:18'),
(8, 'App\\Models\\User', 1, 'auth_token', '21ba893fd59e86669e36228eddb0faad72835e956b79dedea7cf090f8602644e', '[\"*\"]', '2024-12-13 07:39:11', NULL, '2024-12-13 07:34:29', '2024-12-13 07:39:11'),
(9, 'App\\Models\\User', 3, 'auth_token', '521928032b96d53760cccbe665985843a5481b8ad0488427362617cfe54423fc', '[\"*\"]', '2024-12-13 07:58:00', NULL, '2024-12-13 07:57:58', '2024-12-13 07:58:00'),
(10, 'App\\Models\\User', 1, 'auth_token', '0282b84aef8f342ba5ba4f6c5ef09055d9d05d9248acd863b4ee090cb13c0fc7', '[\"*\"]', '2024-12-23 07:54:32', NULL, '2024-12-13 07:58:53', '2024-12-23 07:54:32'),
(11, 'App\\Models\\User', 5, 'auth_token', '5bb10087e79933a1f1c769a50fa880ba0b5ba903ae96a6abb1277e11fcfd518f', '[\"*\"]', '2025-01-20 05:48:49', NULL, '2024-12-13 08:19:56', '2025-01-20 05:48:49'),
(12, 'App\\Models\\User', 1, 'auth_token', '6a09613d9f83245b9a60d249709a3e7c74c82454bb504cfb29a9a41eea1fe7e1', '[\"*\"]', '2025-01-17 07:21:16', NULL, '2024-12-13 08:53:57', '2025-01-17 07:21:16'),
(13, 'App\\Models\\User', 1, 'auth_token', '6c5107153ecae054a4c4b00be63551a05dd4c00486bcc4679a87399f11560435', '[\"*\"]', '2024-12-20 13:09:43', NULL, '2024-12-20 13:09:23', '2024-12-20 13:09:43'),
(14, 'App\\Models\\User', 1, 'auth_token', 'fe91782e6893784f2f37d433a2212c88d7836901ee7c479051c46df156fe338e', '[\"*\"]', '2024-12-20 13:26:47', NULL, '2024-12-20 13:15:18', '2024-12-20 13:26:47'),
(15, 'App\\Models\\User', 1, 'auth_token', '6dbe64155e6655287c046cf0f8bab67aa0118cf4cf183cb6a49c5fe5af8ff914', '[\"*\"]', '2024-12-20 13:27:53', NULL, '2024-12-20 13:27:53', '2024-12-20 13:27:53'),
(16, 'App\\Models\\User', 1, 'auth_token', '12281f8f441d012c072c01ef2acc94a0ec7aa420691225544dc5fadd702426bf', '[\"*\"]', '2024-12-20 13:40:05', NULL, '2024-12-20 13:34:06', '2024-12-20 13:40:05'),
(17, 'App\\Models\\User', 1, 'auth_token', 'cf51a4de60679fd64d417f9bada0a60c51d54f7579c24ef692e6701a772e3c5d', '[\"*\"]', '2025-02-09 15:14:06', NULL, '2024-12-21 05:34:36', '2025-02-09 15:14:06'),
(18, 'App\\Models\\User', 1, 'auth_token', '7d2ac9e1172c4c0079d1c0a4d8e0b63d88c6fb23dff8718768e1172cca3ae477', '[\"*\"]', '2024-12-22 04:35:13', NULL, '2024-12-22 04:35:04', '2024-12-22 04:35:13'),
(19, 'App\\Models\\User', 1, 'auth_token', '296223cbb31d893abda6c849fb9ed321b923612c7cdb8f48677be325f8c42960', '[\"*\"]', '2024-12-22 16:26:47', NULL, '2024-12-22 11:42:31', '2024-12-22 16:26:47'),
(20, 'App\\Models\\User', 1, 'auth_token', '3df91095f9111e242821351f18dfb0197cd0a66372642a8c26cd3ac44cf584ae', '[\"*\"]', '2024-12-22 18:14:15', NULL, '2024-12-22 16:32:12', '2024-12-22 18:14:15'),
(21, 'App\\Models\\User', 1, 'auth_token', 'f756c3af6ba31d11fab6aa858fc29cbe52dffe67a2cd654f99e693c44bac0c03', '[\"*\"]', '2024-12-22 18:13:25', NULL, '2024-12-22 18:08:40', '2024-12-22 18:13:25'),
(22, 'App\\Models\\User', 1, 'auth_token', 'f8cbe0f3f4240aba2f94c96a3a4b853f8b1c102b1b1a719b6482332a61b5ef7f', '[\"*\"]', '2024-12-22 18:24:02', NULL, '2024-12-22 18:19:55', '2024-12-22 18:24:02'),
(23, 'App\\Models\\User', 1, 'auth_token', '01a1b919f49fcaed29022828331a1aed909c7f86529340202cc02f151c6278fc', '[\"*\"]', '2024-12-23 03:27:04', NULL, '2024-12-22 18:28:53', '2024-12-23 03:27:04'),
(24, 'App\\Models\\User', 1, 'auth_token', '636725c6c1fc145804b29065347f826e27818f46c14d0b99eb9c239ca81f169e', '[\"*\"]', '2024-12-23 09:55:01', NULL, '2024-12-23 01:04:28', '2024-12-23 09:55:01'),
(25, 'App\\Models\\User', 1, 'auth_token', '06997339523d26d9d35c606d39f2aa28b616ac011e7beb6007846965334b336d', '[\"*\"]', '2024-12-23 05:07:21', NULL, '2024-12-23 03:30:14', '2024-12-23 05:07:21'),
(26, 'App\\Models\\User', 1, 'auth_token', '58742011d2c052b2797e996a3e707b07ffd3b3d50f80d95f2ad4970ea561a503', '[\"*\"]', '2024-12-23 04:23:03', NULL, '2024-12-23 03:53:57', '2024-12-23 04:23:03'),
(27, 'App\\Models\\User', 1, 'auth_token', '0c8b33693a7d07860379ba338bdee0b137a91c5b9c8fb4d368926007273e95e9', '[\"*\"]', '2025-02-05 04:41:21', NULL, '2024-12-23 05:35:01', '2025-02-05 04:41:21'),
(28, 'App\\Models\\User', 1, 'auth_token', 'de9b8a353ea42d714a07bf6f280b94344123e1079f37e5e1ea44f800b984fa39', '[\"*\"]', '2024-12-23 06:37:06', NULL, '2024-12-23 06:09:01', '2024-12-23 06:37:06'),
(29, 'App\\Models\\User', 1, 'auth_token', '808993fe06f40bd42434012f6a3e74491122ebcd4d520fbbc81940226b80005f', '[\"*\"]', '2025-01-21 08:59:17', NULL, '2024-12-23 06:44:24', '2025-01-21 08:59:17'),
(30, 'App\\Models\\User', 1, 'auth_token', 'a34e8a13877661f36516541a51419bf5d89ebf9cfc0299c5f9466c92b20b213d', '[\"*\"]', '2024-12-23 09:04:57', NULL, '2024-12-23 07:51:27', '2024-12-23 09:04:57'),
(31, 'App\\Models\\User', 1, 'auth_token', '49852434cdb618152383206f08881e44ca1cd9c50a2b9f7c10476c022f2580ac', '[\"*\"]', '2024-12-23 08:04:41', NULL, '2024-12-23 08:01:29', '2024-12-23 08:04:41'),
(32, 'App\\Models\\User', 1, 'auth_token', '3f35612d830e109c94ef1cf9197ef811f9e80955b8baaad1baec20e37acebe65', '[\"*\"]', '2024-12-23 09:19:09', NULL, '2024-12-23 09:10:38', '2024-12-23 09:19:09'),
(33, 'App\\Models\\User', 1, 'auth_token', '9c0804c56b5c1763d0b33ed6ba113ec21b863059076cd9941f346fd96bec1211', '[\"*\"]', '2024-12-23 09:25:59', NULL, '2024-12-23 09:25:07', '2024-12-23 09:25:59'),
(34, 'App\\Models\\User', 4, 'auth_token', '06fe4437c446ea0555cafbdfc5ee2b79ca1656ef564894498def6a72816c5905', '[\"*\"]', '2024-12-23 09:28:17', NULL, '2024-12-23 09:26:19', '2024-12-23 09:28:17'),
(35, 'App\\Models\\User', 1, 'auth_token', 'aa901371fd0c80d2a6e9aebf764466ab4390f4f4b3a3ed48ba088108d746db84', '[\"*\"]', '2024-12-23 09:30:54', NULL, '2024-12-23 09:30:16', '2024-12-23 09:30:54'),
(36, 'App\\Models\\User', 11, 'auth_token', '0f4833cca12bd44426d236e685e73e0298ebae2d291c831e78285d7ca767e37c', '[\"*\"]', '2025-01-22 09:01:24', NULL, '2024-12-24 05:11:01', '2025-01-22 09:01:24'),
(37, 'App\\Models\\User', 8, 'auth_token', '64be2b6dfba0a3261f89708c653b75601ad6faa9016b1a296aec35f7d26eb805', '[\"*\"]', '2025-02-11 03:58:20', NULL, '2024-12-24 05:17:49', '2025-02-11 03:58:20'),
(38, 'App\\Models\\User', 7, 'auth_token', 'ced6a0e6c953a28ce6fec64b2ca37a3106c89d45bb0d51c062a358ebf13870e3', '[\"*\"]', '2025-01-29 04:23:25', NULL, '2024-12-24 05:30:05', '2025-01-29 04:23:25'),
(39, 'App\\Models\\User', 1, 'auth_token', '25505b8a938f40fcb2ee0076c7746b77a0269a0ac39915cfd039b54a947b6679', '[\"*\"]', '2024-12-24 09:24:49', NULL, '2024-12-24 06:06:59', '2024-12-24 09:24:49'),
(40, 'App\\Models\\User', 1, 'auth_token', '0f0959e092347d75db4b7176b72ecba3040d522f533d4d5712ff5ee2e114f6f7', '[\"*\"]', '2024-12-24 06:23:48', NULL, '2024-12-24 06:23:05', '2024-12-24 06:23:48'),
(41, 'App\\Models\\User', 1, 'auth_token', 'ffffe1f60f261f25fa00603293c646614bdb0361798add00eaf923220477e12f', '[\"*\"]', '2024-12-28 10:31:46', NULL, '2024-12-24 06:33:59', '2024-12-28 10:31:46'),
(42, 'App\\Models\\User', 1, 'auth_token', 'f6707c02c77d0f183c419a07f51ecf1c6a0bcbb30f301e0c02d94aaaa85a783c', '[\"*\"]', '2024-12-25 21:05:25', NULL, '2024-12-25 21:05:03', '2024-12-25 21:05:25'),
(43, 'App\\Models\\User', 8, 'auth_token', '41d37b1d8bf310b00aeb3d7539b78cf699c4897ab7de064796a9701b8f365114', '[\"*\"]', '2025-02-04 15:40:09', NULL, '2024-12-28 10:32:15', '2025-02-04 15:40:09'),
(44, 'App\\Models\\User', 1, 'auth_token', '7661829115956cbbfb1c8e9ae8ed249cad5d459a96e8c3cfea6c71c4201b5f67', '[\"*\"]', '2025-01-09 07:14:57', NULL, '2025-01-09 07:13:42', '2025-01-09 07:14:57'),
(45, 'App\\Models\\User', 1, 'auth_token', '63d94a06634e29d8661c1f31c936f39b6e93c5ee453fa966e689ece9b60eaee5', '[\"*\"]', '2025-01-27 06:59:38', NULL, '2025-01-20 04:54:35', '2025-01-27 06:59:38'),
(46, 'App\\Models\\User', 1, 'auth_token', 'be16eb61ce99101e9e30e94e9262edca28575c64d016bcff03cb9054bdf5e542', '[\"*\"]', '2025-01-23 11:20:07', NULL, '2025-01-23 10:38:55', '2025-01-23 11:20:07'),
(47, 'App\\Models\\User', 1, 'auth_token', 'ea5cfae60c7a67bf6ce739d625946a5d8ab61dd062ed75ee99e7bd468f643c99', '[\"*\"]', '2025-01-23 15:52:30', NULL, '2025-01-23 15:38:56', '2025-01-23 15:52:30'),
(48, 'App\\Models\\User', 1, 'auth_token', '70f116e32b5596127e87a387e9b64c661943eb14538b45575e350f44d32ba8ec', '[\"*\"]', '2025-01-25 06:12:45', NULL, '2025-01-25 06:09:15', '2025-01-25 06:12:45'),
(49, 'App\\Models\\User', 1, 'auth_token', '87fad2d4269b9073839042c5953915105af766e67c8f6e029d148e650aaa3933', '[\"*\"]', '2025-01-28 03:35:19', NULL, '2025-01-25 08:32:45', '2025-01-28 03:35:19'),
(50, 'App\\Models\\User', 1, 'auth_token', 'd6265aafcdd03d38595c93de4177b2ac607e462a16676c2fd496a02f25222a33', '[\"*\"]', '2025-01-25 09:47:37', NULL, '2025-01-25 09:27:01', '2025-01-25 09:47:37'),
(51, 'App\\Models\\User', 1, 'auth_token', '5b26c055fc7b68a45396eda4f338f36872c61669b6ccb508ab80ab657058d52c', '[\"*\"]', '2025-01-26 04:29:25', NULL, '2025-01-26 04:00:46', '2025-01-26 04:29:25'),
(52, 'App\\Models\\User', 1, 'auth_token', '878122427836e56c8476ae147672c5f64c95bfa486849da4315907b3a39c26a5', '[\"*\"]', '2025-01-27 07:02:16', NULL, '2025-01-27 07:01:30', '2025-01-27 07:02:16'),
(53, 'App\\Models\\User', 2, 'auth_token', '7da28f8e68af62c02cfa588af7ddbb594d40926507a4481c1163516ba5cddc29', '[\"*\"]', '2025-01-27 07:02:59', NULL, '2025-01-27 07:02:58', '2025-01-27 07:02:59'),
(54, 'App\\Models\\User', 1, 'auth_token', '21a7b5a380f893070b87dbc380f012eff811728366de0f8e97ed615dffd665f7', '[\"*\"]', '2025-01-27 07:03:20', NULL, '2025-01-27 07:03:15', '2025-01-27 07:03:20'),
(55, 'App\\Models\\User', 12, 'auth_token', '140944e16ffd63469a7794667aba5a1b287bf355081f311a29899e783141b11a', '[\"*\"]', '2025-01-27 07:03:45', NULL, '2025-01-27 07:03:44', '2025-01-27 07:03:45'),
(56, 'App\\Models\\User', 13, 'auth_token', 'f75b11d425f6a145eb5d3ffe68aa9382f29ee191204ddece9cfd14c8a139a1b5', '[\"*\"]', '2025-02-06 12:17:48', NULL, '2025-01-28 03:35:42', '2025-02-06 12:17:48'),
(57, 'App\\Models\\User', 1, 'auth_token', 'af1982005d4f819a4c59a5027f0597f27b665cb39a738c1166d77ec38cfeadc7', '[\"*\"]', '2025-01-28 04:37:31', NULL, '2025-01-28 03:42:17', '2025-01-28 04:37:31'),
(58, 'App\\Models\\User', 1, 'auth_token', 'ecc4d9cc39a7653f5d8e3bc41a4a87935ee5b8a512285281364cf9b4238501d3', '[\"*\"]', '2025-01-28 08:56:35', NULL, '2025-01-28 06:08:54', '2025-01-28 08:56:35'),
(59, 'App\\Models\\User', 13, 'auth_token', '440d09865070e6e8ae182f26d97d174089f625d26893a5c59083ba4b3f7482e1', '[\"*\"]', '2025-01-28 14:40:32', NULL, '2025-01-28 14:38:39', '2025-01-28 14:40:32'),
(60, 'App\\Models\\User', 1, 'auth_token', 'a9cee01360fb009645bf14c0f6279bfa2cefe9ae4a92e2cd9d243fff40a3885b', '[\"*\"]', '2025-01-29 05:31:07', NULL, '2025-01-28 14:41:09', '2025-01-29 05:31:07'),
(61, 'App\\Models\\User', 12, 'auth_token', '7611b14cf7e1c0586e1054e1f1242576a0d99887c81510d3cc615fc3bd805025', '[\"*\"]', '2025-01-29 05:06:36', NULL, '2025-01-29 04:24:49', '2025-01-29 05:06:36'),
(62, 'App\\Models\\User', 13, 'auth_token', '15e3cf29f268d152c07be552314cfcf5ac790cc3dd9c6b1dcf8aaa75b57a75a8', '[\"*\"]', '2025-02-09 07:44:44', NULL, '2025-01-29 05:31:25', '2025-02-09 07:44:44'),
(63, 'App\\Models\\User', 1, 'auth_token', '956d29c13b9bec0b2192bf6d02adea093155da37b0f9e648982e112c20e342db', '[\"*\"]', '2025-02-05 04:48:37', NULL, '2025-01-30 06:19:30', '2025-02-05 04:48:37'),
(64, 'App\\Models\\User', 1, 'auth_token', 'd118aada643e53d9371b417bec23f5a840f67188fd3384730f05f0e48a7d8b85', '[\"*\"]', '2025-02-02 04:27:18', NULL, '2025-02-02 04:20:41', '2025-02-02 04:27:18'),
(65, 'App\\Models\\User', 1, 'auth_token', 'd77c8fa413eabee6d9c05052796302e903ab464c10e1e3173c4d1ff915fec9a6', '[\"*\"]', '2025-02-02 17:00:47', NULL, '2025-02-02 16:53:42', '2025-02-02 17:00:47'),
(66, 'App\\Models\\User', 1, 'auth_token', 'b9bd11538eb45d6ee4323e890c5c4d74e0bfb47b3fb03669ea2c4e7a30b3ae52', '[\"*\"]', '2025-02-02 17:16:42', NULL, '2025-02-02 17:02:07', '2025-02-02 17:16:42'),
(67, 'App\\Models\\User', 1, 'auth_token', '0de01a35fc77f24eac6db8185faf681c70e0b1a60c4f2e79096ec8570a9a4883', '[\"*\"]', '2025-02-02 17:25:16', NULL, '2025-02-02 17:17:15', '2025-02-02 17:25:16'),
(68, 'App\\Models\\User', 1, 'auth_token', '25441b29de0dd8d36c247a33381041b8b9b36dffdeec5cb505eecdd7c1d22a75', '[\"*\"]', '2025-02-02 17:28:17', NULL, '2025-02-02 17:26:14', '2025-02-02 17:28:17'),
(69, 'App\\Models\\User', 1, 'auth_token', 'ece0b657fd29979f4ee9c0e9dbebafcbc3d540ce343ddcac52c4386417743748', '[\"*\"]', '2025-02-02 17:36:20', NULL, '2025-02-02 17:29:07', '2025-02-02 17:36:20'),
(70, 'App\\Models\\User', 12, 'auth_token', '78626177922ab5e594783acbbb0ab17aa2b1be4c495973b65202df6ccfd1ecce', '[\"*\"]', '2025-02-07 11:23:30', NULL, '2025-02-03 11:26:34', '2025-02-07 11:23:30'),
(71, 'App\\Models\\User', 1, 'auth_token', '0a296e74d5677d7e751d5961034224cf35fb1222db1d6e8072ca7bafd5dda59e', '[\"*\"]', '2025-02-11 14:55:07', NULL, '2025-02-04 14:09:46', '2025-02-11 14:55:07'),
(72, 'App\\Models\\User', 1, 'auth_token', '833eea429894b35e82c341dd330c4db2b9f532b28fea746100eeb15395d2ec6f', '[\"*\"]', '2025-02-04 14:35:36', NULL, '2025-02-04 14:20:41', '2025-02-04 14:35:36'),
(73, 'App\\Models\\User', 1, 'auth_token', 'ba9592ea871a18193cc29cedc60be565d402a4cb975aa4e71112698050708fd3', '[\"*\"]', '2025-02-04 14:38:42', NULL, '2025-02-04 14:36:54', '2025-02-04 14:38:42'),
(74, 'App\\Models\\User', 1, 'auth_token', 'a7d0f8a0346a5be81b6948b3d1a2f0942d5df783624343279dcdcc98a9b9840e', '[\"*\"]', '2025-02-04 16:22:36', NULL, '2025-02-04 16:19:13', '2025-02-04 16:22:36'),
(75, 'App\\Models\\User', 1, 'auth_token', '5c05de72f5bf55e57877970d55862bc447cc6cc8efa4f579c883bde71221d79f', '[\"*\"]', NULL, NULL, '2025-02-04 17:16:43', '2025-02-04 17:16:43'),
(76, 'App\\Models\\User', 1, 'auth_token', '9c587c280edad40e9e726d87751fc6c601ea3b097c15aeacde71928d5c6ca52f', '[\"*\"]', NULL, NULL, '2025-02-04 17:16:47', '2025-02-04 17:16:47'),
(77, 'App\\Models\\User', 1, 'auth_token', 'a5a95e66a6bbc859af692f73d52bdb3a1c8c4cdc92996dae3383a218abde997e', '[\"*\"]', NULL, NULL, '2025-02-04 17:17:27', '2025-02-04 17:17:27'),
(78, 'App\\Models\\User', 1, 'auth_token', '4e9689c41bb5f269b8b5262566ac195ca8a3eec062c5dbcd229779e8f44099fd', '[\"*\"]', NULL, NULL, '2025-02-04 17:17:29', '2025-02-04 17:17:29'),
(79, 'App\\Models\\User', 1, 'auth_token', '39e2b8d04243d6a45277bb77be73a9bf113339ea5edeccd09a561c7343aa9472', '[\"*\"]', NULL, NULL, '2025-02-04 17:17:30', '2025-02-04 17:17:30'),
(80, 'App\\Models\\User', 1, 'auth_token', '74376527201973b26befe5032cb5bf7910d342ae3f677c371b547622475ade98', '[\"*\"]', NULL, NULL, '2025-02-04 17:23:38', '2025-02-04 17:23:38'),
(81, 'App\\Models\\User', 1, 'auth_token', '70c55644096f49f865dd246d05f0675d9aad4f81d38cad31944c63e3f53ff666', '[\"*\"]', NULL, NULL, '2025-02-04 17:23:45', '2025-02-04 17:23:45'),
(82, 'App\\Models\\User', 1, 'auth_token', '2de6891bb6909a0776ae656b8599eac56e21ab6ba4aab8c939d746c9eb45384b', '[\"*\"]', NULL, NULL, '2025-02-04 17:23:57', '2025-02-04 17:23:57'),
(83, 'App\\Models\\User', 1, 'auth_token', '1dc5001af050a05813294da57a1bb88a4c7a2d30d150a73485361fc77f35ab48', '[\"*\"]', NULL, NULL, '2025-02-04 17:24:04', '2025-02-04 17:24:04'),
(84, 'App\\Models\\User', 1, 'auth_token', 'ae2a5c9967efd13e4f057696d47ee69d0c235181dbe853bfa4c52502cbf8eac9', '[\"*\"]', NULL, NULL, '2025-02-04 17:24:55', '2025-02-04 17:24:55'),
(85, 'App\\Models\\User', 1, 'auth_token', '6b41dad2cef957294905937c251ef025a29c11f9b76346a39e0169d2cd5b23a1', '[\"*\"]', NULL, NULL, '2025-02-04 17:24:57', '2025-02-04 17:24:57'),
(86, 'App\\Models\\User', 1, 'auth_token', '8187718553f5fe3134bc1c49c10870bab7a9c3c738a20d6797d0b13760fdf348', '[\"*\"]', NULL, NULL, '2025-02-04 17:24:59', '2025-02-04 17:24:59'),
(87, 'App\\Models\\User', 1, 'auth_token', '7551c75b4f1ecaa09c7a20f820626bc79a51102b44a1d5b7e64f74981d4982b8', '[\"*\"]', NULL, NULL, '2025-02-04 17:30:45', '2025-02-04 17:30:45'),
(88, 'App\\Models\\User', 1, 'auth_token', 'd5d592822c63cce0ecb2b0f2704b99c6dacca2f79ab112d0fb346d73517a917a', '[\"*\"]', NULL, NULL, '2025-02-04 17:32:13', '2025-02-04 17:32:13'),
(89, 'App\\Models\\User', 1, 'auth_token', '064a414c2624a5ee52905fc46b2d4cd62e64e63a1e5d13d4379538adcfcb4f64', '[\"*\"]', NULL, NULL, '2025-02-04 17:32:19', '2025-02-04 17:32:19'),
(90, 'App\\Models\\User', 1, 'auth_token', 'da85b6414e81ae19cabba1d6fa9c4d28c5510c4a1f4abd6e81e0cc36d3f68f68', '[\"*\"]', NULL, NULL, '2025-02-04 17:35:36', '2025-02-04 17:35:36'),
(91, 'App\\Models\\User', 1, 'auth_token', '49048dd014082453db486157f63b527272f607aeee3597b1cb89be39a34dae3a', '[\"*\"]', NULL, NULL, '2025-02-04 17:35:48', '2025-02-04 17:35:48'),
(92, 'App\\Models\\User', 1, 'auth_token', '97168c7a2bacbba9cedcdc3b0755038b94fbfbe1c8c8ed1adc1331157d1913d0', '[\"*\"]', '2025-02-04 17:37:22', NULL, '2025-02-04 17:37:21', '2025-02-04 17:37:22'),
(93, 'App\\Models\\User', 1, 'auth_token', '6b4a981ca2fc0f11293d10e527f84ff0aa6c6f336aadc295c92b1a7c27187a66', '[\"*\"]', NULL, NULL, '2025-02-04 17:38:20', '2025-02-04 17:38:20'),
(94, 'App\\Models\\User', 1, 'auth_token', '462b87311620124cd1dc2a3ee9ea5200980a3d7e9bcfb90a60b3842f6a65ce23', '[\"*\"]', '2025-02-04 17:39:52', NULL, '2025-02-04 17:39:44', '2025-02-04 17:39:52'),
(95, 'App\\Models\\User', 1, 'auth_token', 'a3c84e0121f2920fb066859c0dbcdf2402a00090adc9f949e466a807bd13d1cd', '[\"*\"]', '2025-02-04 17:42:32', NULL, '2025-02-04 17:42:32', '2025-02-04 17:42:32'),
(96, 'App\\Models\\User', 1, 'auth_token', '5b1861bc8d7abc54fa72918a10fcc0700d4f51f8044430800e4b2df1567c8601', '[\"*\"]', NULL, NULL, '2025-02-04 17:45:44', '2025-02-04 17:45:44'),
(97, 'App\\Models\\User', 1, 'auth_token', 'c6488f6b6798bb760f6a5b39f5b474295e45cc3aaa8eba450026220d8aef2616', '[\"*\"]', NULL, NULL, '2025-02-04 17:45:45', '2025-02-04 17:45:45'),
(98, 'App\\Models\\User', 1, 'auth_token', 'bcebd7e3d675560fac4a8191caf1dabe9d93baefaf52569fdf61b6eaa54ae03d', '[\"*\"]', NULL, NULL, '2025-02-04 17:45:46', '2025-02-04 17:45:46'),
(99, 'App\\Models\\User', 1, 'auth_token', 'ec40e4fae1372f485fa630a6c16b9d1dbaea69644a62a74044efc9dc65e97084', '[\"*\"]', NULL, NULL, '2025-02-04 17:45:48', '2025-02-04 17:45:48'),
(100, 'App\\Models\\User', 1, 'auth_token', '3633d3e13c5a074366a5429fce4ceb91c81a68515b2128ead9c106627c31d198', '[\"*\"]', NULL, NULL, '2025-02-04 17:46:11', '2025-02-04 17:46:11'),
(101, 'App\\Models\\User', 1, 'auth_token', 'cc532d5edf0f9b5508caa96c2f2294db822daff64f77690f9859276237b970b3', '[\"*\"]', NULL, NULL, '2025-02-04 17:46:23', '2025-02-04 17:46:23'),
(102, 'App\\Models\\User', 1, 'auth_token', 'a994965b3fc312480240aecf5af4671387de1eb2b13a0978fb9d70d28af07d70', '[\"*\"]', NULL, NULL, '2025-02-04 17:46:33', '2025-02-04 17:46:33'),
(103, 'App\\Models\\User', 1, 'auth_token', '9b38aae78bbc3cdaea8e5735682087a4e8e989cccbd1e95694bebc919026ee9e', '[\"*\"]', NULL, NULL, '2025-02-04 17:55:46', '2025-02-04 17:55:46'),
(104, 'App\\Models\\User', 1, 'auth_token', '768d9408143060c219a0f532da76badf939129a36b3febe7f492327bd91139c1', '[\"*\"]', NULL, NULL, '2025-02-04 17:55:48', '2025-02-04 17:55:48'),
(105, 'App\\Models\\User', 1, 'auth_token', '385c8685bab1071109dbf684cd8ce07a45ac1855b2189f477fc04fa6f163f809', '[\"*\"]', '2025-02-04 17:56:52', NULL, '2025-02-04 17:56:51', '2025-02-04 17:56:52'),
(106, 'App\\Models\\User', 1, 'auth_token', '61b786064b723334df75360489ba5269dab623e1669f43ca686e3ae5d50ba1c7', '[\"*\"]', '2025-02-04 18:05:32', NULL, '2025-02-04 18:05:26', '2025-02-04 18:05:32'),
(107, 'App\\Models\\User', 1, 'auth_token', '9202bcb63b3cefd557c9725dc6ef69a6aab4ac1e2eb40073ccf19b305b49d779', '[\"*\"]', '2025-02-05 04:29:09', NULL, '2025-02-04 18:06:16', '2025-02-05 04:29:09'),
(108, 'App\\Models\\User', 1, 'auth_token', 'b44bacfe13c075ceeca9dec813c67e6a48139602884a7752cde7d6275f260a64', '[\"*\"]', NULL, NULL, '2025-02-04 18:09:15', '2025-02-04 18:09:15'),
(109, 'App\\Models\\User', 1, 'auth_token', '6724dab5edbc0f5695726e44e0c8a3d4a93f3aff547074034ce004ac9a54b54d', '[\"*\"]', NULL, NULL, '2025-02-04 18:09:18', '2025-02-04 18:09:18'),
(110, 'App\\Models\\User', 1, 'auth_token', 'ca65b494a408c088d17abb7f4211be848abc5210e6133bbee95988d276660b20', '[\"*\"]', NULL, NULL, '2025-02-04 18:09:19', '2025-02-04 18:09:19'),
(111, 'App\\Models\\User', 1, 'auth_token', '0ffb6ac4747c3305a55f39db5b32ef4d74734ad17c784a0d1c83f05619234fbe', '[\"*\"]', NULL, NULL, '2025-02-04 18:09:41', '2025-02-04 18:09:41'),
(112, 'App\\Models\\User', 1, 'auth_token', '8f4f4080711946611d4b8304f810a492d7e8343046e1a15cfd580712347fd6e2', '[\"*\"]', NULL, NULL, '2025-02-04 18:09:43', '2025-02-04 18:09:43'),
(113, 'App\\Models\\User', 1, 'auth_token', 'c3cba5accaff0ba32303c135eaf65a859c36b38bcfdc1245cc6889fb3c24fb00', '[\"*\"]', '2025-02-05 04:19:55', NULL, '2025-02-05 04:07:37', '2025-02-05 04:19:55'),
(114, 'App\\Models\\User', 12, 'auth_token', 'cee67d4d56390329234250e1554a4b4e02674b771317b5a2303023c9476991ea', '[\"*\"]', '2025-02-05 04:21:36', NULL, '2025-02-05 04:21:02', '2025-02-05 04:21:36'),
(115, 'App\\Models\\User', 12, 'auth_token', 'c3888fbc428b449ac5bd7aec469769fc7ba06bf72526fbad029e21a336fe7592', '[\"*\"]', '2025-02-05 05:46:18', NULL, '2025-02-05 04:34:30', '2025-02-05 05:46:18'),
(116, 'App\\Models\\User', 1, 'auth_token', '3dcb4b82690e64579ed202ae334cc1c99e2b8b5ad8414ac7ca8f18026bd67b28', '[\"*\"]', NULL, NULL, '2025-02-05 04:41:11', '2025-02-05 04:41:11'),
(117, 'App\\Models\\User', 1, 'auth_token', '534423dc4876f70f3d3832507e3b41abc21ae785a82972ec973a375caf175444', '[\"*\"]', '2025-02-05 04:46:37', NULL, '2025-02-05 04:42:22', '2025-02-05 04:46:37'),
(118, 'App\\Models\\User', 12, 'auth_token', '9b3d121e7fa9ac33b7931ba489778beac9d50281f918e4d07c4728908c3188ac', '[\"*\"]', '2025-02-05 05:31:28', NULL, '2025-02-05 04:48:01', '2025-02-05 05:31:28'),
(119, 'App\\Models\\User', 1, 'auth_token', '0b61edc01c1612af2cc297e648ee331f7f79fbe100608afe67c8f48700a7abde', '[\"*\"]', '2025-02-06 09:45:41', NULL, '2025-02-06 08:49:30', '2025-02-06 09:45:41'),
(120, 'App\\Models\\User', 1, 'auth_token', '6748d37745d5592ee3ee5641b7e79ec7084fd588d0215656f7c77759410961bf', '[\"*\"]', '2025-02-08 08:27:36', NULL, '2025-02-08 08:22:31', '2025-02-08 08:27:36'),
(121, 'App\\Models\\User', 13, 'auth_token', '6d7de88ec9ca84c477a2c21443ce6987013acb5beba9a740ef264487c00d58b3', '[\"*\"]', '2025-02-11 12:42:28', NULL, '2025-02-09 15:17:58', '2025-02-11 12:42:28'),
(122, 'App\\Models\\User', 13, 'auth_token', '4ce7144bd967ecb47bc4195d74bdb952e37a4ca3830291d61cf9dd4f21a60da8', '[\"*\"]', '2025-02-09 15:53:10', NULL, '2025-02-09 15:42:41', '2025-02-09 15:53:10'),
(123, 'App\\Models\\User', 13, 'auth_token', 'c4adde4a17bc4a0268f0f49b341d881fe0cbdff7cefe9f7120914a8382267b7e', '[\"*\"]', '2025-02-11 05:03:44', NULL, '2025-02-10 05:42:13', '2025-02-11 05:03:44'),
(124, 'App\\Models\\User', 14, 'auth_token', '0d1dc31400556a77bc57acf9d91fab7336ee076d30dc05526071767175f1f88c', '[\"*\"]', '2025-02-11 05:10:53', NULL, '2025-02-11 05:10:20', '2025-02-11 05:10:53'),
(125, 'App\\Models\\User', 13, 'auth_token', '07953fd4e29011b3a346eaeec04a6e16bfdb9c79aa351d392055c941953dec84', '[\"*\"]', '2025-02-11 07:06:20', NULL, '2025-02-11 05:11:50', '2025-02-11 07:06:20'),
(126, 'App\\Models\\User', 13, 'auth_token', '735986b083140d0cb2b180f0bb009557f319636022129d9177648ba126ec7bc7', '[\"*\"]', '2025-02-13 07:40:21', NULL, '2025-02-11 10:51:07', '2025-02-13 07:40:21'),
(127, 'App\\Models\\User', 1, 'auth_token', '34f866dcfb14c694019b2a9e8e16f842f16da97964325d5f3e0881706caddb55', '[\"*\"]', '2025-02-12 18:28:26', NULL, '2025-02-12 17:46:10', '2025-02-12 18:28:26'),
(128, 'App\\Models\\User', 13, 'auth_token', '27b4a0f09a9110bee617b0d464ec08bb1fe909c849ac45e209965306277b10cf', '[\"*\"]', '2025-02-13 07:47:39', NULL, '2025-02-13 07:46:44', '2025-02-13 07:47:39'),
(129, 'App\\Models\\User', 13, 'auth_token', '7b8d64706dc501d6b958b6587500771a0a0af1b6c5feab08e903003862fb21c3', '[\"*\"]', '2025-02-17 04:01:24', NULL, '2025-02-13 10:38:30', '2025-02-17 04:01:24'),
(130, 'App\\Models\\User', 1, 'auth_token', '1c085318091d835dc58af1b27a54f22a844a95e57011a0d80cd179a816c709e8', '[\"*\"]', '2025-02-15 13:46:10', NULL, '2025-02-15 13:35:44', '2025-02-15 13:46:10'),
(131, 'App\\Models\\User', 1, 'auth_token', 'e08715be5f544bdfb1411e1a2b3fde2e458b33bc9dc194e7cac13607fbea86fa', '[\"*\"]', '2025-02-15 14:49:42', NULL, '2025-02-15 13:58:41', '2025-02-15 14:49:42'),
(132, 'App\\Models\\User', 1, 'auth_token', 'a1bf7690301cadaac99c337cfcf99a4769e0c8db6ffe5f110182dc5e23b9eac4', '[\"*\"]', '2025-02-16 03:21:56', NULL, '2025-02-16 03:20:36', '2025-02-16 03:21:56'),
(133, 'App\\Models\\User', 1, 'auth_token', 'aad4a626121b4647300ef7e4783cc016bb3072eba3822727fccdac1cc42d5b8d', '[\"*\"]', '2025-02-19 15:53:52', NULL, '2025-02-16 03:36:16', '2025-02-19 15:53:52'),
(134, 'App\\Models\\User', 1, 'auth_token', '4c70b1df03a28912cabe0c28907976b4d93eecbf69ce412c218037fe1cbd899a', '[\"*\"]', '2025-02-16 16:31:14', NULL, '2025-02-16 04:59:22', '2025-02-16 16:31:14'),
(135, 'App\\Models\\User', 13, 'auth_token', 'b86a771d98842a776aef9ab6b420cb3dbf67ad50897b1f5accddd5f904532423', '[\"*\"]', NULL, NULL, '2025-02-16 07:29:42', '2025-02-16 07:29:42'),
(136, 'App\\Models\\User', 13, 'auth_token', 'c1569d7d47f89ea2da937a3be1105c0c626c7813f22beb124f3e0c0fe840d195', '[\"*\"]', '2025-02-16 07:30:35', NULL, '2025-02-16 07:30:12', '2025-02-16 07:30:35'),
(137, 'App\\Models\\User', 1, 'auth_token', 'e806576a665865443a387c2a3ed9ec43336691e8df395b12bdc40cf3e09e6555', '[\"*\"]', '2025-02-16 08:08:55', NULL, '2025-02-16 07:47:31', '2025-02-16 08:08:55'),
(138, 'App\\Models\\User', 1, 'auth_token', 'ca7c5a7d9e94efb89d5e798f54463eb585f542c5780efc8a83e95635548bdffe', '[\"*\"]', '2025-02-16 08:11:34', NULL, '2025-02-16 08:09:51', '2025-02-16 08:11:34'),
(139, 'App\\Models\\User', 1, 'auth_token', '28f109e0b2dc8fbdac89e04e709cf360b29d73602cdefbb92ba3248fbdcb7587', '[\"*\"]', '2025-02-16 08:21:13', NULL, '2025-02-16 08:16:09', '2025-02-16 08:21:13'),
(140, 'App\\Models\\User', 13, 'auth_token', 'db25bfbfd93b3452cad6c2db735b6f69afa364261e3d4c587d94270cfc827614', '[\"*\"]', '2025-02-16 08:54:05', NULL, '2025-02-16 08:53:14', '2025-02-16 08:54:05'),
(141, 'App\\Models\\User', 1, 'auth_token', '96537f019f0db0a6632924113fc4b8543c804560a0de8bfa0dc5f808ff000c26', '[\"*\"]', '2025-02-16 16:23:33', NULL, '2025-02-16 15:17:02', '2025-02-16 16:23:33'),
(142, 'App\\Models\\User', 1, 'auth_token', '02eabb9a82021792073a24e50b1c79de63ce1c1f4ccbd13141513b3734f6619a', '[\"*\"]', '2025-02-16 16:39:20', NULL, '2025-02-16 16:33:25', '2025-02-16 16:39:20'),
(143, 'App\\Models\\User', 13, 'auth_token', 'b46a747d5f4aab6f55af69297d7d295a036d7b5469d0229c33349413a24177e6', '[\"*\"]', '2025-02-17 04:58:11', NULL, '2025-02-17 04:01:34', '2025-02-17 04:58:11'),
(144, 'App\\Models\\User', 1, 'auth_token', '560dc6a4ee47c1c2f217d8d72be7039904251e906ca3e39115444ea0eec06d00', '[\"*\"]', '2025-02-17 04:49:09', NULL, '2025-02-17 04:48:56', '2025-02-17 04:49:09'),
(145, 'App\\Models\\User', 5, 'auth_token', 'b13bffd26402a74352c131723ec56d3a03337bacaac94f0c9b54c57d1ff38ed7', '[\"*\"]', '2025-02-17 05:07:58', NULL, '2025-02-17 04:59:37', '2025-02-17 05:07:58'),
(146, 'App\\Models\\User', 13, 'auth_token', '4613cfa014445285ea648e8391d12454a3b9c1fb3e0b99a38b60681f7d8e1d5a', '[\"*\"]', '2025-02-17 05:09:40', NULL, '2025-02-17 05:08:33', '2025-02-17 05:09:40'),
(147, 'App\\Models\\User', 13, 'auth_token', 'a0565f36063719425fd097fd4bbfcca8749bd1b049a1b418702ecf6d51866fd3', '[\"*\"]', '2025-02-17 05:22:34', NULL, '2025-02-17 05:17:26', '2025-02-17 05:22:34'),
(148, 'App\\Models\\User', 5, 'auth_token', 'ec8b68a10331ed6d704cc8af94e8a5d6d67ffc58513f987fa4524a952ad3ff89', '[\"*\"]', '2025-02-17 05:23:05', NULL, '2025-02-17 05:22:45', '2025-02-17 05:23:05'),
(149, 'App\\Models\\User', 13, 'auth_token', 'abd141315270de03125e5a0fd4f50e8296119fd14daf546e3ecfabe45ebff9ca', '[\"*\"]', '2025-02-17 05:24:33', NULL, '2025-02-17 05:24:00', '2025-02-17 05:24:33'),
(150, 'App\\Models\\User', 5, 'auth_token', '6c76201e917fce88d794ef69817c506984fcbe3e55042395949faa8a2ce70cb6', '[\"*\"]', '2025-02-17 05:25:45', NULL, '2025-02-17 05:24:48', '2025-02-17 05:25:45'),
(151, 'App\\Models\\User', 13, 'auth_token', '6634cc993601939dc0a363a5d001430009b516d01204d19859e7ef72fbb0ee9a', '[\"*\"]', '2025-02-17 07:42:43', NULL, '2025-02-17 05:27:03', '2025-02-17 07:42:43'),
(152, 'App\\Models\\User', 5, 'auth_token', 'bc7f4b75854ec4d4ea72bcb71cb6ee898519a7f826628f0b89ff0582e01fa8b5', '[\"*\"]', '2025-02-18 03:58:10', NULL, '2025-02-17 07:42:58', '2025-02-18 03:58:10'),
(153, 'App\\Models\\User', 5, 'auth_token', '3ab6de901b7b1ad5dbddb473db6f4316ce1a4ea2a6084754d05d990aab77669f', '[\"*\"]', '2025-02-17 09:01:46', NULL, '2025-02-17 07:55:54', '2025-02-17 09:01:46'),
(154, 'App\\Models\\User', 13, 'auth_token', '2dcaf4e408eddd039243635f605f6df13d500151c902921645e50532596e9ee6', '[\"*\"]', '2025-02-17 09:00:05', NULL, '2025-02-17 08:04:42', '2025-02-17 09:00:05'),
(155, 'App\\Models\\User', 13, 'auth_token', 'b6ea93cefb48bcddab509c28ee63f6d4635dcbf854f1c8d6d7b99f93ad80cb30', '[\"*\"]', '2025-02-17 10:53:00', NULL, '2025-02-17 09:00:12', '2025-02-17 10:53:00'),
(156, 'App\\Models\\User', 1, 'auth_token', '9be4525f2b24c018b2f019565020522c0cf11ef5e013afb5d1aa52775f0d1deb', '[\"*\"]', '2025-02-17 11:09:47', NULL, '2025-02-17 10:56:45', '2025-02-17 11:09:47'),
(157, 'App\\Models\\User', 1, 'auth_token', 'cbfe1214a3b431e2daac9d41c7187a0a1e32643c4e066b332ce4aa8055754d5d', '[\"*\"]', '2025-02-17 11:41:27', NULL, '2025-02-17 11:10:12', '2025-02-17 11:41:27'),
(158, 'App\\Models\\User', 13, 'auth_token', '345573c22288c85aac70cf81ee1c4e6c0455822c93e9c97d407cc841816fe50e', '[\"*\"]', '2025-02-17 11:46:18', NULL, '2025-02-17 11:41:36', '2025-02-17 11:46:18'),
(159, 'App\\Models\\User', 1, 'auth_token', '454ca1e88b51287bb0a09c595673415ed91477394c58f65ea24fb700bc68b911', '[\"*\"]', '2025-02-17 15:39:43', NULL, '2025-02-17 15:25:25', '2025-02-17 15:39:43'),
(160, 'App\\Models\\User', 13, 'auth_token', '6bb2acf7912e735b0fa293f227fa7e49a3274c4ba54d31363b1ff6f925805ff7', '[\"*\"]', '2025-02-17 15:44:49', NULL, '2025-02-17 15:26:35', '2025-02-17 15:44:49'),
(161, 'App\\Models\\User', 13, 'auth_token', '72a63328276e7a37fbf9373864823af9eecb46defae72cb7a595487edd488228', '[\"*\"]', '2025-02-17 15:42:31', NULL, '2025-02-17 15:41:35', '2025-02-17 15:42:31'),
(162, 'App\\Models\\User', 1, 'auth_token', 'b7265cf5e0579f1a60f8659a96660093d46c7b02151192abaad8625fe93866c9', '[\"*\"]', '2025-02-17 15:44:43', NULL, '2025-02-17 15:42:40', '2025-02-17 15:44:43'),
(163, 'App\\Models\\User', 1, 'auth_token', '477b5e0d1ecfb7575e1b5aaa18a2535c8ad65d0bdcc5ea4a9ace33edd4b3dcb0', '[\"*\"]', '2025-02-17 16:01:41', NULL, '2025-02-17 15:55:42', '2025-02-17 16:01:41'),
(164, 'App\\Models\\User', 1, 'auth_token', '78896ae43c1258d98d3abbd7f71e25b183545773499041426ea82c4a95ec8d23', '[\"*\"]', '2025-02-17 16:38:13', NULL, '2025-02-17 16:02:44', '2025-02-17 16:38:13'),
(165, 'App\\Models\\User', 13, 'auth_token', 'a1f86eaf8452cbd2ed2fc988cae8f8954227dcc10307d37b93a3735da5af5f43', '[\"*\"]', '2025-02-18 04:03:33', NULL, '2025-02-18 03:58:25', '2025-02-18 04:03:33'),
(166, 'App\\Models\\User', 13, 'auth_token', '9e0a8b2024bf170d8a95fbb3f9a6b7d4c91b2855b85c6a971aae0bed85a991b0', '[\"*\"]', '2025-02-18 04:04:08', NULL, '2025-02-18 04:03:46', '2025-02-18 04:04:08'),
(167, 'App\\Models\\User', 13, 'auth_token', '1ae274a60f4223fad3f7cea23c6e6fd6c1b27ae1915289dbef0a5af3aa22b4ae', '[\"*\"]', '2025-02-18 04:55:51', NULL, '2025-02-18 04:05:57', '2025-02-18 04:55:51'),
(168, 'App\\Models\\User', 5, 'auth_token', 'f2f77f145c601b2deda4a63d2b11f565363752539822cd17c9f0ad3937210c12', '[\"*\"]', '2025-02-19 04:09:40', NULL, '2025-02-18 04:57:06', '2025-02-19 04:09:40'),
(169, 'App\\Models\\User', 1, 'auth_token', 'ecb413a35a8eafaba1c0b926a44dbba879170c00f0b60dbc594ac2e651385f4c', '[\"*\"]', '2025-02-18 17:15:33', NULL, '2025-02-18 17:13:40', '2025-02-18 17:15:33'),
(170, 'App\\Models\\User', 1, 'auth_token', '4d50d1101a8c2bb27e9c5d7213f8728b90a28be328bb5ac1a37c25ea1e1cb080', '[\"*\"]', '2025-02-19 05:57:46', NULL, '2025-02-19 04:10:51', '2025-02-19 05:57:46'),
(171, 'App\\Models\\User', 5, 'auth_token', '26fe0b72dc85565cfe8de0604624653b910eba2a172c6a6dfc14bdf94140ea7b', '[\"*\"]', '2025-02-19 05:59:14', NULL, '2025-02-19 05:58:46', '2025-02-19 05:59:14'),
(172, 'App\\Models\\User', 1, 'auth_token', 'e05350cfd2d28b3085dc297e4ea04ec00e5b00d1e6580021481db2b2ceb1dc9d', '[\"*\"]', '2025-02-19 06:09:08', NULL, '2025-02-19 06:00:30', '2025-02-19 06:09:08'),
(173, 'App\\Models\\User', 1, 'auth_token', '8cbeb7c85bb37980b21c79a852137784ef185d8d9226c89caec05260fd22c5b6', '[\"*\"]', '2025-02-19 07:02:50', NULL, '2025-02-19 07:02:41', '2025-02-19 07:02:50'),
(174, 'App\\Models\\User', 1, 'auth_token', 'd375ef5fefebfa1685349372a22e2159163978678e86371be7c0e230d669c735', '[\"*\"]', '2025-02-19 10:59:35', NULL, '2025-02-19 10:54:29', '2025-02-19 10:59:35'),
(175, 'App\\Models\\User', 1, 'auth_token', '9cf99db44bbecdfd073f4eaed78262abbd3a4666a50dbf3b9bf82372df4ffc9f', '[\"*\"]', '2025-02-19 14:26:49', NULL, '2025-02-19 14:26:19', '2025-02-19 14:26:49'),
(176, 'App\\Models\\User', 1, 'auth_token', 'd9d4b98973cd6aed486918f364738f007d2b673a1cc60003957cb31388802c9e', '[\"*\"]', '2025-02-19 16:18:39', NULL, '2025-02-19 15:52:14', '2025-02-19 16:18:39'),
(177, 'App\\Models\\User', 1, 'auth_token', 'acaac7288c7e7aded2baf4d763926a8cc673831f8ef84a612104de0c68c1808f', '[\"*\"]', '2025-02-20 04:21:44', NULL, '2025-02-20 03:56:49', '2025-02-20 04:21:44'),
(178, 'App\\Models\\User', 5, 'auth_token', '6622f1d9c1b19e7175780d8da0e9806998c16a9e33eb980eca49bd7e06a68d87', '[\"*\"]', '2025-02-20 05:11:04', NULL, '2025-02-20 05:08:38', '2025-02-20 05:11:04'),
(179, 'App\\Models\\User', 1, 'auth_token', '1be82e75380f9a8716429ff9bd4c54cd967f60e7a466e0514fd991ca5a2212d7', '[\"*\"]', '2025-02-20 05:16:01', NULL, '2025-02-20 05:11:32', '2025-02-20 05:16:01');

-- --------------------------------------------------------

--
-- Table structure for table `priorities`
--

CREATE TABLE `priorities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `color` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `priorities`
--

INSERT INTO `priorities` (`id`, `title`, `active`, `created_at`, `updated_at`, `color`) VALUES
(1, 'High', 1, NULL, NULL, '#FF5C66'),
(2, 'Low', 1, NULL, NULL, '#49E0F4'),
(3, 'Medium', 1, NULL, NULL, '#FCD614');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `code` varchar(191) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `stock` int(11) NOT NULL DEFAULT 0,
  `initial_stock` int(11) NOT NULL DEFAULT 0,
  `cost` double NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `category_id`, `brand_id`, `status`, `stock`, `initial_stock`, `cost`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'eeeeeeeeeeeeeeee', 'ecd', 2, 2, 1, 10, 0, 150, 1, '2025-05-08 07:02:54', '2025-05-08 07:02:54');

-- --------------------------------------------------------

--
-- Table structure for table `product_tickets`
--

CREATE TABLE `product_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tickets`
--

INSERT INTO `product_tickets` (`id`, `product_id`, `ticket_id`, `price`, `quantity`, `total_amount`, `created_at`, `updated_at`, `created_by`) VALUES
(2, 1, 662, 150, 1, 150, '2025-05-08 07:44:48', '2025-05-08 07:44:48', 1),
(3, 1, 662, 150, 1, 150, '2025-05-08 07:47:12', '2025-05-08 07:47:12', 1),
(4, 1, 662, 150, 1, 150, '2025-05-08 07:47:43', '2025-05-08 07:47:43', 1),
(5, 1, 662, 150, 3, 450, '2025-05-08 12:56:38', '2025-05-08 12:56:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `refunds`
--

CREATE TABLE `refunds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `refund_date` datetime NOT NULL,
  `refund` double NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', NULL, NULL),
(2, 'Agents', 'web', NULL, NULL),
(3, 'Manager', 'web', '2025-02-11 04:33:44', '2025-02-11 04:33:44');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
('aAEUT9Gv9kO0tzLwlBORDXpOFTSeEl2MMkQYoERl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTozOntzOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjY6Il90b2tlbiI7czo0MDoidG9kSU80cnhZa0lieEowOWFLVFNGcnV5WmRZM1A4czQzeTNsRFNiZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fX0=', 1747055202);

-- --------------------------------------------------------

--
-- Table structure for table `stages`
--

CREATE TABLE `stages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stage` varchar(191) NOT NULL,
  `color_code` varchar(191) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stages`
--

INSERT INTO `stages` (`id`, `stage`, `color_code`, `active`, `created_at`, `updated_at`) VALUES
(1, 'New', '349AF8', 1, '2024-12-12 10:27:49', '2024-12-12 10:27:49'),
(2, 'Open', '46599B', 1, '2024-12-12 10:27:49', '2024-12-12 10:27:49'),
(3, 'In Progress', 'FF9542', 1, '2024-12-12 10:27:49', '2024-12-12 10:27:49'),
(4, 'Closed', '22ABAA', 1, '2024-12-12 10:27:49', '2024-12-12 10:27:49');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_name` varchar(191) NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `type_id` int(11) NOT NULL,
  `expires_at` datetime NOT NULL,
  `description` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(191) DEFAULT 'Open',
  `closed_time` datetime DEFAULT NULL,
  `closed_by` int(11) DEFAULT NULL,
  `closing_comment` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `task_name`, `created_by`, `ticket_id`, `type_id`, `expires_at`, `description`, `created_at`, `updated_at`, `category_id`, `status`, `closed_time`, `closed_by`, `closing_comment`) VALUES
(1, 'Track the Material', 1, 658, 1, '2024-12-13 13:13:00', 'Track the Material', '2024-12-13 06:45:33', '2024-12-13 06:45:33', NULL, 'Open', NULL, NULL, NULL),
(6, 'Testing', 1, 658, 2, '2025-04-21 19:59:00', 'sddsfs sf dsf dfdfdsfdsf fsdf', '2025-04-21 03:05:34', '2025-04-21 03:05:34', NULL, 'Open', NULL, NULL, NULL),
(13, 'mmmmmmmmmmmmm', 1, 658, 2, '2025-04-22 16:26:00', 'sdfsadfsdf sdfdsfdsfdsfd s', '2025-04-21 04:53:25', '2025-04-21 04:53:25', NULL, 'Open', NULL, NULL, NULL),
(14, 'nnnnnnnnn nnnnnnnnn nnnnnnnn', 1, 658, 2, '2025-04-22 16:30:00', 'a dsfdsfdsf dsfsdfdsf fsd', '2025-04-21 04:53:55', '2025-04-21 04:53:55', NULL, 'Open', NULL, NULL, NULL),
(15, 'ggggggggg gggggg gggggg gggg', 1, 658, 2, '2025-04-22 14:30:00', 'sadfsdf fdsfsdfsdfds fdsfdsfsdf sdfdsf', '2025-04-21 04:54:52', '2025-04-21 04:54:52', NULL, 'Open', NULL, NULL, NULL),
(16, 'sdresr', 1, 658, 2, '2025-04-21 15:50:00', 'ereresarssdfdsfdfdsfdfdf', '2025-04-21 05:30:14', '2025-04-21 05:30:14', NULL, 'Open', NULL, NULL, NULL),
(17, 'fsddfdsf', 1, 657, 2, '2025-05-07 13:16:00', 'fsfsdfsdfsdfsdf', '2025-05-06 04:34:56', '2025-05-06 04:34:56', NULL, 'Open', NULL, NULL, NULL),
(18, 'sadasd', 1, 662, 2, '2025-05-08 13:00:00', 'adadsadsadasdsadsadasd', '2025-05-08 13:01:10', '2025-05-08 13:01:10', NULL, 'Open', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `task_categories`
--

CREATE TABLE `task_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_categories`
--

INSERT INTO `task_categories` (`id`, `category`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 'Call', NULL, NULL, 1),
(2, 'Meeting', NULL, NULL, 1),
(3, 'Sales', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `task_types`
--

CREATE TABLE `task_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_types`
--

INSERT INTO `task_types` (`id`, `type`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 'open', NULL, NULL, 1),
(2, 'pending', NULL, NULL, 1),
(3, 'close', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `issue` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `priority` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `ticket_type` int(11) DEFAULT NULL,
  `ticket_label` int(11) DEFAULT NULL,
  `notify_to` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`notify_to`)),
  `branch_id` int(11) DEFAULT NULL,
  `tracking_number` varchar(50) DEFAULT NULL,
  `due_date` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `service_id` varchar(191) DEFAULT NULL,
  `closed_time` time DEFAULT NULL,
  `closed_by` int(11) DEFAULT NULL,
  `closed_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `issue`, `description`, `customer_id`, `priority`, `status`, `ticket_type`, `ticket_label`, `notify_to`, `branch_id`, `tracking_number`, `due_date`, `deleted_at`, `created_at`, `updated_at`, `created_by`, `slug`, `service_id`, `closed_time`, `closed_by`, `closed_at`) VALUES
(38, 'Shipment short 11', 'Incomplete shipment recieved at the facility', 3, 1, 2, NULL, NULL, NULL, NULL, NULL, '2025-01-09 10:19:00', NULL, '2025-01-09 04:50:24', '2025-01-29 04:50:24', 8, 'shipment-short-38', '0000000038', NULL, NULL, '2025-04-24'),
(76, 'Shipment short 22', 'Incomplete shipment recieved at the facility', 3, 1, 2, NULL, NULL, NULL, NULL, NULL, '2025-01-10 10:19:00', NULL, '2025-01-09 23:20:24', '2025-01-28 23:20:24', 8, 'shipment-short-38', '0000000038', NULL, NULL, '2025-04-24'),
(114, 'Shipment short 33', 'Incomplete shipment recieved at the facility', 3, 1, 2, NULL, NULL, NULL, NULL, NULL, '2025-01-19 10:19:00', NULL, '2025-01-28 23:20:24', '2025-01-28 23:20:24', 8, 'shipment-short-38', '0000000038', NULL, NULL, '2025-04-24'),
(151, 'Delay', 'dispatch delayed', 1, 2, 2, NULL, NULL, NULL, NULL, NULL, '2025-01-28 07:53:00', NULL, '2025-01-27 23:00:58', '2025-01-27 23:07:31', 1, 'delay-37', '0000000037', NULL, NULL, '2025-04-24'),
(152, 'Shipment short', 'Incomplete shipment recieved at the facility', 3, 1, 2, NULL, NULL, NULL, NULL, NULL, '2025-01-29 10:19:00', NULL, '2025-01-28 23:20:24', '2025-01-28 23:20:24', 12, 'shipment-short-38', '0000000038', NULL, NULL, '2025-04-24'),
(189, 'Delay', 'dispatch delayed', 1, 2, 2, NULL, NULL, NULL, NULL, NULL, '2025-01-28 07:53:00', NULL, '2025-01-27 23:00:58', '2025-01-27 23:07:31', 1, 'delay-37', '0000000037', NULL, NULL, '2025-04-24'),
(190, 'Shipment short', 'Incomplete shipment recieved at the facility', 3, 1, 2, NULL, NULL, NULL, NULL, NULL, '2025-01-29 10:19:00', NULL, '2025-01-28 23:20:24', '2025-01-28 23:20:24', 12, 'shipment-short-38', '0000000038', NULL, NULL, '2025-04-24'),
(227, 'Delay', 'dispatch delayed', 1, 2, 2, NULL, NULL, NULL, NULL, NULL, '2025-01-28 07:53:00', NULL, '2025-01-27 23:00:58', '2025-01-27 23:07:31', 1, 'delay-37', '0000000037', NULL, NULL, '2025-04-24'),
(228, 'Shipment short 44', 'Incomplete shipment recieved at the facility', 3, 1, 2, NULL, NULL, NULL, NULL, NULL, '2025-01-29 10:19:00', NULL, '2025-01-10 23:20:24', '2025-01-28 23:20:24', 8, 'shipment-short-38', '0000000038', NULL, NULL, '2025-04-24'),
(265, 'Delay', 'dispatch delayed', 1, 2, 2, NULL, NULL, NULL, NULL, NULL, '2025-01-28 07:53:00', NULL, '2025-01-27 23:00:58', '2025-01-27 23:07:31', 1, 'delay-37', '0000000037', NULL, NULL, '2025-04-24'),
(266, 'Shipment short', 'Incomplete shipment recieved at the facility', 3, 1, 2, NULL, NULL, NULL, NULL, NULL, '2025-01-29 10:19:00', NULL, '2025-01-28 23:20:24', '2025-01-28 23:20:24', 12, 'shipment-short-38', '0000000038', NULL, NULL, '2025-04-24'),
(304, 'Shipment short', 'Incomplete shipment recieved at the facility', 3, 1, 2, NULL, NULL, NULL, NULL, NULL, '2025-01-29 10:19:00', NULL, '2025-01-28 23:20:24', '2025-01-28 23:20:24', 12, 'shipment-short-38', '0000000038', NULL, NULL, '2025-04-24'),
(342, 'Shipment short 55', 'Incomplete shipment recieved at the facility', 3, 1, 2, NULL, NULL, NULL, NULL, NULL, '2025-01-29 10:19:00', NULL, '2025-01-28 23:20:24', '2025-01-28 23:20:24', 8, 'shipment-short-38', '0000000038', NULL, NULL, '2025-04-24'),
(380, 'Shipment short', 'Incomplete shipment recieved at the facility', 3, 1, 2, NULL, NULL, NULL, NULL, NULL, '2025-01-29 10:19:00', NULL, '2025-01-28 23:20:24', '2025-01-28 23:20:24', 12, 'shipment-short-38', '0000000038', NULL, NULL, '2025-04-24'),
(417, 'Delay', 'dispatch delayed', 1, 2, 2, NULL, NULL, NULL, NULL, NULL, '2025-01-28 07:53:00', NULL, '2025-01-27 23:00:58', '2025-01-27 23:07:31', 1, 'delay-37', '0000000037', NULL, NULL, '2025-04-24'),
(418, 'Shipment short 66', 'Incomplete shipment recieved at the facility', 3, 1, 2, NULL, NULL, NULL, NULL, NULL, '2025-01-29 10:19:00', NULL, '2025-01-11 23:20:24', '2025-01-28 23:20:24', 8, 'shipment-short-38', '0000000038', NULL, NULL, '2025-04-24'),
(455, 'Delay', 'dispatch delayed', 1, 2, 2, NULL, NULL, NULL, NULL, NULL, '2025-01-28 07:53:00', NULL, '2025-01-27 23:00:58', '2025-01-27 23:07:31', 1, 'delay-37', '0000000037', NULL, NULL, '2025-04-24'),
(456, 'Shipment short', 'Incomplete shipment recieved at the facility', 3, 1, 2, NULL, NULL, NULL, NULL, NULL, '2025-01-29 10:19:00', NULL, '2025-01-28 23:20:24', '2025-01-28 23:20:24', 12, 'shipment-short-38', '0000000038', NULL, NULL, '2025-04-24'),
(493, 'Delay', 'dispatch delayed', 1, 2, 2, NULL, NULL, NULL, NULL, NULL, '2025-01-28 07:53:00', NULL, '2025-01-27 23:00:58', '2025-01-27 23:07:31', 1, 'delay-37', '0000000037', NULL, NULL, '2025-04-24'),
(494, 'Shipment short', 'Incomplete shipment recieved at the facility', 3, 1, 2, NULL, NULL, NULL, NULL, NULL, '2025-01-29 10:19:00', NULL, '2025-01-28 23:20:24', '2025-01-28 23:20:24', 12, 'shipment-short-38', '0000000038', NULL, NULL, '2025-04-24'),
(532, 'Shipment short 77', 'Incomplete shipment recieved at the facility', 3, 1, 2, NULL, NULL, NULL, NULL, NULL, '2025-01-29 10:19:00', NULL, '2025-01-28 23:20:24', '2025-01-28 23:20:24', 8, 'shipment-short-38', '0000000038', NULL, NULL, '2025-04-24'),
(570, 'Shipment short', 'Incomplete shipment recieved at the facility', 3, 1, 2, NULL, NULL, NULL, NULL, NULL, '2025-01-29 10:19:00', NULL, '2025-01-28 23:20:24', '2025-01-28 23:20:24', 12, 'shipment-short-38', '0000000038', NULL, NULL, '2025-04-24'),
(608, 'Shipment short 88', 'Incomplete shipment recieved at the facility', 3, 1, 2, NULL, NULL, NULL, NULL, NULL, '2025-01-29 10:19:00', NULL, '2025-01-28 23:20:24', '2025-01-28 23:20:24', 8, 'shipment-short-38', '0000000038', NULL, NULL, '2025-04-24'),
(645, 'Delay', 'dispatch delayed', 1, 3, 4, NULL, NULL, NULL, NULL, NULL, '2025-01-28 07:53:00', NULL, '2025-01-27 23:00:58', '2025-05-06 10:37:06', 1, 'delay-37', '0000000037', NULL, NULL, '2025-05-06'),
(646, 'Shipment short 99', 'Incomplete shipment recieved at the facility', 3, 2, 4, NULL, NULL, NULL, NULL, NULL, '2025-01-29 10:19:00', NULL, '2025-01-28 23:20:24', '2025-04-24 03:47:13', 8, 'shipment-short-38', '0000000038', NULL, NULL, '2025-04-24'),
(650, 'vvvvvvvv bbbbbbbbbbbbb', 'fsdfdsfds dsfsdfdsf dsfds', 2, 2, 2, NULL, 10, NULL, 3, '43243423', '2025-04-19 00:00:00', NULL, '2025-04-17 23:48:41', '2025-04-17 23:48:41', 1, 'vvvvvvvv-bbbbbbbbbbbbb-650', '0000000650', '01:51:00', NULL, '2025-04-24'),
(651, 'vvvvvvvv bbbbbbbbbbbbb', 'fsdfdsfds dsfsdfdsf dsfds', 2, 2, 2, NULL, 10, NULL, 3, '43243423', '2025-04-19 00:00:00', NULL, '2025-04-17 23:50:34', '2025-04-17 23:50:34', 1, 'vvvvvvvv-bbbbbbbbbbbbb-651', '0000000651', '01:51:00', NULL, '2025-04-24'),
(652, 'gdfgdfgfdgdfgfdgdfgfd', 'gfggfdgdfgdfgdfgdfg', 5, 2, 2, NULL, 6, NULL, 1, '5545454', '2025-04-19 00:00:00', NULL, '2025-04-17 23:52:50', '2025-04-17 23:52:50', 1, 'gdfgdfgfdgdfgfdgdfgfd-652', '0000000652', '02:52:00', NULL, '2025-04-24'),
(653, 'dsfffsdf', 'fsdfdfdsfsdfsd', 2, 1, 3, NULL, 5, NULL, 3, '43324242', '2025-04-19 00:00:00', NULL, '2025-04-18 00:35:11', '2025-04-18 00:35:11', 1, 'dsfffsdf-653', '0000000653', '11:39:00', NULL, '2025-04-24'),
(656, 'dsfffsdf', 'fsdfdfdsfsdfsd', 2, 1, 2, NULL, 5, NULL, 3, '43324242', '2025-04-19 00:00:00', NULL, '2025-04-18 00:39:14', '2025-05-03 11:06:01', 1, 'dsfffsdf-656', '0000000656', '11:39:00', NULL, '2025-04-24'),
(657, 'qwerty nnnnnnnnnnnnnnnn', 'xdffdsfa fsdafasdfdsfds fdsafdsafsdf fsdfsdfsdfsdf', 5, 2, 2, NULL, 11, NULL, 3, '43243423', '2025-04-19 00:00:00', NULL, '2025-04-18 01:32:01', '2025-05-03 11:04:41', 1, 'qwerty-nnnnnnnnnnnnnnnn-657', '0000000657', '17:31:00', NULL, '2025-04-24'),
(658, 'this is testing 353454353', 'testing f dsf fddf gdffdf  f dsfsd fdsfsdfdsfd', 4, 2, 2, NULL, 10, NULL, 3, '43243423', '2025-04-09 00:00:00', NULL, '2025-04-18 01:35:59', '2025-05-12 04:53:23', 1, 'qqqqqqqqq-qqqqqq-658', '0000000658', '18:35:00', NULL, '2025-04-24'),
(659, 'qwerty', 'dsf dsfdsfsdfdsfsdfdsfsadfdsf', 1, 2, 4, NULL, 5, NULL, 2, NULL, '2025-05-06 00:00:00', NULL, '2025-05-06 06:37:21', '2025-05-06 10:35:19', 1, 'qwerty-659', '0000000659', '10:15:00', NULL, '2025-05-06'),
(660, 'nnnnnnnnnnnnnnnnnnnnnn', 'dsfafsdffdsfsdfdsfsdfsdf', 2, 2, NULL, NULL, NULL, NULL, 3, NULL, '2025-05-06 00:00:00', NULL, '2025-05-06 06:47:16', '2025-05-06 06:47:16', 1, NULL, NULL, '22:30:00', NULL, NULL),
(661, 'nnnnnnnnnnnnnnnnnnnnnn', 'dsfafsdffdsfsdfdsfsdfsdf', 2, 2, NULL, NULL, NULL, NULL, 3, NULL, '2025-05-06 00:00:00', NULL, '2025-05-06 06:49:10', '2025-05-06 06:49:10', 1, NULL, NULL, '22:30:00', NULL, NULL),
(662, 'nnnnnnnnnnnnnnnnnnnnnn', 'dsfafsdffdsfsdfdsfsdfsdf', 2, 2, 2, NULL, 5, NULL, 3, NULL, '2025-05-06 00:00:00', NULL, '2025-05-06 06:49:18', '2025-05-12 04:20:28', 1, 'nnnnnnnnnnnnnnnnnnnnnn-662', '0000000662', '22:30:00', NULL, NULL),
(663, 'ggggggg gggggggg ggggg', 'dggdsg gfdgdfgfd gfdgdfgfdg', 2, 2, 2, NULL, 6, NULL, 2, NULL, '2025-05-12 00:00:00', NULL, '2025-05-12 08:00:44', '2025-05-12 08:00:44', 1, 'ggggggg-gggggggg-ggggg-663', '0000000663', '10:30:00', NULL, NULL),
(664, 'ggggggg gggggggg ggggg', 'dggdsg gfdgdfgfd gfdgdfgfdg', 2, 2, 2, NULL, 6, NULL, 2, NULL, '2025-05-12 00:00:00', NULL, '2025-05-12 08:01:42', '2025-05-12 08:01:42', 1, 'ggggggg-gggggggg-ggggg-664', '0000000664', '10:30:00', NULL, NULL),
(665, 'kkkkkkk kkkkkkkk kkkkk kkkk', 'gfdfd fdfsfsd ff fsdfdfdfdsfsdfsd f', 3, 2, 2, NULL, 8, NULL, 3, NULL, '2025-05-12 00:00:00', NULL, '2025-05-12 08:19:08', '2025-05-12 08:19:08', 1, 'kkkkkkk-kkkkkkkk-kkkkk-kkkk-665', '0000000665', '17:30:00', NULL, NULL),
(666, 'kkkkkkk kkkkkkkk kkkkk kkkk', 'gfdfd fdfsfsd ff fsdfdfdfdsfsdfsd f', 3, 2, 2, NULL, 8, NULL, 3, NULL, '2025-05-12 00:00:00', NULL, '2025-05-12 08:19:34', '2025-05-12 08:19:34', 1, 'kkkkkkk-kkkkkkkk-kkkkk-kkkk-666', '0000000666', '17:30:00', NULL, NULL),
(667, 'kkkkkkk kkkkkkkk kkkkk kkkk', 'gfdfd fdfsfsd ff fsdfdfdfdsfsdfsd f', 3, 2, 2, NULL, 8, NULL, 4, NULL, '2025-05-12 00:00:00', NULL, '2025-05-12 08:20:04', '2025-05-12 08:38:03', 1, 'kkkkkkk-kkkkkkkk-kkkkk-kkkk-667', '0000000667', '17:30:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_additional_fields`
--

CREATE TABLE `ticket_additional_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `additional_field_id` bigint(20) UNSIGNED NOT NULL,
  `user_input` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_additional_fields`
--

INSERT INTO `ticket_additional_fields` (`id`, `ticket_id`, `additional_field_id`, `user_input`, `created_at`, `updated_at`) VALUES
(75, 38, 2, '7830812', '2025-01-29 04:50:24', '2025-05-12 05:08:49'),
(76, 38, 1, '2', '2025-01-29 04:50:24', '2025-05-12 05:04:49'),
(77, 664, 1, '2', '2025-05-12 08:01:42', '2025-05-12 08:01:42'),
(78, 664, 2, '53445545435', '2025-05-12 08:01:42', '2025-05-12 08:01:42'),
(79, 664, 3, '2025-05-13', '2025-05-12 08:01:42', '2025-05-12 08:01:42'),
(80, 664, 9, '1', '2025-05-12 08:01:42', '2025-05-12 08:01:42'),
(81, 664, 10, '3', '2025-05-12 08:01:42', '2025-05-12 08:01:42'),
(82, 664, 11, '1', '2025-05-12 08:01:42', '2025-05-12 08:02:53'),
(83, 665, 1, '2', '2025-05-12 08:19:08', '2025-05-12 08:19:08'),
(84, 665, 2, '4334343', '2025-05-12 08:19:08', '2025-05-12 08:19:08'),
(85, 665, 3, '2025-05-12', '2025-05-12 08:19:08', '2025-05-12 08:19:08'),
(86, 665, 9, '1', '2025-05-12 08:19:08', '2025-05-12 08:19:08'),
(87, 665, 10, '3', '2025-05-12 08:19:08', '2025-05-12 08:19:08'),
(88, 665, 11, NULL, '2025-05-12 08:19:08', '2025-05-12 08:19:08'),
(89, 666, 1, '2', '2025-05-12 08:19:34', '2025-05-12 08:19:34'),
(90, 666, 2, '4334343', '2025-05-12 08:19:34', '2025-05-12 08:19:34'),
(91, 666, 3, '2025-05-12', '2025-05-12 08:19:34', '2025-05-12 08:19:34'),
(92, 666, 9, '1', '2025-05-12 08:19:34', '2025-05-12 08:19:34'),
(93, 666, 10, '3', '2025-05-12 08:19:34', '2025-05-12 08:19:34'),
(94, 666, 11, NULL, '2025-05-12 08:19:34', '2025-05-12 08:19:34'),
(95, 667, 1, '2', '2025-05-12 08:20:04', '2025-05-12 08:20:04'),
(96, 667, 2, '4334343', '2025-05-12 08:20:04', '2025-05-12 08:20:04'),
(97, 667, 3, '2025-05-12', '2025-05-12 08:20:04', '2025-05-12 08:20:04'),
(98, 667, 9, '1', '2025-05-12 08:20:04', '2025-05-12 08:20:04'),
(99, 667, 10, '3', '2025-05-12 08:20:04', '2025-05-12 08:20:04'),
(100, 667, 11, NULL, '2025-05-12 08:20:04', '2025-05-12 08:20:04');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_images`
--

CREATE TABLE `ticket_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `file_name` text NOT NULL,
  `size` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_images`
--

INSERT INTO `ticket_images` (`id`, `ticket_id`, `file_name`, `size`, `created_at`, `updated_at`) VALUES
(2, 662, 'pic-1746699306.png', '83.78 KB', '2025-05-08 10:15:06', '2025-05-08 10:15:06'),
(8, 662, 'pic-1746699351.png', '83.78 KB', '2025-05-08 04:44:24', '2025-05-08 04:44:24'),
(10, 662, 'pic-1746699390.png', '83.78 KB', '2025-05-08 04:44:24', '2025-05-08 04:44:24'),
(11, 662, 'pic-1746704820.png', '83.78 KB', '2025-05-08 04:45:06', '2025-05-08 04:45:06'),
(22, 662, 'pic-1746706877.png', '82.15 KB', '2025-05-08 12:21:17', '2025-05-08 12:21:17'),
(23, 662, 'pic-1746706935.png', '89.6 KB', '2025-05-08 12:22:15', '2025-05-08 12:22:15'),
(24, 662, 'pic-1746707028.png', '84.57 KB', '2025-05-08 12:23:48', '2025-05-08 12:23:48'),
(34, 667, 'pic0-1747038004.png', '77.26 KB', '2025-05-12 08:20:04', '2025-05-12 08:20:04'),
(35, 667, 'pic1-1747038004.png', '68.96 KB', '2025-05-12 08:20:04', '2025-05-12 08:20:04');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_labels`
--

CREATE TABLE `ticket_labels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(191) NOT NULL,
  `color` varchar(191) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_labels`
--

INSERT INTO `ticket_labels` (`id`, `label`, `color`, `active`, `created_at`, `updated_at`, `created_by`) VALUES
(3, 'Shipment Damage', '#EF5350', 1, '2024-12-13 07:35:32', '2024-12-13 07:35:32', 1),
(4, 'Theft', '#FFCDD2', 1, '2024-12-13 07:35:43', '2024-12-13 07:35:50', 1),
(5, 'Lost Items', '#DCEDC8', 1, '2024-12-13 07:36:02', '2024-12-13 07:36:02', 1),
(6, 'Delayed Shipment', '#E6EE9C', 1, '2024-12-13 07:36:14', '2024-12-13 07:36:14', 1),
(7, 'Missing Documentation', '#42A5F5', 1, '2024-12-13 07:36:28', '2024-12-13 07:36:28', 1),
(8, 'Customs Issue', '#9575CD', 1, '2024-12-13 07:38:14', '2024-12-13 07:38:14', 1),
(9, 'Incorrect Delivery', '#0D47A1', 1, '2024-12-13 07:38:33', '2024-12-13 07:38:33', 1),
(10, 'Payment Issue', '#AB47BC', 1, '2024-12-13 07:38:45', '2024-12-13 07:38:45', 1),
(11, 'Return Shipment', '#7E57C2', 1, '2024-12-13 07:38:56', '2024-12-13 07:38:56', 1),
(12, 'Customer Complaint', '#F9A825', 1, '2024-12-13 07:39:11', '2024-12-13 07:39:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_log_notes`
--

CREATE TABLE `ticket_log_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `agent_id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `type_id` int(11) NOT NULL,
  `outcome_id` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `description` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `log` varchar(191) DEFAULT NULL,
  `file_type` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_log_notes`
--

INSERT INTO `ticket_log_notes` (`id`, `agent_id`, `ticket_id`, `type_id`, `outcome_id`, `time`, `description`, `created_at`, `updated_at`, `log`, `file_type`) VALUES
(1, 1, 658, 1, 1, '2024-12-13 12:12:57', 'Parcel missing from Trivandrum', '2024-12-13 06:43:00', '2024-12-13 06:43:00', NULL, NULL),
(2, 1, 658, 2, NULL, '2024-12-20 19:08:26', 'checked', '2024-12-20 13:38:26', '2024-12-20 13:38:26', NULL, NULL),
(29, 1, 658, 2, NULL, NULL, 'welcome', '2025-04-21 01:26:26', '2025-04-21 01:26:26', NULL, NULL),
(30, 1, 658, 2, NULL, NULL, 'qqqqqqqqqqqqqqqqqq', '2025-04-21 01:34:02', '2025-04-21 01:34:02', NULL, NULL),
(31, 1, 658, 2, NULL, NULL, 'qqqqqqqqqqqqqqqqqq', '2025-04-21 01:34:13', '2025-04-21 01:34:13', NULL, NULL),
(32, 1, 658, 2, NULL, NULL, 'mmmmmmmm mmmmmmmmmm', '2025-04-21 01:36:34', '2025-04-21 01:36:34', NULL, NULL),
(33, 1, 658, 2, NULL, NULL, 'gfdgdfgdfgfdgdfgdfg', '2025-04-21 01:37:52', '2025-04-21 01:37:52', NULL, NULL),
(34, 1, 658, 2, NULL, NULL, 'this is testing note', '2025-04-21 01:40:39', '2025-04-21 01:40:39', NULL, NULL),
(35, 1, 658, 2, NULL, NULL, 'yyyyyyyyyy yyyyyyyyyyy yyyyyyyyyy', '2025-04-21 01:41:56', '2025-04-21 01:41:56', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_statuses`
--

CREATE TABLE `ticket_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) NOT NULL,
  `color_code` varchar(191) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stage_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_statuses`
--

INSERT INTO `ticket_statuses` (`id`, `status`, `color_code`, `active`, `created_at`, `updated_at`, `stage_id`, `created_by`, `order`) VALUES
(2, 'Open', '#82BBFF', 1, '2024-12-12 10:27:49', '2024-12-12 10:27:49', 2, 1, 1),
(3, 'In Progress', '#e6af84', 1, '2024-12-12 10:27:49', '2025-05-02 05:27:59', 3, 1, 1),
(4, 'Closed', '#D23B3B', 1, '2024-12-12 10:27:49', '2024-12-12 10:27:49', 4, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_status_histories`
--

CREATE TABLE `ticket_status_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `agent_ticket_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_status_histories`
--

INSERT INTO `ticket_status_histories` (`id`, `agent_ticket_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2024-12-13 06:41:53', '2024-12-13 06:41:53'),
(2, 2, 2, '2024-12-20 13:38:02', '2024-12-20 13:38:02'),
(3, 3, 2, '2024-12-28 09:56:13', '2024-12-28 09:56:13'),
(4, 4, 2, '2024-12-28 10:11:58', '2024-12-28 10:11:58'),
(5, 5, 2, '2025-01-06 04:35:03', '2025-01-06 04:35:03'),
(6, 6, 2, '2025-01-06 04:56:16', '2025-01-06 04:56:16'),
(7, 7, 2, '2025-01-06 05:05:49', '2025-01-06 05:05:49'),
(8, 8, 2, '2025-01-06 05:09:55', '2025-01-06 05:09:55'),
(9, 9, 2, '2025-01-06 05:28:14', '2025-01-06 05:28:14'),
(10, 10, 2, '2025-01-06 06:15:47', '2025-01-06 06:15:47'),
(11, 11, 2, '2025-01-06 06:19:37', '2025-01-06 06:19:37'),
(12, 10, 4, '2025-01-06 06:33:09', '2025-01-06 06:33:09'),
(13, 11, 4, '2025-01-06 06:52:48', '2025-01-06 06:52:48'),
(14, 12, 2, '2025-01-06 08:17:16', '2025-01-06 08:17:16'),
(15, 13, 2, '2025-01-06 08:23:24', '2025-01-06 08:23:24'),
(16, 14, 2, '2025-01-06 08:57:06', '2025-01-06 08:57:06'),
(17, 15, 2, '2025-01-06 09:07:31', '2025-01-06 09:07:31'),
(18, 16, 2, '2025-01-06 09:10:40', '2025-01-06 09:10:40'),
(19, 17, 2, '2025-01-06 09:14:24', '2025-01-06 09:14:24'),
(20, 18, 2, '2025-01-06 09:21:44', '2025-01-06 09:21:44'),
(21, 21, 2, '2025-01-07 04:10:47', '2025-01-07 04:10:47'),
(22, 22, 2, '2025-01-07 04:16:07', '2025-01-07 04:16:07'),
(23, 24, 2, '2025-01-07 04:33:23', '2025-01-07 04:33:23'),
(24, 33, 2, '2025-01-07 05:16:23', '2025-01-07 05:16:23'),
(25, 34, 2, '2025-01-07 05:18:59', '2025-01-07 05:18:59'),
(26, 9, 4, '2025-01-07 06:51:59', '2025-01-07 06:51:59'),
(27, 35, 2, '2025-01-07 08:44:32', '2025-01-07 08:44:32'),
(28, 36, 2, '2025-01-07 08:44:33', '2025-01-07 08:44:33'),
(29, 36, 4, '2025-01-07 09:45:28', '2025-01-07 09:45:28'),
(30, 12, 4, '2025-01-07 09:52:14', '2025-01-07 09:52:14'),
(31, 14, 4, '2025-01-07 09:55:29', '2025-01-07 09:55:29'),
(32, 24, 4, '2025-01-07 09:59:06', '2025-01-07 09:59:06'),
(33, 37, 4, '2025-01-07 10:19:04', '2025-01-07 10:19:04'),
(34, 39, 4, '2025-01-07 10:23:20', '2025-01-07 10:23:20'),
(35, 40, 4, '2025-01-07 10:26:51', '2025-01-07 10:26:51'),
(36, 18, 4, '2025-01-07 10:29:29', '2025-01-07 10:29:29'),
(37, 41, 4, '2025-01-07 10:31:57', '2025-01-07 10:31:57'),
(38, 34, 4, '2025-01-07 10:36:33', '2025-01-07 10:36:33'),
(39, 21, 4, '2025-01-07 10:43:49', '2025-01-07 10:43:49'),
(40, 13, 4, '2025-01-18 06:34:58', '2025-01-18 06:34:58'),
(41, 15, 4, '2025-01-18 06:36:37', '2025-01-18 06:36:37'),
(42, 8, 4, '2025-01-18 06:56:55', '2025-01-18 06:56:55'),
(43, 42, 4, '2025-01-18 07:15:36', '2025-01-18 07:15:36'),
(44, 43, 4, '2025-01-18 07:18:22', '2025-01-18 07:18:22'),
(45, 44, 2, '2025-01-28 04:30:58', '2025-01-28 04:30:58'),
(46, 44, 3, '2025-01-28 04:32:11', '2025-01-28 04:32:11'),
(47, 44, 4, '2025-01-28 04:33:23', '2025-01-28 04:33:23'),
(48, 44, 2, '2025-01-28 04:33:26', '2025-01-28 04:33:26'),
(49, 44, 3, '2025-01-28 04:33:34', '2025-01-28 04:33:34'),
(50, 44, 2, '2025-01-28 04:33:41', '2025-01-28 04:33:41'),
(51, 44, 2, '2025-01-28 04:34:15', '2025-01-28 04:34:15'),
(52, 654, 2, '2025-04-22 06:07:46', '2025-04-22 06:07:46'),
(53, 654, 3, '2025-04-22 06:08:25', '2025-04-22 06:08:25'),
(54, 654, 3, '2025-04-22 06:09:17', '2025-04-22 06:09:17'),
(55, 654, 4, '2025-04-22 06:09:22', '2025-04-22 06:09:22'),
(56, 654, 3, '2025-04-22 06:49:30', '2025-04-22 06:49:30'),
(57, 654, 4, '2025-04-22 06:50:41', '2025-04-22 06:50:41'),
(58, 654, 2, '2025-04-22 07:07:18', '2025-04-22 07:07:18'),
(59, 654, 3, '2025-04-22 07:08:54', '2025-04-22 07:08:54'),
(60, 654, 4, '2025-04-22 07:09:26', '2025-04-22 07:09:26'),
(61, 654, 3, '2025-04-22 07:21:49', '2025-04-22 07:21:49'),
(62, 654, 2, '2025-04-23 04:55:17', '2025-04-23 04:55:17'),
(63, 654, 4, '2025-04-23 04:57:04', '2025-04-23 04:57:04'),
(64, 654, 2, '2025-04-23 04:57:44', '2025-04-23 04:57:44'),
(65, 654, 4, '2025-04-23 04:57:51', '2025-04-23 04:57:51'),
(66, 654, 2, '2025-04-23 04:59:09', '2025-04-23 04:59:09'),
(67, 654, 4, '2025-04-23 04:59:15', '2025-04-23 04:59:15'),
(68, 654, 2, '2025-04-23 04:59:55', '2025-04-23 04:59:55'),
(69, 654, 4, '2025-04-23 05:00:03', '2025-04-23 05:00:03'),
(70, 654, 2, '2025-04-23 05:00:43', '2025-04-23 05:00:43'),
(71, 654, 3, '2025-04-23 05:01:18', '2025-04-23 05:01:18'),
(72, 654, 2, '2025-04-23 05:05:42', '2025-04-23 05:05:42'),
(73, 654, 3, '2025-04-23 05:05:59', '2025-04-23 05:05:59'),
(74, 654, 2, '2025-04-23 05:55:38', '2025-04-23 05:55:38'),
(75, 654, 3, '2025-04-23 05:56:23', '2025-04-23 05:56:23'),
(76, 654, 2, '2025-04-23 05:56:35', '2025-04-23 05:56:35'),
(77, 654, 4, '2025-04-23 05:56:59', '2025-04-23 05:56:59'),
(78, 15, 2, '2025-04-24 00:59:07', '2025-04-24 00:59:07'),
(79, 14, 2, '2025-04-24 01:00:47', '2025-04-24 01:00:47'),
(80, 644, 4, '2025-04-24 03:39:56', '2025-04-24 03:39:56'),
(81, 646, 4, '2025-04-24 03:47:13', '2025-04-24 03:47:13'),
(82, 641, 4, '2025-04-24 03:53:01', '2025-04-24 03:53:01'),
(83, 654, 4, '2025-04-24 09:25:45', '2025-04-24 09:25:45'),
(84, 645, 3, '2025-05-06 10:32:49', '2025-05-06 10:32:49'),
(85, 659, 3, '2025-05-06 10:35:01', '2025-05-06 10:35:01'),
(86, 659, 4, '2025-05-06 10:35:19', '2025-05-06 10:35:19'),
(87, 645, 4, '2025-05-06 10:37:06', '2025-05-06 10:37:06'),
(88, 662, 3, '2025-05-12 04:20:22', '2025-05-12 04:20:22'),
(89, 662, 2, '2025-05-12 04:20:28', '2025-05-12 04:20:28');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_types`
--

CREATE TABLE `ticket_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_types`
--

INSERT INTO `ticket_types` (`id`, `type`, `active`, `created_at`, `updated_at`) VALUES
(1, 'type 1', 1, NULL, NULL),
(2, 'type 2', 1, NULL, NULL),
(3, 'type 3', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `country_code` varchar(191) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `subscription_end` date DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `prefix` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `firebase_id` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `location` varchar(191) DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `password_validity` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `name`, `country_code`, `mobile`, `email`, `password`, `subscription_end`, `role_id`, `department_id`, `status`, `prefix`, `created_at`, `updated_at`, `parent_id`, `firebase_id`, `image`, `designation_id`, `address`, `location`, `otp`, `password_validity`, `deleted_at`) VALUES
(1, NULL, 'Super Admin', '91', '1234567899', 'superadmin@gmail.com', '$2y$12$l3msYRSNyEr9X3/QgEX1hu0ttuOOtOzQ8rfaKzJhUQIoJp2Ceoh16', NULL, 1, NULL, 1, NULL, NULL, '2025-04-25 10:40:53', NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(2, '5', 'Manjunath Swamy', '+91', '1234567899', 'manjunath.swamy@krs.in', '$2y$10$StIQJATH2/B1lkpPubQCl.gozRp4.dq5YTLsV8J3vM9uV.4gGDof2', NULL, 2, NULL, 1, NULL, '2024-12-13 07:22:44', '2025-02-16 16:37:58', 1, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(3, '5', 'Prashanth', '+91', '1234567899', 'co1@krs.in', '$2y$10$Gzpd7rA7X.34oJdQmPcaA.HUSFWJXMfpo.FOa29etW4tA1Tkd8SSS', NULL, 2, NULL, 1, NULL, '2024-12-13 07:23:59', '2025-02-16 07:59:31', 1, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(4, '5', 'Mehaboob', '+91', '1234567899', 'edp1@krs.in', '$2y$10$7AiXaYMshyFmfjW/JP9zO.b4y5/l7/fwiH7Z1CMkfpiLYVwpdHLwG', NULL, 2, NULL, 1, NULL, '2024-12-13 07:25:25', '2025-02-16 16:10:02', 1, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(5, '5', 'Jayaraj k', '+91', '1234567899', 'agm.marketing1@krs.in', '$2y$10$IJKI7sjSFqd0zgXWrdyEtOaFu6HbYoiYiKval2cUbl2iUMYVVkB5.', NULL, 3, NULL, 1, NULL, '2024-12-13 07:29:18', '2025-02-20 04:01:09', 1, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL),
(6, '5', 'Babu', '91', '1234567899', 'gmc1@krs.in', '$2y$10$GONoSedhQXVyYg/iECWfPeDH6sas3zV74SWO/si8j13VYuspja0X2', NULL, 2, NULL, 1, NULL, '2024-12-13 08:42:10', '2024-12-23 08:02:18', 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-12-23 08:02:18'),
(7, '5', 'Manoj.M', '91', '1234567899', 'manoj1@krs.in', '$2y$10$QtuMlKae50q3I258hyFJ5uoa3m7OZrnp5okVHFiUnfBiFejGRyMmm', NULL, 2, NULL, 1, NULL, '2024-12-23 07:50:05', '2024-12-23 07:50:05', 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(8, '5', 'Anusha', '91', '1234567899', 'anusha1@krs.in', '$2y$10$6Ov/D4fXEJ5xBYh2fAAqHewwgz9LOrmHxNxBwWngyGnxtSzr3DGbe', NULL, 2, NULL, 1, NULL, '2024-12-23 07:52:00', '2024-12-23 07:52:00', 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(9, '5', 'Shaheera', '91', '1234567899', 'shahe1@krs.in', '$2y$10$c.GGKyVinT87kgpZhVH/NeTeA6mnOFlao0AlsYNCeCNtJClAJGYkC', NULL, 2, NULL, 1, NULL, '2024-12-23 07:53:15', '2024-12-23 07:53:15', 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(10, '5', 'Jithin', '91', '1234567899', 'jithin1@krs.in', '$2y$10$AMpZXdR6ABvkR.bNGWglWuSwCtWsJNroTYJUXBLjomKpx1EpJGbn2', NULL, 2, NULL, 1, NULL, '2024-12-23 07:54:31', '2024-12-23 07:54:31', 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(11, '5', 'Babu', '91', '1234567899', 'babu1@krs.in', '$2y$10$7t3y52slz4ukSwCvq0hDIeGamuVcBx5Np.dz/5icQGyeXGub8K8Pa', NULL, 2, NULL, 1, NULL, '2024-12-23 08:04:41', '2024-12-23 08:04:41', 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(12, '5', 'Candan Mathai Francis', '+91', '1234567899', 'tl1.customerservice@krs.in', '$2y$10$eUslGhHPlxz2b8zQ0t4GNe7JxuU7I2KhA/Vg1Xz2utRJ6Y.a/dQJK', NULL, 2, NULL, 1, NULL, '2025-01-27 06:59:38', '2025-02-20 05:14:11', 1, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL),
(13, '5', 'system', '+91', '1234567899', 'system@krs.com', '$2y$10$heyv2NAnscHyu6gYZIGr7.Xj3Nf5QZ7QrYnZNMczlCXlkMHEq7.zC', NULL, 1, NULL, 1, NULL, '2025-01-28 03:35:06', '2025-02-20 05:12:38', 1, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(14, '5', 'Getlead testing', '+91', '1234567899', 'glead@gmail.com', '$2y$10$ZxovCAJ5fgDtohPDfoR.CO8e9r5O2HqRE/2t3Ky4qteYbqGfukPT.', NULL, 3, NULL, 1, NULL, '2025-02-11 05:03:43', '2025-02-19 06:00:52', 13, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(15, '5', 'testing', '91', '1234567899', 'test1@gmail.com', '$2y$10$U65g2YfpFTAGkldQEDDot.Awq5RnqmwWgOBWggnRBb7uEbrlMWnZS', NULL, 2, NULL, 1, NULL, '2025-02-17 11:40:21', '2025-02-17 11:40:47', 1, NULL, NULL, 3, NULL, NULL, NULL, NULL, '2025-02-17 11:40:47'),
(16, '5', 'Muneer', '91', '1234567899', 'muneerahamed1@gmail.com', '$2y$10$NC10Ms6.KxNVZAYoUijUtuEOB9AIZox2ovwmm6k343xyUvK78OIKu', NULL, 2, NULL, 1, NULL, '2025-02-19 16:04:03', '2025-02-19 16:04:18', 1, NULL, NULL, 4, NULL, NULL, NULL, NULL, '2025-02-19 16:04:18'),
(17, '5', 'Muneer', '91', '1234567899', 'muneer1@gmail.com', '$2y$10$rbrZXkAjYiflVy9Q2IPx1u27Ko9n9uWDRw1TMlFabKqcpIKY/oKX2', NULL, 2, NULL, 1, NULL, '2025-02-19 16:04:46', '2025-02-19 16:05:27', 1, NULL, NULL, 3, NULL, NULL, NULL, NULL, '2025-02-19 16:05:27'),
(18, '5', 'muneer', '91', '1234567899', 'muneer+11@gmail.com', '$2y$10$8/D74tStqiymj4fFEiEDf.K1CbICWlgVUEocMuzyEwHbhRt63QogC', NULL, 2, NULL, 1, NULL, '2025-02-19 16:06:13', '2025-02-19 16:06:31', 1, NULL, NULL, 4, NULL, NULL, NULL, NULL, '2025-02-19 16:06:31'),
(19, '5', 'Muneer', '91', '1234567899', 'muneerr+21@gmail.com', '$2y$10$oIunDU0AWF91ltpMdC4oZeytDclsEezaGolqYFdk8i14/7IwIZk8W', NULL, 2, NULL, 1, NULL, '2025-02-19 16:06:53', '2025-02-19 16:07:52', 1, NULL, NULL, 3, NULL, NULL, NULL, NULL, '2025-02-19 16:07:52'),
(20, '5', 'testiung', '91', '1234567899', 'ss1@gmail.com', '$2y$10$jSBukinAzgsy9TiuCliuXO5LJ31Lf7Orjs6yVYoaXs4tnpzUTaTEe', NULL, 2, NULL, 1, NULL, '2025-02-20 04:09:24', '2025-02-20 04:15:48', 1, NULL, NULL, 3, NULL, NULL, NULL, NULL, '2025-02-20 04:15:48'),
(21, '5', 'testing', '91', '1234567899', 'ww1@gmail.com', '$2y$10$opOZJmxEYkWHXMSZkmnoxezm01FEneRhq4A04WEY4x4Z4yrQclw9G', NULL, 2, NULL, 1, NULL, '2025-02-20 04:16:20', '2025-02-20 04:18:39', 1, NULL, NULL, 3, NULL, NULL, NULL, NULL, '2025-02-20 04:18:39'),
(27, NULL, 'vcbcvbcvbc', NULL, '1234567899', 'dfdfd1@gmail.com', '$2y$12$7TFvmNBp8ZoW9bdf8mkvbeg9cQI4D/Hs.GH/c9AkqACZ5vKWpO67q', NULL, 1, NULL, 1, NULL, '2025-04-25 12:41:29', '2025-04-25 12:41:29', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(28, NULL, 'gggggg nnnnnnnnnnnnn', NULL, '1234567899', 'ggg1@gmail.com', '$2y$12$zo77kOb6I5yhse9Ewj0RSuvhOuYmLVpUuc8lBHaj2GczjyEcjNWja', NULL, 1, NULL, 1, NULL, '2025-04-25 12:42:39', '2025-04-28 11:40:14', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `additional_fields`
--
ALTER TABLE `additional_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `additional_field_options`
--
ALTER TABLE `additional_field_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agent_task`
--
ALTER TABLE `agent_task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agent_ticket`
--
ALTER TABLE `agent_ticket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apis`
--
ALTER TABLE `apis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_logs`
--
ALTER TABLE `api_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_params`
--
ALTER TABLE `api_params`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_agents`
--
ALTER TABLE `assign_agents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attachements`
--
ALTER TABLE `attachements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `call_reasons`
--
ALTER TABLE `call_reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `file_logs`
--
ALTER TABLE `file_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `firms`
--
ALTER TABLE `firms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `label_ticket`
--
ALTER TABLE `label_ticket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logs_agent_id_foreign` (`agent_id`),
  ADD KEY `logs_ticket_id_foreign` (`ticket_id`);

--
-- Indexes for table `log_outcomes`
--
ALTER TABLE `log_outcomes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_types`
--
ALTER TABLE `log_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `notify_ticket`
--
ALTER TABLE `notify_ticket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `priorities`
--
ALTER TABLE `priorities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tickets`
--
ALTER TABLE `product_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refunds`
--
ALTER TABLE `refunds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `stages`
--
ALTER TABLE `stages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_user_id_foreign` (`created_by`),
  ADD KEY `tasks_ticket_id_foreign` (`ticket_id`);

--
-- Indexes for table `task_categories`
--
ALTER TABLE `task_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_types`
--
ALTER TABLE `task_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `ticket_additional_fields`
--
ALTER TABLE `ticket_additional_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_additional_fields_ticket_id_foreign` (`ticket_id`),
  ADD KEY `ticket_additional_fields_additional_field_id_foreign` (`additional_field_id`);

--
-- Indexes for table `ticket_images`
--
ALTER TABLE `ticket_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_labels`
--
ALTER TABLE `ticket_labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_log_notes`
--
ALTER TABLE `ticket_log_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `log_notes_agent_id_foreign` (`agent_id`),
  ADD KEY `log_notes_ticket_id_foreign` (`ticket_id`);

--
-- Indexes for table `ticket_statuses`
--
ALTER TABLE `ticket_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_status_histories`
--
ALTER TABLE `ticket_status_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_types`
--
ALTER TABLE `ticket_types`
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
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;

--
-- AUTO_INCREMENT for table `additional_fields`
--
ALTER TABLE `additional_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `additional_field_options`
--
ALTER TABLE `additional_field_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `agent_task`
--
ALTER TABLE `agent_task`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `agent_ticket`
--
ALTER TABLE `agent_ticket`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `apis`
--
ALTER TABLE `apis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_logs`
--
ALTER TABLE `api_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10422;

--
-- AUTO_INCREMENT for table `api_params`
--
ALTER TABLE `api_params`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assign_agents`
--
ALTER TABLE `assign_agents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `attachements`
--
ALTER TABLE `attachements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `call_reasons`
--
ALTER TABLE `call_reasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_logs`
--
ALTER TABLE `file_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `firms`
--
ALTER TABLE `firms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `label_ticket`
--
ALTER TABLE `label_ticket`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `log_outcomes`
--
ALTER TABLE `log_outcomes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_types`
--
ALTER TABLE `log_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `notify_ticket`
--
ALTER TABLE `notify_ticket`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `priorities`
--
ALTER TABLE `priorities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_tickets`
--
ALTER TABLE `product_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `refunds`
--
ALTER TABLE `refunds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stages`
--
ALTER TABLE `stages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `task_categories`
--
ALTER TABLE `task_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `task_types`
--
ALTER TABLE `task_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=668;

--
-- AUTO_INCREMENT for table `ticket_additional_fields`
--
ALTER TABLE `ticket_additional_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `ticket_images`
--
ALTER TABLE `ticket_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `ticket_labels`
--
ALTER TABLE `ticket_labels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ticket_log_notes`
--
ALTER TABLE `ticket_log_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `ticket_statuses`
--
ALTER TABLE `ticket_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ticket_status_histories`
--
ALTER TABLE `ticket_status_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `ticket_types`
--
ALTER TABLE `ticket_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_agent_id_foreign` FOREIGN KEY (`agent_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `logs_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tasks_user_id_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ticket_additional_fields`
--
ALTER TABLE `ticket_additional_fields`
  ADD CONSTRAINT `ticket_additional_fields_additional_field_id_foreign` FOREIGN KEY (`additional_field_id`) REFERENCES `additional_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ticket_additional_fields_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ticket_log_notes`
--
ALTER TABLE `ticket_log_notes`
  ADD CONSTRAINT `log_notes_agent_id_foreign` FOREIGN KEY (`agent_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `log_notes_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
