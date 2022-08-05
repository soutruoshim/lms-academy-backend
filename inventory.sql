-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 05, 2022 at 03:55 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

DROP TABLE IF EXISTS `addons`;
CREATE TABLE IF NOT EXISTS `addons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `unique_identifier` varchar(255) NOT NULL,
  `version` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `about` longtext,
  `purchase_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS `applications`;
CREATE TABLE IF NOT EXISTS `applications` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `address` longtext,
  `phone` varchar(255) DEFAULT NULL,
  `message` longtext,
  `document` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `banner` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_popular` int(11) NOT NULL,
  `likes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `added_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

DROP TABLE IF EXISTS `blog_category`;
CREATE TABLE IF NOT EXISTS `blog_category` (
  `blog_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`blog_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

DROP TABLE IF EXISTS `blog_comments`;
CREATE TABLE IF NOT EXISTS `blog_comments` (
  `blog_comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `likes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `added_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`blog_comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(11) DEFAULT '0',
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `font_awesome_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('4s9sa838lgfrfar4afrg3ku6l9qb8fc1', '::1', 1659337123, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393333373132333b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('i7tlvfnr90mjgtbh8eaql7m27qnv6pcm', '::1', 1659337123, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393333373132333b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('2f19tu569i9kfdpqnbhpb4q59gn1mvka', '::1', 1659337123, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393333373132333b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('o1f61hd5ugd8q3084hv3l4mjv4iv76df', '::1', 1659337123, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393333373132333b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('d2ck7n4hl81s3246faaqs1ato5ctdgfj', '::1', 1659337123, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393333373132333b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('rdg59l8adent9hvn8d8n1bqtomk6sse2', '::1', 1659337782, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393333373738323b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31303a22736f757420726168696d223b69735f696e7374727563746f727c733a313a2231223b61646d696e5f6c6f67696e7c733a313a2231223b),
('68prrs6bdahbti1p7krigl5hvd8aadmc', '::1', 1659338592, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393333383539323b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31303a22736f757420726168696d223b69735f696e7374727563746f727c733a313a2231223b61646d696e5f6c6f67696e7c733a313a2231223b),
('95o40heab8kr6gto8mtcu1fsant6064l', '::1', 1659340361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393334303336313b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31303a22736f757420726168696d223b69735f696e7374727563746f727c733a313a2231223b61646d696e5f6c6f67696e7c733a313a2231223b),
('cmdsk5kstmo3f5dshj632ncdcr8f7tnn', '::1', 1659340671, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393334303637313b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31303a22736f757420726168696d223b69735f696e7374727563746f727c733a313a2231223b61646d696e5f6c6f67696e7c733a313a2231223b),
('dtr11qbmd0nn7qbu3ii0kksqprjm67sk', '::1', 1659341035, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393334313033353b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31303a22736f757420726168696d223b69735f696e7374727563746f727c733a313a2231223b61646d696e5f6c6f67696e7c733a313a2231223b),
('9p08h3c864bn13rf2ijjaul78qlodvmu', '::1', 1659341819, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393334313831393b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31303a22736f757420726168696d223b69735f696e7374727563746f727c733a313a2231223b61646d696e5f6c6f67696e7c733a313a2231223b),
('iu0s5jnhca9osjbvogbjfrqqn5e0d4ep', '::1', 1659341868, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635393334313831393b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31303a22736f757420726168696d223b69735f696e7374727563746f727c733a313a2231223b61646d696e5f6c6f67696e7c733a313a2231223b);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `commentable_id` int(11) DEFAULT NULL,
  `commentable_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
CREATE TABLE IF NOT EXISTS `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount_percentage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `expiry_date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `outcomes` longtext COLLATE utf8_unicode_ci,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `section` longtext COLLATE utf8_unicode_ci,
  `requirements` longtext COLLATE utf8_unicode_ci,
  `price` double DEFAULT NULL,
  `discount_flag` int(11) DEFAULT '0',
  `discounted_price` int(11) DEFAULT NULL,
  `level` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `course_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_top_course` int(11) DEFAULT '0',
  `is_admin` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_overview_provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` longtext COLLATE utf8_unicode_ci,
  `meta_description` longtext COLLATE utf8_unicode_ci,
  `is_free_course` int(11) DEFAULT NULL,
  `multi_instructor` int(11) NOT NULL DEFAULT '0',
  `enable_drip_content` int(11) NOT NULL,
  `creator` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
CREATE TABLE IF NOT EXISTS `currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `paypal_supported` int(11) DEFAULT NULL,
  `stripe_supported` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES
(1, 'US Dollar', 'USD', '$', 1, 1),
(2, 'Albanian Lek', 'ALL', 'Lek', 0, 1),
(3, 'Algerian Dinar', 'DZD', 'دج', 1, 1),
(4, 'Angolan Kwanza', 'AOA', 'Kz', 1, 1),
(5, 'Argentine Peso', 'ARS', '$', 1, 1),
(6, 'Armenian Dram', 'AMD', '֏', 1, 1),
(7, 'Aruban Florin', 'AWG', 'ƒ', 1, 1),
(8, 'Australian Dollar', 'AUD', '$', 1, 1),
(9, 'Azerbaijani Manat', 'AZN', 'm', 1, 1),
(10, 'Bahamian Dollar', 'BSD', 'B$', 1, 1),
(11, 'Bahraini Dinar', 'BHD', '.د.ب', 1, 1),
(12, 'Bangladeshi Taka', 'BDT', '৳', 1, 1),
(13, 'Barbadian Dollar', 'BBD', 'Bds$', 1, 1),
(14, 'Belarusian Ruble', 'BYR', 'Br', 0, 0),
(15, 'Belgian Franc', 'BEF', 'fr', 1, 1),
(16, 'Belize Dollar', 'BZD', '$', 1, 1),
(17, 'Bermudan Dollar', 'BMD', '$', 1, 1),
(18, 'Bhutanese Ngultrum', 'BTN', 'Nu.', 1, 1),
(19, 'Bitcoin', 'BTC', '฿', 1, 1),
(20, 'Bolivian Boliviano', 'BOB', 'Bs.', 1, 1),
(21, 'Bosnia', 'BAM', 'KM', 1, 1),
(22, 'Botswanan Pula', 'BWP', 'P', 1, 1),
(23, 'Brazilian Real', 'BRL', 'R$', 1, 1),
(24, 'British Pound Sterling', 'GBP', '£', 1, 1),
(25, 'Brunei Dollar', 'BND', 'B$', 1, 1),
(26, 'Bulgarian Lev', 'BGN', 'Лв.', 1, 1),
(27, 'Burundian Franc', 'BIF', 'FBu', 1, 1),
(28, 'Cambodian Riel', 'KHR', 'KHR', 1, 1),
(29, 'Canadian Dollar', 'CAD', '$', 1, 1),
(30, 'Cape Verdean Escudo', 'CVE', '$', 1, 1),
(31, 'Cayman Islands Dollar', 'KYD', '$', 1, 1),
(32, 'CFA Franc BCEAO', 'XOF', 'CFA', 1, 1),
(33, 'CFA Franc BEAC', 'XAF', 'FCFA', 1, 1),
(34, 'CFP Franc', 'XPF', '₣', 1, 1),
(35, 'Chilean Peso', 'CLP', '$', 1, 1),
(36, 'Chinese Yuan', 'CNY', '¥', 1, 1),
(37, 'Colombian Peso', 'COP', '$', 1, 1),
(38, 'Comorian Franc', 'KMF', 'CF', 1, 1),
(39, 'Congolese Franc', 'CDF', 'FC', 1, 1),
(40, 'Costa Rican ColÃ³n', 'CRC', '₡', 1, 1),
(41, 'Croatian Kuna', 'HRK', 'kn', 1, 1),
(42, 'Cuban Convertible Peso', 'CUC', '$, CUC', 1, 1),
(43, 'Czech Republic Koruna', 'CZK', 'Kč', 1, 1),
(44, 'Danish Krone', 'DKK', 'Kr.', 1, 1),
(45, 'Djiboutian Franc', 'DJF', 'Fdj', 1, 1),
(46, 'Dominican Peso', 'DOP', '$', 1, 1),
(47, 'East Caribbean Dollar', 'XCD', '$', 1, 1),
(48, 'Egyptian Pound', 'EGP', 'ج.م', 1, 1),
(49, 'Eritrean Nakfa', 'ERN', 'Nfk', 1, 1),
(50, 'Estonian Kroon', 'EEK', 'kr', 1, 1),
(51, 'Ethiopian Birr', 'ETB', 'Nkf', 1, 1),
(52, 'Euro', 'EUR', '€', 1, 1),
(53, 'Falkland Islands Pound', 'FKP', '£', 1, 1),
(54, 'Fijian Dollar', 'FJD', 'FJ$', 1, 1),
(55, 'Gambian Dalasi', 'GMD', 'D', 1, 1),
(56, 'Georgian Lari', 'GEL', 'ლ', 1, 1),
(57, 'German Mark', 'DEM', 'DM', 1, 1),
(58, 'Ghanaian Cedi', 'GHS', 'GH₵', 1, 1),
(59, 'Gibraltar Pound', 'GIP', '£', 1, 1),
(60, 'Greek Drachma', 'GRD', '₯, Δρχ, Δρ', 1, 1),
(61, 'Guatemalan Quetzal', 'GTQ', 'Q', 1, 1),
(62, 'Guinean Franc', 'GNF', 'FG', 1, 1),
(63, 'Guyanaese Dollar', 'GYD', '$', 1, 1),
(64, 'Haitian Gourde', 'HTG', 'G', 1, 1),
(65, 'Honduran Lempira', 'HNL', 'L', 1, 1),
(66, 'Hong Kong Dollar', 'HKD', '$', 1, 1),
(67, 'Hungarian Forint', 'HUF', 'Ft', 1, 1),
(68, 'Icelandic KrÃ³na', 'ISK', 'kr', 1, 1),
(69, 'Indian Rupee', 'INR', '₹', 1, 1),
(70, 'Indonesian Rupiah', 'IDR', 'Rp', 1, 1),
(71, 'Iranian Rial', 'IRR', '﷼', 1, 1),
(72, 'Iraqi Dinar', 'IQD', 'د.ع', 1, 1),
(73, 'Israeli New Sheqel', 'ILS', '₪', 1, 1),
(74, 'Italian Lira', 'ITL', 'L,£', 1, 1),
(75, 'Jamaican Dollar', 'JMD', 'J$', 1, 1),
(76, 'Japanese Yen', 'JPY', '¥', 1, 1),
(77, 'Jordanian Dinar', 'JOD', 'ا.د', 1, 1),
(78, 'Kazakhstani Tenge', 'KZT', 'лв', 1, 1),
(79, 'Kenyan Shilling', 'KES', 'KSh', 1, 1),
(80, 'Kuwaiti Dinar', 'KWD', 'ك.د', 1, 1),
(81, 'Kyrgystani Som', 'KGS', 'лв', 1, 1),
(82, 'Laotian Kip', 'LAK', '₭', 1, 1),
(83, 'Latvian Lats', 'LVL', 'Ls', 0, 0),
(84, 'Lebanese Pound', 'LBP', '£', 1, 1),
(85, 'Lesotho Loti', 'LSL', 'L', 1, 1),
(86, 'Liberian Dollar', 'LRD', '$', 1, 1),
(87, 'Libyan Dinar', 'LYD', 'د.ل', 1, 1),
(88, 'Lithuanian Litas', 'LTL', 'Lt', 0, 0),
(89, 'Macanese Pataca', 'MOP', '$', 1, 1),
(90, 'Macedonian Denar', 'MKD', 'ден', 1, 1),
(91, 'Malagasy Ariary', 'MGA', 'Ar', 1, 1),
(92, 'Malawian Kwacha', 'MWK', 'MK', 1, 1),
(93, 'Malaysian Ringgit', 'MYR', 'RM', 1, 1),
(94, 'Maldivian Rufiyaa', 'MVR', 'Rf', 1, 1),
(95, 'Mauritanian Ouguiya', 'MRO', 'MRU', 1, 1),
(96, 'Mauritian Rupee', 'MUR', '₨', 1, 1),
(97, 'Mexican Peso', 'MXN', '$', 1, 1),
(98, 'Moldovan Leu', 'MDL', 'L', 1, 1),
(99, 'Mongolian Tugrik', 'MNT', '₮', 1, 1),
(100, 'Moroccan Dirham', 'MAD', 'MAD', 1, 1),
(101, 'Mozambican Metical', 'MZM', 'MT', 1, 1),
(102, 'Myanmar Kyat', 'MMK', 'K', 1, 1),
(103, 'Namibian Dollar', 'NAD', '$', 1, 1),
(104, 'Nepalese Rupee', 'NPR', '₨', 1, 1),
(105, 'Netherlands Antillean Guilder', 'ANG', 'ƒ', 1, 1),
(106, 'New Taiwan Dollar', 'TWD', '$', 1, 1),
(107, 'New Zealand Dollar', 'NZD', '$', 1, 1),
(108, 'Nicaraguan CÃ³rdoba', 'NIO', 'C$', 1, 1),
(109, 'Nigerian Naira', 'NGN', '₦', 1, 1),
(110, 'North Korean Won', 'KPW', '₩', 0, 0),
(111, 'Norwegian Krone', 'NOK', 'kr', 1, 1),
(112, 'Omani Rial', 'OMR', '.ع.ر', 0, 0),
(113, 'Pakistani Rupee', 'PKR', '₨', 1, 1),
(114, 'Panamanian Balboa', 'PAB', 'B/.', 1, 1),
(115, 'Papua New Guinean Kina', 'PGK', 'K', 1, 1),
(116, 'Paraguayan Guarani', 'PYG', '₲', 1, 1),
(117, 'Peruvian Nuevo Sol', 'PEN', 'S/.', 1, 1),
(118, 'Philippine Peso', 'PHP', '₱', 1, 1),
(119, 'Polish Zloty', 'PLN', 'zł', 1, 1),
(120, 'Qatari Rial', 'QAR', 'ق.ر', 1, 1),
(121, 'Romanian Leu', 'RON', 'lei', 1, 1),
(122, 'Russian Ruble', 'RUB', '₽', 1, 1),
(123, 'Rwandan Franc', 'RWF', 'FRw', 1, 1),
(124, 'Salvadoran ColÃ³n', 'SVC', '₡', 0, 0),
(125, 'Samoan Tala', 'WST', 'SAT', 1, 1),
(126, 'Saudi Riyal', 'SAR', '﷼', 1, 1),
(127, 'Serbian Dinar', 'RSD', 'din', 1, 1),
(128, 'Seychellois Rupee', 'SCR', 'SRe', 1, 1),
(129, 'Sierra Leonean Leone', 'SLL', 'Le', 1, 1),
(130, 'Singapore Dollar', 'SGD', '$', 1, 1),
(131, 'Slovak Koruna', 'SKK', 'Sk', 1, 1),
(132, 'Solomon Islands Dollar', 'SBD', 'Si$', 1, 1),
(133, 'Somali Shilling', 'SOS', 'Sh.so.', 1, 1),
(134, 'South African Rand', 'ZAR', 'R', 1, 1),
(135, 'South Korean Won', 'KRW', '₩', 1, 1),
(136, 'Special Drawing Rights', 'XDR', 'SDR', 1, 1),
(137, 'Sri Lankan Rupee', 'LKR', 'Rs', 1, 1),
(138, 'St. Helena Pound', 'SHP', '£', 1, 1),
(139, 'Sudanese Pound', 'SDG', '.س.ج', 1, 1),
(140, 'Surinamese Dollar', 'SRD', '$', 1, 1),
(141, 'Swazi Lilangeni', 'SZL', 'E', 1, 1),
(142, 'Swedish Krona', 'SEK', 'kr', 1, 1),
(143, 'Swiss Franc', 'CHF', 'CHf', 1, 1),
(144, 'Syrian Pound', 'SYP', 'LS', 0, 0),
(145, 'São Tomé and Príncipe Dobra', 'STD', 'Db', 1, 1),
(146, 'Tajikistani Somoni', 'TJS', 'SM', 1, 1),
(147, 'Tanzanian Shilling', 'TZS', 'TSh', 1, 1),
(148, 'Thai Baht', 'THB', '฿', 1, 1),
(149, 'Tongan pa\'anga', 'TOP', '$', 1, 1),
(150, 'Trinidad & Tobago Dollar', 'TTD', '$', 1, 1),
(151, 'Tunisian Dinar', 'TND', 'ت.د', 1, 1),
(152, 'Turkish Lira', 'TRY', '₺', 1, 1),
(153, 'Turkmenistani Manat', 'TMT', 'T', 1, 1),
(154, 'Ugandan Shilling', 'UGX', 'USh', 1, 1),
(155, 'Ukrainian Hryvnia', 'UAH', '₴', 1, 1),
(156, 'United Arab Emirates Dirham', 'AED', 'إ.د', 1, 1),
(157, 'Uruguayan Peso', 'UYU', '$', 1, 1),
(158, 'Afghan Afghani', 'AFA', '؋', 1, 1),
(159, 'Uzbekistan Som', 'UZS', 'лв', 1, 1),
(160, 'Vanuatu Vatu', 'VUV', 'VT', 1, 1),
(161, 'Venezuelan BolÃvar', 'VEF', 'Bs', 0, 0),
(162, 'Vietnamese Dong', 'VND', '₫', 1, 1),
(163, 'Yemeni Rial', 'YER', '﷼', 1, 1),
(164, 'Zambian Kwacha', 'ZMK', 'ZK', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `enrol`
--

DROP TABLE IF EXISTS `enrol`;
CREATE TABLE IF NOT EXISTS `enrol` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `frontend_settings`
--

DROP TABLE IF EXISTS `frontend_settings`;
CREATE TABLE IF NOT EXISTS `frontend_settings` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `frontend_settings`
--

INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES
(1, 'banner_title', 'Start learning from best Platform'),
(2, 'banner_sub_title', 'Study any topic, anytime. Explore thousands of courses for the lowest price ever!'),
(4, 'about_us', '<p></p><h2><span xss=removed>This is about us</span></h2><p><span xss=\"removed\">Welcome to Academy. It will help you to learn in a new ways</span></p>'),
(10, 'terms_and_condition', '<h2>Terms and Condition</h2>This is the Terms and condition page for your companys'),
(11, 'privacy_policy', '<p></p><p></p><h2><span xss=\"removed\">Privacy Policy</span><br></h2>This is the Privacy Policy page for your companys<p></p><p><b>This is another</b> <u><a href=\"https://youtube.com/watch?v=PHgc8Q6qTjc\" target=\"_blank\">thing you will</a></u> <span xss=\"removed\">not understand</span>.</p>'),
(13, 'theme', 'default'),
(14, 'cookie_note', 'This website uses cookies to personalize content and analyse traffic in order to offer you a better experience.'),
(15, 'cookie_status', 'active'),
(16, 'cookie_policy', '<h1>Cookie policy</h1><ol><li>Cookies are small text files that can be used by websites to make a user\'s experience more efficient.</li><li>The law states that we can store cookies on your device if they are strictly necessary for the operation of this site. For all other types of cookies we need your permission.</li><li>This site uses different types of cookies. Some cookies are placed by third party services that appear on our pages.</li></ol>'),
(17, 'banner_image', 'home-banner.jpg'),
(18, 'light_logo', 'logo-light.png'),
(19, 'dark_logo', 'logo-dark.png'),
(20, 'small_logo', 'logo-light-sm.png'),
(21, 'favicon', 'favicon.png'),
(22, 'recaptcha_status', '0'),
(23, 'recaptcha_secretkey', 'Valid-secret-key'),
(24, 'recaptcha_sitekey', 'Valid-site-key'),
(25, 'refund_policy', '<h2><span xss=\"removed\">Refund Policy</span></h2>'),
(26, 'facebook', 'https://facebook.com'),
(27, 'twitter', 'https://twitter.com'),
(28, 'linkedin', 'https://linkedin.com'),
(31, 'blog_page_title', 'Where possibilities begin'),
(32, 'blog_page_subtitle', 'We’re a leading marketplace platform for learning and teaching online. Explore some of our most popular content and learn something new.'),
(33, 'blog_page_banner', 'blog-page.png'),
(34, 'instructors_blog_permission', '0'),
(35, 'blog_visibility_on_the_home_page', '1');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
CREATE TABLE IF NOT EXISTS `language` (
  `phrase_id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` longtext COLLATE utf8_unicode_ci,
  `english` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`phrase_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

DROP TABLE IF EXISTS `lesson`;
CREATE TABLE IF NOT EXISTS `lesson` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `video_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `lesson_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment` longtext COLLATE utf8_unicode_ci,
  `attachment_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` longtext COLLATE utf8_unicode_ci,
  `is_free` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `video_type_for_mobile_application` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url_for_mobile_application` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration_for_mobile_application` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE IF NOT EXISTS `log` (
  `id` int(11) NOT NULL,
  `from` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `message_thread_code` longtext COLLATE utf8_unicode_ci,
  `message` longtext COLLATE utf8_unicode_ci,
  `sender` longtext COLLATE utf8_unicode_ci,
  `timestamp` longtext COLLATE utf8_unicode_ci,
  `read_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message_thread`
--

DROP TABLE IF EXISTS `message_thread`;
CREATE TABLE IF NOT EXISTS `message_thread` (
  `message_thread_id` int(11) NOT NULL AUTO_INCREMENT,
  `message_thread_code` longtext COLLATE utf8_unicode_ci,
  `sender` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `receiver` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `last_message_timestamp` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`message_thread_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `admin_revenue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructor_revenue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructor_payment_status` int(11) DEFAULT '0',
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payout`
--

DROP TABLE IF EXISTS `payout`;
CREATE TABLE IF NOT EXISTS `payout` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL,
  `permissions` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
CREATE TABLE IF NOT EXISTS `question` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_of_options` int(11) DEFAULT NULL,
  `options` longtext COLLATE utf8_unicode_ci,
  `correct_answers` longtext COLLATE utf8_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
CREATE TABLE IF NOT EXISTS `rating` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rating` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ratable_id` int(11) DEFAULT NULL,
  `ratable_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `review` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `date_added`, `last_modified`) VALUES
(1, 'Admin', 1234567890, 1234567890),
(2, 'User', 1234567890, 1234567890);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
CREATE TABLE IF NOT EXISTS `section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'language', 'english'),
(2, 'system_name', 'Academy'),
(3, 'system_title', 'Academy Learning Club'),
(4, 'system_email', 'academy@example.com'),
(5, 'address', 'Sydeny, Australia'),
(6, 'phone', '+143-52-9933631'),
(7, 'purchase_code', 'your-purchase-code'),
(8, 'paypal', '[{\"active\":\"1\",\"mode\":\"sandbox\",\"sandbox_client_id\":\"AfGaziKslex-scLAyYdDYXNFaz2aL5qGau-SbDgE_D2E80D3AFauLagP8e0kCq9au7W4IasmFbirUUYc\",\"sandbox_secret_key\":\"EMa5pCTuOpmHkhHaCGibGhVUcKg0yt5-C3CzJw-OWJCzaXXzTlyD17SICob_BkfM_0Nlk7TWnN42cbGz\",\"production_client_id\":\"1234\",\"production_secret_key\":\"12345\"}]'),
(9, 'stripe_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"public_key\":\"pk_test_CAC3cB1mhgkJqXtypYBTGb4f\",\"secret_key\":\"sk_test_iatnshcHhQVRXdygXw3L2Pp2\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}]'),
(10, 'youtube_api_key', 'youtube-api-key'),
(11, 'vimeo_api_key', 'vimeo-api-key'),
(12, 'slogan', 'A course based video CMS'),
(13, 'text_align', NULL),
(14, 'allow_instructor', '1'),
(15, 'instructor_revenue', '70'),
(16, 'system_currency', 'USD'),
(17, 'paypal_currency', 'USD'),
(18, 'stripe_currency', 'USD'),
(19, 'author', 'Creativeitem'),
(20, 'currency_position', 'left'),
(21, 'website_description', 'Study any topic, anytime. explore thousands of courses for the lowest price ever!'),
(22, 'website_keywords', 'LMS,Learning Management System,Creativeitem,demo,hello,How are you'),
(23, 'footer_text', ''),
(24, 'footer_link', 'http://creativeitem.com/'),
(25, 'protocol', 'smtp'),
(26, 'smtp_host', 'ssl://smtp.gmail.com'),
(27, 'smtp_port', '465'),
(28, 'smtp_user', 'Your-email'),
(29, 'smtp_pass', 'Your-email-password'),
(30, 'version', '5.6'),
(31, 'student_email_verification', 'disable'),
(32, 'instructor_application_note', 'Fill all the fields carefully and share if you want to share any document with us it will help us to evaluate you as an instructor.'),
(33, 'razorpay_keys', '[{\"active\":\"1\",\"key\":\"rzp_test_J60bqBOi1z1aF5\",\"secret_key\":\"uk935K7p4j96UCJgHK8kAU4q\",\"theme_color\":\"#c7a600\"}]'),
(34, 'razorpay_currency', 'USD'),
(35, 'fb_app_id', 'facebook-app-id'),
(36, 'fb_app_secret', 'facebook-app-secret-key'),
(37, 'fb_social_login', '0'),
(38, 'drip_content_settings', '{\"lesson_completion_role\":\"percentage\",\"minimum_duration\":10,\"minimum_percentage\":\"50\",\"locked_lesson_message\":\"&lt;h3 xss=&quot;removed&quot; style=&quot;text-align: center; &quot;&gt;&lt;span xss=&quot;removed&quot;&gt;&lt;strong&gt;Permission denied!&lt;\\/strong&gt;&lt;\\/span&gt;&lt;\\/h3&gt;&lt;p xss=&quot;removed&quot; style=&quot;text-align: center; &quot;&gt;&lt;span xss=&quot;removed&quot;&gt;This course supports drip content, so you must complete the previous lessons.&lt;\\/span&gt;&lt;\\/p&gt;\"}'),
(39, 'certificate_template', 'This is to certify that Mr. / Ms. {student} successfully completed the course with on certificate for {course}.'),
(40, 'certificate-text-positons', '\n     \n      \n      \n      &lt;div class=&quot;this-template&quot; style=&quot;width: 750px; position: relative;&quot;&gt;\n       &lt;img width=&quot;100%&quot; src=&quot;..\\..\\uploads/certificates/template.jpg&quot;&gt;\n        &lt;div class=&quot;draggable student_name&quot; style=&quot;position: absolute; font-family: Italianno, cursive; font-size: 25px; top: 390px; left: 63px;&quot;&gt;{student}&lt;/div&gt;\n       &lt;div class=&quot;draggable course_completion_date&quot; style=&quot;position: absolute; font-family: Italianno, cursive; font-size: 25px; top: 389px; left: 559px;&quot;&gt;{date}&lt;/div&gt;\n       &lt;div class=&quot;draggable certificate_text&quot; style=&quot;position: absolute; width: 500px; text-align: center; font-size: 20px; top: 230px; left: 123px;&quot;&gt;This is to certify that Mr. / Ms. {student} successfully completed the course with on certificate for {course}.&lt;/div&gt;\n       &lt;div class=&quot;draggable qrCode&quot; style=&quot;position: absolute; width: 65px; height: 65px; text-align: center; font-size: 20px; top: 306px; left: 338px;&quot;&gt;&lt;p style=&quot;text-align: center; padding: 4px 0px;&quot;&gt;Qr code&lt;/p&gt;&lt;/div&gt;\n     &lt;/div&gt;\n                '),
(41, 'course_accessibility', 'publicly');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE IF NOT EXISTS `tag` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagable_id` int(11) DEFAULT NULL,
  `tagable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skills` longtext COLLATE utf8_unicode_ci NOT NULL,
  `social_links` longtext COLLATE utf8_unicode_ci,
  `biography` longtext COLLATE utf8_unicode_ci,
  `role_id` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `wishlist` longtext COLLATE utf8_unicode_ci,
  `title` longtext COLLATE utf8_unicode_ci,
  `payment_keys` longtext COLLATE utf8_unicode_ci NOT NULL,
  `verification_code` longtext COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `is_instructor` int(11) DEFAULT '0',
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `skills`, `social_links`, `biography`, `role_id`, `date_added`, `last_modified`, `wishlist`, `title`, `payment_keys`, `verification_code`, `status`, `is_instructor`, `image`) VALUES
(1, 'sout', 'rahim', 'sout.rahim@gmail.com', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 1, NULL, NULL, NULL, NULL, '', NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `watched_duration`
--

DROP TABLE IF EXISTS `watched_duration`;
CREATE TABLE IF NOT EXISTS `watched_duration` (
  `watched_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `watched_student_id` int(11) DEFAULT NULL,
  `watched_course_id` int(11) DEFAULT NULL,
  `watched_lesson_id` int(11) DEFAULT NULL,
  `watched_counter` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`watched_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `watch_histories`
--

DROP TABLE IF EXISTS `watch_histories`;
CREATE TABLE IF NOT EXISTS `watch_histories` (
  `watch_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `completed_lesson` longtext COLLATE utf8_unicode_ci NOT NULL,
  `course_progress` int(11) NOT NULL,
  `watching_lesson_id` int(11) NOT NULL,
  `quiz_result` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date_added` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_updated` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`watch_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
