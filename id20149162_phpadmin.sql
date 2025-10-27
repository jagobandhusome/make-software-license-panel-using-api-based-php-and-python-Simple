-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 16, 2023 at 05:42 PM
-- Server version: 10.5.16-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id20149162_phpadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_accounts`
--

CREATE TABLE `admin_accounts` (
  `id` int(25) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `series_id` varchar(60) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `admin_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_accounts`
--

INSERT INTO `admin_accounts` (`id`, `user_name`, `password`, `series_id`, `remember_token`, `expires`, `admin_type`) VALUES
(9, 'shome', '$2y$10$OcY/k/p6R2m5pYQ34AzSCecOFWQpULtoqtvWEJyfyTn3ymp3Xqs.q', NULL, NULL, NULL, 'super'),
(11, 'admin', '$2y$10$QiquFlryGrNpzRklaYr3fetMy70bhWKvpcydkJii0wrnFaesqJeCq', 'xP55qicCNFUz4lmU', '$2y$10$fkMtD1zKju926RBpGijEUOaliFkIpvn53CzLzNek5..Iinhh9lYRK', '2023-04-13 02:18:27', 'super');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(100) NOT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `phone` varchar(8) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `f_name`, `l_name`, `gender`, `address`, `city`, `state`, `phone`, `email`, `date_of_birth`, `created_at`, `updated_at`) VALUES
(9, 'Jagobandhu Some', '031B021C-040D-059C-E506-260700080009', 'male', 'Dhaka', NULL, 'Permanent', 'Active', 'jagobandhusome@gmail.com', '2027-12-31', '2023-01-15 18:25:29', NULL),
(14, 'Md Rakibul Hasan', '4BA55638-BF84-3679-651E-4060D32A5A49', 'male', 'Bogura', NULL, 'Monthly', 'Active', 'rakibulhasanmd740@gmail.com', '2023-03-28', '2023-02-26 07:54:27', NULL),
(16, 'Afride', '31444335-3734-5250-5434-345237344435', NULL, 'jossor', NULL, 'Monthly', 'Active', 'gmm@gmail.com', '2023-04-10', '2023-03-09 07:50:35', NULL),
(24, 'hemel', '03000200-0400-0500-0006-000700080009', 'male', 'bd', NULL, 'Monthly', 'Active', 'xapeb91323@xegge.com', '2023-04-15', '2023-03-13 18:07:42', '2023-03-14 02:25:14'),
(25, 'Arif Shariar', '72CD8E36-3B36-91D2-663D-E65A652D4587', 'male', 'bd', NULL, 'Monthly', 'Active', 'Smsabbir733@gmail.com', '2023-03-15', '2023-03-14 02:26:25', NULL),
(26, 'sabbir', '57F84094-4A99-66C4-53B4-9E5563099F00', 'male', 'df', NULL, 'Permanent', 'Active', 'sdasd2@gmail.com', '2030-04-04', '2023-03-14 15:13:23', NULL),
(27, 'Milon khan', '16514DF5-719E-4C9D-A9F0-2D5BEE678A40', 'male', 'Bvd', NULL, 'Monthly', 'Active', 'dbsbsn@gmail.com', '2023-04-15', '2023-03-15 04:59:13', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_accounts`
--
ALTER TABLE `admin_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_accounts`
--
ALTER TABLE `admin_accounts`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
