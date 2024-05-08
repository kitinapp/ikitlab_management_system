-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2022 at 07:32 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_version`
--

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `title`, `description`) VALUES
(1, 'What is Ekattor 8?', 'Ekattor 8 is a collection of programs designed to assist schools in administering their executive responsibilities on a day-to-day basis. Ekattor 8 is an updated version of Ekattor ERP (Enterprise Resource Planning). Also, Ekattor 8 is designed for SAAS (Software as a Service) projects.'),
(2, 'How can I get developed my customer features?', 'Custom features do not coming with product support. You can contact our support center and send us details about your requirement. If our schedule is open, we can give you a quotation and take your project according to the contract.'),
(5, 'Which license to choose for my client project?', 'If you use academy LMS for a commercial project of a client, you will be required extended license.'),
(6, 'How much time will I get developer support?', 'By default, you are entitled to developer support for 6 months from the date of your purchase. Later on anytime you can renew the support pack if you need developer support. If you don’t need any developer support, you don’t need to buy it.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
