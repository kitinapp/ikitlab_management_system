-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2024 at 02:51 PM
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
-- Database: `ikitlabmanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `features` varchar(255) DEFAULT NULL,
  `version` float DEFAULT NULL,
  `purchase_code` varchar(255) DEFAULT NULL,
  `unique_identifier` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `copies` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_issues`
--

CREATE TABLE `book_issues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `issue_date` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_students` int(11) DEFAULT NULL,
  `school_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`, `total_students`, `school_id`, `created_at`, `updated_at`) VALUES
(8, '1', 100, 13, '2024-05-14 06:54:09', '2024-05-14 06:54:09');

-- --------------------------------------------------------

--
-- Table structure for table `class_rooms`
--

CREATE TABLE `class_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `school_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_rooms`
--

INSERT INTO `class_rooms` (`id`, `name`, `school_id`, `created_at`, `updated_at`) VALUES
(1, 'IKIT LAB', 1, '2023-08-19 17:20:45', '2023-08-19 17:20:45'),
(2, 'Computer LAB', 1, '2023-08-19 17:20:52', '2023-08-19 17:20:52');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `paypal_supported` int(11) DEFAULT NULL,
  `stripe_supported` int(11) DEFAULT NULL,
  `flutterwave_supported` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `flutterwave_supported`) VALUES
(1, 'US Dollar', 'USD', '$', 1, 1, 1),
(2, 'Albanian Lek', 'ALL', 'Lek', 0, 1, 0),
(3, 'Algerian Dinar', 'DZD', 'دج', 1, 1, 0),
(4, 'Angolan Kwanza', 'AOA', 'Kz', 1, 1, 0),
(5, 'Argentine Peso', 'ARS', '$', 1, 1, 1),
(6, 'Armenian Dram', 'AMD', '֏', 1, 1, 0),
(7, 'Aruban Florin', 'AWG', 'ƒ', 1, 1, 0),
(8, 'Australian Dollar', 'AUD', '$', 1, 1, 0),
(9, 'Azerbaijani Manat', 'AZN', 'm', 1, 1, 0),
(10, 'Bahamian Dollar', 'BSD', 'B$', 1, 1, 0),
(11, 'Bahraini Dinar', 'BHD', '.د.ب', 1, 1, 0),
(12, 'Bangladeshi Taka', 'BDT', '৳', 1, 1, 0),
(13, 'Barbadian Dollar', 'BBD', 'Bds$', 1, 1, 0),
(14, 'Belarusian Ruble', 'BYR', 'Br', 0, 0, 0),
(15, 'Belgian Franc', 'BEF', 'fr', 1, 1, 0),
(16, 'Belize Dollar', 'BZD', '$', 1, 1, 0),
(17, 'Bermudan Dollar', 'BMD', '$', 1, 1, 0),
(18, 'Bhutanese Ngultrum', 'BTN', 'Nu.', 1, 1, 0),
(19, 'Bitcoin', 'BTC', '฿', 1, 1, 0),
(20, 'Bolivian Boliviano', 'BOB', 'Bs.', 1, 1, 0),
(21, 'Bosnia', 'BAM', 'KM', 1, 1, 0),
(22, 'Botswanan Pula', 'BWP', 'P', 1, 1, 0),
(23, 'Brazilian Real', 'BRL', 'R$', 1, 1, 1),
(24, 'British Pound Sterling', 'GBP', '£', 1, 1, 1),
(25, 'Brunei Dollar', 'BND', 'B$', 1, 1, 0),
(26, 'Bulgarian Lev', 'BGN', 'Лв.', 1, 1, 0),
(27, 'Burundian Franc', 'BIF', 'FBu', 1, 1, 0),
(28, 'Cambodian Riel', 'KHR', 'KHR', 1, 1, 0),
(29, 'Canadian Dollar', 'CAD', '$', 1, 1, 1),
(30, 'Cape Verdean Escudo', 'CVE', '$', 1, 1, 1),
(31, 'Cayman Islands Dollar', 'KYD', '$', 1, 1, 0),
(32, 'CFA Franc BCEAO', 'XOF', 'CFA', 1, 1, 1),
(33, 'CFA Franc BEAC', 'XAF', 'FCFA', 1, 1, 1),
(34, 'CFP Franc', 'XPF', '₣', 1, 1, 0),
(35, 'Chilean Peso', 'CLP', '$', 1, 1, 1),
(36, 'Chinese Yuan', 'CNY', '¥', 1, 1, 0),
(37, 'Colombian Peso', 'COP', '$', 1, 1, 0),
(38, 'Comorian Franc', 'KMF', 'CF', 1, 1, 0),
(39, 'Congolese Franc', 'CDF', 'FC', 1, 1, 1),
(40, 'Costa Rican ColÃ³n', 'CRC', '₡', 1, 1, 0),
(41, 'Croatian Kuna', 'HRK', 'kn', 1, 1, 0),
(42, 'Cuban Convertible Peso', 'CUC', '$, CUC', 1, 1, 0),
(43, 'Czech Republic Koruna', 'CZK', 'Kč', 1, 1, 0),
(44, 'Danish Krone', 'DKK', 'Kr.', 1, 1, 0),
(45, 'Djiboutian Franc', 'DJF', 'Fdj', 1, 1, 0),
(46, 'Dominican Peso', 'DOP', '$', 1, 1, 0),
(47, 'East Caribbean Dollar', 'XCD', '$', 1, 1, 0),
(48, 'Egyptian Pound', 'EGP', 'ج.م', 1, 1, 1),
(49, 'Eritrean Nakfa', 'ERN', 'Nfk', 1, 1, 0),
(50, 'Estonian Kroon', 'EEK', 'kr', 1, 1, 0),
(51, 'Ethiopian Birr', 'ETB', 'Nkf', 1, 1, 0),
(52, 'Euro', 'EUR', '€', 1, 1, 1),
(53, 'Falkland Islands Pound', 'FKP', '£', 1, 1, 0),
(54, 'Fijian Dollar', 'FJD', 'FJ$', 1, 1, 0),
(55, 'Gambian Dalasi', 'GMD', 'D', 1, 1, 1),
(56, 'Georgian Lari', 'GEL', 'ლ', 1, 1, 0),
(57, 'German Mark', 'DEM', 'DM', 1, 1, 0),
(58, 'Ghanaian Cedi', 'GHS', 'GH₵', 1, 1, 1),
(59, 'Gibraltar Pound', 'GIP', '£', 1, 1, 0),
(60, 'Greek Drachma', 'GRD', '₯, Δρχ, Δρ', 1, 1, 0),
(61, 'Guatemalan Quetzal', 'GTQ', 'Q', 1, 1, 0),
(62, 'Guinean Franc', 'GNF', 'FG', 1, 1, 1),
(63, 'Guyanaese Dollar', 'GYD', '$', 1, 1, 0),
(64, 'Haitian Gourde', 'HTG', 'G', 1, 1, 0),
(65, 'Honduran Lempira', 'HNL', 'L', 1, 1, 0),
(66, 'Hong Kong Dollar', 'HKD', '$', 1, 1, 0),
(67, 'Hungarian Forint', 'HUF', 'Ft', 1, 1, 0),
(68, 'Icelandic KrÃ³na', 'ISK', 'kr', 1, 1, 0),
(69, 'Indian Rupee', 'INR', '₹', 1, 1, 0),
(70, 'Indonesian Rupiah', 'IDR', 'Rp', 1, 1, 0),
(71, 'Iranian Rial', 'IRR', '﷼', 1, 1, 0),
(72, 'Iraqi Dinar', 'IQD', 'د.ع', 1, 1, 0),
(73, 'Israeli New Sheqel', 'ILS', '₪', 1, 1, 0),
(74, 'Italian Lira', 'ITL', 'L,£', 1, 1, 0),
(75, 'Jamaican Dollar', 'JMD', 'J$', 1, 1, 0),
(76, 'Japanese Yen', 'JPY', '¥', 1, 1, 0),
(77, 'Jordanian Dinar', 'JOD', 'ا.د', 1, 1, 0),
(78, 'Kazakhstani Tenge', 'KZT', 'лв', 1, 1, 0),
(79, 'Kenyan Shilling', 'KES', 'KSh', 1, 1, 1),
(80, 'Kuwaiti Dinar', 'KWD', 'ك.د', 1, 1, 0),
(81, 'Kyrgystani Som', 'KGS', 'лв', 1, 1, 0),
(82, 'Laotian Kip', 'LAK', '₭', 1, 1, 0),
(83, 'Latvian Lats', 'LVL', 'Ls', 0, 0, 0),
(84, 'Lebanese Pound', 'LBP', '£', 1, 1, 0),
(85, 'Lesotho Loti', 'LSL', 'L', 1, 1, 0),
(86, 'Liberian Dollar', 'LRD', '$', 1, 1, 1),
(87, 'Libyan Dinar', 'LYD', 'د.ل', 1, 1, 0),
(88, 'Lithuanian Litas', 'LTL', 'Lt', 0, 0, 0),
(89, 'Macanese Pataca', 'MOP', '$', 1, 1, 0),
(90, 'Macedonian Denar', 'MKD', 'ден', 1, 1, 0),
(91, 'Malagasy Ariary', 'MGA', 'Ar', 1, 1, 0),
(92, 'Malawian Kwacha', 'MWK', 'MK', 1, 1, 1),
(93, 'Malaysian Ringgit', 'MYR', 'RM', 1, 1, 0),
(94, 'Maldivian Rufiyaa', 'MVR', 'Rf', 1, 1, 0),
(95, 'Mauritanian Ouguiya', 'MRO', 'MRU', 1, 1, 0),
(96, 'Mauritian Rupee', 'MUR', '₨', 1, 1, 0),
(97, 'Mexican Peso', 'MXN', '$', 1, 1, 0),
(98, 'Moldovan Leu', 'MDL', 'L', 1, 1, 0),
(99, 'Mongolian Tugrik', 'MNT', '₮', 1, 1, 0),
(100, 'Moroccan Dirham', 'MAD', 'MAD', 1, 1, 1),
(101, 'Mozambican Metical', 'MZM', 'MT', 1, 1, 0),
(102, 'Myanmar Kyat', 'MMK', 'K', 1, 1, 0),
(103, 'Namibian Dollar', 'NAD', '$', 1, 1, 0),
(104, 'Nepalese Rupee', 'NPR', '₨', 1, 1, 0),
(105, 'Netherlands Antillean Guilder', 'ANG', 'ƒ', 1, 1, 0),
(106, 'New Taiwan Dollar', 'TWD', '$', 1, 1, 0),
(107, 'New Zealand Dollar', 'NZD', '$', 1, 1, 0),
(108, 'Nicaraguan CÃ³rdoba', 'NIO', 'C$', 1, 1, 0),
(109, 'Nigerian Naira', 'NGN', '₦', 1, 1, 1),
(110, 'North Korean Won', 'KPW', '₩', 0, 0, 0),
(111, 'Norwegian Krone', 'NOK', 'kr', 1, 1, 0),
(112, 'Omani Rial', 'OMR', '.ع.ر', 0, 0, 0),
(113, 'Pakistani Rupee', 'PKR', '₨', 1, 1, 0),
(114, 'Panamanian Balboa', 'PAB', 'B/.', 1, 1, 0),
(115, 'Papua New Guinean Kina', 'PGK', 'K', 1, 1, 0),
(116, 'Paraguayan Guarani', 'PYG', '₲', 1, 1, 0),
(117, 'Peruvian Nuevo Sol', 'PEN', 'S/.', 1, 1, 0),
(118, 'Philippine Peso', 'PHP', '₱', 1, 1, 0),
(119, 'Polish Zloty', 'PLN', 'zł', 1, 1, 0),
(120, 'Qatari Rial', 'QAR', 'ق.ر', 1, 1, 0),
(121, 'Romanian Leu', 'RON', 'lei', 1, 1, 0),
(122, 'Russian Ruble', 'RUB', '₽', 1, 1, 0),
(123, 'Rwandan Franc', 'RWF', 'FRw', 1, 1, 1),
(124, 'Salvadoran ColÃ³n', 'SVC', '₡', 0, 0, 0),
(125, 'Samoan Tala', 'WST', 'SAT', 1, 1, 0),
(126, 'Saudi Riyal', 'SAR', '﷼', 1, 1, 0),
(127, 'Serbian Dinar', 'RSD', 'din', 1, 1, 0),
(128, 'Seychellois Rupee', 'SCR', 'SRe', 1, 1, 0),
(129, 'Sierra Leonean Leone', 'SLL', 'Le', 1, 1, 1),
(130, 'Singapore Dollar', 'SGD', '$', 1, 1, 0),
(131, 'Slovak Koruna', 'SKK', 'Sk', 1, 1, 0),
(132, 'Solomon Islands Dollar', 'SBD', 'Si$', 1, 1, 0),
(133, 'Somali Shilling', 'SOS', 'Sh.so.', 1, 1, 0),
(134, 'South African Rand', 'ZAR', 'R', 1, 1, 1),
(135, 'South Korean Won', 'KRW', '₩', 1, 1, 0),
(136, 'Special Drawing Rights', 'XDR', 'SDR', 1, 1, 0),
(137, 'Sri Lankan Rupee', 'LKR', 'Rs', 1, 1, 0),
(138, 'St. Helena Pound', 'SHP', '£', 1, 1, 0),
(139, 'Sudanese Pound', 'SDG', '.س.ج', 1, 1, 0),
(140, 'Surinamese Dollar', 'SRD', '$', 1, 1, 0),
(141, 'Swazi Lilangeni', 'SZL', 'E', 1, 1, 0),
(142, 'Swedish Krona', 'SEK', 'kr', 1, 1, 0),
(143, 'Swiss Franc', 'CHF', 'CHf', 1, 1, 0),
(144, 'Syrian Pound', 'SYP', 'LS', 0, 0, 0),
(145, 'São Tomé and Príncipe Dobra', 'STD', 'Db', 1, 1, 1),
(146, 'Tajikistani Somoni', 'TJS', 'SM', 1, 1, 0),
(147, 'Tanzanian Shilling', 'TZS', 'TSh', 1, 1, 1),
(148, 'Thai Baht', 'THB', '฿', 1, 1, 0),
(149, 'Tongan pa\'anga', 'TOP', '$', 1, 1, 0),
(150, 'Trinidad & Tobago Dollar', 'TTD', '$', 1, 1, 0),
(151, 'Tunisian Dinar', 'TND', 'ت.د', 1, 1, 0),
(152, 'Turkish Lira', 'TRY', '₺', 1, 1, 0),
(153, 'Turkmenistani Manat', 'TMT', 'T', 1, 1, 0),
(154, 'Ugandan Shilling', 'UGX', 'UGX', 1, 1, 1),
(155, 'Ukrainian Hryvnia', 'UAH', '₴', 1, 1, 0),
(156, 'United Arab Emirates Dirham', 'AED', 'إ.د', 1, 1, 0),
(157, 'Uruguayan Peso', 'UYU', '$', 1, 1, 0),
(158, 'Afghan Afghani', 'AFA', '؋', 1, 1, 0),
(159, 'Uzbekistan Som', 'UZS', 'лв', 1, 1, 0),
(160, 'Vanuatu Vatu', 'VUV', 'VT', 1, 1, 0),
(161, 'Venezuelan BolÃvar', 'VEF', 'Bs', 0, 0, 0),
(162, 'Vietnamese Dong', 'VND', '₫', 1, 1, 0),
(163, 'Yemeni Rial', 'YER', '﷼', 1, 1, 0),
(164, 'Zambian Kwacha', 'ZMK', 'ZK', 1, 1, 1),
(165, 'PesosColombian Peso', 'COP', '$', 0, 0, 1),
(166, 'SEPA', 'EUR', '€', 0, 0, 1),
(167, 'Mozambican Metical', 'MZN', 'MT', 0, 0, 1),
(168, 'Peruvian Sol', 'SOL', 'S/', 0, 0, 1),
(169, 'Zambian Kwacha', 'ZMW', 'ZK', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `daily_attendances`
--

CREATE TABLE `daily_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `daily_attendances`
--

INSERT INTO `daily_attendances` (`id`, `class_id`, `section_id`, `student_id`, `status`, `session_id`, `school_id`, `timestamp`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 11, 0, 2, 1, 1692727200, '2023-08-23 13:05:55', '2023-08-23 13:08:19'),
(2, 3, 3, 106, 1, 13, 12, 1714672800, '2024-05-03 18:39:33', '2024-05-03 18:39:33'),
(3, 3, 3, 107, 1, 13, 12, 1714672800, '2024-05-03 18:39:33', '2024-05-03 18:39:33'),
(4, 3, 3, 108, 0, 13, 12, 1714672800, '2024-05-03 18:39:33', '2024-05-03 18:39:33');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `school_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `school_id`, `created_at`, `updated_at`) VALUES
(1, 'Robotics Department', 1, '2023-08-19 17:21:57', '2023-08-19 17:21:57'),
(2, 'ATL LAB', 10, '2023-08-25 14:06:08', '2023-08-25 14:06:08'),
(3, 'IKIT LAB', 10, '2023-08-25 14:06:17', '2023-08-25 14:06:17'),
(4, 'Robotics & AI', 12, '2024-05-03 18:10:45', '2024-05-03 18:10:45'),
(6, 'I-KIT LAB', 13, '2024-05-14 09:40:53', '2024-05-14 09:40:53');

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `session_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`id`, `user_id`, `class_id`, `section_id`, `school_id`, `department_id`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 11, 1, 1, 1, NULL, 2, '2023-08-23 12:56:02', '2023-08-23 12:56:02'),
(2, 12, 1, 1, 1, NULL, 2, '2023-08-23 14:16:23', '2023-08-23 14:16:23'),
(3, 13, 1, 1, 1, NULL, 2, '2023-08-23 14:16:23', '2023-08-23 14:16:23'),
(4, 14, 1, 1, 1, NULL, 2, '2023-08-23 14:16:23', '2023-08-23 14:16:23'),
(5, 102, 2, 2, 10, NULL, 11, '2023-08-25 16:50:38', '2023-08-25 16:54:52'),
(6, 106, 3, 3, 12, NULL, 13, '2024-05-03 18:34:23', '2024-05-03 19:28:27'),
(7, 107, 3, 3, 12, NULL, 13, '2024-05-03 18:34:23', '2024-05-03 19:28:30'),
(8, 108, 3, 3, 12, NULL, 13, '2024-05-03 18:34:23', '2024-05-03 19:28:31');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `exam_type` varchar(255) NOT NULL,
  `starting_time` varchar(255) NOT NULL,
  `ending_time` varchar(255) NOT NULL,
  `total_marks` float NOT NULL,
  `status` varchar(255) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `name`, `exam_type`, `starting_time`, `ending_time`, `total_marks`, `status`, `class_id`, `subject_id`, `school_id`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 'Half Yearly', 'offline', '1692777600', '1692781200', 100, 'pending', 1, 1, 1, 2, '2023-08-23 13:10:13', '2023-08-23 13:10:13');

-- --------------------------------------------------------

--
-- Table structure for table `exam_categories`
--

CREATE TABLE `exam_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_categories`
--

INSERT INTO `exam_categories` (`id`, `name`, `school_id`, `session_id`, `timestamp`, `created_at`, `updated_at`) VALUES
(1, 'Half Yearly', 1, 2, 1692727200, '2023-08-23 13:09:34', '2023-08-23 13:09:34'),
(2, 'Half Yearly', 10, 11, 1692900000, '2023-08-25 14:01:24', '2023-08-25 14:01:24');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `title`, `description`) VALUES
(1, 'What is Ekattor 8?', 'Ekattor 8 is a collection of programs designed to assist schools in administering their executive responsibilities on a day-to-day basis. Ekattor 8 is an updated version of Ekattor ERP (Enterprise Resource Planning). Also, Ekattor 8 is designed for SAAS (Software as a Service) projects.'),
(2, 'How can I get developed my customer features?', 'Custom features do not coming with product support. You can contact our support center and send us details about your requirement. If our schedule is open, we can give you a quotation and take your project according to the contract.'),
(5, 'Which license to choose for my client project?', 'If you use academy LMS for a commercial project of a client, you will be required extended license.'),
(6, 'How much time will I get developer support?', 'By default, you are entitled to developer support for 6 months from the date of your purchase. Later on anytime you can renew the support pack if you need developer support. If you don’t need any developer support, you don’t need to buy it.');

-- --------------------------------------------------------

--
-- Table structure for table `frontend_events`
--

CREATE TABLE `frontend_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frontend_events`
--

INSERT INTO `frontend_events` (`id`, `title`, `timestamp`, `status`, `school_id`, `session_id`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Happy Independens Day', 1692468000, 1, 1, 2, 2, '2023-08-19 19:50:27', '2023-08-19 19:50:27'),
(2, 'PTM', 1692640800, 1, 1, 2, 2, '2023-08-19 19:50:58', '2023-08-19 19:50:58');

-- --------------------------------------------------------

--
-- Table structure for table `global_settings`
--

CREATE TABLE `global_settings` (
  `id` int(11) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `global_settings`
--

INSERT INTO `global_settings` (`id`, `key`, `value`) VALUES
(1, 'system_name', 'PADMANABH Innovations'),
(2, 'system_title', 'PADMANABH Innovations'),
(3, 'system_email', 'hj1187306@gmail.com'),
(4, 'phone', '6367518704'),
(5, 'address', 'Jaipur'),
(6, 'purchase_code', 'hemant'),
(7, 'system_currency', 'INR'),
(8, 'currency_position', 'left-space'),
(9, 'running_session', '1'),
(10, 'language', 'english'),
(11, 'payment_settings', '[]'),
(12, 'footer_text', 'Developed With Heart By Hemant '),
(13, 'footer_link', 'https://www.linkedin.com/in/hemant-joshi-183847213/'),
(14, 'version', '1.7'),
(15, 'fax', '1234567890'),
(16, 'timezone', 'Asia/Kolkata'),
(17, 'smtp_protocol', 'smtp'),
(18, 'smtp_crypto', 'tls'),
(19, 'smtp_host', 'smtp.googlemail.com'),
(20, 'smtp_port', '587'),
(21, 'smtp_user', 'your-email'),
(22, 'smtp_pass', 'Email-password'),
(28, 'offline', '{\"status\":\"1\"}'),
(29, 'light_logo', '16924520022.png'),
(30, 'dark_logo', '16924407241.png'),
(31, 'favicon', 'favicon.png'),
(32, 'randCallRange', '30'),
(33, 'help_link', 'http://support.creativeitem.com/'),
(34, 'youtube_api_key', 'youtube-api-key'),
(35, 'vimeo_api_key', 'vimeo-api-key'),
(36, 'banner_title', 'Bringing Excellence To Students'),
(37, 'banner_subtitle', 'Empowering and inspiring all students to excel as life long learners'),
(38, 'facebook_link', 'https://www.facebook.com/CreativeitemApps'),
(39, 'twitter_link', 'https://twitter.com/creativeitem'),
(40, 'linkedin_link', 'https://www.linkedin.com/company/creativeitem'),
(41, 'instagram_link', 'http://www.instagram.com/creativeitem'),
(42, 'price_subtitle', 'Choose the best subscription plan for your school'),
(43, 'copyright_text', '2022 Academy, All rights reserved'),
(44, 'contact_email', 'ekattor@domain.com'),
(45, 'frontend_footer_text', 'Ekattor 8 is a collection of programs designed to assist schools in administering their executive responsibilities on a day-to-day basis. It is designed for SAAS (Software as a Service) projects.'),
(46, 'faq_subtitle', 'Frequently asked questions'),
(49, 'frontend_view', '1'),
(53, 'email_title', 'Subscription'),
(54, 'email_details', 'Feel free to reach out to us anytime if you have questions or feedback. We value your input and strive to provide the best experience possible.'),
(55, 'warning_text', 'This email is from an automated address so please do not reply.'),
(56, 'email_logo', '16904374791.png'),
(57, 'socialLogo1', '16907191042.png'),
(58, 'socialLogo2', '16907191913.png'),
(59, 'socialLogo3', '16907194544.png');

-- --------------------------------------------------------

--
-- Table structure for table `gradebooks`
--

CREATE TABLE `gradebooks` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `exam_category_id` int(11) NOT NULL,
  `marks` varchar(255) DEFAULT NULL,
  `comment` varchar(255) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gradebooks`
--

INSERT INTO `gradebooks` (`id`, `class_id`, `section_id`, `student_id`, `exam_category_id`, `marks`, `comment`, `school_id`, `session_id`, `timestamp`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 11, 1, '{\"1\":\"80\"}', 'Please  Focus on Reading', 1, 2, 1692727200, '2023-08-23 07:17:27', '2023-08-23 13:17:27');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `grade_point` varchar(255) NOT NULL,
  `mark_from` int(11) NOT NULL,
  `mark_upto` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `name`, `grade_point`, `mark_from`, `mark_upto`, `school_id`, `created_at`, `updated_at`) VALUES
(1, 'A+', '95', 90, 100, 1, '2023-08-23 13:12:44', '2023-08-23 13:12:44'),
(2, 'A', '85', 80, 90, 1, '2023-08-23 13:14:12', '2023-08-23 13:14:12'),
(3, 'B', '75', 70, 80, 1, '2023-08-23 13:14:26', '2023-08-23 13:14:26'),
(4, 'C', '55', 50, 70, 1, '2023-08-23 13:15:03', '2023-08-23 13:15:03'),
(5, 'D', '45', 36, 50, 1, '2023-08-23 13:15:43', '2023-08-23 13:15:43'),
(6, 'F', '0', 0, 36, 1, '2023-08-23 13:16:23', '2023-08-23 13:16:23');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phrase` varchar(300) DEFAULT NULL,
  `translated` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `name`, `phrase`, `translated`) VALUES
(1, 'english', 'Dashboard', 'Dashboard'),
(2, 'english', 'Home', 'Home'),
(3, 'english', 'Schools', 'Schools'),
(4, 'english', 'Total Schools', 'Total Schools'),
(5, 'english', 'Subscription', 'Subscription'),
(6, 'english', 'Total Active Subscription', 'Total Active Subscription'),
(7, 'english', 'Subscription Payment', 'Subscription Payment'),
(8, 'english', 'Superadmin | Ekator 8', 'Superadmin | Ekator 8'),
(9, 'english', 'Close', 'Close'),
(10, 'english', 'School List', 'School List'),
(11, 'english', 'Create school', 'Create school'),
(12, 'english', 'Pending List', 'Pending List'),
(13, 'english', 'Package', 'Package'),
(14, 'english', 'Subscriptions', 'Subscriptions'),
(15, 'english', 'Subscription Report', 'Subscription Report'),
(16, 'english', 'Pending Request', 'Pending Request'),
(17, 'english', 'Confirmed Payment', 'Confirmed Payment'),
(18, 'english', 'Addons', 'Addons'),
(19, 'english', 'Settings', 'Settings'),
(20, 'english', 'System Settings', 'System Settings'),
(21, 'english', 'Session Manager', 'Session Manager'),
(22, 'english', 'Payment Settings', 'Payment Settings'),
(23, 'english', 'Smtp settings', 'Smtp settings'),
(24, 'english', 'About', 'About'),
(25, 'english', 'Superadmin', 'Superadmin'),
(26, 'english', 'My Account', 'My Account'),
(27, 'english', 'Change Password', 'Change Password'),
(28, 'english', 'Log out', 'Log out'),
(29, 'english', 'Loading...', 'Loading...'),
(30, 'english', 'Heads up!', 'Heads up!'),
(31, 'english', 'Are you sure?', 'Are you sure?'),
(32, 'english', 'Back', 'Back'),
(33, 'english', 'Continue', 'Continue'),
(34, 'english', 'You won\'t able to revert this!', 'You won\'t able to revert this!'),
(35, 'english', 'Yes', 'Yes'),
(36, 'english', 'Cancel', 'Cancel'),
(37, 'english', 'Add School', 'Add School'),
(38, 'english', 'Name', 'Name'),
(39, 'english', 'Address', 'Address'),
(40, 'english', 'Phone', 'Phone'),
(41, 'english', 'Info', 'Info'),
(42, 'english', 'Status', 'Status'),
(43, 'english', 'Action', 'Action'),
(44, 'english', 'Active', 'Active'),
(45, 'english', 'Actions', 'Actions'),
(46, 'english', 'Edit School', 'Edit School'),
(47, 'english', 'Edit', 'Edit'),
(48, 'english', 'Delete', 'Delete'),
(49, 'english', 'School Form', 'School Form'),
(50, 'english', 'Provide all the information required for your school.', 'Provide all the information required for your school.'),
(51, 'english', 'Also provide a admin information with email and passwoard.', 'Also provide a admin information with email and passwoard.'),
(52, 'english', 'So that admin can access the created school.', 'So that admin can access the created school.'),
(53, 'english', 'SCHOOL INFO', 'SCHOOL INFO'),
(54, 'english', 'School Name', 'School Name'),
(55, 'english', 'School Address', 'School Address'),
(56, 'english', 'School Email', 'School Email'),
(57, 'english', 'School Phone', 'School Phone'),
(58, 'english', 'ADMIN INFO', 'ADMIN INFO'),
(59, 'english', 'Gender', 'Gender'),
(60, 'english', 'Select a gender', 'Select a gender'),
(61, 'english', 'Male', 'Male'),
(62, 'english', 'Female', 'Female'),
(63, 'english', 'Blood group', 'Blood group'),
(64, 'english', 'Select a blood group', 'Select a blood group'),
(65, 'english', 'A+', 'A+'),
(66, 'english', 'A-', 'A-'),
(67, 'english', 'B+', 'B+'),
(68, 'english', 'B-', 'B-'),
(69, 'english', 'AB+', 'AB+'),
(70, 'english', 'AB-', 'AB-'),
(71, 'english', 'O+', 'O+'),
(72, 'english', 'O-', 'O-'),
(73, 'english', 'Admin Address', 'Admin Address'),
(74, 'english', 'Admin Phone Number', 'Admin Phone Number'),
(75, 'english', 'Photo', 'Photo'),
(76, 'english', 'Admin Email', 'Admin Email'),
(77, 'english', 'Admin Password', 'Admin Password'),
(78, 'english', 'Submit', 'Submit'),
(79, 'english', 'Pending School List', 'Pending School List'),
(80, 'english', 'No data found', 'No data found'),
(81, 'english', 'Packages', 'Packages'),
(82, 'english', 'Add Package', 'Add Package'),
(83, 'english', 'Price', 'Price'),
(84, 'english', 'Interval', 'Interval'),
(85, 'english', 'Preiod', 'Preiod'),
(86, 'english', 'Filter', 'Filter'),
(87, 'english', 'Export', 'Export'),
(88, 'english', 'PDF', 'PDF'),
(89, 'english', 'CSV', 'CSV'),
(90, 'english', 'Print', 'Print'),
(91, 'english', 'Paid By', 'Paid By'),
(92, 'english', 'Purchase Date', 'Purchase Date'),
(93, 'english', 'Expire Date', 'Expire Date'),
(94, 'english', 'Confirmed Request', 'Confirmed Request'),
(95, 'english', 'Payment For', 'Payment For'),
(96, 'english', 'Payment Document', 'Payment Document'),
(97, 'english', 'Approve', 'Approve'),
(98, 'english', 'Manage Addons', 'Manage Addons'),
(99, 'english', 'Install addon', 'Install addon'),
(100, 'english', 'Add new addon', 'Add new addon'),
(101, 'english', 'System Name', 'System Name'),
(102, 'english', 'System Title', 'System Title'),
(103, 'english', 'System Email', 'System Email'),
(104, 'english', 'Fax', 'Fax'),
(105, 'english', 'Timezone', 'Timezone'),
(106, 'english', 'Footer Text', 'Footer Text'),
(107, 'english', 'Footer Link', 'Footer Link'),
(108, 'english', 'PRODUCT UPDATE', 'PRODUCT UPDATE'),
(109, 'english', 'File', 'File'),
(110, 'english', 'Update', 'Update'),
(111, 'english', 'SYSTEM LOGO', 'SYSTEM LOGO'),
(112, 'english', 'Dark logo', 'Dark logo'),
(113, 'english', 'Light logo', 'Light logo'),
(114, 'english', 'Favicon', 'Favicon'),
(115, 'english', 'Update Logo', 'Update Logo'),
(116, 'english', 'Create Session', 'Create Session'),
(117, 'english', 'Add Session', 'Add Session'),
(118, 'english', 'Active session ', 'Active session '),
(119, 'english', 'Select a session', 'Select a session'),
(120, 'english', 'Activate', 'Activate'),
(121, 'english', 'Session title', 'Session title'),
(122, 'english', 'Options', 'Options'),
(123, 'english', 'Edit Session', 'Edit Session'),
(124, 'english', 'Global Currency', 'Global Currency'),
(125, 'english', 'Select system currency', 'Select system currency'),
(126, 'english', 'Currency Position', 'Currency Position'),
(127, 'english', 'Left', 'Left'),
(128, 'english', 'Right', 'Right'),
(129, 'english', 'Left with a space', 'Left with a space'),
(130, 'english', 'Right with a space', 'Right with a space'),
(131, 'english', 'Update Currency', 'Update Currency'),
(132, 'english', 'Protocol', 'Protocol'),
(133, 'english', 'Smtp crypto', 'Smtp crypto'),
(134, 'english', 'Smtp host', 'Smtp host'),
(135, 'english', 'Smtp port', 'Smtp port'),
(136, 'english', 'Smtp username', 'Smtp username'),
(137, 'english', 'Smtp password', 'Smtp password'),
(138, 'english', 'Save', 'Save'),
(139, 'english', 'Not found', 'Not found'),
(140, 'english', 'About this application', 'About this application'),
(141, 'english', 'Software version', 'Software version'),
(142, 'english', 'Check update', 'Check update'),
(143, 'english', 'PHP version', 'PHP version'),
(144, 'english', 'Curl enable', 'Curl enable'),
(145, 'english', 'Enabled', 'Enabled'),
(146, 'english', 'Purchase code', 'Purchase code'),
(147, 'english', 'Product license', 'Product license'),
(148, 'english', 'invalid', 'invalid'),
(149, 'english', 'Enter valid purchase code', 'Enter valid purchase code'),
(150, 'english', 'Customer support status', 'Customer support status'),
(151, 'english', 'Support expiry date', 'Support expiry date'),
(152, 'english', 'Customer name', 'Customer name'),
(153, 'english', 'Get customer support', 'Get customer support'),
(154, 'english', 'Customer support', 'Customer support'),
(155, 'english', 'Email', 'Email'),
(156, 'english', 'Password', 'Password'),
(157, 'english', 'Forgot password', 'Forgot password'),
(158, 'english', 'Help', 'Help'),
(159, 'english', 'Login', 'Login'),
(160, 'english', 'Total Student', 'Total Student'),
(161, 'english', 'Teacher', 'Teacher'),
(162, 'english', 'Total Teacher', 'Total Teacher'),
(163, 'english', 'Parents', 'Parents'),
(164, 'english', 'Total Parent', 'Total Parent'),
(165, 'english', 'Staff', 'Staff'),
(166, 'english', 'Total Staff', 'Total Staff'),
(167, 'english', 'Todays Attendance', 'Todays Attendance'),
(168, 'english', 'Go to Attendance', 'Go to Attendance'),
(169, 'english', 'Income Report', 'Income Report'),
(170, 'english', 'Year', 'Year'),
(171, 'english', 'Month', 'Month'),
(172, 'english', 'Week', 'Week'),
(173, 'english', 'Upcoming Events', 'Upcoming Events'),
(174, 'english', 'See all', 'See all'),
(175, 'english', 'Admin', 'Admin'),
(176, 'english', 'Users', 'Users'),
(177, 'english', 'Accountant', 'Accountant'),
(178, 'english', 'Librarian', 'Librarian'),
(179, 'english', 'Parent', 'Parent'),
(180, 'english', 'Student', 'Student'),
(181, 'english', 'Teacher Permission', 'Teacher Permission'),
(182, 'english', 'Admissions', 'Admissions'),
(183, 'english', 'Examination', 'Examination'),
(184, 'english', 'Exam Category', 'Exam Category'),
(185, 'english', 'Offline Exam', 'Offline Exam'),
(186, 'english', 'Marks', 'Marks'),
(187, 'english', 'Grades', 'Grades'),
(188, 'english', 'Promotion', 'Promotion'),
(189, 'english', 'Academic', 'Academic'),
(190, 'english', 'Daily Attendance', 'Daily Attendance'),
(191, 'english', 'Class List', 'Class List'),
(192, 'english', 'Class Routine', 'Class Routine'),
(193, 'english', 'Subjects', 'Subjects'),
(194, 'english', 'Gradebooks', 'Gradebooks'),
(195, 'english', 'Syllabus', 'Syllabus'),
(196, 'english', 'Class Room', 'Class Room'),
(197, 'english', 'Department', 'Department'),
(198, 'english', 'Accounting', 'Accounting'),
(199, 'english', 'Student Fee Manager', 'Student Fee Manager'),
(200, 'english', 'Offline Payment Request', 'Offline Payment Request'),
(201, 'english', 'Expense Manager', 'Expense Manager'),
(202, 'english', 'Expense Category', 'Expense Category'),
(203, 'english', 'Back Office', 'Back Office'),
(204, 'english', 'Book List Manager', 'Book List Manager'),
(205, 'english', 'Book Issue Report', 'Book Issue Report'),
(206, 'english', 'Noticeboard', 'Noticeboard'),
(207, 'english', 'Events', 'Events'),
(208, 'english', 'School Settings', 'School Settings'),
(209, 'english', 'School information', 'School information'),
(210, 'english', 'Update settings', 'Update settings'),
(211, 'english', 'Deactive', 'Deactive'),
(212, 'english', 'Session has been activated', 'Session has been activated'),
(213, 'english', 'Update session', 'Update session'),
(214, 'english', 'Admins', 'Admins'),
(215, 'english', 'Create Admin', 'Create Admin'),
(216, 'english', 'User Info', 'User Info'),
(217, 'english', 'Oprions', 'Oprions'),
(218, 'english', 'Edit Admin', 'Edit Admin'),
(219, 'english', 'Teachers', 'Teachers'),
(220, 'english', 'Create Teacher', 'Create Teacher'),
(221, 'english', 'Create Accountant', 'Create Accountant'),
(222, 'english', 'Edit Accountant', 'Edit Accountant'),
(223, 'english', 'Librarians', 'Librarians'),
(224, 'english', 'Create Librarian', 'Create Librarian'),
(225, 'english', 'Edit Librarian', 'Edit Librarian'),
(226, 'english', 'Create Parent', 'Create Parent'),
(227, 'english', 'Edit Parent', 'Edit Parent'),
(228, 'english', 'Students', 'Students'),
(229, 'english', 'Create Student', 'Create Student'),
(230, 'english', 'Generate id card', 'Generate id card'),
(231, 'english', 'Assigned Permission For Teacher', 'Assigned Permission For Teacher'),
(232, 'english', 'Select a class', 'Select a class'),
(233, 'english', 'First select a class', 'First select a class'),
(234, 'english', 'Please select a class and section', 'Please select a class and section'),
(235, 'english', 'Attendance', 'Attendance'),
(236, 'english', 'Permission updated successfully.', 'Permission updated successfully.'),
(237, 'english', 'Admission', 'Admission'),
(238, 'english', 'Bulk student admission', 'Bulk student admission'),
(239, 'english', 'Class', 'Class'),
(240, 'english', 'Section', 'Section'),
(241, 'english', 'Select section', 'Select section'),
(242, 'english', 'Birthday', 'Birthday'),
(243, 'english', 'Select gender', 'Select gender'),
(244, 'english', 'Others', 'Others'),
(245, 'english', 'Student profile image', 'Student profile image'),
(246, 'english', 'Add Student', 'Add Student'),
(247, 'english', 'Create Exam Category', 'Create Exam Category'),
(248, 'english', 'Add Exam Category', 'Add Exam Category'),
(249, 'english', 'Title', 'Title'),
(250, 'english', 'Class test', 'Class test'),
(251, 'english', 'Edit Exam Category', 'Edit Exam Category'),
(252, 'english', 'Midterm exam', 'Midterm exam'),
(253, 'english', 'Final exam', 'Final exam'),
(254, 'english', 'Admission exam', 'Admission exam'),
(255, 'english', 'Create Exam', 'Create Exam'),
(256, 'english', 'Add Exam', 'Add Exam'),
(257, 'english', 'Exam', 'Exam'),
(258, 'english', 'Starting Time', 'Starting Time'),
(259, 'english', 'Ending Time', 'Ending Time'),
(260, 'english', 'Total Marks', 'Total Marks'),
(261, 'english', 'Edit Exam', 'Edit Exam'),
(262, 'english', 'Manage Marks', 'Manage Marks'),
(263, 'english', 'Select category', 'Select category'),
(264, 'english', 'Select class', 'Select class'),
(265, 'english', 'Please select all the fields', 'Please select all the fields'),
(266, 'english', 'Examknation', 'Examknation'),
(267, 'english', 'Create Grade', 'Create Grade'),
(268, 'english', 'Add grade', 'Add grade'),
(269, 'english', 'Grade', 'Grade'),
(270, 'english', 'Grade Point', 'Grade Point'),
(271, 'english', 'Mark From', 'Mark From'),
(272, 'english', 'Mark Upto', 'Mark Upto'),
(273, 'english', 'Promotions', 'Promotions'),
(274, 'english', 'Current session', 'Current session'),
(275, 'english', 'Session from', 'Session from'),
(276, 'english', 'Next session', 'Next session'),
(277, 'english', 'Session to', 'Session to'),
(278, 'english', 'Promoting from', 'Promoting from'),
(279, 'english', 'Promoting to', 'Promoting to'),
(280, 'english', 'Manage promotion', 'Manage promotion'),
(281, 'english', 'Take Attendance', 'Take Attendance'),
(282, 'english', 'Select a month', 'Select a month'),
(283, 'english', 'January', 'January'),
(284, 'english', 'February', 'February'),
(285, 'english', 'March', 'March'),
(286, 'english', 'April', 'April'),
(287, 'english', 'May', 'May'),
(288, 'english', 'June', 'June'),
(289, 'english', 'July', 'July'),
(290, 'english', 'August', 'August'),
(291, 'english', 'September', 'September'),
(292, 'english', 'October', 'October'),
(293, 'english', 'November', 'November'),
(294, 'english', 'December', 'December'),
(295, 'english', 'Select a year', 'Select a year'),
(296, 'english', 'Please select in all fields !', 'Please select in all fields !'),
(297, 'english', 'Classes', 'Classes'),
(298, 'english', 'Create Class', 'Create Class'),
(299, 'english', 'Add class', 'Add class'),
(300, 'english', 'Edit Section', 'Edit Section'),
(301, 'english', 'Edit Class', 'Edit Class'),
(302, 'english', 'Routines', 'Routines'),
(303, 'english', 'Add class routine', 'Add class routine'),
(304, 'english', 'Create Subject', 'Create Subject'),
(305, 'english', 'Add subject', 'Add subject'),
(306, 'english', 'Edit Subject', 'Edit Subject'),
(307, 'english', 'Select a exam category', 'Select a exam category'),
(308, 'english', 'Create syllabus', 'Create syllabus'),
(309, 'english', 'Add syllabus', 'Add syllabus'),
(310, 'english', 'Class Rooms', 'Class Rooms'),
(311, 'english', 'Create Class Room', 'Create Class Room'),
(312, 'english', 'Add class room', 'Add class room'),
(313, 'english', 'Edit Class Room', 'Edit Class Room'),
(314, 'english', 'Departments', 'Departments'),
(315, 'english', 'Create Department', 'Create Department'),
(316, 'english', 'Add department', 'Add department'),
(317, 'english', 'Edit Department', 'Edit Department'),
(318, 'english', 'Add Single Invoice', 'Add Single Invoice'),
(319, 'english', 'Add Mass Invoice', 'Add Mass Invoice'),
(320, 'english', 'All class', 'All class'),
(321, 'english', 'All status', 'All status'),
(322, 'english', 'Paid', 'Paid'),
(323, 'english', 'Unpaid', 'Unpaid'),
(324, 'english', 'Invoice No', 'Invoice No'),
(325, 'english', 'Invoice Title', 'Invoice Title'),
(326, 'english', 'Total Amount', 'Total Amount'),
(327, 'english', 'Created at', 'Created at'),
(328, 'english', 'Paid Amount', 'Paid Amount'),
(329, 'english', 'Expense', 'Expense'),
(330, 'english', 'Create Expense', 'Create Expense'),
(331, 'english', 'Add New Expense', 'Add New Expense'),
(332, 'english', 'Create Expense Category', 'Create Expense Category'),
(333, 'english', 'Add Expense Category', 'Add Expense Category'),
(334, 'english', 'Option', 'Option'),
(335, 'english', 'Edit Expense Category', 'Edit Expense Category'),
(336, 'english', 'Book', 'Book'),
(337, 'english', 'Add book', 'Add book'),
(338, 'english', 'Book name', 'Book name'),
(339, 'english', 'Author', 'Author'),
(340, 'english', 'Copies', 'Copies'),
(341, 'english', 'Available copies', 'Available copies'),
(342, 'english', 'Edit Book', 'Edit Book'),
(343, 'english', 'Book Issue', 'Book Issue'),
(344, 'english', 'Issue Book', 'Issue Book'),
(345, 'english', 'Noticeboard calendar', 'Noticeboard calendar'),
(346, 'english', 'Add New Notice', 'Add New Notice'),
(347, 'english', 'Locales:', 'Locales:'),
(348, 'english', 'Current Plan', 'Current Plan'),
(349, 'english', 'Silver', 'Silver'),
(350, 'english', 'Monthly', 'Monthly'),
(351, 'english', 'Subscription Renew Date', 'Subscription Renew Date'),
(352, 'english', 'Amount To Be Charged', 'Amount To Be Charged'),
(353, 'english', 'Create Event', 'Create Event'),
(354, 'english', 'Event title', 'Event title'),
(355, 'english', 'Date', 'Date'),
(356, 'english', 'Update event', 'Update event'),
(357, 'english', 'Upload addons zip file', 'Upload addons zip file'),
(358, 'english', 'Verified', 'Verified'),
(359, 'english', 'Details info', 'Details info'),
(360, 'english', 'Phone Number', 'Phone Number'),
(361, 'english', 'Designation', 'Designation'),
(362, 'english', 'Save Changes', 'Save Changes'),
(363, 'english', 'Select a status', 'Select a status'),
(364, 'english', 'Update school', 'Update school'),
(365, 'english', 'Package price', 'Package price'),
(366, 'english', 'Package Type', 'Package Type'),
(367, 'english', 'Select a package type', 'Select a package type'),
(368, 'english', 'Trail', 'Trail'),
(369, 'english', 'Select a interval', 'Select a interval'),
(370, 'english', 'Days', 'Days'),
(371, 'english', 'Yearly', 'Yearly'),
(372, 'english', 'Interval Preiod', 'Interval Preiod'),
(373, 'english', 'Description', 'Description'),
(374, 'english', 'Create package', 'Create package'),
(375, 'english', 'Update package', 'Update package'),
(376, 'english', 'Invalid purchase code', 'Invalid purchase code'),
(377, 'english', 'Inactive', 'Inactive'),
(378, 'english', 'Save event', 'Save event'),
(379, 'english', 'Create', 'Create'),
(380, 'english', 'Select a department', 'Select a department'),
(381, 'english', 'One', 'One'),
(382, 'english', 'Two', 'Two'),
(383, 'english', 'Three', 'Three'),
(384, 'english', 'Four', 'Four'),
(385, 'english', 'Five', 'Five'),
(386, 'english', 'Six', 'Six'),
(387, 'english', 'Seven', 'Seven'),
(388, 'english', 'Eight', 'Eight'),
(389, 'english', 'Nine', 'Nine'),
(390, 'english', 'Ten', 'Ten'),
(391, 'english', 'Add students', 'Add students'),
(392, 'english', 'Create category', 'Create category'),
(393, 'english', 'Exam Name', 'Exam Name'),
(394, 'english', 'Select exam category name', 'Select exam category name'),
(395, 'english', 'Subject', 'Subject'),
(396, 'english', 'Starting date', 'Starting date'),
(397, 'english', 'Ending date', 'Ending date'),
(398, 'english', 'Student name', 'Student name'),
(399, 'english', 'Mark', 'Mark'),
(400, 'english', 'Comment', 'Comment'),
(401, 'english', 'Value has been updated successfully', 'Value has been updated successfully'),
(402, 'english', 'Required mark field', 'Required mark field'),
(403, 'english', 'Image', 'Image'),
(404, 'english', 'Enroll to', 'Enroll to'),
(405, 'english', 'Select a section', 'Select a section'),
(406, 'english', 'Attendance Report Of', 'Attendance Report Of'),
(407, 'english', 'Last Update at', 'Last Update at'),
(408, 'english', 'Time', 'Time'),
(409, 'english', 'Please select the required fields', 'Please select the required fields'),
(410, 'english', 'Saturday', 'Saturday'),
(411, 'english', 'Sunday', 'Sunday'),
(412, 'english', 'Monday', 'Monday'),
(413, 'english', 'Tuesday', 'Tuesday'),
(414, 'english', 'Wednesday', 'Wednesday'),
(415, 'english', 'Update subject', 'Update subject'),
(416, 'english', 'Select subject', 'Select subject'),
(417, 'english', 'Assign a teacher', 'Assign a teacher'),
(418, 'english', 'Select a class room', 'Select a class room'),
(419, 'english', 'Day', 'Day'),
(420, 'english', 'Select a day', 'Select a day'),
(421, 'english', 'Thursday', 'Thursday'),
(422, 'english', 'Friday', 'Friday'),
(423, 'english', 'Starting hour', 'Starting hour'),
(424, 'english', 'Starting minute', 'Starting minute'),
(425, 'english', 'Ending hour', 'Ending hour'),
(426, 'english', 'Ending minute', 'Ending minute'),
(427, 'english', 'Add routine', 'Add routine'),
(428, 'english', 'Edit class routine', 'Edit class routine'),
(429, 'english', 'Tittle', 'Tittle'),
(430, 'english', 'Upload syllabus', 'Upload syllabus'),
(431, 'english', 'Select student', 'Select student'),
(432, 'english', 'Select a student', 'Select a student'),
(433, 'english', 'Payment method', 'Payment method'),
(434, 'english', 'Select a payment method', 'Select a payment method'),
(435, 'english', 'Cash', 'Cash'),
(436, 'english', 'Paypal', 'Paypal'),
(437, 'english', 'Paytm', 'Paytm'),
(438, 'english', 'Razorpay', 'Razorpay'),
(439, 'english', 'Create invoice', 'Create invoice'),
(440, 'english', 'Payment date', 'Payment date'),
(441, 'english', 'Print invoice', 'Print invoice'),
(442, 'english', 'Edit Invoice', 'Edit Invoice'),
(443, 'english', 'Amount', 'Amount'),
(444, 'english', 'Select an expense category', 'Select an expense category'),
(445, 'english', 'Edit Expense', 'Edit Expense'),
(446, 'english', 'Issue date', 'Issue date'),
(447, 'english', 'Select book', 'Select book'),
(448, 'english', 'Id', 'Id'),
(449, 'english', 'Pending', 'Pending'),
(450, 'english', 'Update issued book', 'Update issued book'),
(451, 'english', 'Return this book', 'Return this book'),
(452, 'english', 'Notice title', 'Notice title'),
(453, 'english', 'Start date', 'Start date'),
(454, 'english', 'Setup additional date & time', 'Setup additional date & time'),
(455, 'english', 'Start time', 'Start time'),
(456, 'english', 'End date', 'End date'),
(457, 'english', 'End time', 'End time'),
(458, 'english', 'Notice', 'Notice'),
(459, 'english', 'Show on website', 'Show on website'),
(460, 'english', 'Show', 'Show'),
(461, 'english', 'Do not need to show', 'Do not need to show'),
(462, 'english', 'Upload notice photo', 'Upload notice photo'),
(463, 'english', 'Save notice', 'Save notice'),
(464, 'english', 'School Currency', 'School Currency'),
(465, 'english', 'Exam List', 'Exam List'),
(466, 'english', 'Profile', 'Profile'),
(467, 'english', ' Download', ' Download'),
(468, 'english', 'Select a subject', 'Select a subject'),
(469, 'english', 'Welcome, to', 'Welcome, to'),
(470, 'english', 'Fee Manager', 'Fee Manager'),
(471, 'english', 'List Of Books', 'List Of Books'),
(472, 'english', 'Issued Book', 'Issued Book'),
(473, 'english', 'Student Code', 'Student Code'),
(474, 'english', 'Candice Kennedy', 'Candice Kennedy'),
(475, 'english', 'English', 'English'),
(476, 'english', 'Natalie Ashley', 'Natalie Ashley'),
(477, 'english', 'Byron Chase', 'Byron Chase'),
(478, 'english', 'Rafael Hardy', 'Rafael Hardy'),
(479, 'english', 'Mathematics', 'Mathematics'),
(480, 'english', 'Aphrodite Shaffer', 'Aphrodite Shaffer'),
(481, 'english', 'Bangla', 'Bangla'),
(482, 'english', 'Fatima Phillips', 'Fatima Phillips'),
(483, 'english', 'Sydney Pearson', 'Sydney Pearson'),
(484, 'english', 'Drawing', 'Drawing'),
(485, 'english', 'Imani Cooper', 'Imani Cooper'),
(486, 'english', 'Ulric Spencer', 'Ulric Spencer'),
(487, 'english', 'Yoshio Gentry', 'Yoshio Gentry'),
(488, 'english', 'Attendance report', 'Attendance report'),
(489, 'english', 'Of', 'Of'),
(490, 'english', 'Last updated at', 'Last updated at'),
(491, 'english', 'View Marks', 'View Marks'),
(492, 'english', 'Subject name', 'Subject name'),
(493, 'english', 'Pay', 'Pay'),
(494, 'english', 'List Of Book', 'List Of Book'),
(495, 'english', 'Child', 'Child'),
(496, 'english', 'Teaches', 'Teaches'),
(498, 'english', 'Student List', 'Student List'),
(499, 'english', 'Id card', 'Id card'),
(500, 'english', 'Code', 'Code'),
(501, 'english', 'Not found', 'Not found'),
(502, 'english', 'Contact', 'Contact'),
(503, 'english', 'Search Attendance Report', 'Search Attendance Report'),
(504, 'english', 'Please select in all fields !', 'Please select in all fields !'),
(505, 'english', 'Please select student', 'Please select student'),
(506, 'english', 'Download', 'Download'),
(507, 'english', 'Ekattor', 'Ekattor'),
(508, 'english', 'Add  Single Invoice', 'Add  Single Invoice'),
(509, 'english', 'Add  Mass Invoice', 'Add  Mass Invoice'),
(510, 'english', 'Update invoice', 'Update invoice'),
(511, 'english', 'Invoice', 'Invoice'),
(512, 'english', 'Please find below the invoice', 'Please find below the invoice'),
(513, 'english', 'Billing Address', 'Billing Address'),
(514, 'english', 'Due Amount', 'Due Amount'),
(515, 'english', 'Student Fee', 'Student Fee'),
(516, 'english', 'Subtotal', 'Subtotal'),
(517, 'english', 'Due', 'Due'),
(518, 'english', 'Grand Total', 'Grand Total'),
(519, 'english', 'Update book issue information', 'Update book issue information'),
(520, 'english', 'Not Subscribed', 'Not Subscribed'),
(521, 'english', 'You are not subscribed to any plan. Subscribe now.', 'You are not subscribed to any plan. Subscribe now.'),
(522, 'english', 'Subscribe', 'Subscribe'),
(523, 'english', 'Package List', 'Package List'),
(524, 'english', 'Payment | Ekator 8', 'Payment | Ekator 8'),
(525, 'english', 'Make Payment', 'Make Payment'),
(526, 'english', 'Payment Gateway', 'Payment Gateway'),
(527, 'english', 'Offline', 'Offline'),
(528, 'english', 'Addon', 'Addon'),
(529, 'english', 'Invoice Summary', 'Invoice Summary'),
(530, 'english', 'Document of your payment', 'Document of your payment'),
(531, 'english', 'Submit payment document', 'Submit payment document'),
(532, 'english', 'Instruction', 'Instruction'),
(533, 'english', 'Admin will review your payment document and then approve the Payment.', 'Admin will review your payment document and then approve the Payment.'),
(534, 'english', 'Pending Payment', 'Pending Payment'),
(535, 'english', 'You payment request has been sent to Superadmin ', 'You payment request has been sent to Superadmin '),
(536, 'english', 'Suspended', 'Suspended'),
(537, 'english', 'Enter your email address to reset your password.', 'Enter your email address to reset your password.'),
(538, 'english', 'Reset password', 'Reset password'),
(539, 'english', 'Language Settings', 'Language Settings'),
(540, 'english', 'Language', 'Language'),
(541, 'english', 'Edit phrase', 'Edit phrase'),
(542, 'english', 'Delete language', 'Delete language'),
(543, 'english', 'edit_phrase', 'edit_phrase'),
(544, 'english', 'delete_language', 'delete_language'),
(545, 'english', 'System default language can not be removed', 'System default language can not be removed'),
(546, 'english', 'language_list', 'language_list'),
(547, 'english', 'add_language', 'add_language'),
(548, 'english', 'Language list', 'Language list'),
(549, 'english', 'Add language', 'Add language'),
(550, 'english', 'Add new phrase', 'Add new phrase'),
(551, 'english', 'add_new_language', 'add_new_language'),
(552, 'english', 'No special character or space is allowed', 'No special character or space is allowed'),
(553, 'english', 'valid_examples', 'valid_examples'),
(554, 'english', 'No special character or space is allowed', 'No special character or space is allowed'),
(555, 'english', 'Validexamples', 'Validexamples'),
(556, 'english', 'Add new language', 'Add new language'),
(557, 'english', 'Valid examples', 'Valid examples'),
(560, 'english', 'Phrase updated', 'Phrase updated'),
(561, 'english', 'System Language', 'System Language'),
(562, 'english', 'Edit Grade', 'Edit Grade'),
(563, 'english', 'Number of scopy', 'Number of scopy'),
(564, 'english', 'Save book', 'Save book'),
(565, 'english', 'New Password', 'New Password'),
(566, 'english', 'Confirm Password', 'Confirm Password'),
(567, 'english', 'Current Password', 'Current Password'),
(568, 'english', 'Add Parent', 'Add Parent'),
(569, 'english', 'Parent profile image', 'Parent profile image'),
(570, 'english', 'Allowances', 'Allowances'),
(571, 'english', 'Type', 'Type'),
(572, 'english', 'Select child', 'Select child'),
(573, 'english', 'Show student list', 'Show student list'),
(574, 'english', 'Update attendance', 'Update attendance'),
(575, 'english', 'Present All', 'Present All'),
(576, 'english', 'Absent All', 'Absent All'),
(577, 'english', 'present', 'present'),
(578, 'english', 'absent', 'absent'),
(579, 'english', 'not_updated_yet', 'not_updated_yet'),
(580, 'english', '31', '31'),
(581, 'english', 'Not updated yet', 'Not updated yet'),
(582, 'english', 'Update class', 'Update class'),
(583, 'english', 'Edit syllabus', 'Edit syllabus'),
(584, 'english', 'Select expense category', 'Select expense category'),
(585, 'english', 'Filter Options', 'Filter Options'),
(586, 'english', 'Reset', 'Reset'),
(587, 'english', 'Apply', 'Apply'),
(588, 'english', 'Profile info updated successfully', 'Profile info updated successfully'),
(589, 'english', 'not_found', 'not_found'),
(590, 'english', 'No date found', 'No date found'),
(591, 'english', 'No date found', 'No date found'),
(592, 'english', 'Blood ', 'Blood '),
(593, 'english', 'Blood Type', 'Blood Type'),
(594, 'english', 'Help Link', 'Help Link'),
(595, 'english', 'From', 'From'),
(596, 'english', 'To', 'To'),
(597, 'english', 'Select a parent', 'Select a parent'),
(598, 'english', 'Add', 'Add'),
(599, 'english', 'Document', 'Document'),
(600, 'english', 'Decline', 'Decline'),
(601, 'english', 'Number of child:', 'Number of child:'),
(602, 'english', 'Number of child', 'Number of child'),
(603, 'english', 'Parent Create', 'Parent Create'),
(604, 'english', 'Parent Update', 'Parent Update'),
(2452, 'english', 'Version updated successfully', 'Version updated successfully'),
(2453, 'english', 'Website Settings', 'Website Settings'),
(2454, 'english', 'Manage Faq', 'Manage Faq'),
(2455, 'english', 'Visit Website', 'Visit Website'),
(2456, 'english', 'Feature', 'Feature'),
(2457, 'english', 'Faq', 'Faq'),
(2458, 'english', 'School Register Form', 'School Register Form'),
(2459, 'english', 'Admin Name', 'Admin Name'),
(2460, 'english', 'User Account', 'User Account'),
(2461, 'english', 'Our Features', 'Our Features'),
(2462, 'english', 'Features', 'Features'),
(2463, 'english', 'Students Admission', 'Students Admission'),
(2464, 'english', 'Your schools can add their students in two different ways', 'Your schools can add their students in two different ways'),
(2465, 'english', 'Take your students attendance in a smart way', 'Take your students attendance in a smart way'),
(2466, 'english', 'Manage your schools class list whenever you want', 'Manage your schools class list whenever you want'),
(2467, 'english', 'Add different subjects for different classes', 'Add different subjects for different classes'),
(2468, 'english', 'Event Calender', 'Event Calender'),
(2469, 'english', 'The school admin can manage their schools events separately', 'The school admin can manage their schools events separately'),
(2470, 'english', 'Routine', 'Routine'),
(2471, 'english', 'Manage your schools class routine easily', 'Manage your schools class routine easily'),
(2472, 'english', 'Student Information', 'Student Information'),
(2473, 'english', 'Add your students information within a few minute', 'Add your students information within a few minute'),
(2474, 'english', 'Manage syllabuses based on the classes', 'Manage syllabuses based on the classes'),
(2475, 'english', 'Fees Management', 'Fees Management'),
(2476, 'english', 'Pay academic fees in a smart way with Ekattor 8', 'Pay academic fees in a smart way with Ekattor 8'),
(2477, 'english', 'ID Card Generator', 'ID Card Generator'),
(2478, 'english', 'Generate your students ID card whenever you want', 'Generate your students ID card whenever you want'),
(2479, 'english', 'Online Payment Gateway', 'Online Payment Gateway'),
(2480, 'english', 'Pay your subscription and academic fees', 'Pay your subscription and academic fees'),
(2481, 'english', 'Invoice Generator', 'Invoice Generator'),
(2482, 'english', 'Generate invoices to make the payments more reliable', 'Generate invoices to make the payments more reliable'),
(2483, 'english', 'Offline Payment', 'Offline Payment'),
(2484, 'english', 'Complete payment with local money', 'Complete payment with local money'),
(2485, 'english', 'Book List', 'Book List'),
(2486, 'english', 'Manage your schools library within a few clicks', 'Manage your schools library within a few clicks'),
(2487, 'english', 'Manage your schools notices smartly', 'Manage your schools notices smartly'),
(2488, 'english', 'Create and manage your schools exams and categories', 'Create and manage your schools exams and categories'),
(2489, 'english', 'Marks Management', 'Marks Management'),
(2490, 'english', 'Manage your students exam marks', 'Manage your students exam marks'),
(2491, 'english', 'Add and manage grades in the examination', 'Add and manage grades in the examination'),
(2492, 'english', 'Have Any Question', 'Have Any Question'),
(2493, 'english', 'Contact us with any questions', 'Contact us with any questions'),
(2494, 'english', 'Contact Us', 'Contact Us'),
(2495, 'english', 'Social Link', 'Social Link'),
(2496, 'english', 'Ekattor8 School Management System', 'Ekattor8 School Management System'),
(2497, 'english', 'Register', 'Register'),
(2498, 'english', 'Frontend View', 'Frontend View'),
(2499, 'english', 'No', 'No'),
(2500, 'english', 'Youtube Api Key', 'Youtube Api Key'),
(2501, 'english', 'Vimeo Api Key', 'Vimeo Api Key'),
(2502, 'english', 'Has to be bigger than', 'Has to be bigger than'),
(2503, 'english', 'GENERAL SETTINGS', 'GENERAL SETTINGS'),
(2504, 'english', 'Banner Title', 'Banner Title'),
(2505, 'english', 'Banner Subtitle', 'Banner Subtitle'),
(2506, 'english', 'Price Subtitle', 'Price Subtitle'),
(2507, 'english', 'Faq Subtitle', 'Faq Subtitle'),
(2508, 'english', 'Facebook Link', 'Facebook Link'),
(2509, 'english', 'Twitter Link', 'Twitter Link'),
(2510, 'english', 'Linkedin Link', 'Linkedin Link'),
(2511, 'english', 'Instagram Link', 'Instagram Link'),
(2512, 'english', 'Contact Mail', 'Contact Mail'),
(2513, 'english', 'Frontend Footer Text', 'Frontend Footer Text'),
(2514, 'english', 'Copyright Text', 'Copyright Text'),
(2515, 'english', 'Add question and answer', 'Add question and answer'),
(2516, 'english', 'Faq List', 'Faq List'),
(2517, 'english', 'Update question and answer', 'Update question and answer'),
(2518, 'english', 'Excel upload', 'Excel upload'),
(2519, 'english', '', ''),
(2520, 'english', 'It looks like you are skipping a version', 'It looks like you are skipping a version'),
(2521, 'english', 'Please update version', 'Please update version'),
(2522, 'english', 'first', 'first'),
(2523, 'english', 'Email Address', 'Email Address'),
(2524, 'english', 'Toggle navigation', 'Toggle navigation'),
(2525, 'english', 'Archive ', 'Archive '),
(2526, 'english', 'Administrator', 'Administrator'),
(2527, 'english', 'Showing', 'Showing'),
(2528, 'english', 'data', 'data'),
(2529, 'english', 'Select a valid zip file', 'Select a valid zip file'),
(2530, 'english', 'Class & Section', 'Class & Section'),
(2531, 'english', 'Stripe', 'Stripe'),
(2532, 'english', 'Flutterwave', 'Flutterwave'),
(2533, 'english', 'Purchase code verification failed', 'Purchase code verification failed'),
(2534, 'english', 'Addon updated successfully', 'Addon updated successfully'),
(2535, 'english', 'Bundle name', 'Bundle name'),
(2536, 'english', 'Version', 'Version'),
(2537, 'english', 'Navbar Title', 'Navbar Title'),
(2538, 'english', 'Nav Bar Logo', 'Nav Bar Logo'),
(2539, 'english', 'Email Template Settings', 'Email Template Settings'),
(2540, 'english', 'Email Title', 'Email Title'),
(2541, 'english', 'Email Details', 'Email Details'),
(2542, 'english', 'Remaining characters is', 'Remaining characters is'),
(2543, 'english', 'Warning Text', 'Warning Text'),
(2544, 'english', 'Email logo', 'Email logo'),
(2545, 'english', 'Social logo-1', 'Social logo-1'),
(2546, 'english', 'Social logo-2', 'Social logo-2'),
(2547, 'english', 'Social logo-3', 'Social logo-3'),
(2548, 'english', 'Images for email templates will only support if the application is hosted on a live server. Localhost will not support this.', 'Images for email templates will only support if the application is hosted on a live server. Localhost will not support this.'),
(2549, 'Hindi', 'Dashboard', 'डैशबोर्ड'),
(2550, 'Hindi', 'Home', 'Home'),
(2551, 'Hindi', 'Schools', 'Schools'),
(2552, 'Hindi', 'Total Schools', 'Total Schools'),
(2553, 'Hindi', 'Subscription', 'Subscription'),
(2554, 'Hindi', 'Total Active Subscription', 'Total Active Subscription'),
(2555, 'Hindi', 'Subscription Payment', 'Subscription Payment'),
(2556, 'Hindi', 'Superadmin | Ekator 8', 'Superadmin | Ekator 8'),
(2557, 'Hindi', 'Close', 'Close'),
(2558, 'Hindi', 'School List', 'School List'),
(2559, 'Hindi', 'Create school', 'Create school'),
(2560, 'Hindi', 'Pending List', 'Pending List'),
(2561, 'Hindi', 'Package', 'Package'),
(2562, 'Hindi', 'Subscriptions', 'Subscriptions'),
(2563, 'Hindi', 'Subscription Report', 'Subscription Report'),
(2564, 'Hindi', 'Pending Request', 'Pending Request'),
(2565, 'Hindi', 'Confirmed Payment', 'Confirmed Payment'),
(2566, 'Hindi', 'Addons', 'Addons'),
(2567, 'Hindi', 'Settings', 'Settings'),
(2568, 'Hindi', 'System Settings', 'System Settings'),
(2569, 'Hindi', 'Session Manager', 'Session Manager'),
(2570, 'Hindi', 'Payment Settings', 'Payment Settings'),
(2571, 'Hindi', 'Smtp settings', 'Smtp settings'),
(2572, 'Hindi', 'About', 'About'),
(2573, 'Hindi', 'Superadmin', 'Superadmin'),
(2574, 'Hindi', 'My Account', 'My Account'),
(2575, 'Hindi', 'Change Password', 'Change Password'),
(2576, 'Hindi', 'Log out', 'Log out'),
(2577, 'Hindi', 'Loading...', 'Loading...'),
(2578, 'Hindi', 'Heads up!', 'Heads up!'),
(2579, 'Hindi', 'Are you sure?', 'Are you sure?'),
(2580, 'Hindi', 'Back', 'Back'),
(2581, 'Hindi', 'Continue', 'Continue'),
(2582, 'Hindi', 'You won\'t able to revert this!', 'You won\'t able to revert this!'),
(2583, 'Hindi', 'Yes', 'Yes'),
(2584, 'Hindi', 'Cancel', 'Cancel'),
(2585, 'Hindi', 'Add School', 'Add School'),
(2586, 'Hindi', 'Name', 'Name'),
(2587, 'Hindi', 'Address', 'Address'),
(2588, 'Hindi', 'Phone', 'Phone'),
(2589, 'Hindi', 'Info', 'Info'),
(2590, 'Hindi', 'Status', 'Status'),
(2591, 'Hindi', 'Action', 'Action'),
(2592, 'Hindi', 'Active', 'Active'),
(2593, 'Hindi', 'Actions', 'Actions'),
(2594, 'Hindi', 'Edit School', 'Edit School'),
(2595, 'Hindi', 'Edit', 'Edit'),
(2596, 'Hindi', 'Delete', 'Delete'),
(2597, 'Hindi', 'School Form', 'School Form'),
(2598, 'Hindi', 'Provide all the information required for your school.', 'Provide all the information required for your school.'),
(2599, 'Hindi', 'Also provide a admin information with email and passwoard.', 'Also provide a admin information with email and passwoard.'),
(2600, 'Hindi', 'So that admin can access the created school.', 'So that admin can access the created school.'),
(2601, 'Hindi', 'SCHOOL INFO', 'SCHOOL INFO'),
(2602, 'Hindi', 'School Name', 'School Name'),
(2603, 'Hindi', 'School Address', 'School Address'),
(2604, 'Hindi', 'School Email', 'School Email'),
(2605, 'Hindi', 'School Phone', 'School Phone'),
(2606, 'Hindi', 'ADMIN INFO', 'ADMIN INFO'),
(2607, 'Hindi', 'Gender', 'Gender'),
(2608, 'Hindi', 'Select a gender', 'Select a gender'),
(2609, 'Hindi', 'Male', 'Male'),
(2610, 'Hindi', 'Female', 'Female'),
(2611, 'Hindi', 'Blood group', 'Blood group'),
(2612, 'Hindi', 'Select a blood group', 'Select a blood group'),
(2613, 'Hindi', 'A+', 'A+'),
(2614, 'Hindi', 'A-', 'A-'),
(2615, 'Hindi', 'B+', 'B+'),
(2616, 'Hindi', 'B-', 'B-'),
(2617, 'Hindi', 'AB+', 'AB+'),
(2618, 'Hindi', 'AB-', 'AB-'),
(2619, 'Hindi', 'O+', 'O+'),
(2620, 'Hindi', 'O-', 'O-'),
(2621, 'Hindi', 'Admin Address', 'Admin Address'),
(2622, 'Hindi', 'Admin Phone Number', 'Admin Phone Number'),
(2623, 'Hindi', 'Photo', 'Photo'),
(2624, 'Hindi', 'Admin Email', 'Admin Email'),
(2625, 'Hindi', 'Admin Password', 'Admin Password'),
(2626, 'Hindi', 'Submit', 'Submit'),
(2627, 'Hindi', 'Pending School List', 'Pending School List'),
(2628, 'Hindi', 'No data found', 'No data found'),
(2629, 'Hindi', 'Packages', 'Packages'),
(2630, 'Hindi', 'Add Package', 'Add Package'),
(2631, 'Hindi', 'Price', 'Price'),
(2632, 'Hindi', 'Interval', 'Interval'),
(2633, 'Hindi', 'Preiod', 'Preiod'),
(2634, 'Hindi', 'Filter', 'Filter'),
(2635, 'Hindi', 'Export', 'Export'),
(2636, 'Hindi', 'PDF', 'PDF'),
(2637, 'Hindi', 'CSV', 'CSV'),
(2638, 'Hindi', 'Print', 'Print'),
(2639, 'Hindi', 'Paid By', 'Paid By'),
(2640, 'Hindi', 'Purchase Date', 'Purchase Date'),
(2641, 'Hindi', 'Expire Date', 'Expire Date'),
(2642, 'Hindi', 'Confirmed Request', 'Confirmed Request'),
(2643, 'Hindi', 'Payment For', 'Payment For'),
(2644, 'Hindi', 'Payment Document', 'Payment Document'),
(2645, 'Hindi', 'Approve', 'Approve'),
(2646, 'Hindi', 'Manage Addons', 'Manage Addons'),
(2647, 'Hindi', 'Install addon', 'Install addon'),
(2648, 'Hindi', 'Add new addon', 'Add new addon'),
(2649, 'Hindi', 'System Name', 'System Name'),
(2650, 'Hindi', 'System Title', 'System Title'),
(2651, 'Hindi', 'System Email', 'System Email'),
(2652, 'Hindi', 'Fax', 'Fax'),
(2653, 'Hindi', 'Timezone', 'Timezone'),
(2654, 'Hindi', 'Footer Text', 'Footer Text'),
(2655, 'Hindi', 'Footer Link', 'Footer Link'),
(2656, 'Hindi', 'PRODUCT UPDATE', 'PRODUCT UPDATE'),
(2657, 'Hindi', 'File', 'File'),
(2658, 'Hindi', 'Update', 'Update'),
(2659, 'Hindi', 'SYSTEM LOGO', 'SYSTEM LOGO'),
(2660, 'Hindi', 'Dark logo', 'Dark logo'),
(2661, 'Hindi', 'Light logo', 'Light logo'),
(2662, 'Hindi', 'Favicon', 'Favicon'),
(2663, 'Hindi', 'Update Logo', 'Update Logo'),
(2664, 'Hindi', 'Create Session', 'Create Session'),
(2665, 'Hindi', 'Add Session', 'Add Session'),
(2666, 'Hindi', 'Active session ', 'Active session '),
(2667, 'Hindi', 'Select a session', 'Select a session'),
(2668, 'Hindi', 'Activate', 'Activate'),
(2669, 'Hindi', 'Session title', 'Session title'),
(2670, 'Hindi', 'Options', 'Options'),
(2671, 'Hindi', 'Edit Session', 'Edit Session'),
(2672, 'Hindi', 'Global Currency', 'Global Currency'),
(2673, 'Hindi', 'Select system currency', 'Select system currency'),
(2674, 'Hindi', 'Currency Position', 'Currency Position'),
(2675, 'Hindi', 'Left', 'Left'),
(2676, 'Hindi', 'Right', 'Right'),
(2677, 'Hindi', 'Left with a space', 'Left with a space'),
(2678, 'Hindi', 'Right with a space', 'Right with a space'),
(2679, 'Hindi', 'Update Currency', 'Update Currency'),
(2680, 'Hindi', 'Protocol', 'Protocol'),
(2681, 'Hindi', 'Smtp crypto', 'Smtp crypto'),
(2682, 'Hindi', 'Smtp host', 'Smtp host'),
(2683, 'Hindi', 'Smtp port', 'Smtp port'),
(2684, 'Hindi', 'Smtp username', 'Smtp username'),
(2685, 'Hindi', 'Smtp password', 'Smtp password'),
(2686, 'Hindi', 'Save', 'Save'),
(2687, 'Hindi', 'Not found', 'Not found'),
(2688, 'Hindi', 'About this application', 'About this application'),
(2689, 'Hindi', 'Software version', 'Software version'),
(2690, 'Hindi', 'Check update', 'Check update'),
(2691, 'Hindi', 'PHP version', 'PHP version'),
(2692, 'Hindi', 'Curl enable', 'Curl enable'),
(2693, 'Hindi', 'Enabled', 'Enabled'),
(2694, 'Hindi', 'Purchase code', 'Purchase code'),
(2695, 'Hindi', 'Product license', 'Product license'),
(2696, 'Hindi', 'invalid', 'invalid'),
(2697, 'Hindi', 'Enter valid purchase code', 'Enter valid purchase code'),
(2698, 'Hindi', 'Customer support status', 'Customer support status'),
(2699, 'Hindi', 'Support expiry date', 'Support expiry date'),
(2700, 'Hindi', 'Customer name', 'Customer name'),
(2701, 'Hindi', 'Get customer support', 'Get customer support'),
(2702, 'Hindi', 'Customer support', 'Customer support'),
(2703, 'Hindi', 'Email', 'Email'),
(2704, 'Hindi', 'Password', 'Password'),
(2705, 'Hindi', 'Forgot password', 'Forgot password'),
(2706, 'Hindi', 'Help', 'Help'),
(2707, 'Hindi', 'Login', 'Login'),
(2708, 'Hindi', 'Total Student', 'Total Student'),
(2709, 'Hindi', 'Teacher', 'Teacher'),
(2710, 'Hindi', 'Total Teacher', 'Total Teacher'),
(2711, 'Hindi', 'Parents', 'Parents'),
(2712, 'Hindi', 'Total Parent', 'Total Parent'),
(2713, 'Hindi', 'Staff', 'Staff'),
(2714, 'Hindi', 'Total Staff', 'Total Staff'),
(2715, 'Hindi', 'Todays Attendance', 'Todays Attendance'),
(2716, 'Hindi', 'Go to Attendance', 'Go to Attendance'),
(2717, 'Hindi', 'Income Report', 'Income Report'),
(2718, 'Hindi', 'Year', 'Year'),
(2719, 'Hindi', 'Month', 'Month'),
(2720, 'Hindi', 'Week', 'Week'),
(2721, 'Hindi', 'Upcoming Events', 'Upcoming Events'),
(2722, 'Hindi', 'See all', 'See all'),
(2723, 'Hindi', 'Admin', 'Admin'),
(2724, 'Hindi', 'Users', 'Users'),
(2725, 'Hindi', 'Accountant', 'Accountant'),
(2726, 'Hindi', 'Librarian', 'Librarian'),
(2727, 'Hindi', 'Parent', 'Parent'),
(2728, 'Hindi', 'Student', 'Student'),
(2729, 'Hindi', 'Teacher Permission', 'Teacher Permission'),
(2730, 'Hindi', 'Admissions', 'Admissions'),
(2731, 'Hindi', 'Examination', 'Examination'),
(2732, 'Hindi', 'Exam Category', 'Exam Category'),
(2733, 'Hindi', 'Offline Exam', 'Offline Exam'),
(2734, 'Hindi', 'Marks', 'Marks'),
(2735, 'Hindi', 'Grades', 'Grades'),
(2736, 'Hindi', 'Promotion', 'Promotion'),
(2737, 'Hindi', 'Academic', 'Academic'),
(2738, 'Hindi', 'Daily Attendance', 'Daily Attendance'),
(2739, 'Hindi', 'Class List', 'Class List'),
(2740, 'Hindi', 'Class Routine', 'Class Routine'),
(2741, 'Hindi', 'Subjects', 'Subjects'),
(2742, 'Hindi', 'Gradebooks', 'Gradebooks'),
(2743, 'Hindi', 'Syllabus', 'Syllabus'),
(2744, 'Hindi', 'Class Room', 'Class Room'),
(2745, 'Hindi', 'Department', 'Department'),
(2746, 'Hindi', 'Accounting', 'Accounting'),
(2747, 'Hindi', 'Student Fee Manager', 'Student Fee Manager'),
(2748, 'Hindi', 'Offline Payment Request', 'Offline Payment Request'),
(2749, 'Hindi', 'Expense Manager', 'Expense Manager'),
(2750, 'Hindi', 'Expense Category', 'Expense Category'),
(2751, 'Hindi', 'Back Office', 'Back Office'),
(2752, 'Hindi', 'Book List Manager', 'Book List Manager'),
(2753, 'Hindi', 'Book Issue Report', 'Book Issue Report'),
(2754, 'Hindi', 'Noticeboard', 'Noticeboard'),
(2755, 'Hindi', 'Events', 'Events'),
(2756, 'Hindi', 'School Settings', 'School Settings'),
(2757, 'Hindi', 'School information', 'School information'),
(2758, 'Hindi', 'Update settings', 'Update settings'),
(2759, 'Hindi', 'Deactive', 'Deactive'),
(2760, 'Hindi', 'Session has been activated', 'Session has been activated'),
(2761, 'Hindi', 'Update session', 'Update session'),
(2762, 'Hindi', 'Admins', 'Admins'),
(2763, 'Hindi', 'Create Admin', 'Create Admin'),
(2764, 'Hindi', 'User Info', 'User Info'),
(2765, 'Hindi', 'Oprions', 'Oprions'),
(2766, 'Hindi', 'Edit Admin', 'Edit Admin'),
(2767, 'Hindi', 'Teachers', 'Teachers'),
(2768, 'Hindi', 'Create Teacher', 'Create Teacher'),
(2769, 'Hindi', 'Create Accountant', 'Create Accountant'),
(2770, 'Hindi', 'Edit Accountant', 'Edit Accountant'),
(2771, 'Hindi', 'Librarians', 'Librarians'),
(2772, 'Hindi', 'Create Librarian', 'Create Librarian'),
(2773, 'Hindi', 'Edit Librarian', 'Edit Librarian'),
(2774, 'Hindi', 'Create Parent', 'Create Parent'),
(2775, 'Hindi', 'Edit Parent', 'Edit Parent'),
(2776, 'Hindi', 'Students', 'Students'),
(2777, 'Hindi', 'Create Student', 'Create Student'),
(2778, 'Hindi', 'Generate id card', 'Generate id card'),
(2779, 'Hindi', 'Assigned Permission For Teacher', 'Assigned Permission For Teacher'),
(2780, 'Hindi', 'Select a class', 'Select a class'),
(2781, 'Hindi', 'First select a class', 'First select a class'),
(2782, 'Hindi', 'Please select a class and section', 'Please select a class and section'),
(2783, 'Hindi', 'Attendance', 'Attendance'),
(2784, 'Hindi', 'Permission updated successfully.', 'Permission updated successfully.'),
(2785, 'Hindi', 'Admission', 'Admission'),
(2786, 'Hindi', 'Bulk student admission', 'Bulk student admission'),
(2787, 'Hindi', 'Class', 'Class'),
(2788, 'Hindi', 'Section', 'Section'),
(2789, 'Hindi', 'Select section', 'Select section'),
(2790, 'Hindi', 'Birthday', 'Birthday'),
(2791, 'Hindi', 'Select gender', 'Select gender'),
(2792, 'Hindi', 'Others', 'Others'),
(2793, 'Hindi', 'Student profile image', 'Student profile image'),
(2794, 'Hindi', 'Add Student', 'Add Student'),
(2795, 'Hindi', 'Create Exam Category', 'Create Exam Category'),
(2796, 'Hindi', 'Add Exam Category', 'Add Exam Category'),
(2797, 'Hindi', 'Title', 'Title'),
(2798, 'Hindi', 'Class test', 'Class test'),
(2799, 'Hindi', 'Edit Exam Category', 'Edit Exam Category'),
(2800, 'Hindi', 'Midterm exam', 'Midterm exam'),
(2801, 'Hindi', 'Final exam', 'Final exam'),
(2802, 'Hindi', 'Admission exam', 'Admission exam'),
(2803, 'Hindi', 'Create Exam', 'Create Exam'),
(2804, 'Hindi', 'Add Exam', 'Add Exam'),
(2805, 'Hindi', 'Exam', 'Exam'),
(2806, 'Hindi', 'Starting Time', 'Starting Time'),
(2807, 'Hindi', 'Ending Time', 'Ending Time'),
(2808, 'Hindi', 'Total Marks', 'Total Marks'),
(2809, 'Hindi', 'Edit Exam', 'Edit Exam'),
(2810, 'Hindi', 'Manage Marks', 'Manage Marks'),
(2811, 'Hindi', 'Select category', 'Select category'),
(2812, 'Hindi', 'Select class', 'Select class'),
(2813, 'Hindi', 'Please select all the fields', 'Please select all the fields'),
(2814, 'Hindi', 'Examknation', 'Examknation'),
(2815, 'Hindi', 'Create Grade', 'Create Grade'),
(2816, 'Hindi', 'Add grade', 'Add grade'),
(2817, 'Hindi', 'Grade', 'Grade'),
(2818, 'Hindi', 'Grade Point', 'Grade Point'),
(2819, 'Hindi', 'Mark From', 'Mark From'),
(2820, 'Hindi', 'Mark Upto', 'Mark Upto'),
(2821, 'Hindi', 'Promotions', 'Promotions'),
(2822, 'Hindi', 'Current session', 'Current session'),
(2823, 'Hindi', 'Session from', 'Session from'),
(2824, 'Hindi', 'Next session', 'Next session'),
(2825, 'Hindi', 'Session to', 'Session to'),
(2826, 'Hindi', 'Promoting from', 'Promoting from'),
(2827, 'Hindi', 'Promoting to', 'Promoting to'),
(2828, 'Hindi', 'Manage promotion', 'Manage promotion'),
(2829, 'Hindi', 'Take Attendance', 'Take Attendance'),
(2830, 'Hindi', 'Select a month', 'Select a month'),
(2831, 'Hindi', 'January', 'January'),
(2832, 'Hindi', 'February', 'February'),
(2833, 'Hindi', 'March', 'March'),
(2834, 'Hindi', 'April', 'April'),
(2835, 'Hindi', 'May', 'May'),
(2836, 'Hindi', 'June', 'June'),
(2837, 'Hindi', 'July', 'July'),
(2838, 'Hindi', 'August', 'August'),
(2839, 'Hindi', 'September', 'September'),
(2840, 'Hindi', 'October', 'October'),
(2841, 'Hindi', 'November', 'November'),
(2842, 'Hindi', 'December', 'December'),
(2843, 'Hindi', 'Select a year', 'Select a year'),
(2844, 'Hindi', 'Please select in all fields !', 'Please select in all fields !'),
(2845, 'Hindi', 'Classes', 'Classes'),
(2846, 'Hindi', 'Create Class', 'Create Class'),
(2847, 'Hindi', 'Add class', 'Add class'),
(2848, 'Hindi', 'Edit Section', 'Edit Section'),
(2849, 'Hindi', 'Edit Class', 'Edit Class'),
(2850, 'Hindi', 'Routines', 'Routines'),
(2851, 'Hindi', 'Add class routine', 'Add class routine'),
(2852, 'Hindi', 'Create Subject', 'Create Subject'),
(2853, 'Hindi', 'Add subject', 'Add subject'),
(2854, 'Hindi', 'Edit Subject', 'Edit Subject'),
(2855, 'Hindi', 'Select a exam category', 'Select a exam category'),
(2856, 'Hindi', 'Create syllabus', 'Create syllabus'),
(2857, 'Hindi', 'Add syllabus', 'Add syllabus'),
(2858, 'Hindi', 'Class Rooms', 'Class Rooms'),
(2859, 'Hindi', 'Create Class Room', 'Create Class Room'),
(2860, 'Hindi', 'Add class room', 'Add class room');
INSERT INTO `language` (`id`, `name`, `phrase`, `translated`) VALUES
(2861, 'Hindi', 'Edit Class Room', 'Edit Class Room'),
(2862, 'Hindi', 'Departments', 'Departments'),
(2863, 'Hindi', 'Create Department', 'Create Department'),
(2864, 'Hindi', 'Add department', 'Add department'),
(2865, 'Hindi', 'Edit Department', 'Edit Department'),
(2866, 'Hindi', 'Add Single Invoice', 'Add Single Invoice'),
(2867, 'Hindi', 'Add Mass Invoice', 'Add Mass Invoice'),
(2868, 'Hindi', 'All class', 'All class'),
(2869, 'Hindi', 'All status', 'All status'),
(2870, 'Hindi', 'Paid', 'Paid'),
(2871, 'Hindi', 'Unpaid', 'Unpaid'),
(2872, 'Hindi', 'Invoice No', 'Invoice No'),
(2873, 'Hindi', 'Invoice Title', 'Invoice Title'),
(2874, 'Hindi', 'Total Amount', 'Total Amount'),
(2875, 'Hindi', 'Created at', 'Created at'),
(2876, 'Hindi', 'Paid Amount', 'Paid Amount'),
(2877, 'Hindi', 'Expense', 'Expense'),
(2878, 'Hindi', 'Create Expense', 'Create Expense'),
(2879, 'Hindi', 'Add New Expense', 'Add New Expense'),
(2880, 'Hindi', 'Create Expense Category', 'Create Expense Category'),
(2881, 'Hindi', 'Add Expense Category', 'Add Expense Category'),
(2882, 'Hindi', 'Option', 'Option'),
(2883, 'Hindi', 'Edit Expense Category', 'Edit Expense Category'),
(2884, 'Hindi', 'Book', 'Book'),
(2885, 'Hindi', 'Add book', 'Add book'),
(2886, 'Hindi', 'Book name', 'Book name'),
(2887, 'Hindi', 'Author', 'Author'),
(2888, 'Hindi', 'Copies', 'Copies'),
(2889, 'Hindi', 'Available copies', 'Available copies'),
(2890, 'Hindi', 'Edit Book', 'Edit Book'),
(2891, 'Hindi', 'Book Issue', 'Book Issue'),
(2892, 'Hindi', 'Issue Book', 'Issue Book'),
(2893, 'Hindi', 'Noticeboard calendar', 'Noticeboard calendar'),
(2894, 'Hindi', 'Add New Notice', 'Add New Notice'),
(2895, 'Hindi', 'Locales:', 'Locales:'),
(2896, 'Hindi', 'Current Plan', 'Current Plan'),
(2897, 'Hindi', 'Silver', 'Silver'),
(2898, 'Hindi', 'Monthly', 'Monthly'),
(2899, 'Hindi', 'Subscription Renew Date', 'Subscription Renew Date'),
(2900, 'Hindi', 'Amount To Be Charged', 'Amount To Be Charged'),
(2901, 'Hindi', 'Create Event', 'Create Event'),
(2902, 'Hindi', 'Event title', 'Event title'),
(2903, 'Hindi', 'Date', 'Date'),
(2904, 'Hindi', 'Update event', 'Update event'),
(2905, 'Hindi', 'Upload addons zip file', 'Upload addons zip file'),
(2906, 'Hindi', 'Verified', 'Verified'),
(2907, 'Hindi', 'Details info', 'Details info'),
(2908, 'Hindi', 'Phone Number', 'Phone Number'),
(2909, 'Hindi', 'Designation', 'Designation'),
(2910, 'Hindi', 'Save Changes', 'Save Changes'),
(2911, 'Hindi', 'Select a status', 'Select a status'),
(2912, 'Hindi', 'Update school', 'Update school'),
(2913, 'Hindi', 'Package price', 'Package price'),
(2914, 'Hindi', 'Package Type', 'Package Type'),
(2915, 'Hindi', 'Select a package type', 'Select a package type'),
(2916, 'Hindi', 'Trail', 'Trail'),
(2917, 'Hindi', 'Select a interval', 'Select a interval'),
(2918, 'Hindi', 'Days', 'Days'),
(2919, 'Hindi', 'Yearly', 'Yearly'),
(2920, 'Hindi', 'Interval Preiod', 'Interval Preiod'),
(2921, 'Hindi', 'Description', 'Description'),
(2922, 'Hindi', 'Create package', 'Create package'),
(2923, 'Hindi', 'Update package', 'Update package'),
(2924, 'Hindi', 'Invalid purchase code', 'Invalid purchase code'),
(2925, 'Hindi', 'Inactive', 'Inactive'),
(2926, 'Hindi', 'Save event', 'Save event'),
(2927, 'Hindi', 'Create', 'Create'),
(2928, 'Hindi', 'Select a department', 'Select a department'),
(2929, 'Hindi', 'One', 'One'),
(2930, 'Hindi', 'Two', 'Two'),
(2931, 'Hindi', 'Three', 'Three'),
(2932, 'Hindi', 'Four', 'Four'),
(2933, 'Hindi', 'Five', 'Five'),
(2934, 'Hindi', 'Six', 'Six'),
(2935, 'Hindi', 'Seven', 'Seven'),
(2936, 'Hindi', 'Eight', 'Eight'),
(2937, 'Hindi', 'Nine', 'Nine'),
(2938, 'Hindi', 'Ten', 'Ten'),
(2939, 'Hindi', 'Add students', 'Add students'),
(2940, 'Hindi', 'Create category', 'Create category'),
(2941, 'Hindi', 'Exam Name', 'Exam Name'),
(2942, 'Hindi', 'Select exam category name', 'Select exam category name'),
(2943, 'Hindi', 'Subject', 'Subject'),
(2944, 'Hindi', 'Starting date', 'Starting date'),
(2945, 'Hindi', 'Ending date', 'Ending date'),
(2946, 'Hindi', 'Student name', 'Student name'),
(2947, 'Hindi', 'Mark', 'Mark'),
(2948, 'Hindi', 'Comment', 'Comment'),
(2949, 'Hindi', 'Value has been updated successfully', 'Value has been updated successfully'),
(2950, 'Hindi', 'Required mark field', 'Required mark field'),
(2951, 'Hindi', 'Image', 'Image'),
(2952, 'Hindi', 'Enroll to', 'Enroll to'),
(2953, 'Hindi', 'Select a section', 'Select a section'),
(2954, 'Hindi', 'Attendance Report Of', 'Attendance Report Of'),
(2955, 'Hindi', 'Last Update at', 'Last Update at'),
(2956, 'Hindi', 'Time', 'Time'),
(2957, 'Hindi', 'Please select the required fields', 'Please select the required fields'),
(2958, 'Hindi', 'Saturday', 'Saturday'),
(2959, 'Hindi', 'Sunday', 'Sunday'),
(2960, 'Hindi', 'Monday', 'Monday'),
(2961, 'Hindi', 'Tuesday', 'Tuesday'),
(2962, 'Hindi', 'Wednesday', 'Wednesday'),
(2963, 'Hindi', 'Update subject', 'Update subject'),
(2964, 'Hindi', 'Select subject', 'Select subject'),
(2965, 'Hindi', 'Assign a teacher', 'Assign a teacher'),
(2966, 'Hindi', 'Select a class room', 'Select a class room'),
(2967, 'Hindi', 'Day', 'Day'),
(2968, 'Hindi', 'Select a day', 'Select a day'),
(2969, 'Hindi', 'Thursday', 'Thursday'),
(2970, 'Hindi', 'Friday', 'Friday'),
(2971, 'Hindi', 'Starting hour', 'Starting hour'),
(2972, 'Hindi', 'Starting minute', 'Starting minute'),
(2973, 'Hindi', 'Ending hour', 'Ending hour'),
(2974, 'Hindi', 'Ending minute', 'Ending minute'),
(2975, 'Hindi', 'Add routine', 'Add routine'),
(2976, 'Hindi', 'Edit class routine', 'Edit class routine'),
(2977, 'Hindi', 'Tittle', 'Tittle'),
(2978, 'Hindi', 'Upload syllabus', 'Upload syllabus'),
(2979, 'Hindi', 'Select student', 'Select student'),
(2980, 'Hindi', 'Select a student', 'Select a student'),
(2981, 'Hindi', 'Payment method', 'Payment method'),
(2982, 'Hindi', 'Select a payment method', 'Select a payment method'),
(2983, 'Hindi', 'Cash', 'Cash'),
(2984, 'Hindi', 'Paypal', 'Paypal'),
(2985, 'Hindi', 'Paytm', 'Paytm'),
(2986, 'Hindi', 'Razorpay', 'Razorpay'),
(2987, 'Hindi', 'Create invoice', 'Create invoice'),
(2988, 'Hindi', 'Payment date', 'Payment date'),
(2989, 'Hindi', 'Print invoice', 'Print invoice'),
(2990, 'Hindi', 'Edit Invoice', 'Edit Invoice'),
(2991, 'Hindi', 'Amount', 'Amount'),
(2992, 'Hindi', 'Select an expense category', 'Select an expense category'),
(2993, 'Hindi', 'Edit Expense', 'Edit Expense'),
(2994, 'Hindi', 'Issue date', 'Issue date'),
(2995, 'Hindi', 'Select book', 'Select book'),
(2996, 'Hindi', 'Id', 'Id'),
(2997, 'Hindi', 'Pending', 'Pending'),
(2998, 'Hindi', 'Update issued book', 'Update issued book'),
(2999, 'Hindi', 'Return this book', 'Return this book'),
(3000, 'Hindi', 'Notice title', 'Notice title'),
(3001, 'Hindi', 'Start date', 'Start date'),
(3002, 'Hindi', 'Setup additional date & time', 'Setup additional date & time'),
(3003, 'Hindi', 'Start time', 'Start time'),
(3004, 'Hindi', 'End date', 'End date'),
(3005, 'Hindi', 'End time', 'End time'),
(3006, 'Hindi', 'Notice', 'Notice'),
(3007, 'Hindi', 'Show on website', 'Show on website'),
(3008, 'Hindi', 'Show', 'Show'),
(3009, 'Hindi', 'Do not need to show', 'Do not need to show'),
(3010, 'Hindi', 'Upload notice photo', 'Upload notice photo'),
(3011, 'Hindi', 'Save notice', 'Save notice'),
(3012, 'Hindi', 'School Currency', 'School Currency'),
(3013, 'Hindi', 'Exam List', 'Exam List'),
(3014, 'Hindi', 'Profile', 'Profile'),
(3015, 'Hindi', ' Download', ' Download'),
(3016, 'Hindi', 'Select a subject', 'Select a subject'),
(3017, 'Hindi', 'Welcome, to', 'Welcome, to'),
(3018, 'Hindi', 'Fee Manager', 'Fee Manager'),
(3019, 'Hindi', 'List Of Books', 'List Of Books'),
(3020, 'Hindi', 'Issued Book', 'Issued Book'),
(3021, 'Hindi', 'Student Code', 'Student Code'),
(3022, 'Hindi', 'Candice Kennedy', 'Candice Kennedy'),
(3023, 'Hindi', 'English', 'English'),
(3024, 'Hindi', 'Natalie Ashley', 'Natalie Ashley'),
(3025, 'Hindi', 'Byron Chase', 'Byron Chase'),
(3026, 'Hindi', 'Rafael Hardy', 'Rafael Hardy'),
(3027, 'Hindi', 'Mathematics', 'Mathematics'),
(3028, 'Hindi', 'Aphrodite Shaffer', 'Aphrodite Shaffer'),
(3029, 'Hindi', 'Bangla', 'Bangla'),
(3030, 'Hindi', 'Fatima Phillips', 'Fatima Phillips'),
(3031, 'Hindi', 'Sydney Pearson', 'Sydney Pearson'),
(3032, 'Hindi', 'Drawing', 'Drawing'),
(3033, 'Hindi', 'Imani Cooper', 'Imani Cooper'),
(3034, 'Hindi', 'Ulric Spencer', 'Ulric Spencer'),
(3035, 'Hindi', 'Yoshio Gentry', 'Yoshio Gentry'),
(3036, 'Hindi', 'Attendance report', 'Attendance report'),
(3037, 'Hindi', 'Of', 'Of'),
(3038, 'Hindi', 'Last updated at', 'Last updated at'),
(3039, 'Hindi', 'View Marks', 'View Marks'),
(3040, 'Hindi', 'Subject name', 'Subject name'),
(3041, 'Hindi', 'Pay', 'Pay'),
(3042, 'Hindi', 'List Of Book', 'List Of Book'),
(3043, 'Hindi', 'Child', 'Child'),
(3044, 'Hindi', 'Teaches', 'Teaches'),
(3045, 'Hindi', 'Student List', 'Student List'),
(3046, 'Hindi', 'Id card', 'Id card'),
(3047, 'Hindi', 'Code', 'Code'),
(3048, 'Hindi', 'Not found', 'Not found'),
(3049, 'Hindi', 'Contact', 'Contact'),
(3050, 'Hindi', 'Search Attendance Report', 'Search Attendance Report'),
(3051, 'Hindi', 'Please select in all fields !', 'Please select in all fields !'),
(3052, 'Hindi', 'Please select student', 'Please select student'),
(3053, 'Hindi', 'Download', 'Download'),
(3054, 'Hindi', 'Ekattor', 'Ekattor'),
(3055, 'Hindi', 'Add  Single Invoice', 'Add  Single Invoice'),
(3056, 'Hindi', 'Add  Mass Invoice', 'Add  Mass Invoice'),
(3057, 'Hindi', 'Update invoice', 'Update invoice'),
(3058, 'Hindi', 'Invoice', 'Invoice'),
(3059, 'Hindi', 'Please find below the invoice', 'Please find below the invoice'),
(3060, 'Hindi', 'Billing Address', 'Billing Address'),
(3061, 'Hindi', 'Due Amount', 'Due Amount'),
(3062, 'Hindi', 'Student Fee', 'Student Fee'),
(3063, 'Hindi', 'Subtotal', 'Subtotal'),
(3064, 'Hindi', 'Due', 'Due'),
(3065, 'Hindi', 'Grand Total', 'Grand Total'),
(3066, 'Hindi', 'Update book issue information', 'Update book issue information'),
(3067, 'Hindi', 'Not Subscribed', 'Not Subscribed'),
(3068, 'Hindi', 'You are not subscribed to any plan. Subscribe now.', 'You are not subscribed to any plan. Subscribe now.'),
(3069, 'Hindi', 'Subscribe', 'Subscribe'),
(3070, 'Hindi', 'Package List', 'Package List'),
(3071, 'Hindi', 'Payment | Ekator 8', 'Payment | Ekator 8'),
(3072, 'Hindi', 'Make Payment', 'Make Payment'),
(3073, 'Hindi', 'Payment Gateway', 'Payment Gateway'),
(3074, 'Hindi', 'Offline', 'Offline'),
(3075, 'Hindi', 'Addon', 'Addon'),
(3076, 'Hindi', 'Invoice Summary', 'Invoice Summary'),
(3077, 'Hindi', 'Document of your payment', 'Document of your payment'),
(3078, 'Hindi', 'Submit payment document', 'Submit payment document'),
(3079, 'Hindi', 'Instruction', 'Instruction'),
(3080, 'Hindi', 'Admin will review your payment document and then approve the Payment.', 'Admin will review your payment document and then approve the Payment.'),
(3081, 'Hindi', 'Pending Payment', 'Pending Payment'),
(3082, 'Hindi', 'You payment request has been sent to Superadmin ', 'You payment request has been sent to Superadmin '),
(3083, 'Hindi', 'Suspended', 'Suspended'),
(3084, 'Hindi', 'Enter your email address to reset your password.', 'Enter your email address to reset your password.'),
(3085, 'Hindi', 'Reset password', 'Reset password'),
(3086, 'Hindi', 'Language Settings', 'Language Settings'),
(3087, 'Hindi', 'Language', 'Language'),
(3088, 'Hindi', 'Edit phrase', 'Edit phrase'),
(3089, 'Hindi', 'Delete language', 'Delete language'),
(3090, 'Hindi', 'edit_phrase', 'edit_phrase'),
(3091, 'Hindi', 'delete_language', 'delete_language'),
(3092, 'Hindi', 'System default language can not be removed', 'System default language can not be removed'),
(3093, 'Hindi', 'language_list', 'language_list'),
(3094, 'Hindi', 'add_language', 'add_language'),
(3095, 'Hindi', 'Language list', 'Language list'),
(3096, 'Hindi', 'Add language', 'Add language'),
(3097, 'Hindi', 'Add new phrase', 'Add new phrase'),
(3098, 'Hindi', 'add_new_language', 'add_new_language'),
(3099, 'Hindi', 'No special character or space is allowed', 'No special character or space is allowed'),
(3100, 'Hindi', 'valid_examples', 'valid_examples'),
(3101, 'Hindi', 'No special character or space is allowed', 'No special character or space is allowed'),
(3102, 'Hindi', 'Validexamples', 'Validexamples'),
(3103, 'Hindi', 'Add new language', 'Add new language'),
(3104, 'Hindi', 'Valid examples', 'Valid examples'),
(3105, 'Hindi', 'Phrase updated', 'Phrase updated'),
(3106, 'Hindi', 'System Language', 'System Language'),
(3107, 'Hindi', 'Edit Grade', 'Edit Grade'),
(3108, 'Hindi', 'Number of scopy', 'Number of scopy'),
(3109, 'Hindi', 'Save book', 'Save book'),
(3110, 'Hindi', 'New Password', 'New Password'),
(3111, 'Hindi', 'Confirm Password', 'Confirm Password'),
(3112, 'Hindi', 'Current Password', 'Current Password'),
(3113, 'Hindi', 'Add Parent', 'Add Parent'),
(3114, 'Hindi', 'Parent profile image', 'Parent profile image'),
(3115, 'Hindi', 'Allowances', 'Allowances'),
(3116, 'Hindi', 'Type', 'Type'),
(3117, 'Hindi', 'Select child', 'Select child'),
(3118, 'Hindi', 'Show student list', 'Show student list'),
(3119, 'Hindi', 'Update attendance', 'Update attendance'),
(3120, 'Hindi', 'Present All', 'Present All'),
(3121, 'Hindi', 'Absent All', 'Absent All'),
(3122, 'Hindi', 'present', 'present'),
(3123, 'Hindi', 'absent', 'absent'),
(3124, 'Hindi', 'not_updated_yet', 'not_updated_yet'),
(3125, 'Hindi', '31', '31'),
(3126, 'Hindi', 'Not updated yet', 'Not updated yet'),
(3127, 'Hindi', 'Update class', 'Update class'),
(3128, 'Hindi', 'Edit syllabus', 'Edit syllabus'),
(3129, 'Hindi', 'Select expense category', 'Select expense category'),
(3130, 'Hindi', 'Filter Options', 'Filter Options'),
(3131, 'Hindi', 'Reset', 'Reset'),
(3132, 'Hindi', 'Apply', 'Apply'),
(3133, 'Hindi', 'Profile info updated successfully', 'Profile info updated successfully'),
(3134, 'Hindi', 'not_found', 'not_found'),
(3135, 'Hindi', 'No date found', 'No date found'),
(3136, 'Hindi', 'No date found', 'No date found'),
(3137, 'Hindi', 'Blood ', 'Blood '),
(3138, 'Hindi', 'Blood Type', 'Blood Type'),
(3139, 'Hindi', 'Help Link', 'Help Link'),
(3140, 'Hindi', 'From', 'From'),
(3141, 'Hindi', 'To', 'To'),
(3142, 'Hindi', 'Select a parent', 'Select a parent'),
(3143, 'Hindi', 'Add', 'Add'),
(3144, 'Hindi', 'Document', 'Document'),
(3145, 'Hindi', 'Decline', 'Decline'),
(3146, 'Hindi', 'Number of child:', 'Number of child:'),
(3147, 'Hindi', 'Number of child', 'Number of child'),
(3148, 'Hindi', 'Parent Create', 'Parent Create'),
(3149, 'Hindi', 'Parent Update', 'Parent Update'),
(3150, 'Hindi', 'Version updated successfully', 'Version updated successfully'),
(3151, 'Hindi', 'Website Settings', 'Website Settings'),
(3152, 'Hindi', 'Manage Faq', 'Manage Faq'),
(3153, 'Hindi', 'Visit Website', 'Visit Website'),
(3154, 'Hindi', 'Feature', 'Feature'),
(3155, 'Hindi', 'Faq', 'Faq'),
(3156, 'Hindi', 'School Register Form', 'School Register Form'),
(3157, 'Hindi', 'Admin Name', 'Admin Name'),
(3158, 'Hindi', 'User Account', 'User Account'),
(3159, 'Hindi', 'Our Features', 'Our Features'),
(3160, 'Hindi', 'Features', 'Features'),
(3161, 'Hindi', 'Students Admission', 'Students Admission'),
(3162, 'Hindi', 'Your schools can add their students in two different ways', 'Your schools can add their students in two different ways'),
(3163, 'Hindi', 'Take your students attendance in a smart way', 'Take your students attendance in a smart way'),
(3164, 'Hindi', 'Manage your schools class list whenever you want', 'Manage your schools class list whenever you want'),
(3165, 'Hindi', 'Add different subjects for different classes', 'Add different subjects for different classes'),
(3166, 'Hindi', 'Event Calender', 'Event Calender'),
(3167, 'Hindi', 'The school admin can manage their schools events separately', 'The school admin can manage their schools events separately'),
(3168, 'Hindi', 'Routine', 'Routine'),
(3169, 'Hindi', 'Manage your schools class routine easily', 'Manage your schools class routine easily'),
(3170, 'Hindi', 'Student Information', 'Student Information'),
(3171, 'Hindi', 'Add your students information within a few minute', 'Add your students information within a few minute'),
(3172, 'Hindi', 'Manage syllabuses based on the classes', 'Manage syllabuses based on the classes'),
(3173, 'Hindi', 'Fees Management', 'Fees Management'),
(3174, 'Hindi', 'Pay academic fees in a smart way with Ekattor 8', 'Pay academic fees in a smart way with Ekattor 8'),
(3175, 'Hindi', 'ID Card Generator', 'ID Card Generator'),
(3176, 'Hindi', 'Generate your students ID card whenever you want', 'Generate your students ID card whenever you want'),
(3177, 'Hindi', 'Online Payment Gateway', 'Online Payment Gateway'),
(3178, 'Hindi', 'Pay your subscription and academic fees', 'Pay your subscription and academic fees'),
(3179, 'Hindi', 'Invoice Generator', 'Invoice Generator'),
(3180, 'Hindi', 'Generate invoices to make the payments more reliable', 'Generate invoices to make the payments more reliable'),
(3181, 'Hindi', 'Offline Payment', 'Offline Payment'),
(3182, 'Hindi', 'Complete payment with local money', 'Complete payment with local money'),
(3183, 'Hindi', 'Book List', 'Book List'),
(3184, 'Hindi', 'Manage your schools library within a few clicks', 'Manage your schools library within a few clicks'),
(3185, 'Hindi', 'Manage your schools notices smartly', 'Manage your schools notices smartly'),
(3186, 'Hindi', 'Create and manage your schools exams and categories', 'Create and manage your schools exams and categories'),
(3187, 'Hindi', 'Marks Management', 'Marks Management'),
(3188, 'Hindi', 'Manage your students exam marks', 'Manage your students exam marks'),
(3189, 'Hindi', 'Add and manage grades in the examination', 'Add and manage grades in the examination'),
(3190, 'Hindi', 'Have Any Question', 'Have Any Question'),
(3191, 'Hindi', 'Contact us with any questions', 'Contact us with any questions'),
(3192, 'Hindi', 'Contact Us', 'Contact Us'),
(3193, 'Hindi', 'Social Link', 'Social Link'),
(3194, 'Hindi', 'Ekattor8 School Management System', 'Ekattor8 School Management System'),
(3195, 'Hindi', 'Register', 'Register'),
(3196, 'Hindi', 'Frontend View', 'Frontend View'),
(3197, 'Hindi', 'No', 'No'),
(3198, 'Hindi', 'Youtube Api Key', 'Youtube Api Key'),
(3199, 'Hindi', 'Vimeo Api Key', 'Vimeo Api Key'),
(3200, 'Hindi', 'Has to be bigger than', 'Has to be bigger than'),
(3201, 'Hindi', 'GENERAL SETTINGS', 'GENERAL SETTINGS'),
(3202, 'Hindi', 'Banner Title', 'Banner Title'),
(3203, 'Hindi', 'Banner Subtitle', 'Banner Subtitle'),
(3204, 'Hindi', 'Price Subtitle', 'Price Subtitle'),
(3205, 'Hindi', 'Faq Subtitle', 'Faq Subtitle'),
(3206, 'Hindi', 'Facebook Link', 'Facebook Link'),
(3207, 'Hindi', 'Twitter Link', 'Twitter Link'),
(3208, 'Hindi', 'Linkedin Link', 'Linkedin Link'),
(3209, 'Hindi', 'Instagram Link', 'Instagram Link'),
(3210, 'Hindi', 'Contact Mail', 'Contact Mail'),
(3211, 'Hindi', 'Frontend Footer Text', 'Frontend Footer Text'),
(3212, 'Hindi', 'Copyright Text', 'Copyright Text'),
(3213, 'Hindi', 'Add question and answer', 'Add question and answer'),
(3214, 'Hindi', 'Faq List', 'Faq List'),
(3215, 'Hindi', 'Update question and answer', 'Update question and answer'),
(3216, 'Hindi', 'Excel upload', 'Excel upload'),
(3217, 'Hindi', '', ''),
(3218, 'Hindi', 'It looks like you are skipping a version', 'It looks like you are skipping a version'),
(3219, 'Hindi', 'Please update version', 'Please update version'),
(3220, 'Hindi', 'first', 'first'),
(3221, 'Hindi', 'Email Address', 'Email Address'),
(3222, 'Hindi', 'Toggle navigation', 'Toggle navigation'),
(3223, 'Hindi', 'Archive ', 'Archive '),
(3224, 'Hindi', 'Administrator', 'Administrator'),
(3225, 'Hindi', 'Showing', 'Showing'),
(3226, 'Hindi', 'data', 'data'),
(3227, 'Hindi', 'Select a valid zip file', 'Select a valid zip file'),
(3228, 'Hindi', 'Class & Section', 'Class & Section'),
(3229, 'Hindi', 'Stripe', 'Stripe'),
(3230, 'Hindi', 'Flutterwave', 'Flutterwave'),
(3231, 'Hindi', 'Purchase code verification failed', 'Purchase code verification failed'),
(3232, 'Hindi', 'Addon updated successfully', 'Addon updated successfully'),
(3233, 'Hindi', 'Bundle name', 'Bundle name'),
(3234, 'Hindi', 'Version', 'Version'),
(3235, 'Hindi', 'Navbar Title', 'Navbar Title'),
(3236, 'Hindi', 'Nav Bar Logo', 'Nav Bar Logo'),
(3237, 'Hindi', 'Email Template Settings', 'Email Template Settings'),
(3238, 'Hindi', 'Email Title', 'Email Title'),
(3239, 'Hindi', 'Email Details', 'Email Details'),
(3240, 'Hindi', 'Remaining characters is', 'Remaining characters is'),
(3241, 'Hindi', 'Warning Text', 'Warning Text'),
(3242, 'Hindi', 'Email logo', 'Email logo'),
(3243, 'Hindi', 'Social logo-1', 'Social logo-1'),
(3244, 'Hindi', 'Social logo-2', 'Social logo-2'),
(3245, 'Hindi', 'Social logo-3', 'Social logo-3'),
(3246, 'Hindi', 'Images for email templates will only support if the application is hosted on a live server. Localhost will not support this.', 'Images for email templates will only support if the application is hosted on a live server. Localhost will not support this.'),
(3247, 'english', 'Expense category name', 'Expense category name'),
(3248, 'Hindi', 'Expense category name', 'Expense category name'),
(3249, 'english', 'Save category', 'Save category'),
(3250, 'Hindi', 'Save category', 'Save category'),
(3251, 'english', 'Total Students', 'Total Students'),
(3252, 'Hindi', 'Total Students', 'Total Students'),
(3253, 'english', 'Present Students', 'Present Students'),
(3254, 'Hindi', 'Present Students', 'Present Students'),
(3255, 'english', 'School', 'School'),
(3256, 'Hindi', 'School', 'School'),
(3257, 'english', 'Instructor', 'Instructor'),
(3258, 'Hindi', 'Instructor', 'Instructor'),
(3259, 'english', 'Content Delivered', 'Content Delivered'),
(3260, 'Hindi', 'Content Delivered', 'Content Delivered'),
(3261, 'english', 'Present Student', 'Present Student'),
(3262, 'Hindi', 'Present Student', 'Present Student'),
(3263, 'english', 'Activity', 'Activity'),
(3264, 'Hindi', 'Activity', 'Activity'),
(3265, 'english', 'Class Start Time', 'Class Start Time'),
(3266, 'Hindi', 'Class Start Time', 'Class Start Time'),
(3267, 'english', 'Class End Time', 'Class End Time'),
(3268, 'Hindi', 'Class End Time', 'Class End Time'),
(3269, 'english', 'Video URL', 'Video URL'),
(3270, 'Hindi', 'Video URL', 'Video URL'),
(3271, 'english', 'Add Report', 'Add Report'),
(3272, 'Hindi', 'Add Report', 'Add Report'),
(3273, 'english', 'Reporting', 'Reporting'),
(3274, 'Hindi', 'Reporting', 'Reporting'),
(3275, 'english', 'Reporting List', 'Reporting List'),
(3276, 'Hindi', 'Reporting List', 'Reporting List'),
(3277, 'english', 'Update Report', 'Update Report'),
(3278, 'Hindi', 'Update Report', 'Update Report'),
(3279, 'english', 'Report', 'Report'),
(3280, 'Hindi', 'Report', 'Report'),
(3281, 'english', 'Report List', 'Report List'),
(3282, 'Hindi', 'Report List', 'Report List'),
(3283, 'english', 'Media', 'Media'),
(3284, 'Hindi', 'Media', 'Media'),
(3285, 'english', 'Total', 'Total'),
(3286, 'Hindi', 'Total', 'Total'),
(3287, 'english', 'Today Present', 'Today Present'),
(3288, 'Hindi', 'Today Present', 'Today Present'),
(3289, 'english', 'Students Info', 'Students Info'),
(3290, 'Hindi', 'Students Info', 'Students Info'),
(3291, 'english', 'Activitu', 'Activitu'),
(3292, 'Hindi', 'Activitu', 'Activitu'),
(3293, 'english', 'Content', 'Content'),
(3294, 'Hindi', 'Content', 'Content'),
(3295, 'english', 'Class Time', 'Class Time'),
(3296, 'Hindi', 'Class Time', 'Class Time'),
(3297, 'english', 'Create Report', 'Create Report'),
(3298, 'Hindi', 'Create Report', 'Create Report'),
(3299, 'english', 'Reports', 'Reports'),
(3300, 'Hindi', 'Reports', 'Reports'),
(3301, 'english', 'Academicss', 'Academicss'),
(3302, 'Hindi', 'Academicss', 'Academicss'),
(3303, 'english', 'Daily Reporting', 'Daily Reporting'),
(3304, 'Hindi', 'Daily Reporting', 'Daily Reporting'),
(3305, 'english', 'Submit Report', 'Submit Report'),
(3306, 'Hindi', 'Submit Report', 'Submit Report'),
(3307, 'english', 'Submitted Reports', 'Submitted Reports'),
(3308, 'Hindi', 'Submitted Reports', 'Submitted Reports'),
(3309, 'english', 'Report History', 'Report History'),
(3310, 'Hindi', 'Report History', 'Report History'),
(3311, 'english', 'Generate Report', 'Generate Report'),
(3312, 'Hindi', 'Generate Report', 'Generate Report'),
(3313, 'english', 'Curriculum', 'Curriculum'),
(3314, 'Hindi', 'Curriculum', 'Curriculum'),
(3315, 'english', 'STEAM List', 'STEAM List'),
(3316, 'Hindi', 'STEAM List', 'STEAM List'),
(3317, 'english', 'Create STEAM', 'Create STEAM'),
(3318, 'Hindi', 'Create STEAM', 'Create STEAM'),
(3319, 'english', 'Edit STEAM', 'Edit STEAM'),
(3320, 'Hindi', 'Edit STEAM', 'Edit STEAM'),
(3321, 'english', 'Update STEAM', 'Update STEAM'),
(3322, 'Hindi', 'Update STEAM', 'Update STEAM'),
(3323, 'english', 'Create sd', 'Create sd'),
(3324, 'Hindi', 'Create sd', 'Create sd'),
(3325, 'english', 'STEAM Subjects', 'STEAM Subjects'),
(3326, 'Hindi', 'STEAM Subjects', 'STEAM Subjects'),
(3327, 'english', 'STEAM', 'STEAM'),
(3328, 'Hindi', 'STEAM', 'STEAM'),
(3329, 'english', 'Create STEAM Subject', 'Create STEAM Subject'),
(3330, 'Hindi', 'Create STEAM Subject', 'Create STEAM Subject'),
(3331, 'english', 'Select a STEAM', 'Select a STEAM'),
(3332, 'Hindi', 'Select a STEAM', 'Select a STEAM'),
(3333, 'english', 'Edit STEAM Subject', 'Edit STEAM Subject'),
(3334, 'Hindi', 'Edit STEAM Subject', 'Edit STEAM Subject'),
(3335, 'english', 'Settingss', 'Settingss'),
(3336, 'Hindi', 'Settingss', 'Settingss'),
(3337, 'english', 'STEAMs', 'STEAMs'),
(3338, 'Hindi', 'STEAMs', 'STEAMs'),
(3339, 'english', 'Topics ', 'Topics '),
(3340, 'Hindi', 'Topics ', 'Topics '),
(3341, 'english', 'Chapters', 'Chapters'),
(3342, 'Hindi', 'Chapters', 'Chapters'),
(3343, 'english', 'STEAM Topics', 'STEAM Topics'),
(3344, 'Hindi', 'STEAM Topics', 'STEAM Topics'),
(3345, 'english', 'Topic', 'Topic'),
(3346, 'Hindi', 'Topic', 'Topic'),
(3347, 'english', 'Create STEAM Topic', 'Create STEAM Topic'),
(3348, 'Hindi', 'Create STEAM Topic', 'Create STEAM Topic'),
(3349, 'english', 'STEAM Subject', 'STEAM Subject'),
(3350, 'Hindi', 'STEAM Subject', 'STEAM Subject'),
(3351, 'english', 'First select a STEAM', 'First select a STEAM'),
(3352, 'Hindi', 'First select a STEAM', 'First select a STEAM'),
(3353, 'english', 'Create Topic', 'Create Topic'),
(3354, 'Hindi', 'Create Topic', 'Create Topic'),
(3355, 'english', 'Edit STEAM Topic', 'Edit STEAM Topic'),
(3356, 'Hindi', 'Edit STEAM Topic', 'Edit STEAM Topic'),
(3357, 'english', 'STEAM Chapter', 'STEAM Chapter'),
(3358, 'Hindi', 'STEAM Chapter', 'STEAM Chapter'),
(3359, 'english', 'Chapter', 'Chapter'),
(3360, 'Hindi', 'Chapter', 'Chapter'),
(3361, 'english', 'Create STEAM Chapter', 'Create STEAM Chapter'),
(3362, 'Hindi', 'Create STEAM Chapter', 'Create STEAM Chapter'),
(3363, 'english', 'STEAM Topic', 'STEAM Topic'),
(3364, 'Hindi', 'STEAM Topic', 'STEAM Topic'),
(3365, 'english', 'First select a Subject', 'First select a Subject'),
(3366, 'Hindi', 'First select a Subject', 'First select a Subject'),
(3367, 'english', 'Create Chapter', 'Create Chapter'),
(3368, 'Hindi', 'Create Chapter', 'Create Chapter'),
(3369, 'english', 'Edit STEAM Chapter', 'Edit STEAM Chapter'),
(3370, 'Hindi', 'Edit STEAM Chapter', 'Edit STEAM Chapter'),
(3371, 'english', 'STEAM Topic\"', 'STEAM Topic\"'),
(3372, 'Hindi', 'STEAM Topic\"', 'STEAM Topic\"'),
(3373, 'english', 'Images', 'Images'),
(3374, 'Hindi', 'Images', 'Images'),
(3375, 'english', 'Remark', 'Remark'),
(3376, 'Hindi', 'Remark', 'Remark'),
(3377, 'english', 'Class Begin', 'Class Begin'),
(3378, 'Hindi', 'Class Begin', 'Class Begin'),
(3379, 'english', 'Class Finish', 'Class Finish'),
(3380, 'Hindi', 'Class Finish', 'Class Finish'),
(3381, 'english', 'First select a Topic', 'First select a Topic'),
(3382, 'Hindi', 'First select a Topic', 'First select a Topic'),
(3383, 'english', 'Acitvity', 'Acitvity'),
(3384, 'Hindi', 'Acitvity', 'Acitvity');

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
(2, '2024_05_08_134404_create_steams_table', 2),
(3, '2024_05_08_163151_create_steam_subjects_table', 3),
(4, '2024_05_09_135014_create_steam_topics_table', 4),
(5, '2024_05_10_172300_create_steam_chapters_table', 5),
(9, '2024_05_13_164320_create_reportings_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

CREATE TABLE `noticeboard` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notice_title` longtext NOT NULL,
  `notice` longtext NOT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `show_on_website` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `noticeboard`
--

INSERT INTO `noticeboard` (`id`, `notice_title`, `notice`, `start_date`, `start_time`, `end_date`, `end_time`, `status`, `show_on_website`, `image`, `school_id`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 'sunday', 'today sunday', '08/22/2023', '19:18', '08/22/2023', '19:18', 1, 0, NULL, 1, 2, '2023-08-22 19:19:21', '2023-08-22 19:19:21');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) NOT NULL,
  `package_type` varchar(255) NOT NULL,
  `interval` varchar(255) NOT NULL,
  `days` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `price`, `package_type`, `interval`, `days`, `status`, `description`, `created_at`, `updated_at`) VALUES
(4, 'I-KIT LAB\'s School', '0', 'paid', 'Yearly', 100, 1, 'This plan is for only I-KIT LAB\'s School. Which obtained an I-KIT LAB.', '2024-05-14 06:22:11', '2024-05-14 06:22:11');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('hj1187306@gmail.com', '$2y$10$LsMKnqqa/kQCrIjRpiAaDO58kPwDMcd0dfxJyYQDwlMMsoOpu8HHC', '2024-04-10 13:27:01');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `expense_type` longtext NOT NULL,
  `expense_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(255) NOT NULL,
  `transaction_keys` longtext NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `school_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `configuration` longtext NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `name`, `status`, `configuration`, `created_at`, `updated_at`) VALUES
(1, 'Offline', 1, '[]', 1571608810, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment_history`
--

CREATE TABLE `payment_history` (
  `id` int(11) NOT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `transaction_keys` longtext DEFAULT NULL,
  `document_image` varchar(255) DEFAULT NULL,
  `paid_by` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `payment_keys` longtext NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0=inactive , 1=active',
  `mode` varchar(255) NOT NULL DEFAULT 'test' COMMENT 'test / live',
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `payment_keys`, `image`, `status`, `mode`, `created_at`, `updated_at`, `school_id`) VALUES
(1, 'offline', '{}', 'offline.png', 1, 'offline', '', '', NULL),
(11, 'paypal', '{\"test_client_id\":\"snd_cl_id_xxxxxxxxxxxxx\",\"test_secret_key\":\"snd_cl_sid_xxxxxxxxxxxx\",\"live_client_id\":\"lv_cl_id_xxxxxxxxxxxxxxx\",\"live_secret_key\":\"lv_cl_sid_xxxxxxxxxxxxxx\"}', 'paypal.png', 1, 'test', NULL, NULL, 1),
(12, 'stripe', '{\"test_key\":\"pk_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"sk_test_xxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxx\"}', 'stripe.png', 1, 'test', NULL, NULL, 1),
(13, 'razorpay', '{\"test_key\":\"rzp_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"rzs_test_xxxxxxxxxxxxx\",\"live_key\":\"rzp_live_xxxxxxxxxxxxx\",\"live_secret_key\":\"rzs_live_xxxxxxxxxxxxx\",\"theme_color\":\"#c7a600\"}', 'razorpay.png', 1, 'test', NULL, NULL, 1),
(14, 'paytm', '{\"test_merchant_id\":\"tm_id_xxxxxxxxxxxx\",\"test_merchant_key\":\"tm_key_xxxxxxxxxx\",\"live_merchant_id\":\"lv_mid_xxxxxxxxxxx\",\"live_merchant_key\":\"lv_key_xxxxxxxxxxx\",\"environment\":\"provide-a-environment\",\"merchant_website\":\"merchant-website\",\"channel\":\"provide-channel-type\",\"industry_type\":\"provide-industry-type\"}', 'paytm.png', 1, 'test', NULL, NULL, 1),
(15, 'paypal', '{\"test_client_id\":\"snd_cl_id_xxxxxxxxxxxxx\",\"test_secret_key\":\"snd_cl_sid_xxxxxxxxxxxx\",\"live_client_id\":\"lv_cl_id_xxxxxxxxxxxxxxx\",\"live_secret_key\":\"lv_cl_sid_xxxxxxxxxxxxxx\"}', 'paypal.png', 1, 'test', NULL, NULL, 11),
(16, 'stripe', '{\"test_key\":\"pk_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"sk_test_xxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxx\"}', 'stripe.png', 1, 'test', NULL, NULL, 11),
(17, 'razorpay', '{\"test_key\":\"rzp_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"rzs_test_xxxxxxxxxxxxx\",\"live_key\":\"rzp_live_xxxxxxxxxxxxx\",\"live_secret_key\":\"rzs_live_xxxxxxxxxxxxx\",\"theme_color\":\"#c7a600\"}', 'razorpay.png', 1, 'test', NULL, NULL, 11),
(18, 'paytm', '{\"test_merchant_id\":\"tm_id_xxxxxxxxxxxx\",\"test_merchant_key\":\"tm_key_xxxxxxxxxx\",\"live_merchant_id\":\"lv_mid_xxxxxxxxxxx\",\"live_merchant_key\":\"lv_key_xxxxxxxxxxx\",\"environment\":\"provide-a-environment\",\"merchant_website\":\"merchant-website\",\"channel\":\"provide-channel-type\",\"industry_type\":\"provide-industry-type\"}', 'paytm.png', 1, 'test', NULL, NULL, 11),
(19, 'flutterwave', '{\"test_key\":\"flwp_test_xxxxxxxxxxxxx\",\"test_secret_key\":\"flws_test_xxxxxxxxxxxxx\",\"test_encryption_key\":\"flwe_test_xxxxxxxxxxxxx\",\"public_live_key\":\"flwp_live_xxxxxxxxxxxxxx\",\"secret_live_key\":\"flws_live_xxxxxxxxxxxxxx\",\"encryption_live_key\":\"flwe_live_xxxxxxxxxxxxxx\"}', 'flutterwave.png', 1, 'test', NULL, NULL, 11);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reportings`
--

CREATE TABLE `reportings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `steam_id` bigint(20) UNSIGNED NOT NULL,
  `steam_subject_id` bigint(20) UNSIGNED NOT NULL,
  `steam_topic_id` bigint(20) UNSIGNED NOT NULL,
  `steam_chapter_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `school_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `present_students` int(11) NOT NULL,
  `class_starting_time` time NOT NULL,
  `class_ending_time` time NOT NULL,
  `activity` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reportings`
--

INSERT INTO `reportings` (`id`, `steam_id`, `steam_subject_id`, `steam_topic_id`, `steam_chapter_id`, `teacher_id`, `class_id`, `section_id`, `school_id`, `subject_id`, `present_students`, `class_starting_time`, `class_ending_time`, `activity`, `remark`, `video`, `photo`, `created_at`, `updated_at`) VALUES
(3, 8, 17, 15, 8, 120, 8, 13, 13, 4, 50, '10:00:00', '11:00:00', NULL, NULL, NULL, '', '2024-05-14 10:29:50', '2024-05-14 10:29:50'),
(4, 8, 17, 15, 8, 120, 8, 13, 13, 4, 50, '10:00:00', '11:00:00', NULL, NULL, NULL, '', '2024-05-14 10:31:57', '2024-05-14 10:31:57');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', '2022-05-17 07:14:27', '2022-05-17 07:14:27'),
(2, 'admin', '2022-05-17 07:14:27', '2022-05-17 07:14:27'),
(3, 'teacher', '2022-05-17 07:15:14', '2022-05-17 07:14:27'),
(4, 'accountant', '2022-05-17 07:15:14', '2022-05-17 07:14:27'),
(5, 'librarian', '2022-05-17 07:15:14', '2022-05-17 07:14:27'),
(6, 'parent', '2022-05-17 07:15:14', '2022-05-17 07:14:27'),
(7, 'student', '2022-05-17 07:15:14', '2022-05-17 07:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `routines`
--

CREATE TABLE `routines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `starting_hour` int(11) NOT NULL,
  `ending_hour` int(11) NOT NULL,
  `starting_minute` int(11) NOT NULL,
  `ending_minute` int(11) NOT NULL,
  `day` varchar(255) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `school_info` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `running_session` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_currency` varchar(255) DEFAULT NULL,
  `currency_position` varchar(255) DEFAULT NULL,
  `school_logo` varchar(255) DEFAULT NULL,
  `email_title` varchar(255) DEFAULT NULL,
  `email_details` varchar(255) DEFAULT NULL,
  `warning_text` varchar(255) DEFAULT NULL,
  `socialLink1` varchar(255) DEFAULT NULL,
  `socialLink2` varchar(255) DEFAULT NULL,
  `socialLink3` varchar(255) DEFAULT NULL,
  `email_logo` varchar(255) DEFAULT NULL,
  `socialLogo1` varchar(255) DEFAULT NULL,
  `socialLogo2` varchar(255) DEFAULT NULL,
  `socialLogo3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `title`, `email`, `phone`, `address`, `school_info`, `status`, `running_session`, `created_at`, `updated_at`, `school_currency`, `currency_position`, `school_logo`, `email_title`, `email_details`, `warning_text`, `socialLink1`, `socialLink2`, `socialLink3`, `email_logo`, `socialLogo1`, `socialLogo2`, `socialLogo3`) VALUES
(13, 'Sarvodaya World School, Jaipur', 'sarvodayaworldschool@gmail.com', '9610441144', 'Ring Road,Dadiya, Vatika, Rajasthan 303905', 'SARVODAYA WORLD SCHOOL is an English Medium School affiliated to CBSE (Central Board of Secondary Education), India’s largest and oldest board.', 1, 14, '2024-05-14 06:15:13', '2024-05-14 09:46:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `class_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `class_id`, `created_at`, `updated_at`) VALUES
(13, 'A', 8, '2024-05-14 06:54:09', '2024-05-14 06:54:09');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_title` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `session_title`, `status`, `school_id`, `created_at`, `updated_at`) VALUES
(1, '2023', 1, NULL, '2023-08-19 14:07:59', '2023-08-19 14:07:59'),
(2, '2023', 1, 1, '2023-08-19 15:44:36', '2023-08-19 15:44:36'),
(3, '2023', 1, 2, '2023-08-19 16:55:27', '2023-08-19 16:55:27'),
(4, '2023', 1, 3, '2023-08-19 18:11:34', '2023-08-19 18:11:34'),
(5, '2023', 1, 4, '2023-08-19 18:11:37', '2023-08-19 18:11:37'),
(6, '2023', 1, 5, '2023-08-19 18:11:41', '2023-08-19 18:11:41'),
(7, '2023', 1, 6, '2023-08-21 11:01:23', '2023-08-21 11:01:23'),
(8, '2023', 1, 7, '2023-08-21 11:01:32', '2023-08-21 11:01:32'),
(9, '2023', 1, 8, '2023-08-23 13:36:22', '2023-08-23 13:36:22'),
(10, '2023', 1, 9, '2023-08-24 12:29:41', '2023-08-24 12:29:41'),
(11, '2023', 1, 10, '2023-08-25 13:39:51', '2023-08-25 13:39:51'),
(12, '2023', 1, 11, '2023-11-28 13:27:18', '2023-11-28 13:27:18'),
(13, '2024', 1, 12, '2024-05-03 17:44:27', '2024-05-03 17:44:27'),
(14, '2024', 1, 13, '2024-05-14 06:15:13', '2024-05-14 06:15:13');

-- --------------------------------------------------------

--
-- Table structure for table `steams`
--

CREATE TABLE `steams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `steams`
--

INSERT INTO `steams` (`id`, `title`, `created_at`, `updated_at`) VALUES
(8, 'Deep Learning', '2024-05-11 10:58:09', '2024-05-11 10:58:09'),
(9, 'Project Based Learning', '2024-05-11 10:58:31', '2024-05-11 10:58:31');

-- --------------------------------------------------------

--
-- Table structure for table `steam_chapters`
--

CREATE TABLE `steam_chapters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `steam_topic_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `steam_chapters`
--

INSERT INTO `steam_chapters` (`id`, `title`, `steam_topic_id`, `created_at`, `updated_at`) VALUES
(8, 'Law of Lever', 15, '2024-05-14 10:14:15', '2024-05-14 10:14:15'),
(9, 'Screw, Wedge and Inclined Plane', 15, '2024-05-14 10:14:43', '2024-05-14 10:14:43'),
(10, 'Pulley', 15, '2024-05-14 10:15:00', '2024-05-14 10:15:00'),
(11, 'Wheel and Axle', 15, '2024-05-14 10:15:13', '2024-05-14 10:15:13');

-- --------------------------------------------------------

--
-- Table structure for table `steam_subjects`
--

CREATE TABLE `steam_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `steam_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `steam_subjects`
--

INSERT INTO `steam_subjects` (`id`, `title`, `steam_id`, `created_at`, `updated_at`) VALUES
(17, 'Engineering Physics', 8, '2024-05-14 10:03:24', '2024-05-14 10:03:24'),
(18, 'Applied Mathematics', 8, '2024-05-14 10:03:44', '2024-05-14 10:03:44'),
(19, 'Biochemistry', 8, '2024-05-14 10:04:03', '2024-05-14 10:04:03'),
(20, 'Mechatronics', 9, '2024-05-14 10:04:23', '2024-05-14 10:04:23'),
(21, 'Art Craft and 3D Printing', 9, '2024-05-14 10:04:32', '2024-05-14 10:04:32'),
(22, 'Computer Education', 9, '2024-05-14 10:04:48', '2024-05-14 10:04:48');

-- --------------------------------------------------------

--
-- Table structure for table `steam_topics`
--

CREATE TABLE `steam_topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `steam_subject_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `steam_topics`
--

INSERT INTO `steam_topics` (`id`, `title`, `steam_subject_id`, `created_at`, `updated_at`) VALUES
(15, 'Simple Machine', 17, '2024-05-14 10:11:46', '2024-05-14 10:11:46'),
(16, 'Motion', 17, '2024-05-14 10:12:04', '2024-05-14 10:12:04'),
(17, 'Work, Energy and Power', 17, '2024-05-14 10:12:30', '2024-05-14 10:12:30'),
(18, 'Fluid Mechanics', 17, '2024-05-14 10:13:03', '2024-05-14 10:13:03'),
(19, 'Acoustics', 17, '2024-05-14 10:13:21', '2024-05-14 10:13:21'),
(20, 'Magnetism', 17, '2024-05-14 10:13:43', '2024-05-14 10:13:43');

-- --------------------------------------------------------

--
-- Table structure for table `student_fee_managers`
--

CREATE TABLE `student_fee_managers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `paid_amount` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `document_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_fee_managers`
--

INSERT INTO `student_fee_managers` (`id`, `title`, `total_amount`, `class_id`, `student_id`, `parent_id`, `payment_method`, `paid_amount`, `status`, `school_id`, `session_id`, `timestamp`, `created_at`, `updated_at`, `document_image`) VALUES
(1, 'Fees', 10000, 1, 11, 8, 'paytm', 10000, 'paid', 1, 2, 1692727200, '2023-08-23 13:33:34', '2023-08-23 13:33:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `class_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `class_id`, `school_id`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 'Robotics', 1, 1, 2, '2023-08-19 17:19:51', '2023-08-19 17:19:51'),
(2, 'Science', 2, 10, 11, '2023-08-25 14:02:05', '2023-08-25 14:02:05'),
(3, 'AI', 3, 12, 13, '2024-05-03 17:50:19', '2024-05-03 17:50:19'),
(4, 'Robotics and AI', 8, 13, 14, '2024-05-14 10:17:45', '2024-05-14 10:17:45');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `paid_amount` double(8,2) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `transaction_keys` longtext NOT NULL,
  `expire_date` int(11) NOT NULL,
  `date_added` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `package_id`, `school_id`, `paid_amount`, `payment_method`, `transaction_keys`, `expire_date`, `date_added`, `active`, `status`, `created_at`, `updated_at`) VALUES
(2, 2, 1, 0.00, 'free', '{\"user_id\":\"2\",\"package_id\":\"2\",\"document_file\":\"sample-payment.pdf\"}', 1724136233, 1692600233, 1, 1, '2023-08-21 12:43:53', '2023-08-21 12:43:53'),
(3, 1, 1, 0.00, 'free', '{\"user_id\":\"2\",\"package_id\":\"1\",\"document_file\":\"sample-payment.pdf\"}', 1724138181, 1692602181, 1, 1, '2023-08-21 13:16:21', '2023-08-21 13:16:21'),
(5, 1, 10, 0.00, 'free', '{\"user_id\":\"101\",\"package_id\":\"1\",\"document_file\":\"sample-payment.pdf\"}', 1724486420, 1692950420, 1, 1, '2023-08-25 14:00:20', '2023-08-25 14:00:20'),
(6, 1, 11, 0.00, 'free', '{\"user_id\":\"103\",\"package_id\":\"1\",\"document_file\":\"sample-payment.pdf\"}', 1732692664, 1701156664, 1, 1, '2023-11-28 13:31:04', '2023-11-28 13:31:04'),
(7, 1, 12, 0.00, 'free', '{\"user_id\":\"104\",\"package_id\":\"1\",\"document_file\":\"sample-payment.pdf\"}', 1746272726, 1714736726, 1, 1, '2024-05-03 17:45:26', '2024-05-03 17:45:26'),
(8, 4, 13, 0.00, 'free', '{\"user_id\":\"119\",\"package_id\":\"4\",\"document_file\":\"sample-payment.pdf\"}', 1724307747, 1715667747, 1, 1, '2024-05-14 06:22:27', '2024-05-14 06:22:27');

-- --------------------------------------------------------

--
-- Table structure for table `syllabuses`
--

CREATE TABLE `syllabuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `syllabuses`
--

INSERT INTO `syllabuses` (`id`, `title`, `class_id`, `section_id`, `subject_id`, `file`, `school_id`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 'Half Yearly Syllabus', 1, 1, 1, 'strength.pdf', 1, 2, '2023-08-23 13:29:39', '2023-08-23 13:29:39');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_permissions`
--

CREATE TABLE `teacher_permissions` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `attendance` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher_permissions`
--

INSERT INTO `teacher_permissions` (`id`, `class_id`, `section_id`, `school_id`, `teacher_id`, `marks`, `attendance`, `updated_at`) VALUES
(1, 1, 1, 1, 4, 0, 0, NULL),
(2, 3, 3, 12, 105, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `user_information` longtext DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `role_id`, `parent_id`, `school_id`, `password`, `code`, `user_information`, `department_id`, `designation`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hemant Joshi', 'hj1187306@gmail.com', NULL, 1, NULL, NULL, '$2y$10$tyL8zcpQSNshsqUwGXujReLwfevS3Rv.s6/5BeTk.N4jTF61HpLuS', NULL, '{\"gender\":\"Male\",\"blood_group\":\"a+\",\"birthday\":1692432479,\"phone\":\"916367518704\",\"address\":\"Sector 4, Malviya Nagar, jaipur\",\"photo\":\"user.png\"}', NULL, NULL, NULL, '2023-08-19 14:07:59', '2023-08-19 14:07:59'),
(119, 'Sarvodaya School Admin', 'sarvodayaadmin@ikit.in', NULL, 2, NULL, 13, '$2y$10$c7ORWMb8SVdNlilpkwn9BuU5mavviunp9S1FLASZnwjHsP.0OVrkC', NULL, '{\"gender\":\"Male\",\"blood_group\":\"a+\",\"birthday\":\"\",\"phone\":\"6376965811\",\"address\":\"Ring Road,Dadiya, Vatika, Rajasthan 303905\",\"photo\":\"1715667313.webp\"}', NULL, NULL, NULL, '2024-05-14 06:15:13', '2024-05-14 06:15:13'),
(120, 'Virat Tiwari', 'virat@ikit.in', NULL, 3, NULL, 13, '$2y$10$cWgMEeBfJMRu0TxfqaCSBuLzDTORrmBWhDmniq5rwiFC0Jw7p9eC.', NULL, '{\"gender\":\"Male\",\"blood_group\":\"b+\",\"birthday\":978287400,\"phone\":\"8949850817\",\"address\":\"Mansarovar, Jaipur\",\"photo\":\"1715679796.webp\"}', 6, 'Instructor', NULL, '2024-05-14 09:43:16', '2024-05-14 09:43:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_rooms`
--
ALTER TABLE `class_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_attendances`
--
ALTER TABLE `daily_attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_categories`
--
ALTER TABLE `exam_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontend_events`
--
ALTER TABLE `frontend_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `global_settings`
--
ALTER TABLE `global_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gradebooks`
--
ALTER TABLE `gradebooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noticeboard`
--
ALTER TABLE `noticeboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
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
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_history`
--
ALTER TABLE `payment_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reportings`
--
ALTER TABLE `reportings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reportings_steam_id_foreign` (`steam_id`),
  ADD KEY `reportings_steam_subject_id_foreign` (`steam_subject_id`),
  ADD KEY `reportings_steam_topic_id_foreign` (`steam_topic_id`),
  ADD KEY `reportings_steam_chapter_id_foreign` (`steam_chapter_id`),
  ADD KEY `reportings_teacher_id_foreign` (`teacher_id`),
  ADD KEY `reportings_class_id_foreign` (`class_id`),
  ADD KEY `reportings_section_id_foreign` (`section_id`),
  ADD KEY `reportings_school_id_foreign` (`school_id`),
  ADD KEY `reportings_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `routines`
--
ALTER TABLE `routines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `steams`
--
ALTER TABLE `steams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `steam_chapters`
--
ALTER TABLE `steam_chapters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `steam_chapters_steam_topic_id_foreign` (`steam_topic_id`);

--
-- Indexes for table `steam_subjects`
--
ALTER TABLE `steam_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `steam_subjects_steam_id_foreign` (`steam_id`);

--
-- Indexes for table `steam_topics`
--
ALTER TABLE `steam_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `steam_topics_steam_subject_id_foreign` (`steam_subject_id`);

--
-- Indexes for table `student_fee_managers`
--
ALTER TABLE `student_fee_managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `syllabuses`
--
ALTER TABLE `syllabuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_permissions`
--
ALTER TABLE `teacher_permissions`
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
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_issues`
--
ALTER TABLE `book_issues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `class_rooms`
--
ALTER TABLE `class_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `daily_attendances`
--
ALTER TABLE `daily_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exam_categories`
--
ALTER TABLE `exam_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `frontend_events`
--
ALTER TABLE `frontend_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `global_settings`
--
ALTER TABLE `global_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `gradebooks`
--
ALTER TABLE `gradebooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3385;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `noticeboard`
--
ALTER TABLE `noticeboard`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_history`
--
ALTER TABLE `payment_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reportings`
--
ALTER TABLE `reportings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `routines`
--
ALTER TABLE `routines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `steams`
--
ALTER TABLE `steams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `steam_chapters`
--
ALTER TABLE `steam_chapters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `steam_subjects`
--
ALTER TABLE `steam_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `steam_topics`
--
ALTER TABLE `steam_topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `student_fee_managers`
--
ALTER TABLE `student_fee_managers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `syllabuses`
--
ALTER TABLE `syllabuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teacher_permissions`
--
ALTER TABLE `teacher_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reportings`
--
ALTER TABLE `reportings`
  ADD CONSTRAINT `reportings_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reportings_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reportings_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reportings_steam_chapter_id_foreign` FOREIGN KEY (`steam_chapter_id`) REFERENCES `steam_chapters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reportings_steam_id_foreign` FOREIGN KEY (`steam_id`) REFERENCES `steams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reportings_steam_subject_id_foreign` FOREIGN KEY (`steam_subject_id`) REFERENCES `steam_topics` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reportings_steam_topic_id_foreign` FOREIGN KEY (`steam_topic_id`) REFERENCES `steam_topics` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reportings_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `reportings_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `steam_chapters`
--
ALTER TABLE `steam_chapters`
  ADD CONSTRAINT `steam_chapters_steam_topic_id_foreign` FOREIGN KEY (`steam_topic_id`) REFERENCES `steam_topics` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `steam_subjects`
--
ALTER TABLE `steam_subjects`
  ADD CONSTRAINT `steam_subjects_steam_id_foreign` FOREIGN KEY (`steam_id`) REFERENCES `steams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `steam_topics`
--
ALTER TABLE `steam_topics`
  ADD CONSTRAINT `steam_topics_steam_subject_id_foreign` FOREIGN KEY (`steam_subject_id`) REFERENCES `steam_subjects` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
