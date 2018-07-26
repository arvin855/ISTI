-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2018 at 04:19 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ists`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `instrument_id` varchar(255) NOT NULL,
  `instrument_name` varchar(50) NOT NULL,
  `assigndate` varchar(50) NOT NULL,
  `technician1` varchar(11) DEFAULT NULL,
  `technician2` varchar(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `service_status` varchar(255) NOT NULL DEFAULT 'pending',
  `remark` varchar(255) DEFAULT NULL,
  `postpone_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `instrument_id`, `instrument_name`, `assigndate`, `technician1`, `technician2`, `created_by`, `creationDate`, `service_status`, `remark`, `postpone_date`) VALUES
(28, 'HDC/RD/IN-1.12', 'HPLC (Shimadzu)-1.12', '2018-06-17', '22', '19', 1, '2018-07-18 08:43:16', 'complete', NULL, NULL),
(29, 'HDC/RD/IN-1.14', 'HPLC (Shimadzu)-1.14', '2018-06-24', '7', '28', 1, '2018-07-18 08:45:47', 'complete', NULL, NULL),
(30, 'HDC/RD/IN-1.15', 'HPLC (Shimadzu)-1.15', '2018-05-05', '28', '21', 1, '2018-07-18 08:46:47', 'complete', NULL, NULL),
(31, 'HDC/RD/IN-1.16', 'HPLC (Shimadzu)-1.16', '2018-06-20', '20', '33', 1, '2018-07-18 08:47:21', 'complete', NULL, NULL),
(32, 'HDC/RD/IN-1.17', 'HPLC (Waters)-1.17', '2018-07-27', '19', '22', 1, '2018-07-18 08:48:05', 'pending', NULL, NULL),
(33, 'HDC/RD/IN-1.18', 'HPLC (Shimadzu)-1.18', '2018-06-18', '12', '15', 1, '2018-07-18 08:48:58', 'complete', NULL, NULL),
(34, 'HDC/RD/IN-1.2', 'HPLC (Shimadzu)-1.2', '2018-06-30', '12', '15', 1, '2018-07-18 08:49:52', 'complete', NULL, NULL),
(35, 'HDC/RD/IN-1.20', 'HPLC (Waters)-1.20', '2018-07-07', '18', '34', 1, '2018-07-18 08:50:33', 'complete', NULL, NULL),
(36, 'HDC/RD/IN-1.3', 'HPLC (Shimadzu)-1.3', '2018-06-18', '18', '30', 1, '2018-07-18 08:51:08', 'complete', NULL, NULL),
(37, 'HDC/RD/IN-1.7', 'HPLC (Shimadzu)-1.7', '2018-06-18', '18', '17', 1, '2018-07-18 08:51:38', 'complete', NULL, NULL),
(38, 'HDC/RD/IN-1.8', 'HPLC (Agilent)-1.8', '2018-07-21', '9', '17', 1, '2018-07-18 08:52:17', 'pending', NULL, NULL),
(39, 'HDC/RD/IN-1.9', 'HPLC (Shimadzu)-1.9', '2018-06-04', '21', '7', 1, '2018-07-18 08:52:55', 'complete', NULL, NULL),
(40, 'HDC/RD/IN-2.4', 'GC (Shimadzu)-2.4', '2018-08-10', '8', '28', 1, '2018-07-18 08:54:02', 'pending', NULL, NULL),
(41, 'HDC/RD/IN-2.7', 'GC (Perkin)-2.7', '2018-08-10', '8', '7', 1, '2018-07-18 08:54:30', 'complete', NULL, NULL),
(42, 'HDC/RD/IN-3.2', 'Weighing Balance-3.2', '2018-06-02', '11', '32', 1, '2018-07-18 08:55:12', 'complete', NULL, NULL),
(43, 'HDC/RD/IN-3.54', 'Weighing Balance-3.54', '2018-06-02', '11', '32', 1, '2018-07-18 08:55:52', 'complete', NULL, NULL),
(44, 'HDC/RD/IN-3.58', 'Weighing Balance-3.58', '2018-06-21', '17', '15', 1, '2018-07-18 08:56:31', 'complete', NULL, NULL),
(45, 'HDC/RD/IN-3.72', 'Weighing Balance-3.72', '2018-06-02', '11', '32', 1, '2018-07-18 08:57:04', 'complete', NULL, NULL),
(46, 'HDC/RD/IN-5.2', 'Muffle Furnace-5.2', '2018-07-11', '16', '13', 1, '2018-07-18 08:58:24', 'complete', NULL, NULL),
(47, 'HDC/RD/IN-5.4', 'Muffle Furnace-5.4', '2019-03-27', '16', '13', 1, '2018-07-18 08:59:29', 'pending', NULL, NULL),
(48, 'HDC/RD/IN-6.19', 'Ring Water bath-6.19', '2018-07-11', '27', '34', 1, '2018-07-18 09:00:18', 'complete', NULL, NULL),
(49, 'HDC/RD/IN-6.45', 'Ring Water bath-6.45', '2018-07-11', '27', '34', 1, '2018-07-18 09:00:52', 'complete', NULL, NULL),
(50, 'HDC/RD/IN-6.48', 'Ring Water bath-6.48', '2018-04-16', '27', '34', 1, '2018-07-18 09:01:27', 'complete', NULL, NULL),
(51, 'HDC/RD/IN-6.50', 'Evaporation Water bath-6.50', '2018-07-11', '27', '34', 1, '2018-07-18 09:02:31', 'complete', NULL, NULL),
(52, 'HDC/RD/IN-6.56', 'Evaporation Water bath-6.56', '2018-04-17', '27', '34', 1, '2018-07-18 09:03:52', 'complete', NULL, NULL),
(53, 'HDC/RD/IN-8.1', 'Linomat 4- 8.1', '2018-07-06', '16', '13', 1, '2018-07-18 09:04:26', 'complete', NULL, NULL),
(54, 'HDC/RD/IN-8.2', 'Linomat 5 -8.2', '2018-07-06', '16', '18', 1, '2018-07-18 09:04:57', 'complete', NULL, NULL),
(55, 'HDC/RD/IN-12.2', 'Spectrophotometer-12.2', '2018-06-17', '21', '15', 1, '2018-07-18 09:05:30', 'complete', NULL, NULL),
(56, 'HDC/RD/IN-12.3', 'Spectrophotometer-12.3', '2018-07-07', '', '35', 1, '2018-07-18 09:06:04', 'complete', NULL, NULL),
(57, 'HDC/RD/IN-17.13', 'Hot Air Oven-17.13', '2018-07-11', '26', '34', 1, '2018-07-18 09:06:35', 'complete', NULL, NULL),
(58, 'HDC/RD/IN-17.21', 'Hot Air Oven-17.21', '2018-10-23', '26', '34', 1, '2018-07-18 09:07:08', 'pending', NULL, NULL),
(59, 'HDC/RD/IN-19.2', 'pH Meter-19.2', '2018-08-10', '15', '29', 1, '2018-07-18 09:07:39', 'pending', NULL, NULL),
(60, 'HDC/RD/IN-19.22', 'pH Meter-19.22', '2019-01-29', '15', '29', 1, '2018-07-18 09:08:52', 'pending', NULL, NULL),
(61, 'HDC/RD/IN-20.4', 'Refractometer-20.4', '2018-08-24', '10', '30', 1, '2018-07-18 09:09:26', 'pending', NULL, NULL),
(62, 'HDC/RD/IN-28.30', 'Thermo Hygrometer-28.30', '2018-07-17', '13', '14', 1, '2018-07-18 09:10:13', 'complete', NULL, NULL),
(63, 'HDC/RD/IN-28.38', 'Thermo Hygrometer-28.38', '2018-07-17', '15', '17', 1, '2018-07-18 09:11:02', 'complete', NULL, NULL),
(64, 'HDC/RD/IN-28.44', 'Thermo Hygrometer-28.44', '2018-07-17', '23', '13', 1, '2018-07-18 09:11:37', 'complete', NULL, NULL),
(65, 'HDC/RD/IN-28.78', 'Thermo Hygrometer-28.78', '2018-07-17', '13', '14', 1, '2018-07-18 09:12:28', 'complete', NULL, NULL),
(66, 'HDC/RD/IN-28.79', 'Thermo Hygrometer-28.79', '2018-07-17', '13', '14', 1, '2018-07-18 09:14:10', 'complete', NULL, NULL),
(67, 'HDC/RD/IN-28.75', 'Thermo Hygrometer-28.75', '2018-07-17', '24', '31', 1, '2018-07-18 09:14:42', 'complete', NULL, NULL),
(68, 'HDC/RD/IN-28.81', 'Thermo Hygrometer-28.81', '2018-07-17', '14', '14', 1, '2018-07-18 09:15:09', 'complete', NULL, NULL),
(69, 'HDC/RD/IN-28.82', 'Thermo Hygrometer-28.82', '2018-07-17', '23', '14', 1, '2018-07-18 09:15:37', 'complete', NULL, NULL),
(70, 'HDC/RD/IN-59.106', 'Micro Pipette-59.106', '2018-07-29', '25', '24', 1, '2018-07-18 09:16:07', 'pending', NULL, NULL),
(71, 'HDC/RD/IN-59.108', 'Micro Pipette-59.108', '2018-07-29', '25', '24', 1, '2018-07-18 09:16:32', 'pending', NULL, NULL),
(72, 'HDC/RD/IN-59.109', 'Micro Pipette-59.109', '2018-07-29', '24', '25', 1, '2018-07-18 09:16:56', 'pending', NULL, NULL),
(73, 'HDC/RD/IN-118.1-A', 'Certified Weights-118.1-A', '2018-07-12', '11', '32', 1, '2018-07-18 09:17:20', 'complete', NULL, NULL),
(74, 'HDC/RD/IN-118.10', 'Certified Weights-118.10', '2018-12-21', '11', '32', 1, '2018-07-18 09:18:03', 'pending', NULL, NULL),
(75, 'HDC/RD/IN-118.6', 'Certified Weights-118.6', '2018-07-12', '11', '32', 1, '2018-07-18 09:18:35', 'complete', NULL, NULL),
(76, 'HDC/RD/IN-130.32', 'Thermometer-130.32', '2018-07-17', '23', '13', 1, '2018-07-18 09:20:29', 'complete', NULL, NULL),
(77, 'HDC/RD/IN-130.33', 'Thermometer-130.33', '2018-07-17', '23', '13', 1, '2018-07-18 09:21:14', 'complete', NULL, NULL),
(78, 'HDC/RD/IN-130.38', 'Thermometer-130.38', '2018-07-17', '23', '13', 1, '2018-07-18 09:21:44', 'complete', NULL, NULL),
(79, 'HDC/RD/IN-130.7', 'Thermometer-130.7', '2018-07-17', '23', '13', 1, '2018-07-18 09:22:21', 'complete', NULL, NULL),
(80, 'HDC/RD/IN-130.8', 'Thermometer-130.8', '2018-07-17', '23', '13', 1, '2018-07-18 09:23:06', 'complete', NULL, NULL),
(81, 'HDC/RD/IN-131.12', 'Max-Min Thermometer-131.12', '2018-07-17', '23', '13', 1, '2018-07-18 09:23:43', 'complete', NULL, NULL),
(82, 'HDC/RD/IN-131.13', 'Max-Min Thermometer-131.13', '2018-07-17', '23', '13', 1, '2018-07-18 09:24:06', 'complete', NULL, NULL),
(83, 'HDC/RD/IN-131.4', 'Max-Min Thermometer-131.4', '2018-07-17', '23', '13', 1, '2018-07-18 09:24:25', 'complete', NULL, NULL),
(84, 'HDC/RD/IN-131.7', 'Max-Min Thermometer-131.7', '2018-07-17', '23', '13', 1, '2018-07-18 09:25:16', 'complete', NULL, NULL),
(85, 'HDC/RD/IN-150.1', 'Kjeltec Distillation Unit-150.1', '2018-07-21', '15', '10', 1, '2018-07-18 09:25:48', 'pending', NULL, NULL),
(86, 'HDC/RD/IN-175.1', 'Multiwave Pro-175.1', '2018-12-05', '24', '31', 1, '2018-07-18 09:26:38', 'pending', NULL, NULL),
(87, 'HDC/RD/IN-175.3', 'Multiwave Go-175.3', '2018-09-04', '24', '31', 1, '2018-07-18 09:27:47', 'pending', NULL, NULL),
(88, 'HDC/RD/IN-3.2', 'Weighing Balance-3.2', '2018-08-14', '28', '32', 1, '2018-07-18 09:28:27', 'pending', NULL, NULL),
(89, 'HDC/RD/IN-3.54', 'Weighing Balance-3.54', '2018-08-14', '28', '32', 1, '2018-07-18 09:28:52', 'pending', NULL, NULL),
(90, 'HDC/RD/IN-3.58', 'Weighing Balance-3.58', '2018-08-14', '28', '15', 1, '2018-07-18 09:29:37', 'pending', NULL, NULL),
(91, 'HDC/RD/IN-3.72', 'Weighing Balance-3.72', '2018-08-14', '28', '32', 1, '2018-07-18 09:30:38', 'pending', NULL, NULL),
(120, '1.1', 'firefly', '2018-05-01', '36', '37', 1, '2018-07-25 08:33:35', 'pending', NULL, NULL),
(121, '1.2', 'danger', '2018-05-01', '2', '37', 1, '2018-07-25 08:33:35', 'pending', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `technicianspecilization`
--

CREATE TABLE `technicianspecilization` (
  `id` varchar(255) NOT NULL,
  `specilization` varchar(50) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `technicianspecilization`
--

INSERT INTO `technicianspecilization` (`id`, `specilization`, `creationDate`) VALUES
('1.1', 'firefly', '2018-07-25 04:55:14'),
('1.2', 'danger', '2018-07-25 08:17:37'),
('HDC/RD/IN-1.12', 'HPLC(Shimadzu)-1.12', '2018-07-18 05:10:30'),
('HDC/RD/IN-1.14', 'HPLC(Shimadzu)-1.14', '2018-07-18 05:11:58'),
('HDC/RD/IN-1.15', 'HPLC(Shimadzu)-1.15', '2018-07-18 05:12:13'),
('HDC/RD/IN-1.16', 'HPLC(Shimadzu)-1.16', '2018-07-18 05:12:44'),
('HDC/RD/IN-1.17', 'HPLC(Waters)-1.17', '2018-07-18 05:12:58'),
('HDC/RD/IN-1.18', 'HPLC(Shimadzu)-1.18', '2018-07-18 05:13:12'),
('HDC/RD/IN-1.2', 'HPLC(Shimadzu)-1.2', '2018-07-18 05:13:24'),
('HDC/RD/IN-1.20', 'HPLC(Waters)-1.20', '2018-07-18 05:13:35'),
('HDC/RD/IN-1.3', 'HPLC(Shimadzu)-1.3', '2018-07-18 05:13:51'),
('HDC/RD/IN-1.7', 'HPLC(Shimadzu)-1.7', '2018-07-18 05:14:02'),
('HDC/RD/IN-1.8', 'HPLC(Agilent)-1.8', '2018-07-18 05:14:13'),
('HDC/RD/IN-1.9', 'HPLC(Shimadzu)-1.9', '2018-07-18 05:14:24'),
('HDC/RD/IN-118.1-A', 'Certified Weights-118.1-A', '2018-07-18 05:14:50'),
('HDC/RD/IN-118.10', 'Certified Weights-118.10', '2018-07-18 05:14:36'),
('HDC/RD/IN-118.6', 'Certified Weights-118.6', '2018-07-18 05:15:01'),
('HDC/RD/IN-12.2', 'Spectrophotometer-12.2', '2018-07-18 05:15:11'),
('HDC/RD/IN-12.3', 'Spectrophotometer-12.3', '2018-07-18 05:15:21'),
('HDC/RD/IN-130.32', 'Thermometer-130.32', '2018-07-18 05:15:36'),
('HDC/RD/IN-130.33', 'Thermometer-130.33', '2018-07-18 05:15:49'),
('HDC/RD/IN-130.38', 'Thermometer-130.38', '2018-07-18 05:16:02'),
('HDC/RD/IN-130.7', 'Thermometer-130.7', '2018-07-18 05:16:14'),
('HDC/RD/IN-130.8', 'Thermometer-130.8', '2018-07-18 05:16:25'),
('HDC/RD/IN-131.12', 'Max-Min Thermometer-131.12', '2018-07-18 05:16:38'),
('HDC/RD/IN-131.13', 'Max-Min Thermometer-131.13', '2018-07-18 05:16:50'),
('HDC/RD/IN-131.4', 'Max-Min Thermometer-131.4', '2018-07-18 05:17:00'),
('HDC/RD/IN-131.7', 'Max-Min Thermometer-131.7', '2018-07-18 05:17:11'),
('HDC/RD/IN-150.1', 'Kjeltec Distillation Unit-150.1', '2018-07-18 05:17:22'),
('HDC/RD/IN-17.13', 'Hot Air Oven-17.13', '2018-07-18 05:17:32'),
('HDC/RD/IN-17.21', 'Hot Air Oven-17.21', '2018-07-18 05:17:43'),
('HDC/RD/IN-175.1', 'Multiwave Pro-175.1', '2018-07-18 05:17:52'),
('HDC/RD/IN-175.3', 'Multiwave Go-175.3', '2018-07-18 05:18:03'),
('HDC/RD/IN-19.2', 'pH Meter-19.2', '2018-07-18 05:18:17'),
('HDC/RD/IN-19.22', 'pH Meter-19.22', '2018-07-18 05:18:28'),
('HDC/RD/IN-2.4', 'GC(Shimadzu)-2.4', '2018-07-18 05:18:44'),
('HDC/RD/IN-2.7', 'GC(Perkin)-2.7', '2018-07-18 05:19:03'),
('HDC/RD/IN-20.4', 'Refractometer-20.4', '2018-07-18 05:19:19'),
('HDC/RD/IN-28.30', 'Thermo Hygrometer-28.30', '2018-07-18 05:19:31'),
('HDC/RD/IN-28.38', 'Thermo Hygrometer-28.38', '2018-07-18 05:19:41'),
('HDC/RD/IN-28.44', 'Thermo Hygrometer-28.44', '2018-07-18 05:19:52'),
('HDC/RD/IN-28.75', 'Thermo Hygrometer-28.75', '2018-07-18 05:20:03'),
('HDC/RD/IN-28.78', 'Thermo Hygrometer-28.78', '2018-07-18 05:20:13'),
('HDC/RD/IN-28.79', 'Thermo Hygrometer-28.79', '2018-07-18 05:20:23'),
('HDC/RD/IN-28.81', 'Thermo Hygrometer-28.81', '2018-07-18 05:20:34'),
('HDC/RD/IN-28.82', 'Thermo Hygrometer-28.82', '2018-07-18 05:20:46'),
('HDC/RD/IN-3.2', 'Weighing Balance-3.2', '2018-07-18 05:20:56'),
('HDC/RD/IN-3.54', 'Weighing Balance-3.54', '2018-07-18 05:21:09'),
('HDC/RD/IN-3.58', 'Weighing Balance-3.58', '2018-07-18 05:21:19'),
('HDC/RD/IN-3.72', 'Weighing Balance-3.72', '2018-07-18 05:21:34'),
('HDC/RD/IN-5.2', 'Muffle Furnace-5.2', '2018-07-18 05:22:13'),
('HDC/RD/IN-5.4', 'Muffle Furnace-5.4', '2018-07-18 05:22:23'),
('HDC/RD/IN-59.106', 'Micro Pipette-59.106', '2018-07-18 05:22:52'),
('HDC/RD/IN-59.108', 'Micro Pipette-59.108', '2018-07-18 05:23:03'),
('HDC/RD/IN-59.109', 'Micro Pipette-59.109', '2018-07-18 05:23:16'),
('HDC/RD/IN-6.19', 'Ring Water bath-6.19', '2018-07-18 05:23:27'),
('HDC/RD/IN-6.45', 'Ring Water bath-6.45', '2018-07-18 05:23:38'),
('HDC/RD/IN-6.48', 'Ring Water bath-6.48', '2018-07-18 05:23:50'),
('HDC/RD/IN-6.50', 'Evaporation Water bath-6.50', '2018-07-18 05:24:00'),
('HDC/RD/IN-6.56', 'Evaporation Water bath-6.56', '2018-07-18 05:24:12'),
('HDC/RD/IN-8.1', 'Linomat 4- 8.1', '2018-07-18 05:24:21'),
('HDC/RD/IN-8.2', 'Linomat 5 -8.2', '2018-07-18 05:24:30');

-- --------------------------------------------------------

--
-- Table structure for table `temp_table`
--

CREATE TABLE `temp_table` (
  `sl_no` bigint(255) NOT NULL,
  `calibration_duedate` varchar(255) NOT NULL,
  `Inst_name` varchar(255) NOT NULL,
  `Inst_id` varchar(255) NOT NULL,
  `custodian1` varchar(255) NOT NULL,
  `mob1` varchar(255) NOT NULL,
  `email1` varchar(255) NOT NULL,
  `custodian2` varchar(255) NOT NULL,
  `mob2` varchar(255) NOT NULL,
  `email2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL DEFAULT 'welcome@123',
  `category` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(25) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `contactno`, `email`, `password`, `category`, `regDate`, `status`) VALUES
(1, 'admin', 8553474034, 'admin@gmail.com', 'admin12', 'admin', '2018-07-13 04:28:53', '1'),
(2, 'arvin', 9902572825, 'arvin@gmail.com', 'arvin12', 'technician', '2018-07-13 04:30:07', '1'),
(3, 'alvin', 85565452, 'alvin@gmail.com', 'alvin12', 'user', '2018-07-13 04:31:28', '1'),
(7, ' Anju joseph', 9739348309, 'anju.joseph@himalayawellness.com', 'welcome@123', 'technician', '2018-07-18 04:28:02', '1'),
(8, 'Ashok kumar', 9964873664, 'ashok.n@himalayawellness.com', 'welcome@123', 'technician', '2018-07-18 04:30:36', '1'),
(9, 'Basavaraju', 8147479141, 'basavaraju.km@himalayawellness.com', 'basavaraju123', 'technician', '2018-07-18 04:31:41', '1'),
(10, 'Bharath.R.Iyer', 8792987855, 'bharath.iyer@himalayawellness.com', 'welcome@123', 'technician', '2018-07-18 04:34:11', '1'),
(11, 'Darshan P.S', 9741027504, 'darshan.ps@himalayawellness.com', 'welcome@123', 'technician', '2018-07-18 04:34:58', '1'),
(12, 'Gulsar Fathima Begum', 9035847334, 'fathima.b@himalayawellness.com', 'welcome@123', 'technician', '2018-07-18 04:35:58', '1'),
(13, 'Hemaletha.M', 9590812076, 'hemaletha.m@himalayawellness.com', 'welcome@123', 'technician', '2018-07-18 04:36:58', '1'),
(14, 'Mamatha.M', 9538072052, 'mamtha.m@himalayawellness.com', 'welcome@123', 'technician', '2018-07-18 04:37:37', '1'),
(15, 'Nagaraj Kulkarni', 9611046128, 'nagarajkulkarni@himalayawellness.com', 'welcome@123', 'technician', '2018-07-18 04:39:00', '1'),
(16, 'Naveen R.M', 9008473787, 'naveen.r@himalayawellness.com', 'welcome@123', 'technician', '2018-07-18 04:40:05', '1'),
(17, 'Rajendra H.G', 9449953024, 'rajendra.hg@himalayawellness.com', 'welcom@123', 'technician', '2018-07-18 04:41:00', '1'),
(18, 'Rakesh.SA', 9986329332, 'rakesh.sa@himalayawellness.com', 'welcome@123', 'technician', '2018-07-18 04:41:43', '1'),
(19, 'Ravi.B.R', 9886564642, 'ravi.br@himalayawellness.com', 'welcome@123', 'technician', '2018-07-18 04:46:41', '1'),
(20, 'Rohini.k', 8095988177, 'rohini.k@himalayawellness.com', 'welcome@123', 'technician', '2018-07-18 04:47:15', '1'),
(21, 'Shubha.s', 9886262237, 'shubha.s@himalayawellness.com', 'welcome@123', 'technician', '2018-07-18 04:47:46', '1'),
(22, 'Suganya.k', 9986094262, 'suganya.k@himalayawellness.com', 'welcome@123', 'technician', '2018-07-18 04:48:43', '1'),
(23, 'Surendra.C', 9492036973, 'surendra.c@himalayawellness.com', 'welcome@123', 'technician', '2018-07-18 04:50:26', '1'),
(24, 'Tenzin Tsering', 8553558618, 'tenzin.t@himalayawellness.com', 'welcome@123', 'technician', '2018-07-18 04:50:51', '1'),
(25, 'Vinay B.S', 9986927275, 'vinay.bs@himalayawellness.com', 'welcome@123', 'technician', '2018-07-18 04:51:26', '1'),
(26, 'Vinuth', 9538932598, 'vinuth.kumar@himalayawellness.com', 'welcome@123', 'technician', '2018-07-18 04:51:59', '1'),
(27, 'Vinuth Kumar', 9538932598, 'vinuth.kumar@himalayawellness.com', 'welcome@123', 'technician', '2018-07-18 04:52:27', '1'),
(28, ' Sumit Roshan', 9740779654, 'sumit.r@himalayawellness.com', 'welcome@123', 'technician', '2018-07-18 04:53:03', '1'),
(29, 'Divya.A', 8951361713, 'divya.a@himalayawellness.com', 'welcome@123', 'technician', '2018-07-18 05:54:11', '1'),
(30, 'Nishashree.B', 8722675907, 'nishashree.b@himalayawellness.com', 'welcome@123', 'technician', '2018-07-18 05:54:39', '1'),
(31, 'Pillai Rajlaxmi K Sankar', 7348930203, 'rajlaxmi.k@himalayawellness.com', 'welcome@123', 'technician', '2018-07-18 05:55:17', '1'),
(32, 'Swamy.K', 9538006874, 'swamy.k@himalayawellness.com', 'welcome@123', 'technician', '2018-07-18 05:55:40', '1'),
(33, 'Tenzin Choezom', 9686710726, 'tenzin.c@himalayawellness.com', 'welcome@123', 'technician', '2018-07-18 05:56:06', '1'),
(34, 'Thripthi.K', 9008469621, 'thripthi.k@himalayawellness.com\r\n', 'welcome@123', 'technician', '2018-07-25 05:53:39', '1'),
(35, 'Vinay.S.N', 8722044197, 'vinay.sn@himalayawellness.com', 'welcome@123', 'technician', '2018-07-18 05:56:53', '1'),
(36, 'ram', 85534744, 'ram@gmail.com', 'welcome@123', 'technician', '2018-07-25 08:17:37', '1'),
(37, 'alfinn', 9448802510, 'alfinn@gmail.com', 'welcome@123', 'technician', '2018-07-25 08:17:37', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technicianspecilization`
--
ALTER TABLE `technicianspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_table`
--
ALTER TABLE `temp_table`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
