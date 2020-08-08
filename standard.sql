-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2020 at 11:21 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `standard`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `banner_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_des` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_sort` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_type` enum('Slide','HomeBanner','CategoryBanner','BrandBanner') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `user_id`, `banner_name`, `banner_des`, `banner_image`, `banner_sort`, `banner_type`, `banner_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Standard Global', 'Slider 1 Details', 'upload/banner/1575272945.jpg', '4', 'Slide', 'Active', NULL, '2020-01-04 09:40:04', NULL),
(2, 1, 'Hello Standard  Cosmetics Avalable Now', 'This is secon banner', 'upload/banner/1577185790.jpg', '2', 'Slide', 'Active', '2019-12-01 23:59:03', '2019-12-24 11:09:50', NULL),
(3, 1, 'Standard Global', 'banner', 'upload/banner/1575273077.jpg', '3', 'Slide', 'Active', '2019-12-02 01:51:18', '2020-01-04 09:40:47', NULL),
(4, 1, 'Standard Global', '1', 'upload/banner/1579532203.png', '1', 'Slide', 'Active', '2019-12-02 01:51:44', '2020-01-20 14:56:59', NULL),
(5, 1, 'Standard Global', NULL, 'upload/banner/1579532136.png', '1', 'Slide', 'Active', '2019-12-19 06:49:48', '2020-01-20 14:55:37', NULL),
(6, 1, 'STANDARD_TULSI_TEA', 'RTERT', 'upload/banner/1577180451.jpg', 'STANDARD_TULSI TEA', 'Slide', 'Active', '2019-12-21 14:35:58', '2019-12-24 11:11:18', NULL),
(7, 1, 'STANDARD_GREEN_TEA', 'STANDARD_GREEN_TEA', 'upload/banner/1577180889.jpg', 'STANDARD_GREEN_TEA', 'Slide', 'Active', '2019-12-21 14:38:53', '2019-12-24 09:48:09', NULL),
(8, 1, 'STANDARD_SLIM_TEA', 'STANDARD_SLIM_TEA', 'upload/banner/1577182719.jpg', 'STANDARD_SLIM_TEA', 'Slide', 'Active', '2019-12-21 14:43:54', '2019-12-24 10:18:39', NULL),
(9, 1, 'STANDARD_PRODUCT', 'STANDARD_PRODUCT', 'upload/banner/1577117986.gif', 'STANDARD_PRODUCT', 'Slide', 'Active', '2019-12-21 14:45:34', '2019-12-23 16:19:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_sort` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `user_id`, `brand_name`, `image`, `brand_sort`, `brand_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'STANDARD', '', 'STANDARD', 'Active', '2019-12-21 13:34:08', '2019-12-21 13:34:08', NULL),
(2, 1, 'LAVANA', '', 'LAVANA', 'Active', '2019-12-23 12:08:13', '2019-12-23 12:08:13', NULL),
(3, 1, 'Upcoming', '', 'Upcoming', 'Active', '2019-12-23 14:43:46', '2019-12-23 14:43:46', NULL),
(4, 1, 'DERMA PLUS+', '', 'DERMA PLUS+', 'Active', '2019-12-23 15:23:05', '2019-12-23 15:23:05', NULL),
(5, 1, 'REAL', '', '1', 'Active', '2019-12-30 06:00:15', '2019-12-30 06:00:15', NULL),
(6, 1, 'Aromix', '', '1', 'Active', '2020-01-06 17:33:26', '2020-01-06 17:33:26', NULL),
(7, 1, 'Disaar', '', '1', 'Active', '2020-01-16 16:24:17', '2020-01-16 16:24:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_sort` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_featured` enum('True','False') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `category_name`, `image`, `category_sort`, `category_featured`, `category_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Health & Beauty', '', '1', 'True', 'Active', '2019-12-21 13:32:15', '2020-01-16 16:26:51', NULL),
(2, 1, 'HERBAL ITEM', '', 'HERBAL ITEM', 'True', 'Active', '2019-12-21 13:32:25', '2019-12-21 13:32:25', NULL),
(3, 1, 'COSMETICS ITEM', '', 'COSMETICS ITEM', 'True', 'Active', '2019-12-21 13:32:38', '2019-12-21 13:32:38', NULL),
(4, 1, 'STANDATD_PACKAGE', '', 'STANDATD_PACKAGE', 'True', 'Active', '2019-12-21 14:57:30', '2019-12-21 14:57:30', NULL),
(5, 1, 'CONSUMER ITEM', '', 'CONSUMER ITEM', 'True', 'Active', '2019-12-30 05:53:28', '2019-12-30 05:54:11', NULL),
(6, 1, 'KOREA ITEM', '', '1', 'True', 'Active', '2020-01-16 15:59:00', '2020-01-30 15:31:08', '2020-01-30 15:31:08');

-- --------------------------------------------------------

--
-- Table structure for table `category_galleries`
--

CREATE TABLE `category_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_galleries`
--

INSERT INTO `category_galleries` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sister Concern', 'Active', '2020-01-13 04:32:02', '2020-01-30 15:29:56'),
(2, 'Second Category', 'Active', '2020-01-13 06:08:12', '2020-01-13 06:08:12');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phonecode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`, `phonecode`, `currency_name`, `currency_symbol`, `currency_code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'AF', 'Afghanistan', '93', 'Afghan afghani', '؋', 'AFN', NULL, NULL, NULL),
(2, 'AL', 'Albania', '355', 'Albanian lek', 'L', 'ALL', NULL, NULL, NULL),
(3, 'DZ', 'Algeria', '213', 'Algerian dinar', 'د.ج', 'DZD', NULL, NULL, NULL),
(4, 'AS', 'American Samoa', '1684', '', '', '', NULL, NULL, NULL),
(5, 'AD', 'Andorra', '376', 'Euro', '€', 'EUR', NULL, NULL, NULL),
(6, 'AO', 'Angola', '244', 'Angolan kwanza', 'Kz', 'AOA', NULL, NULL, NULL),
(7, 'AI', 'Anguilla', '1264', 'East Caribbean dolla', '$', 'XCD', NULL, NULL, NULL),
(8, 'AQ', 'Antarctica', '0', '', '', '', NULL, NULL, NULL),
(9, 'AG', 'Antigua And Barbuda', '1268', 'East Caribbean dolla', '$', 'XCD', NULL, NULL, NULL),
(10, 'AR', 'Argentina', '54', 'Argentine peso', '$', 'ARS', NULL, NULL, NULL),
(11, 'AM', 'Armenia', '374', 'Armenian dram', '', 'AMD', NULL, NULL, NULL),
(12, 'AW', 'Aruba', '297', 'Aruban florin', 'ƒ', 'AWG', NULL, NULL, NULL),
(13, 'AU', 'Australia', '61', 'Australian dollar', '$', 'AUD', NULL, NULL, NULL),
(14, 'AT', 'Austria', '43', 'Euro', '€', 'EUR', NULL, NULL, NULL),
(15, 'AZ', 'Azerbaijan', '994', 'Azerbaijani manat', '', 'AZN', NULL, NULL, NULL),
(16, 'BS', 'Bahamas The', '1242', '', '', '', NULL, NULL, NULL),
(17, 'BH', 'Bahrain', '973', 'Bahraini dinar', '.د.ب', 'BHD', NULL, NULL, NULL),
(18, 'BD', 'Bangladesh', '88', 'Bangladeshi taka', '৳', 'BDT', NULL, NULL, NULL),
(19, 'BB', 'Barbados', '1246', 'Barbadian dollar', '$', 'BBD', NULL, NULL, NULL),
(20, 'BY', 'Belarus', '375', 'Belarusian ruble', 'Br', 'BYR', NULL, NULL, NULL),
(21, 'BE', 'Belgium', '32', 'Euro', '€', 'EUR', NULL, NULL, NULL),
(22, 'BZ', 'Belize', '501', 'Belize dollar', '$', 'BZD', NULL, NULL, NULL),
(23, 'BJ', 'Benin', '229', 'West African CFA fra', 'Fr', 'XOF', NULL, NULL, NULL),
(24, 'BM', 'Bermuda', '1441', 'Bermudian dollar', '$', 'BMD', NULL, NULL, NULL),
(25, 'BT', 'Bhutan', '975', 'Bhutanese ngultrum', 'Nu.', 'BTN', NULL, NULL, NULL),
(26, 'BO', 'Bolivia', '591', 'Bolivian boliviano', 'Bs.', 'BOB', NULL, NULL, NULL),
(27, 'BA', 'Bosnia and Herzegovina', '387', 'Bosnia and Herzegovi', 'KM or КМ', 'BAM', NULL, NULL, NULL),
(28, 'BW', 'Botswana', '267', 'Botswana pula', 'P', 'BWP', NULL, NULL, NULL),
(29, 'BV', 'Bouvet Island', '0', '', '', '', NULL, NULL, NULL),
(30, 'BR', 'Brazil', '55', 'Brazilian real', 'R$', 'BRL', NULL, NULL, NULL),
(31, 'IO', 'British Indian Ocean Territory', '246', 'United States dollar', '$', 'USD', NULL, NULL, NULL),
(32, 'BN', 'Brunei', '673', 'Brunei dollar', '$', 'BND', NULL, NULL, NULL),
(33, 'BG', 'Bulgaria', '359', 'Bulgarian lev', 'лв', 'BGN', NULL, NULL, NULL),
(34, 'BF', 'Burkina Faso', '226', 'West African CFA fra', 'Fr', 'XOF', NULL, NULL, NULL),
(35, 'BI', 'Burundi', '257', 'Burundian franc', 'Fr', 'BIF', NULL, NULL, NULL),
(36, 'KH', 'Cambodia', '855', 'Cambodian riel', '៛', 'KHR', NULL, NULL, NULL),
(37, 'CM', 'Cameroon', '237', 'Central African CFA ', 'Fr', 'XAF', NULL, NULL, NULL),
(38, 'CA', 'Canada', '1', 'Canadian dollar', '$', 'CAD', NULL, NULL, NULL),
(39, 'CV', 'Cape Verde', '238', 'Cape Verdean escudo', 'Esc or $', 'CVE', NULL, NULL, NULL),
(40, 'KY', 'Cayman Islands', '1345', 'Cayman Islands dolla', '$', 'KYD', NULL, NULL, NULL),
(41, 'CF', 'Central African Republic', '236', 'Central African CFA ', 'Fr', 'XAF', NULL, NULL, NULL),
(42, 'TD', 'Chad', '235', 'Central African CFA ', 'Fr', 'XAF', NULL, NULL, NULL),
(43, 'CL', 'Chile', '56', 'Chilean peso', '$', 'CLP', NULL, NULL, NULL),
(44, 'CN', 'China', '86', 'Chinese yuan', '¥ or 元', 'CNY', NULL, NULL, NULL),
(45, 'CX', 'Christmas Island', '61', '', '', '', NULL, NULL, NULL),
(46, 'CC', 'Cocos (Keeling) Islands', '672', 'Australian dollar', '$', 'AUD', NULL, NULL, NULL),
(47, 'CO', 'Colombia', '57', 'Colombian peso', '$', 'COP', NULL, NULL, NULL),
(48, 'KM', 'Comoros', '269', 'Comorian franc', 'Fr', 'KMF', NULL, NULL, NULL),
(49, 'CG', 'Congo', '242', '', '', '', NULL, NULL, NULL),
(50, 'CD', 'Congo The Democratic Republic Of The', '242', '', '', '', NULL, NULL, NULL),
(51, 'CK', 'Cook Islands', '682', 'New Zealand dollar', '$', 'NZD', NULL, NULL, NULL),
(52, 'CR', 'Costa Rica', '506', 'Costa Rican colón', '₡', 'CRC', NULL, NULL, NULL),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)', '225', '', '', '', NULL, NULL, NULL),
(54, 'HR', 'Croatia (Hrvatska)', '385', '', '', '', NULL, NULL, NULL),
(55, 'CU', 'Cuba', '53', 'Cuban convertible pe', '$', 'CUC', NULL, NULL, NULL),
(56, 'CY', 'Cyprus', '357', 'Euro', '€', 'EUR', NULL, NULL, NULL),
(57, 'CZ', 'Czech Republic', '420', 'Czech koruna', 'Kč', 'CZK', NULL, NULL, NULL),
(58, 'DK', 'Denmark', '45', 'Danish krone', 'kr', 'DKK', NULL, NULL, NULL),
(59, 'DJ', 'Djibouti', '253', 'Djiboutian franc', 'Fr', 'DJF', NULL, NULL, NULL),
(60, 'DM', 'Dominica', '1767', 'East Caribbean dolla', '$', 'XCD', NULL, NULL, NULL),
(61, 'DO', 'Dominican Republic', '1809', 'Dominican peso', '$', 'DOP', NULL, NULL, NULL),
(62, 'TP', 'East Timor', '670', 'United States dollar', '$', 'USD', NULL, NULL, NULL),
(63, 'EC', 'Ecuador', '593', 'United States dollar', '$', 'USD', NULL, NULL, NULL),
(64, 'EG', 'Egypt', '20', 'Egyptian pound', '£ or ج.م', 'EGP', NULL, NULL, NULL),
(65, 'SV', 'El Salvador', '503', 'United States dollar', '$', 'USD', NULL, NULL, NULL),
(66, 'GQ', 'Equatorial Guinea', '240', 'Central African CFA ', 'Fr', 'XAF', NULL, NULL, NULL),
(67, 'ER', 'Eritrea', '291', 'Eritrean nakfa', 'Nfk', 'ERN', NULL, NULL, NULL),
(68, 'EE', 'Estonia', '372', 'Euro', '€', 'EUR', NULL, NULL, NULL),
(69, 'ET', 'Ethiopia', '251', 'Ethiopian birr', 'Br', 'ETB', NULL, NULL, NULL),
(70, 'XA', 'External Territories of Australia', '61', '', '', '', NULL, NULL, NULL),
(71, 'FK', 'Falkland Islands', '500', 'Falkland Islands pou', '£', 'FKP', NULL, NULL, NULL),
(72, 'FO', 'Faroe Islands', '298', 'Danish krone', 'kr', 'DKK', NULL, NULL, NULL),
(73, 'FJ', 'Fiji Islands', '679', '', '', '', NULL, NULL, NULL),
(74, 'FI', 'Finland', '358', 'Euro', '€', 'EUR', NULL, NULL, NULL),
(75, 'FR', 'France', '33', 'Euro', '€', 'EUR', NULL, NULL, NULL),
(76, 'GF', 'French Guiana', '594', '', '', '', NULL, NULL, NULL),
(77, 'PF', 'French Polynesia', '689', 'CFP franc', 'Fr', 'XPF', NULL, NULL, NULL),
(78, 'TF', 'French Southern Territories', '0', '', '', '', NULL, NULL, NULL),
(79, 'GA', 'Gabon', '241', 'Central African CFA ', 'Fr', 'XAF', NULL, NULL, NULL),
(80, 'GM', 'Gambia The', '220', '', '', '', NULL, NULL, NULL),
(81, 'GE', 'Georgia', '995', 'Georgian lari', 'ლ', 'GEL', NULL, NULL, NULL),
(82, 'DE', 'Germany', '49', 'Euro', '€', 'EUR', NULL, NULL, NULL),
(83, 'GH', 'Ghana', '233', 'Ghana cedi', '₵', 'GHS', NULL, NULL, NULL),
(84, 'GI', 'Gibraltar', '350', 'Gibraltar pound', '£', 'GIP', NULL, NULL, NULL),
(85, 'GR', 'Greece', '30', 'Euro', '€', 'EUR', NULL, NULL, NULL),
(86, 'GL', 'Greenland', '299', '', '', '', NULL, NULL, NULL),
(87, 'GD', 'Grenada', '1473', 'East Caribbean dolla', '$', 'XCD', NULL, NULL, NULL),
(88, 'GP', 'Guadeloupe', '590', '', '', '', NULL, NULL, NULL),
(89, 'GU', 'Guam', '1671', '', '', '', NULL, NULL, NULL),
(90, 'GT', 'Guatemala', '502', 'Guatemalan quetzal', 'Q', 'GTQ', NULL, NULL, NULL),
(91, 'XU', 'Guernsey and Alderney', '44', '', '', '', NULL, NULL, NULL),
(92, 'GN', 'Guinea', '224', 'Guinean franc', 'Fr', 'GNF', NULL, NULL, NULL),
(93, 'GW', 'Guinea-Bissau', '245', 'West African CFA fra', 'Fr', 'XOF', NULL, NULL, NULL),
(94, 'GY', 'Guyana', '592', 'Guyanese dollar', '$', 'GYD', NULL, NULL, NULL),
(95, 'HT', 'Haiti', '509', 'Haitian gourde', 'G', 'HTG', NULL, NULL, NULL),
(96, 'HM', 'Heard and McDonald Islands', '0', '', '', '', NULL, NULL, NULL),
(97, 'HN', 'Honduras', '504', 'Honduran lempira', 'L', 'HNL', NULL, NULL, NULL),
(98, 'HK', 'Hong Kong S.A.R.', '852', '', '', '', NULL, NULL, NULL),
(99, 'HU', 'Hungary', '36', 'Hungarian forint', 'Ft', 'HUF', NULL, NULL, NULL),
(100, 'IS', 'Iceland', '354', 'Icelandic króna', 'kr', 'ISK', NULL, NULL, NULL),
(101, 'IN', 'India', '91', 'Indian rupee', '₹', 'INR', NULL, NULL, NULL),
(102, 'ID', 'Indonesia', '62', 'Indonesian rupiah', 'Rp', 'IDR', NULL, NULL, NULL),
(103, 'IR', 'Iran', '98', 'Iranian rial', '﷼', 'IRR', NULL, NULL, NULL),
(104, 'IQ', 'Iraq', '964', 'Iraqi dinar', 'ع.د', 'IQD', NULL, NULL, NULL),
(105, 'IE', 'Ireland', '353', 'Euro', '€', 'EUR', NULL, NULL, NULL),
(106, 'IL', 'Israel', '972', 'Israeli new shekel', '₪', 'ILS', NULL, NULL, NULL),
(107, 'IT', 'Italy', '39', 'Euro', '€', 'EUR', NULL, NULL, NULL),
(108, 'JM', 'Jamaica', '1876', 'Jamaican dollar', '$', 'JMD', NULL, NULL, NULL),
(109, 'JP', 'Japan', '81', 'Japanese yen', '¥', 'JPY', NULL, NULL, NULL),
(110, 'XJ', 'Jersey', '44', 'British pound', '£', 'GBP', NULL, NULL, NULL),
(111, 'JO', 'Jordan', '962', 'Jordanian dinar', 'د.ا', 'JOD', NULL, NULL, NULL),
(112, 'KZ', 'Kazakhstan', '7', 'Kazakhstani tenge', '', 'KZT', NULL, NULL, NULL),
(113, 'KE', 'Kenya', '254', 'Kenyan shilling', 'Sh', 'KES', NULL, NULL, NULL),
(114, 'KI', 'Kiribati', '686', 'Australian dollar', '$', 'AUD', NULL, NULL, NULL),
(115, 'KP', 'Korea North', '850', '', '', '', NULL, NULL, NULL),
(116, 'KR', 'Korea South', '82', '', '', '', NULL, NULL, NULL),
(117, 'KW', 'Kuwait', '965', 'Kuwaiti dinar', 'د.ك', 'KWD', NULL, NULL, NULL),
(118, 'KG', 'Kyrgyzstan', '996', 'Kyrgyzstani som', 'лв', 'KGS', NULL, NULL, NULL),
(119, 'LA', 'Laos', '856', 'Lao kip', '₭', 'LAK', NULL, NULL, NULL),
(120, 'LV', 'Latvia', '371', 'Euro', '€', 'EUR', NULL, NULL, NULL),
(121, 'LB', 'Lebanon', '961', 'Lebanese pound', 'ل.ل', 'LBP', NULL, NULL, NULL),
(122, 'LS', 'Lesotho', '266', 'Lesotho loti', 'L', 'LSL', NULL, NULL, NULL),
(123, 'LR', 'Liberia', '231', 'Liberian dollar', '$', 'LRD', NULL, NULL, NULL),
(124, 'LY', 'Libya', '218', 'Libyan dinar', 'ل.د', 'LYD', NULL, NULL, NULL),
(125, 'LI', 'Liechtenstein', '423', 'Swiss franc', 'Fr', 'CHF', NULL, NULL, NULL),
(126, 'LT', 'Lithuania', '370', 'Euro', '€', 'EUR', NULL, NULL, NULL),
(127, 'LU', 'Luxembourg', '352', 'Euro', '€', 'EUR', NULL, NULL, NULL),
(128, 'MO', 'Macau S.A.R.', '853', '', '', '', NULL, NULL, NULL),
(129, 'MK', 'Macedonia', '389', '', '', '', NULL, NULL, NULL),
(130, 'MG', 'Madagascar', '261', 'Malagasy ariary', 'Ar', 'MGA', NULL, NULL, NULL),
(131, 'MW', 'Malawi', '265', 'Malawian kwacha', 'MK', 'MWK', NULL, NULL, NULL),
(132, 'MY', 'Malaysia', '60', 'Malaysian ringgit', 'RM', 'MYR', NULL, NULL, NULL),
(133, 'MV', 'Maldives', '960', 'Maldivian rufiyaa', '.ރ', 'MVR', NULL, NULL, NULL),
(134, 'ML', 'Mali', '223', 'West African CFA fra', 'Fr', 'XOF', NULL, NULL, NULL),
(135, 'MT', 'Malta', '356', 'Euro', '€', 'EUR', NULL, NULL, NULL),
(136, 'XM', 'Man (Isle of)', '44', '', '', '', NULL, NULL, NULL),
(137, 'MH', 'Marshall Islands', '692', 'United States dollar', '$', 'USD', NULL, NULL, NULL),
(138, 'MQ', 'Martinique', '596', '', '', '', NULL, NULL, NULL),
(139, 'MR', 'Mauritania', '222', 'Mauritanian ouguiya', 'UM', 'MRO', NULL, NULL, NULL),
(140, 'MU', 'Mauritius', '230', 'Mauritian rupee', '₨', 'MUR', NULL, NULL, NULL),
(141, 'YT', 'Mayotte', '269', '', '', '', NULL, NULL, NULL),
(142, 'MX', 'Mexico', '52', 'Mexican peso', '$', 'MXN', NULL, NULL, NULL),
(143, 'FM', 'Micronesia', '691', 'Micronesian dollar', '$', '', NULL, NULL, NULL),
(144, 'MD', 'Moldova', '373', 'Moldovan leu', 'L', 'MDL', NULL, NULL, NULL),
(145, 'MC', 'Monaco', '377', 'Euro', '€', 'EUR', NULL, NULL, NULL),
(146, 'MN', 'Mongolia', '976', 'Mongolian tögrög', '₮', 'MNT', NULL, NULL, NULL),
(147, 'MS', 'Montserrat', '1664', 'East Caribbean dolla', '$', 'XCD', NULL, NULL, NULL),
(148, 'MA', 'Morocco', '212', 'Moroccan dirham', 'د.م.', 'MAD', NULL, NULL, NULL),
(149, 'MZ', 'Mozambique', '258', 'Mozambican metical', 'MT', 'MZN', NULL, NULL, NULL),
(150, 'MM', 'Myanmar', '95', 'Burmese kyat', 'Ks', 'MMK', NULL, NULL, NULL),
(151, 'NA', 'Namibia', '264', 'Namibian dollar', '$', 'NAD', NULL, NULL, NULL),
(152, 'NR', 'Nauru', '674', 'Australian dollar', '$', 'AUD', NULL, NULL, NULL),
(153, 'NP', 'Nepal', '977', 'Nepalese rupee', '₨', 'NPR', NULL, NULL, NULL),
(154, 'AN', 'Netherlands Antilles', '599', '', '', '', NULL, NULL, NULL),
(155, 'NL', 'Netherlands The', '31', '', '', '', NULL, NULL, NULL),
(156, 'NC', 'New Caledonia', '687', 'CFP franc', 'Fr', 'XPF', NULL, NULL, NULL),
(157, 'NZ', 'New Zealand', '64', 'New Zealand dollar', '$', 'NZD', NULL, NULL, NULL),
(158, 'NI', 'Nicaragua', '505', 'Nicaraguan córdoba', 'C$', 'NIO', NULL, NULL, NULL),
(159, 'NE', 'Niger', '227', 'West African CFA fra', 'Fr', 'XOF', NULL, NULL, NULL),
(160, 'NG', 'Nigeria', '234', 'Nigerian naira', '₦', 'NGN', NULL, NULL, NULL),
(161, 'NU', 'Niue', '683', 'New Zealand dollar', '$', 'NZD', NULL, NULL, NULL),
(162, 'NF', 'Norfolk Island', '672', '', '', '', NULL, NULL, NULL),
(163, 'MP', 'Northern Mariana Islands', '1670', '', '', '', NULL, NULL, NULL),
(164, 'NO', 'Norway', '47', 'Norwegian krone', 'kr', 'NOK', NULL, NULL, NULL),
(165, 'OM', 'Oman', '968', 'Omani rial', 'ر.ع.', 'OMR', NULL, NULL, NULL),
(166, 'PK', 'Pakistan', '92', 'Pakistani rupee', '₨', 'PKR', NULL, NULL, NULL),
(167, 'PW', 'Palau', '680', 'Palauan dollar', '$', '', NULL, NULL, NULL),
(168, 'PS', 'Palestinian Territory Occupied', '970', '', '', '', NULL, NULL, NULL),
(169, 'PA', 'Panama', '507', 'Panamanian balboa', 'B/.', 'PAB', NULL, NULL, NULL),
(170, 'PG', 'Papua new Guinea', '675', 'Papua New Guinean ki', 'K', 'PGK', NULL, NULL, NULL),
(171, 'PY', 'Paraguay', '595', 'Paraguayan guaraní', '₲', 'PYG', NULL, NULL, NULL),
(172, 'PE', 'Peru', '51', 'Peruvian nuevo sol', 'S/.', 'PEN', NULL, NULL, NULL),
(173, 'PH', 'Philippines', '63', 'Philippine peso', '₱', 'PHP', NULL, NULL, NULL),
(174, 'PN', 'Pitcairn Island', '0', '', '', '', NULL, NULL, NULL),
(175, 'PL', 'Poland', '48', 'Polish złoty', 'zł', 'PLN', NULL, NULL, NULL),
(176, 'PT', 'Portugal', '351', 'Euro', '€', 'EUR', NULL, NULL, NULL),
(177, 'PR', 'Puerto Rico', '1787', '', '', '', NULL, NULL, NULL),
(178, 'QA', 'Qatar', '974', 'Qatari riyal', 'ر.ق', 'QAR', NULL, NULL, NULL),
(179, 'RE', 'Reunion', '262', '', '', '', NULL, NULL, NULL),
(180, 'RO', 'Romania', '40', 'Romanian leu', 'lei', 'RON', NULL, NULL, NULL),
(181, 'RU', 'Russia', '70', 'Russian ruble', '', 'RUB', NULL, NULL, NULL),
(182, 'RW', 'Rwanda', '250', 'Rwandan franc', 'Fr', 'RWF', NULL, NULL, NULL),
(183, 'SH', 'Saint Helena', '290', 'Saint Helena pound', '£', 'SHP', NULL, NULL, NULL),
(184, 'KN', 'Saint Kitts And Nevis', '1869', 'East Caribbean dolla', '$', 'XCD', NULL, NULL, NULL),
(185, 'LC', 'Saint Lucia', '1758', 'East Caribbean dolla', '$', 'XCD', NULL, NULL, NULL),
(186, 'PM', 'Saint Pierre and Miquelon', '508', '', '', '', NULL, NULL, NULL),
(187, 'VC', 'Saint Vincent And The Grenadines', '1784', 'East Caribbean dolla', '$', 'XCD', NULL, NULL, NULL),
(188, 'WS', 'Samoa', '684', 'Samoan tālā', 'T', 'WST', NULL, NULL, NULL),
(189, 'SM', 'San Marino', '378', 'Euro', '€', 'EUR', NULL, NULL, NULL),
(190, 'ST', 'Sao Tome and Principe', '239', 'São Tomé and Príncip', 'Db', 'STD', NULL, NULL, NULL),
(191, 'SA', 'Saudi Arabia', '966', 'Saudi riyal', 'ر.س', 'SAR', NULL, NULL, NULL),
(192, 'SN', 'Senegal', '221', 'West African CFA fra', 'Fr', 'XOF', NULL, NULL, NULL),
(193, 'RS', 'Serbia', '381', 'Serbian dinar', 'дин. or din.', 'RSD', NULL, NULL, NULL),
(194, 'SC', 'Seychelles', '248', 'Seychellois rupee', '₨', 'SCR', NULL, NULL, NULL),
(195, 'SL', 'Sierra Leone', '232', 'Sierra Leonean leone', 'Le', 'SLL', NULL, NULL, NULL),
(196, 'SG', 'Singapore', '65', 'Brunei dollar', '$', 'BND', NULL, NULL, NULL),
(197, 'SK', 'Slovakia', '421', 'Euro', '€', 'EUR', NULL, NULL, NULL),
(198, 'SI', 'Slovenia', '386', 'Euro', '€', 'EUR', NULL, NULL, NULL),
(199, 'XG', 'Smaller Territories of the UK', '44', '', '', '', NULL, NULL, NULL),
(200, 'SB', 'Solomon Islands', '677', 'Solomon Islands doll', '$', 'SBD', NULL, NULL, NULL),
(201, 'SO', 'Somalia', '252', 'Somali shilling', 'Sh', 'SOS', NULL, NULL, NULL),
(202, 'ZA', 'South Africa', '27', 'South African rand', 'R', 'ZAR', NULL, NULL, NULL),
(203, 'GS', 'South Georgia', '0', '', '', '', NULL, NULL, NULL),
(204, 'SS', 'South Sudan', '211', 'South Sudanese pound', '£', 'SSP', NULL, NULL, NULL),
(205, 'ES', 'Spain', '34', 'Euro', '€', 'EUR', NULL, NULL, NULL),
(206, 'LK', 'Sri Lanka', '94', 'Sri Lankan rupee', 'Rs or රු', 'LKR', NULL, NULL, NULL),
(207, 'SD', 'Sudan', '249', 'Sudanese pound', 'ج.س.', 'SDG', NULL, NULL, NULL),
(208, 'SR', 'Suriname', '597', 'Surinamese dollar', '$', 'SRD', NULL, NULL, NULL),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', '47', '', '', '', NULL, NULL, NULL),
(210, 'SZ', 'Swaziland', '268', 'Swazi lilangeni', 'L', 'SZL', NULL, NULL, NULL),
(211, 'SE', 'Sweden', '46', 'Swedish krona', 'kr', 'SEK', NULL, NULL, NULL),
(212, 'CH', 'Switzerland', '41', 'Swiss franc', 'Fr', 'CHF', NULL, NULL, NULL),
(213, 'SY', 'Syria', '963', 'Syrian pound', '£ or ل.س', 'SYP', NULL, NULL, NULL),
(214, 'TW', 'Taiwan', '886', 'New Taiwan dollar', '$', 'TWD', NULL, NULL, NULL),
(215, 'TJ', 'Tajikistan', '992', 'Tajikistani somoni', 'ЅМ', 'TJS', NULL, NULL, NULL),
(216, 'TZ', 'Tanzania', '255', 'Tanzanian shilling', 'Sh', 'TZS', NULL, NULL, NULL),
(217, 'TH', 'Thailand', '66', 'Thai baht', '฿', 'THB', NULL, NULL, NULL),
(218, 'TG', 'Togo', '228', 'West African CFA fra', 'Fr', 'XOF', NULL, NULL, NULL),
(219, 'TK', 'Tokelau', '690', '', '', '', NULL, NULL, NULL),
(220, 'TO', 'Tonga', '676', 'Tongan paʻanga', 'T$', 'TOP', NULL, NULL, NULL),
(221, 'TT', 'Trinidad And Tobago', '1868', 'Trinidad and Tobago ', '$', 'TTD', NULL, NULL, NULL),
(222, 'TN', 'Tunisia', '216', 'Tunisian dinar', 'د.ت', 'TND', NULL, NULL, NULL),
(223, 'TR', 'Turkey', '90', 'Turkish lira', '', 'TRY', NULL, NULL, NULL),
(224, 'TM', 'Turkmenistan', '7370', 'Turkmenistan manat', 'm', 'TMT', NULL, NULL, NULL),
(225, 'TC', 'Turks And Caicos Islands', '1649', 'United States dollar', '$', 'USD', NULL, NULL, NULL),
(226, 'TV', 'Tuvalu', '688', 'Australian dollar', '$', 'AUD', NULL, NULL, NULL),
(227, 'UG', 'Uganda', '256', 'Ugandan shilling', 'Sh', 'UGX', NULL, NULL, NULL),
(228, 'UA', 'Ukraine', '380', 'Ukrainian hryvnia', '₴', 'UAH', NULL, NULL, NULL),
(229, 'AE', 'United Arab Emirates', '971', 'United Arab Emirates', 'د.إ', 'AED', NULL, NULL, NULL),
(230, 'GB', 'United Kingdom', '44', 'British pound', '£', 'GBP', NULL, NULL, NULL),
(231, 'US', 'United States', '1', 'United States dollar', '$', 'USD', NULL, NULL, NULL),
(232, 'UM', 'United States Minor Outlying Islands', '1', '', '', '', NULL, NULL, NULL),
(233, 'UY', 'Uruguay', '598', 'Uruguayan peso', '$', 'UYU', NULL, NULL, NULL),
(234, 'UZ', 'Uzbekistan', '998', 'Uzbekistani som', '', 'UZS', NULL, NULL, NULL),
(235, 'VU', 'Vanuatu', '678', 'Vanuatu vatu', 'Vt', 'VUV', NULL, NULL, NULL),
(236, 'VA', 'Vatican City State (Holy See)', '39', '', '', '', NULL, NULL, NULL),
(237, 'VE', 'Venezuela', '58', 'Venezuelan bolívar', 'Bs F', 'VEF', NULL, NULL, NULL),
(238, 'VN', 'Vietnam', '84', 'Vietnamese đồng', '₫', 'VND', NULL, NULL, NULL),
(239, 'VG', 'Virgin Islands (British)', '1284', '', '', '', NULL, NULL, NULL),
(240, 'VI', 'Virgin Islands (US)', '1340', '', '', '', NULL, NULL, NULL),
(241, 'WF', 'Wallis And Futuna Islands', '681', '', '', '', NULL, NULL, NULL),
(242, 'EH', 'Western Sahara', '212', '', '', '', NULL, NULL, NULL),
(243, 'YE', 'Yemen', '967', 'Yemeni rial', '﷼', 'YER', NULL, NULL, NULL),
(244, 'YU', 'Yugoslavia', '38', '', '', '', NULL, NULL, NULL),
(245, 'ZM', 'Zambia', '260', 'Zambian kwacha', 'ZK', 'ZMW', NULL, NULL, NULL),
(246, 'ZW', 'Zimbabwe', '263', 'Botswana pula', 'P', 'BWP', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cupon_codes`
--

CREATE TABLE `cupon_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_user_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cupon_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cupon_amount` decimal(20,2) DEFAULT NULL,
  `cupon_type` enum('withdrawal','user','admin') COLLATE utf8mb4_unicode_ci NOT NULL,
  `cupon_flow` enum('in','out') COLLATE utf8mb4_unicode_ci NOT NULL,
  `cupon_check` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cupon_details` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cupon_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dealers`
--

CREATE TABLE `dealers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dealer_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district_id` int(10) DEFAULT NULL,
  `division_id` int(10) DEFAULT NULL,
  `upazila_id` int(10) DEFAULT NULL,
  `dealer_delivery_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dealer_delivery_phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dealer_delivery_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dealer_delivery_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dealer_delivery_city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dealer_delivery_state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dealer_delivery_country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dealer_delivery_postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dealer_bonus` decimal(20,2) DEFAULT NULL,
  `dealer_ref_bonus` decimal(20,2) DEFAULT NULL,
  `dealer_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dealers`
--

INSERT INTO `dealers` (`id`, `user_id`, `dealer_type`, `district_id`, `division_id`, `upazila_id`, `dealer_delivery_address`, `dealer_delivery_phone`, `dealer_delivery_email`, `dealer_delivery_name`, `dealer_delivery_city`, `dealer_delivery_state`, `dealer_delivery_country`, `dealer_delivery_postcode`, `dealer_bonus`, `dealer_ref_bonus`, `dealer_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', 'admin', 2, 4, NULL, 'test', '213131231', 'test@email.com', 'Test', '46', '2', '1', '1229', '10.00', '10.00', 'yrd', NULL, NULL, NULL),
(2, '246', 'office', 1, 3, NULL, 'dhaka', '01924713232', 'standardagrofood19@gmail.com', 'Company', '1', '3', '18', '100', NULL, NULL, NULL, '2020-02-17 00:39:59', '2020-02-17 00:39:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dealer_bonuses`
--

CREATE TABLE `dealer_bonuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT NULL,
  `details` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation_details` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `designation_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bn_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `bn_name`, `lat`, `lon`, `website`, `sort`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '3', 'Dhaka', 'ঢাকা', '23.7115253', '90.4111451', 'www.dhaka.gov.bd', '', NULL, NULL, NULL),
(2, '3', 'Faridpur', 'ফরিদপুর', '23.6070822', '89.8429406', 'www.faridpur.gov.bd', '', NULL, NULL, NULL),
(3, '3', 'Gazipur', 'গাজীপুর', '24.0022858', '90.4264283', 'www.gazipur.gov.bd', '', NULL, NULL, NULL),
(4, '3', 'Gopalganj', 'গোপালগঞ্জ', '23.0050857', '89.8266059', 'www.gopalganj.gov.bd', '', NULL, NULL, NULL),
(5, '8', 'Jamalpur', 'জামালপুর', '24.937533', '89.937775', 'www.jamalpur.gov.bd', '', NULL, NULL, NULL),
(6, '3', 'Kishoreganj', 'কিশোরগঞ্জ', '24.444937', '90.776575', 'www.kishoreganj.gov.bd', '', NULL, NULL, NULL),
(7, '3', 'Madaripur', 'মাদারীপুর', '23.164102', '90.1896805', 'www.madaripur.gov.bd', '', NULL, NULL, NULL),
(8, '3', 'Manikganj', 'মানিকগঞ্জ', '0', '0', 'www.manikganj.gov.bd', '', NULL, NULL, NULL),
(9, '3', 'Munshiganj', 'মুন্সিগঞ্জ', '0', '0', 'www.munshiganj.gov.bd', '', NULL, NULL, NULL),
(10, '8', 'Mymensingh', 'ময়মনসিংহ', '0', '0', 'www.mymensingh.gov.bd', '', NULL, NULL, NULL),
(11, '3', 'Narayanganj', 'নারায়াণগঞ্জ', '23.63366', '90.496482', 'www.narayanganj.gov.bd', '', NULL, NULL, NULL),
(12, '3', 'Narsingdi', 'নরসিংদী', '23.932233', '90.71541', 'www.narsingdi.gov.bd', '', NULL, NULL, NULL),
(13, '8', 'Netrokona', 'নেত্রকোণা', '24.870955', '90.727887', 'www.netrokona.gov.bd', '', NULL, NULL, NULL),
(14, '3', 'Rajbari', 'রাজবাড়ি', '23.7574305', '89.6444665', 'www.rajbari.gov.bd', '', NULL, NULL, NULL),
(15, '3', 'Shariatpur', 'শরীয়তপুর', '0', '0', 'www.shariatpur.gov.bd', '', NULL, NULL, NULL),
(16, '8', 'Sherpur', 'শেরপুর', '25.0204933', '90.0152966', 'www.sherpur.gov.bd', '', NULL, NULL, NULL),
(17, '3', 'Tangail', 'টাঙ্গাইল', '0', '0', 'www.tangail.gov.bd', '', NULL, NULL, NULL),
(18, '5', 'Bogura', 'বগুড়া', '24.8465228', '89.377755', 'www.bogra.gov.bd', '', NULL, NULL, NULL),
(19, '5', 'Joypurhat', 'জয়পুরহাট', '0', '0', 'www.joypurhat.gov.bd', '', NULL, NULL, NULL),
(20, '5', 'Naogaon', 'নওগাঁ', '0', '0', 'www.naogaon.gov.bd', '', NULL, NULL, NULL),
(21, '5', 'Natore', 'নাটোর', '24.420556', '89.000282', 'www.natore.gov.bd', '', NULL, NULL, NULL),
(22, '5', 'Nawabganj', 'নবাবগঞ্জ', '24.5965034', '88.2775122', 'www.chapainawabganj.gov.bd', '', NULL, NULL, NULL),
(23, '5', 'Pabna', 'পাবনা', '23.998524', '89.233645', 'www.pabna.gov.bd', '', NULL, NULL, NULL),
(24, '5', 'Rajshahi', 'রাজশাহী', '0', '0', 'www.rajshahi.gov.bd', '', NULL, NULL, NULL),
(25, '5', 'Sirajgonj', 'সিরাজগঞ্জ', '24.4533978', '89.7006815', 'www.sirajganj.gov.bd', '', NULL, NULL, NULL),
(26, '6', 'Dinajpur', 'দিনাজপুর', '25.6217061', '88.6354504', 'www.dinajpur.gov.bd', '', NULL, NULL, NULL),
(27, '6', 'Gaibandha', 'গাইবান্ধা', '25.328751', '89.528088', 'www.gaibandha.gov.bd', '', NULL, NULL, NULL),
(28, '6', 'Kurigram', 'কুড়িগ্রাম', '25.805445', '89.636174', 'www.kurigram.gov.bd', '', NULL, NULL, NULL),
(29, '6', 'Lalmonirhat', 'লালমনিরহাট', '0', '0', 'www.lalmonirhat.gov.bd', '', NULL, NULL, NULL),
(30, '6', 'Nilphamari', 'নীলফামারী', '25.931794', '88.856006', 'www.nilphamari.gov.bd', '', NULL, NULL, NULL),
(31, '6', 'Panchagarh', 'পঞ্চগড়', '26.3411', '88.5541606', 'www.panchagarh.gov.bd', '', NULL, NULL, NULL),
(32, '6', 'Rangpur', 'রংপুর', '25.7558096', '89.244462', 'www.rangpur.gov.bd', '', NULL, NULL, NULL),
(33, '6', 'Thakurgaon', 'ঠাকুরগাঁও', '26.0336945', '88.4616834', 'www.thakurgaon.gov.bd', '', NULL, NULL, NULL),
(34, '1', 'Barguna', 'বরগুনা', '0', '0', 'www.barguna.gov.bd', '', NULL, NULL, NULL),
(35, '1', 'Barishal', 'বরিশাল', '0', '0', 'www.barisal.gov.bd', '', NULL, NULL, NULL),
(36, '1', 'Bhola', 'ভোলা', '22.685923', '90.648179', 'www.bhola.gov.bd', '', NULL, NULL, NULL),
(37, '1', 'Jhalokati', 'ঝালকাঠি', '0', '0', 'www.jhalakathi.gov.bd', '', NULL, NULL, NULL),
(38, '1', 'Patuakhali', 'পটুয়াখালী', '22.3596316', '90.3298712', 'www.patuakhali.gov.bd', '', NULL, NULL, NULL),
(39, '1', 'Pirojpur', 'পিরোজপুর', '0', '0', 'www.pirojpur.gov.bd', '', NULL, NULL, NULL),
(40, '2', 'Bandarban', 'বান্দরবান', '22.1953275', '92.2183773', 'www.bandarban.gov.bd', '', NULL, NULL, NULL),
(41, '2', 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', '23.9570904', '91.1119286', 'www.brahmanbaria.gov.bd', '', NULL, NULL, NULL),
(42, '2', 'Chandpur', 'চাঁদপুর', '23.2332585', '90.6712912', 'www.chandpur.gov.bd', '', NULL, NULL, NULL),
(43, '2', 'Chattogram', 'চট্টগ্রাম', '22.335109', '91.834073', 'www.chittagong.gov.bd', '', NULL, NULL, NULL),
(44, '2', 'Cumilla', 'কুমিল্লা', '23.4682747', '91.1788135', 'www.comilla.gov.bd', '', NULL, NULL, NULL),
(45, '2', 'Cox\'s Bazar', 'কক্স বাজার', '0', '0', 'www.coxsbazar.gov.bd', '', NULL, NULL, NULL),
(46, '2', 'Feni', 'ফেনী', '23.023231', '91.3840844', 'www.feni.gov.bd', '', NULL, NULL, NULL),
(47, '2', 'Khagrachari', 'খাগড়াছড়ি', '23.119285', '91.984663', 'www.khagrachhari.gov.bd', '', NULL, NULL, NULL),
(48, '2', 'Lakshmipur', 'লক্ষ্মীপুর', '22.942477', '90.841184', 'www.lakshmipur.gov.bd', '', NULL, NULL, NULL),
(49, '2', 'Noakhali', 'নোয়াখালী', '22.869563', '91.099398', 'www.noakhali.gov.bd', '', NULL, NULL, NULL),
(50, '2', 'Rangamati', 'রাঙ্গামাটি', '0', '0', 'www.rangamati.gov.bd', '', NULL, NULL, NULL),
(51, '7', 'Habiganj', 'হবিগঞ্জ', '24.374945', '91.41553', 'www.habiganj.gov.bd', '', NULL, NULL, NULL),
(52, '7', 'Maulvibazar', 'মৌলভীবাজার', '24.482934', '91.777417', 'www.moulvibazar.gov.bd', '', NULL, NULL, NULL),
(53, '7', 'Sunamganj', 'সুনামগঞ্জ', '25.0658042', '91.3950115', 'www.sunamganj.gov.bd', '', NULL, NULL, NULL),
(54, '7', 'Sylhet', 'সিলেট', '24.8897956', '91.8697894', 'www.sylhet.gov.bd', '', NULL, NULL, NULL),
(55, '4', 'Bagerhat', 'বাগেরহাট', '22.651568', '89.785938', 'www.bagerhat.gov.bd', '', NULL, NULL, NULL),
(56, '4', 'Chuadanga', 'চুয়াডাঙ্গা', '23.6401961', '88.841841', 'www.chuadanga.gov.bd', '', NULL, NULL, NULL),
(57, '4', 'Jashore', 'যশোর', '23.16643', '89.2081126', 'www.jessore.gov.bd', '', NULL, NULL, NULL),
(58, '4', 'Jhenaidah', 'ঝিনাইদহ', '23.5448176', '89.1539213', 'www.jhenaidah.gov.bd', '', NULL, NULL, NULL),
(59, '4', 'Khulna', 'খুলনা', '22.815774', '89.568679', 'www.khulna.gov.bd', '', NULL, NULL, NULL),
(60, '4', 'Kushtia', 'কুষ্টিয়া', '23.901258', '89.120482', 'www.kushtia.gov.bd', '', NULL, NULL, NULL),
(61, '4', 'Magura', 'মাগুরা', '23.487337', '89.419956', 'www.magura.gov.bd', '', NULL, NULL, NULL),
(62, '4', 'Meherpur', 'মেহেরপুর', '23.762213', '88.631821', 'www.meherpur.gov.bd', '', NULL, NULL, NULL),
(63, '4', 'Narail', 'নড়াইল', '23.172534', '89.512672', 'www.narail.gov.bd', '', NULL, NULL, NULL),
(64, '4', 'Satkhira', 'সাতক্ষীরা', '0', '0', 'www.satkhira.gov.bd', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bn_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `bn_name`, `sort`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Barishal', 'বরিশাল', '6', NULL, NULL, NULL),
(2, 'Chattogram', 'চট্টগ্রাম', '2', NULL, NULL, NULL),
(3, 'Dhaka', 'ঢাকা', '1', NULL, NULL, NULL),
(4, 'Khulna', 'খুলনা', '4', NULL, NULL, NULL),
(5, 'Rajshahi', 'রাজশাহী', '3', NULL, NULL, NULL),
(6, 'Rangpur', 'রংপুর', '7', NULL, NULL, NULL),
(7, 'Sylhet', 'সিলেট', '5', NULL, NULL, NULL),
(8, 'Mymensingh', 'ময়মনসিংহ', '8', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gal_cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('image','video') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `gal_cat_id`, `title`, `desc`, `type`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 'Men', NULL, 'image', 'upload/gallery/Men1580398132.png', 'Active', '2020-01-11 18:00:00', '2020-01-30 15:28:52'),
(3, 2, 'STANDARD', 'STANDARD', 'image', 'upload/gallery/STANDARD1580398016.png', 'Active', '2020-01-30 15:26:56', '2020-01-30 15:26:56'),
(4, 1, 'STANDARD', 'STANDARD', 'image', 'upload/gallery/STANDARD1580398069.png', 'Active', '2020-01-30 15:27:49', '2020-01-30 15:27:49');

-- --------------------------------------------------------

--
-- Table structure for table `member_bonuses`
--

CREATE TABLE `member_bonuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_user_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT NULL,
  `bonus_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_trees`
--

CREATE TABLE `member_trees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sponsor_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_point` decimal(20,2) DEFAULT NULL,
  `l_point` decimal(20,2) DEFAULT NULL,
  `r_point` decimal(20,2) DEFAULT NULL,
  `l_member` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_member` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_matching` decimal(20,2) DEFAULT NULL,
  `paid_matching` decimal(20,2) DEFAULT NULL,
  `last_matching` date DEFAULT NULL,
  `last_incentive` date DEFAULT NULL,
  `extra_data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `incentive_start_from` date DEFAULT NULL,
  `is_premium` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member_trees`
--

INSERT INTO `member_trees` (`id`, `user_id`, `sponsor_id`, `designation`, `l_id`, `r_id`, `p_point`, `l_point`, `r_point`, `l_member`, `r_member`, `total_matching`, `paid_matching`, `last_matching`, `last_incentive`, `extra_data`, `incentive_start_from`, `is_premium`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', NULL, NULL, '2', '101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:34', NULL),
(2, '2', '1', NULL, '3', '242', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:34', '2020-01-28 16:39:36', NULL),
(3, '3', '1', NULL, '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:34', '2020-01-05 18:56:34', NULL),
(4, '4', '1', NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:34', '2020-01-05 18:56:34', NULL),
(5, '5', '1', NULL, '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:34', '2020-01-05 18:56:34', NULL),
(6, '6', '1', NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:34', '2020-01-05 18:56:35', NULL),
(7, '7', '1', NULL, '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:35', '2020-01-05 18:56:35', NULL),
(8, '8', '1', NULL, '9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:35', '2020-01-05 18:56:35', NULL),
(9, '9', '1', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:35', '2020-01-05 18:56:35', NULL),
(10, '10', '1', NULL, '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:35', '2020-01-05 18:56:35', NULL),
(11, '11', '1', NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:35', '2020-01-05 18:56:36', NULL),
(12, '12', '1', NULL, '13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:36', '2020-01-05 18:56:36', NULL),
(13, '13', '1', NULL, '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:36', '2020-01-05 18:56:36', NULL),
(14, '14', '1', NULL, '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:36', '2020-01-05 18:56:36', NULL),
(15, '15', '1', NULL, '16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:36', '2020-01-05 18:56:36', NULL),
(16, '16', '1', NULL, '17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:36', '2020-01-05 18:56:37', NULL),
(17, '17', '1', NULL, '18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:37', '2020-01-05 18:56:37', NULL),
(18, '18', '1', NULL, '19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:37', '2020-01-05 18:56:37', NULL),
(19, '19', '1', NULL, '20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:37', '2020-01-05 18:56:37', NULL),
(20, '20', '1', NULL, '21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:37', '2020-01-05 18:56:37', NULL),
(21, '21', '1', NULL, '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:37', '2020-01-05 18:56:38', NULL),
(22, '22', '1', NULL, '23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:38', '2020-01-05 18:56:38', NULL),
(23, '23', '1', NULL, '24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:38', '2020-01-05 18:56:38', NULL),
(24, '24', '1', NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:38', '2020-01-05 18:56:38', NULL),
(25, '25', '1', NULL, '26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:38', '2020-01-05 18:56:38', NULL),
(26, '26', '1', NULL, '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:38', '2020-01-05 18:56:39', NULL),
(27, '27', '1', NULL, '28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:39', '2020-01-05 18:56:39', NULL),
(28, '28', '1', NULL, '29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:39', '2020-01-05 18:56:39', NULL),
(29, '29', '1', NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:39', '2020-01-05 18:56:39', NULL),
(30, '30', '1', NULL, '31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:39', '2020-01-05 18:56:39', NULL),
(31, '31', '1', NULL, '32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:39', '2020-01-05 18:56:39', NULL),
(32, '32', '1', NULL, '33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:39', '2020-01-05 18:56:39', NULL),
(33, '33', '1', NULL, '34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:39', '2020-01-05 18:56:40', NULL),
(34, '34', '1', NULL, '35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:40', '2020-01-05 18:56:40', NULL),
(35, '35', '1', NULL, '36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:40', '2020-01-05 18:56:40', NULL),
(36, '36', '1', NULL, '37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:40', '2020-01-05 18:56:40', NULL),
(37, '37', '1', NULL, '38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:40', '2020-01-05 18:56:40', NULL),
(38, '38', '1', NULL, '39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:40', '2020-01-05 18:56:40', NULL),
(39, '39', '1', NULL, '40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:40', '2020-01-05 18:56:40', NULL),
(40, '40', '1', NULL, '41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:40', '2020-01-05 18:56:41', NULL),
(41, '41', '1', NULL, '42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:40', '2020-01-05 18:56:41', NULL),
(42, '42', '1', NULL, '43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:41', '2020-01-05 18:56:41', NULL),
(43, '43', '1', NULL, '44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:41', '2020-01-05 18:56:41', NULL),
(44, '44', '1', NULL, '45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:41', '2020-01-05 18:56:41', NULL),
(45, '45', '1', NULL, '46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:41', '2020-01-05 18:56:41', NULL),
(46, '46', '1', NULL, '47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:41', '2020-01-05 18:56:41', NULL),
(47, '47', '1', NULL, '48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:41', '2020-01-05 18:56:42', NULL),
(48, '48', '1', NULL, '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:42', '2020-01-05 18:56:42', NULL),
(49, '49', '1', NULL, '50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:42', '2020-01-05 18:56:42', NULL),
(50, '50', '1', NULL, '51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:42', '2020-01-05 18:56:42', NULL),
(51, '51', '1', NULL, '52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:42', '2020-01-05 18:56:42', NULL),
(52, '52', '1', NULL, '53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:42', '2020-01-05 18:56:42', NULL),
(53, '53', '1', NULL, '54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:42', '2020-01-05 18:56:43', NULL),
(54, '54', '1', NULL, '55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:43', '2020-01-05 18:56:43', NULL),
(55, '55', '1', NULL, '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:43', '2020-01-05 18:56:43', NULL),
(56, '56', '1', NULL, '57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:43', '2020-01-05 18:56:43', NULL),
(57, '57', '1', NULL, '58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:43', '2020-01-05 18:56:43', NULL),
(58, '58', '1', NULL, '59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:43', '2020-01-05 18:56:44', NULL),
(59, '59', '1', NULL, '60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:44', '2020-01-05 18:56:44', NULL),
(60, '60', '1', NULL, '61', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:44', '2020-01-05 18:56:44', NULL),
(61, '61', '1', NULL, '62', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:44', '2020-01-05 18:56:44', NULL),
(62, '62', '1', NULL, '63', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:44', '2020-01-05 18:56:44', NULL),
(63, '63', '1', NULL, '64', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:44', '2020-01-05 18:56:44', NULL),
(64, '64', '1', NULL, '65', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:44', '2020-01-05 18:56:44', NULL),
(65, '65', '1', NULL, '66', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:44', '2020-01-05 18:56:44', NULL),
(66, '66', '1', NULL, '67', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:44', '2020-01-05 18:56:44', NULL),
(67, '67', '1', NULL, '68', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:44', '2020-01-05 18:56:45', NULL),
(68, '68', '1', NULL, '69', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:45', '2020-01-05 18:56:45', NULL),
(69, '69', '1', NULL, '70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:45', '2020-01-05 18:56:45', NULL),
(70, '70', '1', NULL, '71', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:45', '2020-01-05 18:56:45', NULL),
(71, '71', '1', NULL, '72', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:45', '2020-01-05 18:56:45', NULL),
(72, '72', '1', NULL, '73', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:45', '2020-01-05 18:56:45', NULL),
(73, '73', '1', NULL, '74', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:45', '2020-01-05 18:56:46', NULL),
(74, '74', '1', NULL, '75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:46', '2020-01-05 18:56:46', NULL),
(75, '75', '1', NULL, '76', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:46', '2020-01-05 18:56:46', NULL),
(76, '76', '1', NULL, '77', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:46', '2020-01-05 18:56:46', NULL),
(77, '77', '1', NULL, '78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:46', '2020-01-05 18:56:46', NULL),
(78, '78', '1', NULL, '79', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:46', '2020-01-05 18:56:47', NULL),
(79, '79', '1', NULL, '80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:47', '2020-01-05 18:56:47', NULL),
(80, '80', '1', NULL, '81', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:47', '2020-01-05 18:56:47', NULL),
(81, '81', '1', NULL, '82', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:47', '2020-01-05 18:56:47', NULL),
(82, '82', '1', NULL, '83', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:47', '2020-01-05 18:56:47', NULL),
(83, '83', '1', NULL, '84', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:47', '2020-01-05 18:56:47', NULL),
(84, '84', '1', NULL, '85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:47', '2020-01-05 18:56:47', NULL),
(85, '85', '1', NULL, '86', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:47', '2020-01-05 18:56:47', NULL),
(86, '86', '1', NULL, '87', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:47', '2020-01-05 18:56:48', NULL),
(87, '87', '1', NULL, '88', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:48', '2020-01-05 18:56:48', NULL),
(88, '88', '1', NULL, '89', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:48', '2020-01-05 18:56:48', NULL),
(89, '89', '1', NULL, '90', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:48', '2020-01-05 18:56:48', NULL),
(90, '90', '1', NULL, '91', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:48', '2020-01-05 18:56:49', NULL),
(91, '91', '1', NULL, '92', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:49', '2020-01-05 18:56:49', NULL),
(92, '92', '1', NULL, '93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:49', '2020-01-05 18:56:49', NULL),
(93, '93', '1', NULL, '94', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:49', '2020-01-05 18:56:49', NULL),
(94, '94', '1', NULL, '95', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:49', '2020-01-05 18:56:49', NULL),
(95, '95', '1', NULL, '96', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:49', '2020-01-05 18:56:49', NULL),
(96, '96', '1', NULL, '97', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:49', '2020-01-05 18:56:49', NULL),
(97, '97', '1', NULL, '98', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:49', '2020-01-05 18:56:50', NULL),
(98, '98', '1', NULL, '99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:50', '2020-01-05 18:56:50', NULL),
(99, '99', '1', NULL, '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:50', '2020-01-05 18:56:50', NULL),
(100, '100', '1', NULL, '200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:56:50', '2020-01-06 03:23:19', NULL),
(101, '101', '1', NULL, NULL, '102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:57:55', '2020-01-05 18:57:55', NULL),
(102, '102', '1', NULL, NULL, '103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:57:55', '2020-01-05 18:57:55', NULL),
(103, '103', '1', NULL, NULL, '104', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:57:55', '2020-01-05 18:57:55', NULL),
(104, '104', '1', NULL, NULL, '105', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:57:55', '2020-01-05 18:57:55', NULL),
(105, '105', '1', NULL, NULL, '106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:57:55', '2020-01-05 18:57:55', NULL),
(106, '106', '1', NULL, NULL, '107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:57:55', '2020-01-05 18:57:56', NULL),
(107, '107', '1', NULL, NULL, '108', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:57:56', '2020-01-05 18:57:56', NULL),
(108, '108', '1', NULL, NULL, '109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:57:56', '2020-01-05 18:57:56', NULL),
(109, '109', '1', NULL, NULL, '110', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:57:56', '2020-01-05 18:57:56', NULL),
(110, '110', '1', NULL, NULL, '111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:57:56', '2020-01-05 18:57:56', NULL),
(111, '111', '1', NULL, NULL, '112', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:57:56', '2020-01-05 18:57:56', NULL),
(112, '112', '1', NULL, NULL, '113', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:57:56', '2020-01-05 18:57:57', NULL),
(113, '113', '1', NULL, NULL, '114', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:57:57', '2020-01-05 18:57:57', NULL),
(114, '114', '1', NULL, NULL, '115', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:57:57', '2020-01-05 18:57:57', NULL),
(115, '115', '1', NULL, NULL, '116', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:57:57', '2020-01-05 18:57:57', NULL),
(116, '116', '1', NULL, NULL, '117', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:57:57', '2020-01-05 18:57:57', NULL),
(117, '117', '1', NULL, NULL, '118', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:57:57', '2020-01-05 18:57:57', NULL),
(118, '118', '1', NULL, NULL, '119', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:57:57', '2020-01-05 18:57:57', NULL),
(119, '119', '1', NULL, NULL, '120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:57:57', '2020-01-05 18:57:57', NULL),
(120, '120', '1', NULL, NULL, '121', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:57:57', '2020-01-05 18:57:57', NULL),
(121, '121', '1', NULL, NULL, '122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:57:57', '2020-01-05 18:57:58', NULL),
(122, '122', '1', NULL, NULL, '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:57:58', '2020-01-05 18:57:58', NULL),
(123, '123', '1', NULL, NULL, '124', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:57:58', '2020-01-05 18:57:58', NULL),
(124, '124', '1', NULL, NULL, '125', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:57:58', '2020-01-05 18:57:58', NULL),
(125, '125', '1', NULL, NULL, '126', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:57:58', '2020-01-05 18:57:58', NULL),
(126, '126', '1', NULL, NULL, '127', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:57:58', '2020-01-05 18:57:58', NULL),
(127, '127', '1', NULL, NULL, '128', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:57:58', '2020-01-05 18:57:58', NULL),
(128, '128', '1', NULL, NULL, '129', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:57:58', '2020-01-05 18:57:59', NULL),
(129, '129', '1', NULL, NULL, '130', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:57:59', '2020-01-05 18:57:59', NULL),
(130, '130', '1', NULL, NULL, '131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:57:59', '2020-01-05 18:57:59', NULL),
(131, '131', '1', NULL, NULL, '132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:57:59', '2020-01-05 18:57:59', NULL),
(132, '132', '1', NULL, NULL, '133', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:57:59', '2020-01-05 18:57:59', NULL),
(133, '133', '1', NULL, NULL, '134', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:57:59', '2020-01-05 18:58:00', NULL),
(134, '134', '1', NULL, NULL, '135', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:00', '2020-01-05 18:58:00', NULL),
(135, '135', '1', NULL, NULL, '136', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:00', '2020-01-05 18:58:00', NULL),
(136, '136', '1', NULL, NULL, '137', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:00', '2020-01-05 18:58:00', NULL),
(137, '137', '1', NULL, NULL, '138', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:00', '2020-01-05 18:58:00', NULL),
(138, '138', '1', NULL, NULL, '139', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:00', '2020-01-05 18:58:01', NULL),
(139, '139', '1', NULL, NULL, '140', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:01', '2020-01-05 18:58:01', NULL),
(140, '140', '1', NULL, NULL, '141', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:01', '2020-01-05 18:58:01', NULL),
(141, '141', '1', NULL, NULL, '142', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:01', '2020-01-05 18:58:01', NULL),
(142, '142', '1', NULL, NULL, '143', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:01', '2020-01-05 18:58:01', NULL),
(143, '143', '1', NULL, NULL, '144', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:01', '2020-01-05 18:58:01', NULL),
(144, '144', '1', NULL, NULL, '145', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:01', '2020-01-05 18:58:02', NULL),
(145, '145', '1', NULL, NULL, '146', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:02', '2020-01-05 18:58:02', NULL),
(146, '146', '1', NULL, NULL, '147', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:02', '2020-01-05 18:58:02', NULL),
(147, '147', '1', NULL, NULL, '148', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:02', '2020-01-05 18:58:02', NULL),
(148, '148', '1', NULL, NULL, '149', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:02', '2020-01-05 18:58:02', NULL),
(149, '149', '1', NULL, NULL, '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:02', '2020-01-05 18:58:02', NULL),
(150, '150', '1', NULL, NULL, '151', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:02', '2020-01-05 18:58:02', NULL),
(151, '151', '1', NULL, NULL, '152', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:02', '2020-01-05 18:58:03', NULL),
(152, '152', '1', NULL, NULL, '153', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:03', '2020-01-05 18:58:03', NULL),
(153, '153', '1', NULL, NULL, '154', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:03', '2020-01-05 18:58:03', NULL),
(154, '154', '1', NULL, NULL, '155', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:03', '2020-01-05 18:58:03', NULL),
(155, '155', '1', NULL, NULL, '156', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:03', '2020-01-05 18:58:03', NULL),
(156, '156', '1', NULL, NULL, '157', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:03', '2020-01-05 18:58:04', NULL),
(157, '157', '1', NULL, NULL, '158', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:04', '2020-01-05 18:58:04', NULL),
(158, '158', '1', NULL, NULL, '159', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:04', '2020-01-05 18:58:04', NULL),
(159, '159', '1', NULL, NULL, '160', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:04', '2020-01-05 18:58:04', NULL),
(160, '160', '1', NULL, NULL, '161', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:04', '2020-01-05 18:58:04', NULL),
(161, '161', '1', NULL, NULL, '162', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:04', '2020-01-05 18:58:05', NULL),
(162, '162', '1', NULL, NULL, '163', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:05', '2020-01-05 18:58:05', NULL),
(163, '163', '1', NULL, NULL, '164', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:05', '2020-01-05 18:58:05', NULL),
(164, '164', '1', NULL, NULL, '165', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:05', '2020-01-05 18:58:05', NULL),
(165, '165', '1', NULL, NULL, '166', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:05', '2020-01-05 18:58:05', NULL),
(166, '166', '1', NULL, NULL, '167', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:05', '2020-01-05 18:58:05', NULL),
(167, '167', '1', NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:05', '2020-01-05 18:58:05', NULL),
(168, '168', '1', NULL, NULL, '169', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:05', '2020-01-05 18:58:05', NULL),
(169, '169', '1', NULL, NULL, '170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:05', '2020-01-05 18:58:06', NULL),
(170, '170', '1', NULL, NULL, '171', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:06', '2020-01-05 18:58:06', NULL),
(171, '171', '1', NULL, NULL, '172', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:06', '2020-01-05 18:58:06', NULL),
(172, '172', '1', NULL, NULL, '173', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:06', '2020-01-05 18:58:06', NULL),
(173, '173', '1', NULL, NULL, '174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:06', '2020-01-05 18:58:06', NULL),
(174, '174', '1', NULL, NULL, '175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:06', '2020-01-05 18:58:06', NULL),
(175, '175', '1', NULL, NULL, '176', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:06', '2020-01-05 18:58:07', NULL),
(176, '176', '1', NULL, NULL, '177', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:07', '2020-01-05 18:58:07', NULL),
(177, '177', '1', NULL, NULL, '178', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:07', '2020-01-05 18:58:07', NULL),
(178, '178', '1', NULL, NULL, '179', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:07', '2020-01-05 18:58:07', NULL),
(179, '179', '1', NULL, NULL, '180', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:07', '2020-01-05 18:58:07', NULL),
(180, '180', '1', NULL, NULL, '181', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:07', '2020-01-05 18:58:07', NULL),
(181, '181', '1', NULL, NULL, '182', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:07', '2020-01-05 18:58:07', NULL),
(182, '182', '1', NULL, NULL, '183', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:07', '2020-01-05 18:58:08', NULL),
(183, '183', '1', NULL, NULL, '184', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:08', '2020-01-05 18:58:08', NULL),
(184, '184', '1', NULL, NULL, '185', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:08', '2020-01-05 18:58:08', NULL),
(185, '185', '1', NULL, NULL, '186', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:08', '2020-01-05 18:58:08', NULL),
(186, '186', '1', NULL, NULL, '187', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:08', '2020-01-05 18:58:08', NULL),
(187, '187', '1', NULL, NULL, '188', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:08', '2020-01-05 18:58:08', NULL),
(188, '188', '1', NULL, NULL, '189', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:08', '2020-01-05 18:58:08', NULL),
(189, '189', '1', NULL, NULL, '190', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:08', '2020-01-05 18:58:08', NULL),
(190, '190', '1', NULL, NULL, '191', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:08', '2020-01-05 18:58:09', NULL),
(191, '191', '1', NULL, NULL, '192', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:09', '2020-01-05 18:58:09', NULL),
(192, '192', '1', NULL, NULL, '193', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:09', '2020-01-05 18:58:09', NULL),
(193, '193', '1', NULL, NULL, '194', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:09', '2020-01-05 18:58:09', NULL),
(194, '194', '1', NULL, NULL, '195', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:09', '2020-01-05 18:58:09', NULL),
(195, '195', '1', NULL, NULL, '196', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:09', '2020-01-05 18:58:09', NULL),
(196, '196', '1', NULL, NULL, '197', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:09', '2020-01-05 18:58:09', NULL),
(197, '197', '1', NULL, NULL, '198', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:09', '2020-01-05 18:58:09', NULL),
(198, '198', '1', NULL, NULL, '199', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:09', '2020-01-05 18:58:09', NULL),
(199, '199', '1', NULL, '222', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-05 18:58:09', '2020-01-06 06:04:51', NULL),
(200, '200', '1', NULL, '201', '211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 03:23:19', '2020-01-06 03:59:38', NULL),
(201, '201', '200', NULL, '202', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 03:51:21', '2020-01-06 03:52:05', NULL),
(202, '202', '200', NULL, '203', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 03:52:05', '2020-01-06 03:52:52', NULL),
(203, '203', '200', NULL, '204', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 03:52:52', '2020-01-06 03:53:35', NULL),
(204, '204', '200', NULL, '205', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 03:53:35', '2020-01-06 03:54:19', NULL),
(205, '205', '200', NULL, '206', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 03:54:19', '2020-01-06 03:54:55', NULL),
(206, '206', '200', NULL, '207', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 03:54:55', '2020-01-06 03:55:33', NULL),
(207, '207', '200', NULL, '208', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 03:55:33', '2020-01-06 03:56:25', NULL),
(208, '208', '200', NULL, '209', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 03:56:25', '2020-01-06 03:57:09', NULL),
(209, '209', '200', NULL, '210', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 03:57:09', '2020-01-06 03:57:55', NULL),
(210, '210', '200', NULL, '221', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 03:57:55', '2020-01-06 05:05:40', NULL),
(211, '211', '200', NULL, '212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 03:59:38', '2020-01-06 04:00:28', NULL),
(212, '212', '200', NULL, '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 04:00:28', '2020-01-06 04:01:28', NULL),
(213, '213', '200', NULL, '214', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 04:01:28', '2020-01-06 04:02:06', NULL),
(214, '214', '200', NULL, '215', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 04:02:06', '2020-01-06 04:02:48', NULL),
(215, '215', '200', NULL, '216', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 04:02:48', '2020-01-06 04:03:53', NULL),
(216, '216', '200', NULL, '217', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 04:03:53', '2020-01-06 04:05:26', NULL),
(217, '217', '200', NULL, '218', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 04:05:26', '2020-01-06 04:06:02', NULL),
(218, '218', '200', NULL, '219', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 04:06:02', '2020-01-06 04:06:46', NULL),
(219, '219', '200', NULL, '220', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 04:06:46', '2020-01-06 04:07:35', NULL),
(220, '220', '200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 04:07:35', '2020-01-06 04:07:35', NULL),
(221, '221', '1', NULL, '235', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 05:05:40', '2020-01-06 07:22:26', NULL),
(222, '222', '1', NULL, '223', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 06:04:51', '2020-01-06 06:14:43', NULL),
(223, '223', '1', NULL, '224', '225', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 06:14:43', '2020-01-06 06:17:34', NULL),
(224, '224', '1', NULL, '230', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 06:16:46', '2020-01-06 06:51:23', NULL),
(225, '225', '1', NULL, '226', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 06:17:34', '2020-01-06 06:19:22', NULL),
(226, '226', '1', NULL, '227', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 06:19:22', '2020-01-06 06:21:38', NULL),
(227, '227', '1', NULL, '229', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 06:21:38', '2020-01-06 06:26:28', NULL),
(228, '229', '227', NULL, '238', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 06:26:28', '2020-01-25 06:30:02', NULL),
(229, '230', '223', NULL, '231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 06:51:23', '2020-01-06 06:58:17', NULL),
(230, '231', '223', NULL, '232', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 06:58:17', '2020-01-06 07:04:28', NULL),
(231, '232', '223', NULL, '233', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 07:04:28', '2020-01-06 07:06:18', NULL),
(232, '233', '223', NULL, '234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 07:06:18', '2020-01-06 07:08:21', NULL),
(233, '234', '223', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 07:08:21', '2020-01-06 07:08:21', NULL),
(234, '235', '1', NULL, '236', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 07:22:26', '2020-01-06 07:25:29', NULL),
(235, '236', '1', NULL, '237', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 07:25:29', '2020-01-12 12:11:57', NULL),
(236, '237', '200', NULL, '243', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-12 12:11:57', '2020-02-03 06:34:20', NULL),
(237, '238', '1', NULL, '239', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-25 06:30:02', '2020-01-25 06:32:17', NULL),
(238, '239', '1', NULL, '240', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-25 06:32:17', '2020-01-25 06:35:44', NULL),
(239, '240', '239', NULL, '241', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-25 06:35:44', '2020-01-25 06:40:45', NULL),
(240, '241', '239', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-25 06:40:45', '2020-01-25 06:40:45', NULL),
(241, '242', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-28 16:39:36', '2020-01-28 16:39:36', NULL),
(242, '243', '200', NULL, '244', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-03 06:34:20', '2020-02-03 06:38:24', NULL),
(243, '244', '243', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-03 06:38:24', '2020-02-03 06:38:24', NULL),
(245, '246', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-17 00:39:59', '2020-02-17 00:39:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_10_05_181221_create_member_trees_table', 1),
(4, '2019_10_09_092903_create_products_table', 1),
(5, '2019_10_09_092948_create_categories_table', 1),
(6, '2019_10_09_093224_create_brands_table', 1),
(7, '2019_10_09_093247_create_units_table', 1),
(8, '2019_10_09_093315_create_banners_table', 1),
(9, '2019_10_21_091751_create_permission_tables', 1),
(10, '2019_10_21_092821_create_designations_table', 1),
(11, '2019_10_21_092903_create_dealers_table', 1),
(12, '2019_10_21_093213_create_dealer_bonuses_table', 1),
(13, '2019_10_21_093246_create_withdrawals_table', 1),
(14, '2019_10_21_093339_create_topup_balances_table', 1),
(15, '2019_10_21_093410_create_transfer_balances_table', 1),
(16, '2019_10_21_093627_create_cupon_codes_table', 1),
(17, '2019_10_21_093936_create_notices_table', 1),
(18, '2019_10_21_094042_create_stock_managers_table', 1),
(19, '2019_10_21_100146_create_orders_table', 1),
(20, '2019_10_21_112318_create_member_bonuses_table', 1),
(21, '2019_10_21_120801_create_countries_table', 1),
(22, '2019_10_21_120819_create_districts_table', 1),
(23, '2019_10_21_120834_create_divisions_table', 1),
(24, '2019_10_22_071231_create_points_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `massage` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_amount` decimal(20,2) DEFAULT NULL,
  `order_discount` decimal(20,2) DEFAULT NULL,
  `order_charge` decimal(20,2) DEFAULT NULL,
  `order_vat` decimal(20,2) DEFAULT NULL,
  `order_net_amount` decimal(20,2) DEFAULT NULL,
  `order_total_point` decimal(20,2) DEFAULT NULL,
  `order_delivery_type` enum('cod','self') COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_delivery_from` enum('office','dealer','user','admin') COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_delivery_from_user_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_delivery_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_delivery_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_delivery_phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_delivery_mobile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_delivery_company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_delivery_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_value` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_details` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` enum('True','False') COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `user_id`, `title`, `package_value`, `package_details`, `is_default`, `package_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', 'Test Package', '50', 'Package Details', 'True', 'Active', NULL, '2019-11-09 07:14:21', '2019-11-09 07:14:21'),
(2, NULL, 'pack title', '53', 'ffdsfddsf', 'True', 'Active', '2019-11-07 04:13:14', '2019-11-07 10:49:09', '2019-11-07 10:49:09'),
(3, NULL, 'Test Package', '500', 'Package Details', 'True', 'Active', '2019-11-09 07:14:06', '2019-11-09 07:17:25', '2019-11-09 07:17:25'),
(4, NULL, 'dhfd', '33', 'ddasda', 'True', 'Active', '2019-11-09 07:17:15', '2019-12-21 15:08:49', '2019-12-21 15:08:49'),
(5, NULL, 'Standard Package', '100', 'SFFS', 'True', 'Active', '2019-12-21 15:08:27', '2020-01-30 15:38:12', NULL),
(6, NULL, 'Standard Easy Package', '50', 'gdfdgdfg', 'True', 'Active', '2020-01-28 16:48:09', '2020-01-28 16:48:09', NULL),
(7, NULL, 'Standard Easy Package', '50', 'Standard Easy Package', 'True', 'Active', '2020-01-28 16:48:35', '2020-01-30 15:38:23', '2020-01-30 15:38:23');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'edit account', 'web', '2019-10-21 06:15:27', '2019-10-21 06:15:27'),
(2, 'delete account', 'web', '2019-10-21 06:15:28', '2019-10-21 06:15:28'),
(3, 'view account', 'web', '2019-10-21 06:15:28', '2019-10-21 06:15:28'),
(4, 'edit product', 'web', '2019-10-21 06:15:28', '2019-10-21 06:15:28'),
(5, 'delete product', 'web', '2019-10-21 06:15:28', '2019-10-21 06:15:28'),
(6, 'view product', 'web', '2019-10-21 06:15:28', '2019-10-21 06:15:28'),
(7, 'edit order', 'web', '2019-10-21 06:15:28', '2019-10-21 06:15:28'),
(8, 'delete order', 'web', '2019-10-21 06:15:28', '2019-10-21 06:15:28'),
(9, 'view order', 'web', '2019-10-21 06:15:28', '2019-10-21 06:15:28'),
(10, 'edit user_manager', 'web', '2019-10-21 06:15:28', '2019-10-21 06:15:28'),
(11, 'delete user_manager', 'web', '2019-10-21 06:15:28', '2019-10-21 06:15:28'),
(12, 'view user_manager', 'web', '2019-10-21 06:15:28', '2019-10-21 06:15:28'),
(13, 'edit withdrawal', 'web', '2019-10-21 06:15:28', '2019-10-21 06:15:28'),
(14, 'delete withdrawal', 'web', '2019-10-21 06:15:28', '2019-10-21 06:15:28'),
(15, 'view withdrawal', 'web', '2019-10-21 06:15:28', '2019-10-21 06:15:28'),
(16, 'edit dealer_management', 'web', '2019-10-21 06:15:28', '2019-10-21 06:15:28'),
(17, 'delete dealer_management', 'web', '2019-10-21 06:15:28', '2019-10-21 06:15:28'),
(18, 'view dealer_management', 'web', '2019-10-21 06:15:28', '2019-10-21 06:15:28');

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_user_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `point_amount` decimal(20,2) DEFAULT NULL,
  `point_flow` enum('in','out') COLLATE utf8mb4_unicode_ci NOT NULL,
  `point_details` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `point_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `points`
--

INSERT INTO `points` (`id`, `user_id`, `from_user_id`, `point_amount`, `point_flow`, `point_details`, `point_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', '1', '12.00', 'in', 'You have received 12 PV for new stock of Active Gold Mehedi and product quantity is 12', 'active', '2020-01-20 12:58:37', '2020-01-20 12:58:37', NULL),
(2, '1', '1', '5.00', 'in', 'You have received 5 PV for new stock of Aqua Gel Sunscreen SPF 50++PA++ and product quantity is 1', 'active', '2020-01-20 12:58:53', '2020-01-20 12:58:53', NULL),
(3, '1', '1', '24.00', 'in', 'You have received 24 PV for new stock of Aromix Toothpast and product quantity is 12', 'active', '2020-01-20 12:59:08', '2020-01-20 12:59:08', NULL),
(4, '1', '1', '25.00', 'in', 'You have received 25 PV for new stock of Anytime Sanitary Napkin and product quantity is 10', 'active', '2020-01-20 12:59:19', '2020-01-20 12:59:19', NULL),
(5, '1', '1', '4.00', 'in', 'You have received 4 PV for new stock of Aloevera Soothing Gel and product quantity is 1', 'active', '2020-01-20 12:59:34', '2020-01-20 12:59:34', NULL),
(6, '1', '1', '45.00', 'in', 'You have received 45 PV for new stock of Azmeri Huney and product quantity is 10', 'active', '2020-01-20 12:59:43', '2020-01-20 12:59:43', NULL),
(7, '1', '1', '4.00', 'in', 'You have received 4 PV for new stock of Crystal Aqua Sleeping Pack and product quantity is 1', 'active', '2020-01-20 12:59:54', '2020-01-20 12:59:54', NULL),
(8, '1', '1', '13.25', 'in', 'You have received 13.25 PV for new stock of Derma Plus Anti Acne Cream and product quantity is 1', 'active', '2020-01-20 13:00:04', '2020-01-20 13:00:04', NULL),
(9, '1', '1', '3.50', 'in', 'You have received 3.5 PV for new stock of Disaar Toothpast and product quantity is 1', 'active', '2020-01-20 13:00:27', '2020-01-20 13:00:27', NULL),
(10, '1', '1', '5.00', 'in', 'You have received 5 PV for new stock of Aqua Gel Sunscreen SPF 50++PA++ and product quantity is 1', 'active', '2020-01-20 13:00:33', '2020-01-20 13:00:33', NULL),
(11, '1', '1', '0.00', 'in', 'You have received 0 PV for new stock of Horse Oil and product quantity is ', 'active', '2020-01-20 13:02:05', '2020-01-20 13:02:05', NULL),
(12, '1', '1', '7.00', 'in', 'You have received 7 PV for new stock of Horse Oil and product quantity is 1', 'active', '2020-01-20 13:02:27', '2020-01-20 13:02:27', NULL),
(13, '1', '1', '54.00', 'in', 'You have received 54 PV for new stock of Aloevera Sampoo and product quantity is 12', 'active', '2020-01-20 13:02:45', '2020-01-20 13:02:45', NULL),
(14, '1', '1', '6.00', 'in', 'You have received 6 PV for new stock of Neem Aloevera Soap and product quantity is 12', 'active', '2020-01-20 13:08:57', '2020-01-20 13:08:57', NULL),
(15, '1', '1', '18.00', 'in', 'You have received 18 PV for new stock of Neem Face Wash and product quantity is 12', 'active', '2020-01-20 13:09:22', '2020-01-20 13:09:22', NULL),
(16, '1', '1', '48.00', 'in', 'You have received 48 PV for new stock of Lavana Neem Oil and product quantity is 12', 'active', '2020-01-20 13:09:42', '2020-01-20 13:09:42', NULL),
(17, '1', '1', '48.00', 'in', 'You have received 48 PV for new stock of Whitening Body Lotion and product quantity is 12', 'active', '2020-01-20 13:09:57', '2020-01-20 13:09:57', NULL),
(18, '1', '1', '17.00', 'in', 'You have received 17 PV for new stock of Mayu Mask and product quantity is 20', 'active', '2020-01-20 13:10:11', '2020-01-20 13:10:11', NULL),
(19, '1', '1', '12.60', 'in', 'You have received 12.6 PV for new stock of Real Dishwash Bar and product quantity is 36', 'active', '2020-01-20 13:11:42', '2020-01-20 13:11:42', NULL),
(20, '1', '1', '13.80', 'in', 'You have received 13.8 PV for new stock of Real Power White and product quantity is 12', 'active', '2020-01-20 13:12:12', '2020-01-20 13:12:12', NULL),
(21, '1', '1', '10.80', 'in', 'You have received 10.8 PV for new stock of Real Toilet Cleaner and product quantity is 12', 'active', '2020-01-20 13:12:31', '2020-01-20 13:12:31', NULL),
(22, '1', '1', '350.00', 'in', 'You have received 350 PV for new stock of Baby Life Plus and product quantity is 20', 'active', '2020-01-20 13:12:45', '2020-01-20 13:12:45', NULL),
(23, '1', '1', '350.00', 'in', 'You have received 350 PV for new stock of Agro Vita Gold and product quantity is 20', 'active', '2020-01-20 13:12:59', '2020-01-20 13:12:59', NULL),
(24, '1', '1', '120.00', 'in', 'You have received 120 PV for new stock of Black Seed Oil and product quantity is 10', 'active', '2020-01-20 13:13:15', '2020-01-20 13:13:15', NULL),
(25, '1', '1', '350.00', 'in', 'You have received 350 PV for new stock of Detox Foot Patch and product quantity is 14', 'active', '2020-01-20 13:13:28', '2020-01-20 13:13:28', NULL),
(26, '1', '1', '500.00', 'in', 'You have received 500 PV for new stock of Exclusive Soy Combo Pack-01 and product quantity is 5', 'active', '2020-01-20 13:13:44', '2020-01-20 13:13:44', NULL),
(27, '1', '1', '232.50', 'in', 'You have received 232.5 PV for new stock of EFA Omega 3,6,9 and product quantity is 15', 'active', '2020-01-20 13:14:02', '2020-01-20 13:14:02', NULL),
(28, '1', '1', '140.00', 'in', 'You have received 140 PV for new stock of Female Care Gold and product quantity is 8', 'active', '2020-01-20 13:14:15', '2020-01-20 13:14:15', NULL),
(29, '1', '1', '175.00', 'in', 'You have received 175 PV for new stock of Gluco Cure Plus and product quantity is 10', 'active', '2020-01-20 13:14:38', '2020-01-20 13:14:38', NULL),
(30, '1', '1', '100.00', 'in', 'You have received 100 PV for new stock of Masala Tea and product quantity is 10', 'active', '2020-01-20 13:14:51', '2020-01-20 13:14:51', NULL),
(31, '1', '1', '350.00', 'in', 'You have received 350 PV for new stock of Soy Protein Gold and product quantity is 20', 'active', '2020-01-20 13:15:05', '2020-01-20 13:15:05', NULL),
(32, '1', '1', '200.00', 'in', 'You have received 200 PV for new stock of Triphala Plus and product quantity is 20', 'active', '2020-01-20 13:15:22', '2020-01-20 13:15:22', NULL),
(33, '1', '1', '100.00', 'in', 'You have received 100 PV for new stock of Tulsi Dry Juice and product quantity is 10', 'active', '2020-01-20 13:15:45', '2020-01-20 13:15:45', NULL),
(34, '1', '1', '100.00', 'in', 'You have received 100 PV for new stock of Green Tea and product quantity is 10', 'active', '2020-01-20 13:15:59', '2020-01-20 13:15:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_des` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_base_price` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_discount_price` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_vat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_point` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_featured` enum('True','False') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` enum('Single','Bundle') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `unit_id`, `user_id`, `product_name`, `product_code`, `product_des`, `product_base_price`, `product_discount_price`, `product_vat`, `product_point`, `product_image`, `product_featured`, `product_type`, `product_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, NULL, 1, 'Soy Protein Gold', 'SSPP#01', 'STANDARD_SOY _PROTEIN_GOLD\nউপকারিতা: *ওজন বা মেদ-ভুড়ি কমাতে অদ্বিতীয়, * হৃদরোগ প্রতিরোধে কার্যকরী, * কোলেষ্টেরল নিয়ন্ত্রনে কার্যকরী,* হাড়ক্ষয় রোধ করে, * রক্তের কোলেষ্টেরল কমায়,* আকর্ষনীয় দেহ নিশ্চিত করে, সোন্দর্য্য বৃদ্ধি করে।\nউপাদান: উতকৃষ্টমানের ফার্মেন্টেড সয়া প্রোটিন, হোয়াইট ওট, বেঙ্গলল গ্রাম, গ্রীন গ্রাম, বিভিন্ন প্রকার বীনস ও রাইস ব্রান।\nসেবন বিধি: ৪ চামচ পাউডার ঠান্ডা ও বিভিন্ন প্রকার পাকা ফল বা ফলের রস/লেবু/ কমলার রস, এর সহিত ব্লেন্ডিং করে পানি শরবত, পরিবর্তিত খাদ্য রূপে পরামর্শ অনুযায়ী দিনে ১বা ২ বার সেব্য।\n\nপ্যাক সাইজ : ৫০০গ্রাম\n\nসতর্কতা: কিডনী, স্কীন এলার্জি ও থাইরোয়েড সমস্যা যুক্ত রোগিদের ক্ষেত্রে পরামর্শ ছাড়া সয়া প্রোটিন সেবন নিষেধ।', '800.00', '700.00', NULL, '15', 'upload/product/SOY_PROTEIN_GOLD1576935395.jpg', 'True', 'Single', 'Active', '2019-12-21 13:36:36', '2020-02-10 23:09:28', NULL),
(2, 1, 1, 1, 1, 'SOY_PROTEIN_GOLD', 'SSPP#01', 'STANDARD_SOY _PROTEIN_GOLD\nউপকারিতা: *ওজন বা মেদ-ভুড়ি কমাতে অদ্বিতীয়, * হৃদরোগ প্রতিরোধে কার্যকরী, * কোলেষ্টেরল নিয়ন্ত্রনে কার্যকরী,* হাড়ক্ষয় রোধ করে, * রক্তের কোলেষ্টেরল কমায়,* আকর্ষনীয় দেহ নিশ্চিত করে, সোন্দর্য্য বৃদ্ধি করে।\nউপাদান: উতকৃষ্টমানের ফার্মেন্টেড সয়া প্রোটিন, হোয়াইট ওট, বেঙ্গলল গ্রাম, গ্রীন গ্রাম, বিভিন্ন প্রকার বীনস ও রাইস ব্রান।\nসেবন বিধি: ৪ চামচ পাউডার ঠান্ডা ও বিভিন্ন প্রকার পাকা ফল বা ফলের রস/লেবু/ কমলার রস, এর সহিত ব্লেন্ডিং করে পানি শরবত, পরিবর্তিত খাদ্য রূপে পরামর্শ অনুযায়ী দিনে ১বা ২ বার সেব্য।\n\nপ্যাক সাইজ : ৫০০গ্রাম\n\nসতর্কতা: কিডনী, স্কীন এলার্জি ও থাইরোয়েড সমস্যা যুক্ত রোগিদের ক্ষেত্রে পরামর্শ ছাড়া সয়া প্রোটিন সেবন নিষেধ।', '800.00', '700.00', '000', '17.5', 'upload/product/SOY_PROTEIN_GOLD1576935397.jpg', 'True', 'Single', 'Active', '2019-12-21 13:36:37', '2019-12-21 13:39:38', '2019-12-21 13:39:38'),
(3, 1, 1, 1, 1, 'STANDARD_GLUCO_CURE_PLUS', 'SGCP#02', 'Standard_Gluco_ Cure_Plas.\nউপকারীতা: *ব্লাড সুগার নিয়ন্ত্রণ করে, * প্যানক্রিয়াসের কর্মক্ষমতা বৃদ্ধি করে, * ইনসুলিন উতপাদন বৃদ্ধি করে,* বাহ্যিকভাবে Drug বা ইনসুলিন গ্রহনের মাত্রা ক্রমান্বয়ে কমিয়ে আনে,* গ্যাংরিন বা ডায়াবেটিস জনিত ইনফেকশন কমাতে সাহায্য করে।\nIngredients: Soya Protein Powder, Amloki, korela, Jambiz,Alfalfa, Leaf, Garlic, Methi,Chirota, Kalojira and many Other nutritional suppliment.\n\nসেবন বিধি: ২চামচ পাউডার ১ গ্লাস ঠান্ডা পানির সহিত সকালে ও বিকালে\nখালি পেটে দিনে ২ বার সেব্য।\n\nপ্যাক সাইজ: ৪০০গ্রাম', '850.00', '750.00', '000', '17.5', 'upload/product/STANDARD_GLUCO_CURE_PLUS1576935788.jpg', 'True', 'Single', 'Active', '2019-12-21 13:43:09', '2019-12-21 13:44:01', '2019-12-21 13:44:01'),
(4, 1, 1, 1, 1, 'Gluco Cure Plus', 'SGCP#02', 'Standard_Gluco_ Cure_Plas.\nউপকারীতা: *ব্লাড সুগার নিয়ন্ত্রণ করে, * প্যানক্রিয়াসের কর্মক্ষমতা বৃদ্ধি করে, * ইনসুলিন উতপাদন বৃদ্ধি করে,* বাহ্যিকভাবে Drug বা ইনসুলিন গ্রহনের মাত্রা ক্রমান্বয়ে কমিয়ে আনে,* গ্যাংরিন বা ডায়াবেটিস জনিত ইনফেকশন কমাতে সাহায্য করে।\nIngredients: Soya Protein Powder, Amloki, korela, Jambiz,Alfalfa, Leaf, Garlic, Methi,Chirota, Kalojira and many Other nutritional suppliment.\n\nসেবন বিধি: ২চামচ পাউডার ১ গ্লাস ঠান্ডা পানির সহিত সকালে ও বিকালে\nখালি পেটে দিনে ২ বার সেব্য।\n\nপ্যাক সাইজ: ৪০০গ্রাম', '850.00', '750.00', '000', '15', 'upload/product/STANDARD_GLUCO_CURE_PLUS1576935789.jpg', 'True', 'Single', 'Active', '2019-12-21 13:43:09', '2020-01-22 16:41:00', NULL),
(5, 1, 1, 1, 1, 'Female Care Gold', 'SFCG#03', 'Female_Care_Gold\n\nউপকারীতা: আমাদের দেশের মহিলারা সাধারণত সংসারের সকল কাজকর্ম ও স্বামী সন্তানের সেবা সম্পাদনে ব্যস্ত থাকায় নিজের স্বাস্থ্যের প্রতি উদাসীন থাকে, ফলে পূষ্টিহীনতার কারনে দেহ শীর্নতায় অথবা চর্বিবহুল হয়ে পরে, ফলে নানা প্রকার স্ত্রীরোগ, তথা শ্বেতপ্রদর, অকাল রক্তপ্রদর, সিষ্ট/টিউমার, মাসিকের গোলযোগ, অকাল ঋতুবন্ধ ও অল্প বয়সে দেহের সোন্দর্য্য চর্মে বৃদ্ধার ছাপ পরিলক্ষিত হয়। এ সকল ক্ষেত্রে \"\"ফিমেল কেয়ার গোল্ড\"\" একটি উৎকৃষ্ট সুফলদায়ক পুষ্টি টনিক হিসেবে প্রমানিত হয়েছে, নিয়মিত সেবনে মাথার চুল থেকে হাত-পায়ের নখের ও বক্ষের সোন্দর্য বৃদ্ধি, মুখমন্ডলের লাবন্যতা, প্রান চঞ্চলতা, কর্মশক্তি ও মানসিক প্রশান্তি বৃদ্ধি পায়। অকাল ঋতু বন্ধের কারন দূরীভূত হয়ে যৌবন দীর্ঘায়িত হয়।\n\nসেবন বিধি: ১ বা ২ চামচ পাউডার ১গ্লাস ঠান্ডা পানির সহিত সকাল ও বিকাল খালি পেটে সেব্য।\n\nপ্যাক সাইজ: ৩০০গ্রাম', '800.00', '700.00', '000', '15', 'upload/product/FEMALE_CARE_GOLD1576935991.jpg', 'True', 'Single', 'Active', '2019-12-21 13:46:31', '2020-01-22 16:41:45', NULL),
(6, 1, 1, 1, 1, 'Baby Life Plus', 'SBLP#04', 'BABY_LIFE_PLUS\nউপকারীতা: শিশুদের সু-স্বাস্থ্য সুরক্ষা, স্বাস্থ্য বর্ধক, মাংসপেশি ও হাড়কে ক্যালসিয়াম সমৃদ্ধ মজবুত করে। ব্রেইন পাওয়ার, IQ মেধাশক্তি, ক্ষুধা বৃদ্ধি এবং প্রাত্যাহিক অধ্যায়ন, খেলাধুলা ও বিভিন্ন কারিকুলামে অংশ গ্রহনে উদ্যমি, তারুণ্যদীপ্ত করে তোলে, বেবী লাইফ ফুড সাপ্লিমেন্ট কোন দুধের বিকল্প খাদ্য নয়। ২ বছরের উর্ধে সকল শিশুদের প্রাত্যাহিক খাদ্য অভ্যাসের সাথে অতিরিক্ত ভাবে এই পুষ্টি খাদ্য অতি প্রয়োজনীয় প্রোটিন, ভিটামিন মিনারেল ও ওমেগা-৩ (DHA, EFA, Co-Q-10) খাদ্য উপাদান সরবরাহ করে ফলে একটি স্বাস্থ্যদিপ্ত ও মেধা সমৃদ্ধ শিশু গঠনে ইহার কোন বিকল্প পুষ্টি খাদ্য আমাদের দেশে নেই।\n\nসেবন বিধি: ২/৩ চা চামচ পাউডার এক বা আধা গ্লাস পাতলা দুধ, পাকা কলা, মিষ্টি দই, এর সাথে ব্লেন্ডিং করে সকালে ও বিকালে খাবারের ১ ঘন্টা পরে সেবন বাঞ্ছনীয়।\n\nখুচরা মূল্যঃ৮০০.০০\nপ্যাক সাইজ: ৩০০গ্রাম', '800.00', '700.00', '000', '15', 'upload/product/BABY_LIFE_PLUS1576936328.jpg', 'True', 'Single', 'Active', '2019-12-21 13:52:08', '2020-01-22 16:42:19', NULL),
(7, 1, 1, 1, 1, 'Agro Vita Gold', 'SBLP#05', 'AGRO_ভিটা_গোল্ডঃ\nপুরুষ ও মহিলাদের গোপন শক্তি বর্ধক খাদ্য কার্যকারিতাঃ *সাধারন বল কারক, *শক্তি বর্ধক, *মহিলা ও পুরুষের হর্মোন ব্যালেন্স ফিরিয়ে আনে, *শুক্রানু বৃদ্ধি করে এবং বন্ধ্যাত্ব দূরীকরনে সহায়তা করে, *দাম্পত্য জীবনকে আনন্দদায়ক করে ।Ingredients: Korean Red Ginseng, White Oat, Mashroom, Damiana, Alfalfa Leaf, Tribulus, Aswaganda, Crocas sat, Velvet bean, Soya protein . সেবন বিধিঃ প্রয়োজন অনুসারে দুপুরের/রাতের খাবারের ১ ঘন্টা পরে হাফ/১ চা চামচ পাউডার কুসুম গরম পানি/চা দুধের সাথে মিশিয়ে সেব্য । প্যাক\n\nসাইজঃ ১০০ গ্রাম', '800.00', '700.00', '000', '15', 'upload/product/AGRO_VITA_GOLD1576936550.jpg', 'True', 'Single', 'Active', '2019-12-21 13:55:50', '2020-01-22 16:42:42', NULL),
(8, 1, 1, 1, 1, 'Triphala Plus', 'STFP#06', 'সুস্থ থাকুন, সুস্থ রাখুন।\nব্যবহার করুন হাজার বছরের পরীক্ষিত ভেষজ সাপ্লিমেন্ট “ত্রিফলা” যা এখন Medicated Measurement-এ আধুনিক বোতলজাত পদ্ধতিতে উৎপাদিত হচ্ছে এবং বাংলাদেশে \"Triphala Plus\" নামে বাজারজাত হচ্ছে।\n\nউপকারীতাসমুহ:\nপ্রতিদিন রাতে খাওয়ার পরে এক চা চামচ পরিমাণ Triphala Plus এর পাউডার পরিমাণমত হালকা গরম পানিতে মিশিয়ে টানা ১২০ দিন সেবন করলে নিন্মোক্ত সমস্যা সমুহ থেকে স্থায়ী মুক্তি মিলবে, ইনশা আল্লাহ। বিফলে ১০০% মূল্য ফেরৎ দেয়া হবে।\n১) নতুন ও পুরাতন গ্যাস্ট্রিক (বুক জ্বলা, এসিডিটি, গ্যাস জনিত বায়ূর কারণে পেটে ব্যাথা ইত্যাদি)\n২) পুরাতন আমাশয় (পেটে কামড় দিয়ে পায়খানার বেগ হওয়া, খাওয়ার পরপরই পায়খানার বেগ হওয়া, মাঝে মাঝে পেটে ব্যাথা ইত্যাদি)\n৩) কোষ্ঠকাঠিন্য (নিয়মিত পায়খানা না হওয়া, পায়খানা কষা ও শক্ত হওয়া, পায়খানার সময় কষ্ট অনুভব করা ইত্যাদি)\n৪) পাকস্থলীর দূর্বলতা (ক্ষুধা মন্দা, খাবার ঠিকমত হজম না হওয়া, একবার খাবার পর অনেক দেরীতে ক্ষুধা লাগা, খাবারে অরুচি ইত্যাদি)\n৫) পাইলস*\n৬) আলসার*\n**(৫ ও ৬ নম্বর সমস্যার জন্য উপকারীতা স্বীকৃত। কিন্ত টাকা ফেরতের শর্ত প্রযোয্য নয়)\n\nবিশেষ দ্রষ্টব্য:\n* Triphala Plus ২ বছরের উপরে সকল বয়সের জন্য প্রযোয্য। তবে ২ বছর এর উপর থেকে ৯ বছর বয়সের শিশুদের জন্য আধা চামচ খাওয়াতে হবে।\n** Triphala Plus শতভাগ প্রাকৃতিক ভেষজ খাবার, তাই ইহা সম্পূর্ণ পার্শ্ব প্রতিক্রিয়া মুক্ত।\n*** বয়স্কদের ক্ষেত্রে প্রথম ৩/৪ দিন পায়খানা নরম হওয়া স্বাভাবিক।', '450.00', '400.00', '000', '10', 'upload/product/TRIPHALA_PLUS1576936845.jpg', 'True', 'Single', 'Active', '2019-12-21 14:00:45', '2020-01-06 18:18:42', NULL),
(9, 1, 1, 3, 1, 'EFA Omega 3,6,9', 'SEFA#07', 'EFA উপকারীতাঃOmega-3+Co-Q-10 100% Natural anti oxident একমাত্র প্রাকৃতিক উৎস Leen seed/flax seed ,Almond,wallnut ও pistacio থেকে cold process পদ্ধতিতে আহরিত Omega-3 (৫৭%) এবং মালেশিয়া থেকে আমদানীকৃত ২৫% Carotino Co-angyme-Q-10 এর সাথে সংমিশ্রনের মাধ্যমে এই পুষ্টি খাদ্য সাপ্লিমেন্ট উৎপাদন করা হয়। নিয়মিত সেবনে দেহের বাড়তি কলেষ্টেরল ,ট্রাইগ্লিসারিয়েডের মাত্রা ক্রম্বানয়ে কমিয়ে এনে স্বাভাবিক করে। ওমেগা-৩ ও Co-Q-10 এর অভাবে করোনারী আর্টারীতে রক্ত ও চর্বি জমাট বেধে হার্ট ব্লকেজ সৃষ্টি করে এবং হার্ট এটাক ও ষ্ট্রোকের ঝুকি বাড়িয়ে দেয়। এমতাবস্থায় EFA নিয়মিত সেবনে আর্টারী ব্লকেজ ও জমাট বাধা চর্বি গলিয়ে নিঃস্বরন করতে বিস্ময়কর ভাবে কার্যকরী।                                              সেবনবিধিঃ প্রত্যেহ সকাল ও রাতে ৫মিলি ১ চা-চামচ ইএফএ আধা কাপ টক দইয়ের সাথে ব্লেন্ড করে পরামর্শ অনুযায়ী সেব্য। \n\nওজনঃ ২৫০ মিলি', '700.00', '600.00', '000', '10', 'upload/product/EFA Omega 3,6,91579949662.jpg', 'True', 'Single', 'Active', '2019-12-21 14:05:33', '2020-01-27 16:38:20', NULL),
(10, 2, 1, 2, 1, 'Tulsi Dry Juice', 'STFP#08', '✔️তুলসি_ড্রাই_জুস শরবত\n★★ তুলসি_ড্রাই_জুস কেন খাবেন???\n\n★★ উপকারিতাঃ\nশীতলকারক পানীয় হিসাবে পান করা যায়। অন্যান্য শরবত, লেবু পানি ও ফালুদার সাথে ব্যবহার করা যায়। ঠান্ডা, কাশি ও শ্বাসতন্ত্রের জন্য উপকারী পানীয়। হজমে সাহায্য করে ও কোষ্ঠকাঠিন্য উপকারী ভেষজ পানীয়। শরীরের ক্লান্তি দুর করে ও দেহ-মন সতেজ রাখে।\n\n★★ উপকরণঃ\nতুলসি বীজ, স্টেভিয়া, ইসুবগুল,ভিটামিন সি ও অন্যান্য হারবাল উপাদানের মিশ্রণ।\n\n★★ জুস তৈরির নিয়মঃ\n১ গ্লাস পানির মধ্যে ১ টি প্যাকেট ড্রাই জুস ঢেলে চামচ দিয়ে নেঢ়ে ২ মিনিট পর পান করুন।\n\nওজনঃ ১বক্স ৩৫পিছ স্যাসেট, ১৭৫ গ্রাম।\n\nমূল্যঃ ৫২৫.০০/-', '525.00', '480.00', '000', '8', 'upload/product/TULSI_DRY_JUICE1576937298.jpg', 'True', 'Single', 'Active', '2019-12-21 14:08:18', '2020-01-25 06:21:28', NULL),
(11, 2, 1, 2, 1, 'Green Tea', 'STFP#09', '00000', '450.00', '400.00', '000', '10', 'upload/product/GREEN_TEA1576937415.jpg', 'True', 'Single', 'Active', '2019-12-21 14:10:15', '2020-01-06 18:16:10', NULL),
(12, 2, 1, 2, 1, 'Tulsi Tea', 'STT#10', 'USFHSFCVJ', '400.00', '350.00', '000', '10', 'upload/product/TULSI_TEA1576937485.jpg', 'True', 'Single', 'Active', '2019-12-21 14:11:25', '2020-01-06 18:15:41', NULL),
(13, 2, 1, 2, 1, 'Masala Tea', 'SMT#11', 'JDKODFJVBDKF', '450.00', '400.00', '000', '10', 'upload/product/MASALA_TEA1576937602.jpg', 'True', 'Single', 'Active', '2019-12-21 14:13:22', '2020-01-06 18:14:20', NULL),
(14, 2, 1, 2, 1, 'Slim Tea', 'SSL#01', 'RT5YRYR', '550.00', '500.00', '000', '10', 'upload/product/SLIM_TEA1576937659.jpg', 'True', 'Single', 'Active', '2019-12-21 14:14:19', '2020-01-06 18:13:52', NULL),
(15, 2, 1, 3, 1, 'Black Seed Oil', 'SBSO#12', 'RETETERTGRG', '650.00', '600.00', '000', '12', 'upload/product/BLACK_SEED_OIL1576937944.jpg', 'True', 'Single', 'Active', '2019-12-21 14:19:05', '2020-01-29 10:52:58', '2020-01-29 10:52:58'),
(16, 2, 1, 2, 1, 'Detox Foot Patch', 'SDFP#13', 'DETOX FOOT PATCH\nব্যবহার করুন নিজেকে বিষ মুক্ত রাখুন।\nউপকারিতা: * ডিটক্স ফুড প্যাচ ব্যবহারে বাতের ব্যথা,হাটু ব্যথা,কোমর ব্যথা,এবং মাংশপেশীর ব্যথা কমিয়ে শরীরকে ঝরঝরে করে তোলে।শরীরের ভিতর অতিরিক্ত চর্বি জাতীয় পদার্থ শোষন করে,রক্তের কোলেস্টেরল কমাতে সাহায্য করে,ব্লাড প্রেশার নিয়ন্ত্রণ রাখে,চামড়ার কালো দাগ ও কুঁচকানো রোধ করে।এজমা ও ব্রংকাইটিসে বিশেষ উপকারী।ঘামের দুর্গন্ধ ও পায়ের মোজার দুর্গন্ধ দূর করে।পরিপাক তন্ত্রের কার্যকারীতা বাড়িয়ে দেয়।রক্ত পরিস্কার ও রক্ত প্রবাহ বাড়িয়ে দেয়।শরীর সুস্থ্য ও সতেজ করে।তাই ডিটক্স ফুট প্যাচ ব্যবহার করুন সুস্থ্য সবল জীবন গড়ুন।\n10 pair-20 pc.', '1050.00', '950.00', '000', '20', 'upload/product/DETOX_FOOT_PATCH1576938076.jpg', 'True', 'Single', 'Active', '2019-12-21 14:21:16', '2020-01-22 17:46:23', NULL),
(17, 4, 1, NULL, 1, 'Soy Combo Pack-02', 'SECP#01', '০১	স্ট্যান্ডার্ড সয়া প্রোটিন গোল্ড =৫০০ গ্রাম=০১\r\n০২	স্ট্যান্ডার্ড তুলসি ড্রাই জুস=৩৫ স্যাসট=০১\r\n০৩	স্ট্যান্ডার্ড বেবি লাইফ প্লাস =৩০০ গ্রাম=০১\r\n০৪	স্ট্যান্ডার্ড মধু =২৫০ গ্রাম=০১\r\n// 	সয়া কম্বো প্যাকেজ-০৫  =০৪', '2,375.00', '2,100.00', NULL, '50', 'upload/product/Soy Combo Pack-051580921011.jpg', 'True', 'Bundle', 'Active', '2019-12-21 15:02:23', '2020-02-16 11:34:59', NULL),
(18, 3, 2, 1, 1, 'Aloevera Sampoo', 'LAVS01', 'প্রকৃতিতে সৃষ্টি কর্তা বহু ঔষধি গাছ দিয়েছেন যার লতা,পাতা,ছাল,ডাল,ফল কিংবা মূল মানুষের রোগ নিরাময়ে ব্যবহৃত হয়।রোগ নিরাময়ের পাশাপাশি কিছু কিছু গাছের পাতা,ফল,মূল কিংবা ছাল ব্যবহৃত হয় চুলের যত্নে।চুলের জন্য উপকারী তেমনি কিছু গাছ যেমন মেহেদি, নিম, শিকাকাই, মেথি, রিঠা, আমলকী, খৈল, এলোভেরা ইত্যাদির নির্যাস নিয়ে তৈরি করা হয়েছে #লাভানা শ্যাম্পু। ইহা নিয়মিত ব্যবহারে ধীরেধীরে মাথার চুল পড়া বন্ধ হবে, খুশকি দূর হবে, চুলের গোড়া থেকে মাথা পর্যন্ত পুষ্টি সরবরাহ হবে, চুল হয়ে উঠবে উজ্জ্বল কালো ও ঝলমলে মসৃন।সপ্তাহে অন্তত ৩ দিন ব্যবহার করুন।\nওজনঃ ২০০ এমএল', '245.00', '235.00', '000', '4', 'upload/product/LAVANA_ALOE_VERA_SHAMPOO1577104456.png', 'True', 'Single', 'Active', '2019-12-23 12:34:17', '2020-01-27 14:54:49', NULL),
(19, 3, 1, 3, 1, 'Whitening Body Lotion', 'LWBL02', '0000', '225.00', '215.00', '000', '4', 'upload/product/LAVANA_WHITENING_BODY_LOTION1577105498.png', 'True', 'Single', 'Active', '2019-12-23 12:51:40', '2020-02-16 11:28:52', '2020-02-16 11:28:52'),
(20, 3, 2, 1, 1, 'Spot Out Skin Cream', 'LSOSC03', '00000', '125.00', '120.00', '000', '2.25', 'upload/product/LAVANA_SPOT_OUT_SKIN_CREAM1577106335.png', 'True', 'Single', 'Active', '2019-12-23 13:05:36', '2020-01-18 16:15:49', '2020-01-18 16:15:49'),
(21, 3, 2, 1, 1, 'Whitening Skin Cream', 'LWSC04', '0000', '125.00', '120.00', '000', '2.25', 'upload/product/LAVANA_WHITENING_SKIN_CREAM1577106477.png', 'True', 'Single', 'Active', '2019-12-23 13:07:58', '2020-01-18 16:15:34', '2020-01-18 16:15:34'),
(22, 3, 2, 1, 1, 'Hair Remobal Cream', 'LHRC05', '0000', '95.00', '90.00', '000', '2', 'upload/product/LAVANA_HAIR_REMOVAL_CREAM1577108720.png', 'True', 'Single', 'Active', '2019-12-23 13:45:21', '2020-01-27 14:53:27', NULL),
(23, 3, 2, 1, 1, 'Neem Face Wash', 'LNFW06', '0000', '95.00', '90.00', '000', '1.5', 'upload/product/LAVANA_NEEM_FACE_WASH1577108910.gif', 'True', 'Single', 'Active', '2019-12-23 13:48:31', '2020-01-06 18:26:12', NULL),
(24, 3, 2, 3, 1, 'Lavana Neem Oil', 'LNO07', '000', '210.00', '200.00', '000', '4', 'upload/product/LAVANA_NEEM_OIL1577110683.png', 'True', 'Single', 'Active', '2019-12-23 14:18:05', '2020-01-06 18:02:08', NULL),
(25, 3, 2, 3, 1, 'Lavana Castor Oil', 'LCO08', '000', '210.00', '200.00', '000', '4', 'upload/product/LAVANA_CASTOR_OIL1577110815.png', 'True', 'Single', 'Active', '2019-12-23 14:20:17', '2020-01-20 13:04:10', '2020-01-20 13:04:10'),
(26, 3, 2, 3, 1, 'Lavana Olive Oil', 'LOO09', '0000', '195.00', '185.00', '000', '3.25', 'upload/product/LAVANA_OLIVE_OIL1577110950.png', 'True', 'Single', 'Active', '2019-12-23 14:22:32', '2020-01-27 14:32:09', '2020-01-27 14:32:09'),
(27, 3, 2, 1, 1, 'Neem Aloevera Soap', 'LNAVS10', '000', '40.00', '38.00', '000', '0.5', 'upload/product/LAVANA_NEEM-ALOEVERA_SOAP1577111042.gif', 'True', 'Single', 'Active', '2019-12-23 14:24:03', '2020-01-06 18:25:20', NULL),
(28, 3, 2, 1, 1, 'Cucumber Soap', 'LCS11', '000', '55.00', '52.00', '000', '0.5', 'upload/product/LAVANA_CUCUMBER_SOAP1577111124.png', 'True', 'Single', 'Active', '2019-12-23 14:25:25', '2020-01-06 18:25:00', NULL),
(29, 3, 4, 1, 1, 'White Touch Whitening Cream', 'WTWC012', '000', '520.00', '480.00', '000', '12.25', 'upload/product/WHITE_TOUCH_WHITENING_CREAM1577114805.png', 'True', 'Single', 'Active', '2019-12-23 15:26:47', '2020-01-20 13:06:06', '2020-01-20 13:06:06'),
(30, 3, 4, 1, 1, 'Derma Plus Anti Acne Cream', 'DPAAC13', '000', '560.00', '520.00', '000', '13.25', 'upload/product/DERMA_PLUS_ANTI_ACNE_CREAM1577114980.png', 'True', 'Single', 'Active', '2019-12-23 15:29:40', '2020-01-20 13:05:36', '2020-01-20 13:05:36'),
(31, 3, 4, 1, 1, 'Derma Plus Ketoconazole Shampoo', 'DPKS14', '000', '520.00', '480.00', '000', '12.25', 'upload/product/DERMA_PLUS_KETOCONAZOLE_SHAMPOO1577115406.png', 'True', 'Single', 'Active', '2019-12-23 15:32:45', '2020-01-20 13:04:57', '2020-01-20 13:04:57'),
(32, 3, 4, 3, 1, 'White Touch Whitening Lotion', 'WTWL15', '000', '520.00', '480.00', '000', '12.25', 'upload/product/WHITE_TOUCH_WHITENING_LOTION1577115606.png', 'True', 'Single', 'Active', '2019-12-23 15:40:07', '2020-01-27 14:32:59', '2020-01-27 14:32:59'),
(33, 3, 1, 3, 1, 'Derma Plus Ketoconazole Soap', 'DPKS16', '0000', '480.00', '450.00', '000', '11.5', 'upload/product/DERMA_PLUS_KETOCONAZOLE_SOAP1577115725.png', 'True', 'Single', 'Active', '2019-12-23 15:42:06', '2020-01-20 13:04:38', '2020-01-20 13:04:38'),
(34, 3, 2, 3, 1, 'Banoful Cool Oil', 'LBCO17', '0000', 'Upcoming', 'Upcoming', '000', '000', 'upload/product/LAVANA_BANOFUL_COOL_OIL1577116011.png', 'True', 'Single', 'Active', '2019-12-23 15:46:53', '2020-01-20 13:03:39', '2020-01-20 13:03:39'),
(35, 5, 5, 1, 1, 'Real Power White', 'RPWD01', 'REAL_POWER_WHITE_DETERGENT\n1000 GM', '95.00', '90.00', '000', '1.15', 'upload/product/REAL_POWER_WHITE_DETERGENT1577685775.png', 'True', 'Single', 'Active', '2019-12-30 06:02:56', '2020-01-30 15:07:24', '2020-01-30 15:07:24'),
(36, 5, 5, 1, 1, 'Real Power White', 'RPWD02', 'REAL_POWER_WHITE_DETERGENT \n500 GM', '55.00', '53.00', '000', '0.75', 'upload/product/REAL_POWER_WHITE_DETERGENT1577685933.png', 'True', 'Single', 'Active', '2019-12-30 06:05:34', '2020-01-27 14:32:33', '2020-01-27 14:32:33'),
(37, 5, 5, 1, 1, 'Real Toilet Cleaner', 'RTC03', 'REAL_TOILET_CLENER\n500 GM', '85.00', '83.00', '000', '0.90', 'upload/product/REAL_TOILET_CLENER1577686099.png', 'True', 'Single', 'Active', '2019-12-30 06:08:19', '2020-01-30 15:07:15', '2020-01-30 15:07:15'),
(38, 5, 5, 1, 1, 'Real Dishwash Bar', 'RDB04', 'REAL_DISHWASH_BAR\n300 GM', '30.00', '29.00', '000', '0.35', 'upload/product/REAL_DISHWASH_BAR1577694973.png', 'True', 'Single', 'Active', '2019-12-30 08:36:13', '2020-01-30 15:06:53', '2020-01-30 15:06:53'),
(39, 2, 1, NULL, 1, 'Standard Huney', 'AZMH01', 'STANDARD HUNEY\n250 GM', '250.00', '240.00', NULL, '4', 'upload/product/Standard Huney1580396918.jpg', 'True', 'Single', 'Active', '2019-12-30 09:10:42', '2020-01-30 15:08:39', NULL),
(40, 2, 1, 1, 1, 'Aromix Toothpast', 'ATP01', 'AROMIX_TOOTHPAST\n105 GM', '120.00', '110.00', '000', '2', 'upload/product/AROMIX_TOOTHPAST1577781808.jpg', 'True', 'Single', 'Active', '2019-12-31 08:43:28', '2020-01-06 17:42:25', NULL),
(41, 3, 6, 1, 1, 'Active Gold Mehedi', 'AAGM01', 'Aromix Active Gold Mehedi', '50.00', '47.00', '000', '1', 'upload/product/Aromix Active Gold Mehedi1578332221.jpg', 'True', 'Single', 'Active', '2020-01-06 17:37:02', '2020-01-06 18:22:56', NULL),
(42, 5, 1, 2, 1, 'Anytime Sanitary Napkin', 'ATSN01', 'Title: Anytime Ultra Thin Sanitary Napkin\nQuality: Super soft perforated dry weave top cover provides quick penetration\nPad Quantity: 10 pads in a pack\nCapacity: 280 mm', '120.00', '100.00', '000', '1.5', 'upload/product/Anytime Sanitary Napkin1579182759.jpeg', 'True', 'Single', 'Active', '2020-01-16 13:52:40', '2020-01-30 15:06:11', '2020-01-30 15:06:11'),
(43, 6, 1, 1, 1, 'Mayu Mask', 'MM01', 'DESCRIPTION\nHow to use\n1.Aher washing the face amange the skin with a sin toner \n2. Match the sheet from the eye and fix it all overthe face with a fingertip \n3. Remover the mask after 20-30 minutes and use the finger to absorb the fmaning fluids lightly and amange according to the basic care order\n* use it regularly 1-3 times a week to get a better effec.\n* Do not use the once used mask again, When using the mask, pay attention to the contents not to contact to your eyes.\n\ningedetto: Water. Glycenin, Alcohol. Butylene Glycol, Tiehalose, Pantheroi, PEG-60 Hydrogenated Castor oil. Meghybaraben, Phenoryethanol,Bentonite,Aloe Extract, Portulaca Oleracel Extract, Carbomer, trieethanolamine, Disodun EDTA Fragrance\nCautors 1. Aoodusng an biermshes pirmoles irritated orsunburmed sin 2. stop using ilskn becomes red awollen. itchy during and ather use 3. pain penists atter maies speeled off and above sngs occur, de continue immediatuly indoonat yourdoctor \n4. Avoid contact with the If contact occurs, rinse eyes thoroughly with water', '55.00', '50.00', '000', '0.8', 'upload/product/Mayu Mask1579190848.jpg', 'True', 'Single', 'Active', '2020-01-16 16:07:29', '2020-01-30 15:05:59', '2020-01-30 15:05:59'),
(44, 1, 7, 1, 1, 'Disaar Toothpast', 'DT01', 'Product details of Disaar Beauty Go Smoke Stains Toothpaste Odor Removal Oral Problem After Cigateres 100G\nDescription100g in one Tube! FOUR TUBES OF TOOTHPASTE SOLVE FIVE MAJOR PROBLEMS AFTER CIGARETES!!! Smoking sequelae, you have to pay attention to: Swollen Gums, Tartar, Bad Breath, Yellow Teeth/Black Teeth, Loss of loose Teeth\nSTAINS Peg stain formulation, professionaly decomposes and removes tar and nicotine residue\nODOR REMOVAL Add cool mint flavors specially developed for smokers to quickly reduce the smell of oral smoke and make the breath fresh and natural.\nTEETH PROTECTION Reduce the bleeding of common gums amoung smokers and make your mouth healthier\nREFRESHING TONE TO PREVENT TOOTH DECAY Cold mint spice, fresh breath.', '250.00', '220.00', '000', '3.5', 'upload/product/Disaar Toothpast1579192125.jpg', 'True', 'Single', 'Active', '2020-01-16 16:28:46', '2020-01-30 15:05:36', '2020-01-30 15:05:36'),
(45, 6, 1, 1, 1, 'Horse Oil', 'HOSG01', 'Horse Oil 90% Soothing Gel এ রয়েছে হর্স পাওয়ার জিলোটিন, এলোভেরার তেল ও জিন সান পাওয়ার ওয়েল । ব্যবহারের ফলে আপনার স্কিন কালো হওয়া বন্ধ করবে, শরীরে কালো দাগ দূর করবে ।  চামড়া শুকিয়ে যাওয়া, এবড়ো থেবড়ো চামড়া, কোঁচকানো চামড়া, বলি রেখা রিপেয়ার করবে, চামড়া টানটান করে আপনাকে সৌন্দর্য্যময় করে তুলবে । হর্সওয়েল রাতে ব্যবহার করে, আপনার বয়স ধরে রাখুন । \nওজনঃ ২৬০ গ্রাম', '550.00', '500.00', '000', '7', 'upload/product/Horse Oil1579193966.jpg', 'True', 'Single', 'Active', '2020-01-16 16:43:15', '2020-01-30 15:05:49', '2020-01-30 15:05:49'),
(46, 6, 1, 1, 1, 'Aloevera Soothing Gel', 'AVG01', 'Aloevera Soothing Gel', '300.00', '260.00', '000', '4', 'upload/product/Aloevera Soothing Gel1579193789.png', 'True', 'Single', 'Active', '2020-01-16 16:56:31', '2020-01-29 10:53:24', '2020-01-29 10:53:24'),
(47, 6, 1, 1, 1, 'Crystal Aqua Sleeping Pack', 'CASP01', 'Crystal Aqua Sleeping Pack\nWeight: 50ml', '410.00', '380.00', '000', '4', 'upload/product/Crystal Aqua Sleeping Pack1579194605.png', 'True', 'Single', 'Active', '2020-01-16 17:10:06', '2020-01-29 10:53:33', '2020-01-29 10:53:33'),
(48, 6, 1, 1, 1, 'Aqua Gel Sunscreen SPF 50++PA++', 'AGSC01', 'Aqua Gel Sunscreen SPF 50++PA++\nWeight: 50ml', '370.00', '350.00', '000', '4', 'upload/product/Aqua Gel Sunscreen SPF 50++PA++1579195364.png', 'True', 'Single', 'Active', '2020-01-16 17:22:45', '2020-01-29 10:53:14', '2020-01-29 10:53:14'),
(49, 6, 1, 1, 1, 'Jocelyn Foam Cleanser Harbal Face Wash', 'FW01', 'বিষাক্ত কেমিক্যাল মুক্ত হারবাল ফেসওয়াস বিধায় সম্পুর্ণ পার্শপ্রতিক্রিয়া মুক্ত। মুখের তৈলাক্ত ভাব দূর করে, মুখ উজ্জল করবে। লোমকূপ বন্ধ হয়ে যাওয়াকে প্রতিরোধ ও ব্রণ হওয়া বন্ধ করে। মেসতা উঠাতে খুবই কার্যকর। প্রতিদিনের ধুলাবালি ময়লা বের করে দেয় এবং হারবাল ভিটামিন্স এর যোগান দেয়।\n100 gm', '375.00', '360.00', '000', '3.5', 'upload/product/Jocelyn Foam Cleanser Harbal Face Wash1579328248.png', 'True', 'Single', 'Active', '2020-01-18 06:17:29', '2020-01-22 16:51:11', '2020-01-22 16:51:11'),
(50, 1, 1, 1, 1, 'Cardio Care Gold', 'SCCG36', 'Standard Cardio Care Gold \nউপকারিতাঃ\nকরােনারী হার্ট কেয়ার , ব্লকেজ যুক্ত রােগীদের জন্য একটি উত্তম ডায়েটরি সাপ্লিমেন্ট। চিকিৎসকের নির্দেশীত ঔষধাবলীর সাথে কার্ডিও কেয়ার সেবনে ( মল উপাদান – প্রােটিন + ওমেগা - ৩ + Co - Q - 10 + L - Argenina+L সমৃদ্ধ। করােনারী আর্টারী / রক্তনালীর প্রাচীর প্রসারিত ও পিচ্ছিল হয় এবং রক্তে অক্সিজেনের আধিক্য ঘটায় এবং Nitric Oxide বৃদ্ধি পূর্বক সকল পকার কার্ডিয়াক ব্যথা / এনজাইনা দূরীভূত করে এবং ক্রমান্বয়ে ব্লকেজের মাত্রা কমায় ও রক্ত সঞ্চালন প্রক্রিয়াকে স্বাভাবিক করে । দীর্ঘকাল সেবনে পার্শ্বপ্রতিক্রিয়া মুক্ত ঔষধের ব্যবহার ক্রমান্বয়ে কমে আসে এবং অধিকাংশ রােগীর ক্ষেত্রে রিং এবং Bypass Surgery নতুন রক্তনালী সংযােজনের প্রয়ােজন হয় না ।\nসেবন মাত্রাঃ\nসকালে এবং রাতে ২৫ গ্রাম পাউডার অথবা ৪চা চামচ ১ গ্লাস বিশুদ্ধ পানিতে মিশিয়ে সেব্য অথবা সংশ্লিষ্ট কনসালটেন্ট এর পরামর্শ অনুযায়ী সেব্য।\nCardio Care Gold ( 500mg )', '1050.00', '950.00', '000', '20', 'upload/product/STANDARD CARDIO CARE GOLD1579948772.jpg', 'True', 'Single', 'Active', '2020-01-25 10:39:33', '2020-01-25 10:46:58', NULL),
(51, 1, 1, 1, 1, 'SLIM FAST', 'SF037', 'Products name : Slim Fast\nNaturally Harvested Product\nপ্রাকৃতিক পুষ্টি ও ভেষজ পণ্য \n\nউপকারিতা:\nসাধারণত কিডনী ও থাইরয়েড সমস্যা যুক্ত রোগী, চর্ম হার্পিস বা এলার্জি যুক্ত রোগী, যাদের সয়াবিন জাতীয় খাদ্যে এলার্জি বা বদহজম/গ্যাস বা ডায়রিয়া দেখা যায় এবং যাদের নিকট সয়াবিন সয়াপ্রোটিন যুক্ত খাদ্যে বিস্বাদ ও খেতে ভালো লাগে না বমি বমি লাগে কেবলমাত্র তাদের ক্ষেত্রে ১০০% সয়াবিন ফ্রী সুষম ফাইবার ও প্রোটিন সমৃদ্ধ খাদ্য উপাদান সমন্বয়ে বায়ো-স্লিম ড্রিংক মিক্স প্রস্তুত করা হয়েছে। নিয়ম মোতাবেক সেবনে দেহের বাড়তি ওজন চর্বি কমে আসবে এবং সেই সাথে ডায়াবেটিস, উচ্চ ট্রাইগ্লিসাডির ও কলেষ্টেররের মাত্রা কমে আসবে। ইহা ছাড়া ডাইজেষ্টিব সিস্টেম বা হজম প্রক্রিয়াকে শক্তিশালী করে কোষ্টবদ্ধতা, বদহজম, গ্যাসট্রাইটিজ ও পাকস্থলীর বিভিন্ন গোলোযোগ দূরিভূত করে।\n\nসেবনবিধি:\n১) ওজন কমানোর ক্ষেত্রে দুপুর ও রাতের খাবারের আধা ঘন্টা আগে ১ গ্লাস ঠান্ডা পানির সহিত পরামর্শ অনুযায়ী ১ বা ২ চামচ পাউডার গুলিয়ে সেবন করলে উত্তম ফল পাওয়া যাবে।\n২) সাধারণ কোষ্টবদ্ধতা ও হজম জনিত সমস্যার ক্ষেত্রে: উষ্ম গরম পানির সহিত উপরের নিয়ম অনুযায়ী খাবারের পরে সেব্য।\nবি:দ্র: কিডনী ও থাইরয়েড রোগীদের সেবন করতে বাধা নেই। কোন পার্শ্ব প্রতিক্রিয়া নেই।\n৩০০ গ্রাম', '1250.00', '1150.00', '000', '22', 'upload/product/SLIM FAST1579949097.jpg', 'True', 'Single', 'Active', '2020-01-25 10:44:58', '2020-01-25 10:44:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'accountant', 'web', '2019-10-21 06:15:29', '2019-10-21 06:15:29'),
(2, 'manager', 'web', '2019-10-21 06:15:29', '2019-10-21 06:15:29'),
(3, 'admin', 'web', '2019-10-21 06:15:29', '2019-10-21 06:15:29'),
(4, 'user', 'web', '2019-10-21 06:15:30', '2019-10-21 06:15:30'),
(5, 'free', 'web', '2019-10-21 06:15:30', '2019-10-21 06:15:30'),
(6, 'dealer', 'web', '2019-10-21 06:15:30', '2019-10-21 06:15:30');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(2, 3),
(3, 1),
(3, 3),
(4, 2),
(4, 3),
(5, 2),
(5, 3),
(6, 2),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(13, 4),
(14, 3),
(14, 4),
(15, 3),
(15, 4),
(16, 3),
(16, 6),
(17, 3),
(17, 6),
(18, 3),
(18, 6);

-- --------------------------------------------------------

--
-- Table structure for table `stock_managers`
--

CREATE TABLE `stock_managers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_user_id` int(10) DEFAULT NULL,
  `product_qty` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_flow` enum('in','out') COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_managers`
--

INSERT INTO `stock_managers` (`id`, `user_id`, `product_id`, `order_id`, `delivery_user_id`, `product_qty`, `stock_flow`, `stock_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', '41', NULL, NULL, '12', 'in', 'delivered', '2020-01-20 12:58:37', '2020-01-20 12:58:37', NULL),
(2, '1', '48', NULL, NULL, '1', 'in', 'delivered', '2020-01-20 12:58:53', '2020-01-20 12:58:53', NULL),
(3, '1', '40', NULL, NULL, '12', 'in', 'delivered', '2020-01-20 12:59:08', '2020-01-20 12:59:08', NULL),
(4, '1', '42', NULL, NULL, '10', 'in', 'delivered', '2020-01-20 12:59:19', '2020-01-20 12:59:19', NULL),
(5, '1', '46', NULL, NULL, '1', 'in', 'delivered', '2020-01-20 12:59:34', '2020-01-20 12:59:34', NULL),
(6, '1', '39', NULL, NULL, '10', 'in', 'delivered', '2020-01-20 12:59:43', '2020-01-20 12:59:43', NULL),
(7, '1', '47', NULL, NULL, '1', 'in', 'delivered', '2020-01-20 12:59:54', '2020-01-20 12:59:54', NULL),
(8, '1', '30', NULL, NULL, '1', 'in', 'delivered', '2020-01-20 13:00:04', '2020-01-20 13:00:04', NULL),
(9, '1', '44', NULL, NULL, '1', 'in', 'delivered', '2020-01-20 13:00:27', '2020-01-20 13:00:27', NULL),
(10, '1', '48', NULL, NULL, '1', 'in', 'delivered', '2020-01-20 13:00:33', '2020-01-20 13:00:33', NULL),
(11, '1', '49', NULL, NULL, '1', 'in', 'delivered', '2020-01-20 13:00:54', '2020-01-20 13:00:54', NULL),
(12, '1', '49', NULL, NULL, '1', 'in', 'delivered', '2020-01-20 13:01:04', '2020-01-20 13:01:04', NULL),
(13, '1', '45', NULL, NULL, NULL, 'in', 'delivered', '2020-01-20 13:02:05', '2020-01-20 13:02:05', NULL),
(14, '1', '45', NULL, NULL, '1', 'in', 'delivered', '2020-01-20 13:02:27', '2020-01-20 13:02:27', NULL),
(15, '1', '18', NULL, NULL, '12', 'in', 'delivered', '2020-01-20 13:02:45', '2020-01-20 13:02:45', NULL),
(16, '1', '27', NULL, NULL, '12', 'in', 'delivered', '2020-01-20 13:08:57', '2020-01-20 13:08:57', NULL),
(17, '1', '23', NULL, NULL, '12', 'in', 'delivered', '2020-01-20 13:09:22', '2020-01-20 13:09:22', NULL),
(18, '1', '24', NULL, NULL, '12', 'in', 'delivered', '2020-01-20 13:09:41', '2020-01-20 13:09:41', NULL),
(19, '1', '19', NULL, NULL, '12', 'in', 'delivered', '2020-01-20 13:09:57', '2020-01-20 13:09:57', NULL),
(20, '1', '43', NULL, NULL, '20', 'in', 'delivered', '2020-01-20 13:10:11', '2020-01-20 13:10:11', NULL),
(21, '1', '38', NULL, NULL, '36', 'in', 'delivered', '2020-01-20 13:11:42', '2020-01-20 13:11:42', NULL),
(22, '1', '35', NULL, NULL, '12', 'in', 'delivered', '2020-01-20 13:12:11', '2020-01-20 13:12:11', NULL),
(23, '1', '37', NULL, NULL, '12', 'in', 'delivered', '2020-01-20 13:12:31', '2020-01-20 13:12:31', NULL),
(24, '1', '6', NULL, NULL, '20', 'in', 'delivered', '2020-01-20 13:12:45', '2020-01-20 13:12:45', NULL),
(25, '1', '7', NULL, NULL, '20', 'in', 'delivered', '2020-01-20 13:12:59', '2020-01-20 13:12:59', NULL),
(26, '1', '15', NULL, NULL, '10', 'in', 'delivered', '2020-01-20 13:13:15', '2020-01-20 13:13:15', NULL),
(27, '1', '16', NULL, NULL, '14', 'in', 'delivered', '2020-01-20 13:13:28', '2020-01-20 13:13:28', NULL),
(28, '1', '17', NULL, NULL, '5', 'in', 'delivered', '2020-01-20 13:13:44', '2020-01-20 13:13:44', NULL),
(29, '1', '9', NULL, NULL, '15', 'in', 'delivered', '2020-01-20 13:14:02', '2020-01-20 13:14:02', NULL),
(30, '1', '5', NULL, NULL, '8', 'in', 'delivered', '2020-01-20 13:14:15', '2020-01-20 13:14:15', NULL),
(31, '1', '4', NULL, NULL, '10', 'in', 'delivered', '2020-01-20 13:14:37', '2020-01-20 13:14:37', NULL),
(32, '1', '13', NULL, NULL, '10', 'in', 'delivered', '2020-01-20 13:14:51', '2020-01-20 13:14:51', NULL),
(33, '1', '1', NULL, NULL, '20', 'in', 'delivered', '2020-01-20 13:15:05', '2020-01-20 13:15:05', NULL),
(34, '1', '8', NULL, NULL, '20', 'in', 'delivered', '2020-01-20 13:15:22', '2020-01-20 13:15:22', NULL),
(35, '1', '10', NULL, NULL, '10', 'in', 'delivered', '2020-01-20 13:15:45', '2020-01-20 13:15:45', NULL),
(36, '1', '11', NULL, NULL, '10', 'in', 'delivered', '2020-01-20 13:15:59', '2020-01-20 13:15:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `topup_balances`
--

CREATE TABLE `topup_balances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_user_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topup_amount` decimal(20,2) DEFAULT NULL,
  `topup_type` enum('withdrawal','user','admin') COLLATE utf8mb4_unicode_ci NOT NULL,
  `topup_flow` enum('in','out') COLLATE utf8mb4_unicode_ci NOT NULL,
  `topup_generate_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topup_details` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topup_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topup_balances`
--

INSERT INTO `topup_balances` (`id`, `user_id`, `from_user_id`, `topup_amount`, `topup_type`, `topup_flow`, `topup_generate_by`, `topup_details`, `topup_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', '1', '100.00', 'admin', 'in', '1', 'You Received 100 Tk TopUp Balance From System Administrator', 'active', '2020-01-06 03:21:25', '2020-01-06 03:21:25', NULL),
(2, '1', '200', '100.00', 'user', 'out', '1', 'Office Charge 100 Tk For foyez Membership ID Card.', 'active', '2020-01-06 03:23:19', '2020-01-06 03:23:19', NULL),
(3, '200', '1', '2000.00', 'admin', 'in', '1', 'You Received 2000 Tk TopUp Balance From System Administrator', 'active', '2020-01-06 03:50:03', '2020-01-06 03:50:03', NULL),
(4, '200', '201', '100.00', 'user', 'out', '200', 'Office Charge 100 Tk For foyez1 Membership ID Card.', 'active', '2020-01-06 03:51:21', '2020-01-06 03:51:21', NULL),
(5, '200', '202', '100.00', 'user', 'out', '200', 'Office Charge 100 Tk For foyez2 Membership ID Card.', 'active', '2020-01-06 03:52:05', '2020-01-06 03:52:05', NULL),
(6, '200', '203', '100.00', 'user', 'out', '200', 'Office Charge 100 Tk For foyez3 Membership ID Card.', 'active', '2020-01-06 03:52:52', '2020-01-06 03:52:52', NULL),
(7, '200', '204', '100.00', 'user', 'out', '200', 'Office Charge 100 Tk For foyez4 Membership ID Card.', 'active', '2020-01-06 03:53:35', '2020-01-06 03:53:35', NULL),
(8, '200', '205', '100.00', 'user', 'out', '200', 'Office Charge 100 Tk For foyez5 Membership ID Card.', 'active', '2020-01-06 03:54:19', '2020-01-06 03:54:19', NULL),
(9, '200', '206', '100.00', 'user', 'out', '200', 'Office Charge 100 Tk For foyez6 Membership ID Card.', 'active', '2020-01-06 03:54:55', '2020-01-06 03:54:55', NULL),
(10, '200', '207', '100.00', 'user', 'out', '200', 'Office Charge 100 Tk For foyez7 Membership ID Card.', 'active', '2020-01-06 03:55:33', '2020-01-06 03:55:33', NULL),
(11, '200', '208', '100.00', 'user', 'out', '200', 'Office Charge 100 Tk For foyez8 Membership ID Card.', 'active', '2020-01-06 03:56:25', '2020-01-06 03:56:25', NULL),
(12, '200', '209', '100.00', 'user', 'out', '200', 'Office Charge 100 Tk For foyez9 Membership ID Card.', 'active', '2020-01-06 03:57:09', '2020-01-06 03:57:09', NULL),
(13, '200', '210', '100.00', 'user', 'out', '200', 'Office Charge 100 Tk For foyez10 Membership ID Card.', 'active', '2020-01-06 03:57:55', '2020-01-06 03:57:55', NULL),
(14, '200', '211', '100.00', 'user', 'out', '200', 'Office Charge 100 Tk For foyez01 Membership ID Card.', 'active', '2020-01-06 03:59:38', '2020-01-06 03:59:38', NULL),
(15, '200', '212', '100.00', 'user', 'out', '200', 'Office Charge 100 Tk For foyez02 Membership ID Card.', 'active', '2020-01-06 04:00:28', '2020-01-06 04:00:28', NULL),
(16, '200', '213', '100.00', 'user', 'out', '200', 'Office Charge 100 Tk For foyez03 Membership ID Card.', 'active', '2020-01-06 04:01:28', '2020-01-06 04:01:28', NULL),
(17, '200', '214', '100.00', 'user', 'out', '200', 'Office Charge 100 Tk For foyez04 Membership ID Card.', 'active', '2020-01-06 04:02:06', '2020-01-06 04:02:06', NULL),
(18, '200', '215', '100.00', 'user', 'out', '200', 'Office Charge 100 Tk For foyez05 Membership ID Card.', 'active', '2020-01-06 04:02:48', '2020-01-06 04:02:48', NULL),
(19, '200', '216', '100.00', 'user', 'out', '200', 'Office Charge 100 Tk For foyez06 Membership ID Card.', 'active', '2020-01-06 04:03:53', '2020-01-06 04:03:53', NULL),
(20, '200', '217', '100.00', 'user', 'out', '200', 'Office Charge 100 Tk For foyez07 Membership ID Card.', 'active', '2020-01-06 04:05:26', '2020-01-06 04:05:26', NULL),
(21, '200', '218', '100.00', 'user', 'out', '200', 'Office Charge 100 Tk For foyez08 Membership ID Card.', 'active', '2020-01-06 04:06:02', '2020-01-06 04:06:02', NULL),
(22, '200', '219', '100.00', 'user', 'out', '200', 'Office Charge 100 Tk For foyez09 Membership ID Card.', 'active', '2020-01-06 04:06:46', '2020-01-06 04:06:46', NULL),
(23, '200', '220', '100.00', 'user', 'out', '200', 'Office Charge 100 Tk For foyez010 Membership ID Card.', 'active', '2020-01-06 04:07:35', '2020-01-06 04:07:35', NULL),
(24, '1', '1', '800.00', 'admin', 'in', '1', 'You Received 800 Tk TopUp Balance From System Administrator', 'active', '2020-01-06 05:00:38', '2020-01-06 05:00:38', NULL),
(25, '1', '221', '100.00', 'user', 'out', '1', 'Office Charge 100 Tk For rocky Membership ID Card.', 'active', '2020-01-06 05:05:40', '2020-01-06 05:05:40', NULL),
(26, '1', '222', '100.00', 'user', 'out', '1', 'Office Charge 100 Tk For mgmustafa Membership ID Card.', 'active', '2020-01-06 06:04:51', '2020-01-06 06:04:51', NULL),
(27, '1', '223', '100.00', 'user', 'out', '1', 'Office Charge 100 Tk For khanh Membership ID Card.', 'active', '2020-01-06 06:14:43', '2020-01-06 06:14:43', NULL),
(28, '1', '224', '100.00', 'user', 'out', '1', 'Office Charge 100 Tk For khanh1 Membership ID Card.', 'active', '2020-01-06 06:16:46', '2020-01-06 06:16:46', NULL),
(29, '1', '225', '100.00', 'user', 'out', '1', 'Office Charge 100 Tk For khanh2 Membership ID Card.', 'active', '2020-01-06 06:17:34', '2020-01-06 06:17:34', NULL),
(30, '1', '226', '100.00', 'user', 'out', '1', 'Office Charge 100 Tk For moshin Membership ID Card.', 'active', '2020-01-06 06:19:22', '2020-01-06 06:19:22', NULL),
(31, '1', '227', '100.00', 'user', 'out', '1', 'Office Charge 100 Tk For akhi Membership ID Card.', 'active', '2020-01-06 06:21:38', '2020-01-06 06:21:38', NULL),
(32, '227', '1', '100.00', 'admin', 'in', '1', 'You Received 100 Tk TopUp Balance From System Administrator', 'active', '2020-01-06 06:23:10', '2020-01-06 06:23:10', NULL),
(33, '227', '229', '100.00', 'user', 'out', '227', 'Office Charge 100 Tk For mjhasan Membership ID Card.', 'active', '2020-01-06 06:26:28', '2020-01-06 06:26:28', NULL),
(34, '223', '1', '500.00', 'admin', 'in', '1', 'You Received 500 Tk TopUp Balance From System Administrator', 'active', '2020-01-06 06:46:53', '2020-01-06 06:46:53', NULL),
(35, '1', '230', '100.00', 'user', 'out', '1', 'Office Charge 100 Tk For mimahmud Membership ID Card.', 'active', '2020-01-06 06:51:23', '2020-01-06 06:51:23', NULL),
(36, '223', '231', '100.00', 'user', 'out', '223', 'Office Charge 100 Tk For dalowarh Membership ID Card.', 'active', '2020-01-06 06:58:17', '2020-01-06 06:58:17', NULL),
(37, '223', '232', '100.00', 'user', 'out', '223', 'Office Charge 100 Tk For jahangirh Membership ID Card.', 'active', '2020-01-06 07:04:28', '2020-01-06 07:04:28', NULL),
(38, '223', '233', '100.00', 'user', 'out', '223', 'Office Charge 100 Tk For mizanur Membership ID Card.', 'active', '2020-01-06 07:06:18', '2020-01-06 07:06:18', NULL),
(39, '223', '234', '100.00', 'user', 'out', '223', 'Office Charge 100 Tk For mmkhan Membership ID Card.', 'active', '2020-01-06 07:08:21', '2020-01-06 07:08:21', NULL),
(40, '1', '1', '500.00', 'admin', 'in', '1', 'You Received 500 Tk TopUp Balance From System Administrator', 'active', '2020-01-06 07:20:54', '2020-01-06 07:20:54', NULL),
(41, '1', '235', '100.00', 'user', 'out', '1', 'Office Charge 100 Tk For sweety Membership ID Card.', 'active', '2020-01-06 07:22:26', '2020-01-06 07:22:26', NULL),
(42, '1', '236', '100.00', 'user', 'out', '1', 'Office Charge 100 Tk For badrul Membership ID Card.', 'active', '2020-01-06 07:25:29', '2020-01-06 07:25:29', NULL),
(43, '200', '1', '100.00', 'admin', 'in', '1', 'You Received 100 Tk TopUp Balance From System Administrator', 'active', '2020-01-12 12:09:02', '2020-01-12 12:09:02', NULL),
(44, '200', '237', '100.00', 'user', 'out', '200', 'Office Charge 100 Tk For roman Membership ID Card.', 'active', '2020-01-12 12:11:57', '2020-01-12 12:11:57', NULL),
(45, '1', '238', '100.00', 'user', 'out', '1', 'Office Charge 100 Tk For suzan Membership ID Card.', 'active', '2020-01-25 06:30:02', '2020-01-25 06:30:02', NULL),
(46, '1', '239', '100.00', 'user', 'out', '1', 'Office Charge 100 Tk For habibur Membership ID Card.', 'active', '2020-01-25 06:32:17', '2020-01-25 06:32:17', NULL),
(47, '239', '1', '200.00', 'admin', 'in', '1', 'You Received 200 Tk TopUp Balance From System Administrator', 'active', '2020-01-25 06:32:57', '2020-01-25 06:32:57', NULL),
(48, '239', '240', '100.00', 'user', 'out', '239', 'Office Charge 100 Tk For fahadul Membership ID Card.', 'active', '2020-01-25 06:35:44', '2020-01-25 06:35:44', NULL),
(49, '239', '241', '100.00', 'user', 'out', '239', 'Office Charge 100 Tk For fatema Membership ID Card.', 'active', '2020-01-25 06:40:45', '2020-01-25 06:40:45', NULL),
(50, '1', '242', '100.00', 'user', 'out', '1', 'Office Charge 100 Tk For test1 Membership ID Card.', 'active', '2020-01-28 16:39:36', '2020-01-28 16:39:36', NULL),
(51, '1', '1', '2000.00', 'admin', 'in', '1', 'You Received 2000 Tk TopUp Balance From System Administrator', 'active', '2020-02-03 06:28:31', '2020-02-03 06:28:31', NULL),
(52, '200', '1', '200.00', 'admin', 'in', '1', 'You Received 200 Tk TopUp Balance From System Administrator', 'active', '2020-02-03 06:30:57', '2020-02-03 06:30:57', NULL),
(53, '200', '1', '200.00', 'admin', 'in', '1', 'You Received 200 Tk TopUp Balance From System Administrator', 'active', '2020-02-03 06:30:58', '2020-02-03 06:30:58', NULL),
(54, '1', '243', '100.00', 'user', 'out', '1', 'Office Charge 100 Tk For Rabbi Membership ID Card.', 'active', '2020-02-03 06:34:20', '2020-02-03 06:34:20', NULL),
(55, '243', '1', '100.00', 'admin', 'in', '1', 'You Received 100 Tk TopUp Balance From System Administrator', 'active', '2020-02-03 06:35:07', '2020-02-03 06:35:07', NULL),
(56, '1', '244', '100.00', 'user', 'out', '1', 'Office Charge 100 Tk For Amit Membership ID Card.', 'active', '2020-02-03 06:38:24', '2020-02-03 06:38:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transfer_balances`
--

CREATE TABLE `transfer_balances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `unit_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_sort` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `user_id`, `unit_name`, `unit_sort`, `unit_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'gm', 'gm', 'Active', '2019-12-21 13:33:02', '2019-12-21 13:33:02', NULL),
(2, 1, 'pc', 'pc', 'Active', '2019-12-21 13:33:21', '2019-12-21 13:33:21', NULL),
(3, 1, 'ml', 'ml', 'Active', '2019-12-21 13:33:30', '2019-12-21 13:33:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `upazilas`
--

CREATE TABLE `upazilas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bn_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `upazilas`
--

INSERT INTO `upazilas` (`id`, `district_id`, `name`, `bn_name`, `sort`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 34, 'Amtali Upazila', 'আমতলী', NULL, NULL, NULL, NULL),
(2, 34, 'Bamna Upazila', 'বামনা', NULL, NULL, NULL, NULL),
(3, 34, 'Barguna Sadar Upazila', 'বরগুনা সদর', NULL, NULL, NULL, NULL),
(4, 34, 'Betagi Upazila', 'বেতাগি', NULL, NULL, NULL, NULL),
(5, 34, 'Patharghata Upazila', 'পাথরঘাটা', NULL, NULL, NULL, NULL),
(6, 34, 'Taltali Upazila', 'তালতলী', NULL, NULL, NULL, NULL),
(7, 35, 'Muladi Upazila', 'মুলাদি', NULL, NULL, NULL, NULL),
(8, 35, 'Babuganj Upazila', 'বাবুগঞ্জ', NULL, NULL, NULL, NULL),
(9, 35, 'Agailjhara Upazila', 'আগাইলঝরা', NULL, NULL, NULL, NULL),
(10, 35, 'Barisal Sadar Upazila', 'বরিশাল সদর', NULL, NULL, NULL, NULL),
(11, 35, 'Bakerganj Upazila', 'বাকেরগঞ্জ', NULL, NULL, NULL, NULL),
(12, 35, 'Banaripara Upazila', 'বানাড়িপারা', NULL, NULL, NULL, NULL),
(13, 35, 'Gaurnadi Upazila', 'গৌরনদী', NULL, NULL, NULL, NULL),
(14, 35, 'Hizla Upazila', 'হিজলা', NULL, NULL, NULL, NULL),
(15, 35, 'Mehendiganj Upazila', 'মেহেদিগঞ্জ ', NULL, NULL, NULL, NULL),
(16, 35, 'Wazirpur Upazila', 'ওয়াজিরপুর', NULL, NULL, NULL, NULL),
(17, 36, 'Bhola Sadar Upazila', 'ভোলা সদর', NULL, NULL, NULL, NULL),
(18, 36, 'Burhanuddin Upazila', 'বুরহানউদ্দিন', NULL, NULL, NULL, NULL),
(19, 36, 'Char Fasson Upazila', 'চর ফ্যাশন', NULL, NULL, NULL, NULL),
(20, 36, 'Daulatkhan Upazila', 'দৌলতখান', NULL, NULL, NULL, NULL),
(21, 36, 'Lalmohan Upazila', 'লালমোহন', NULL, NULL, NULL, NULL),
(22, 36, 'Manpura Upazila', 'মনপুরা', NULL, NULL, NULL, NULL),
(23, 36, 'Tazumuddin Upazila', 'তাজুমুদ্দিন', NULL, NULL, NULL, NULL),
(24, 37, 'Jhalokati Sadar Upazila', 'ঝালকাঠি সদর', NULL, NULL, NULL, NULL),
(25, 37, 'Kathalia Upazila', 'কাঁঠালিয়া', NULL, NULL, NULL, NULL),
(26, 37, 'Nalchity Upazila', 'নালচিতি', NULL, NULL, NULL, NULL),
(27, 37, 'Rajapur Upazila', 'রাজাপুর', NULL, NULL, NULL, NULL),
(28, 38, 'Bauphal Upazila', 'বাউফল', NULL, NULL, NULL, NULL),
(29, 38, 'Dashmina Upazila', 'দশমিনা', NULL, NULL, NULL, NULL),
(30, 38, 'Galachipa Upazila', 'গলাচিপা', NULL, NULL, NULL, NULL),
(31, 38, 'Kalapara Upazila', 'কালাপারা', NULL, NULL, NULL, NULL),
(32, 38, 'Mirzaganj Upazila', 'মির্জাগঞ্জ ', NULL, NULL, NULL, NULL),
(33, 38, 'Patuakhali Sadar Upazila', 'পটুয়াখালী সদর', NULL, NULL, NULL, NULL),
(34, 38, 'Dumki Upazila', 'ডুমকি', NULL, NULL, NULL, NULL),
(35, 38, 'Rangabali Upazila', 'রাঙ্গাবালি', NULL, NULL, NULL, NULL),
(36, 39, 'Bhandaria', 'ভ্যান্ডারিয়া', NULL, NULL, NULL, NULL),
(37, 39, 'Kaukhali', 'কাউখালি', NULL, NULL, NULL, NULL),
(38, 39, 'Mathbaria', 'মাঠবাড়িয়া', NULL, NULL, NULL, NULL),
(39, 39, 'Nazirpur', 'নাজিরপুর', NULL, NULL, NULL, NULL),
(40, 39, 'Nesarabad', 'নেসারাবাদ', NULL, NULL, NULL, NULL),
(41, 39, 'Pirojpur Sadar', 'পিরোজপুর সদর', NULL, NULL, NULL, NULL),
(42, 39, 'Zianagar', 'জিয়ানগর', NULL, NULL, NULL, NULL),
(43, 40, 'Bandarban Sadar', 'বান্দরবন সদর', NULL, NULL, NULL, NULL),
(44, 40, 'Thanchi', 'থানচি', NULL, NULL, NULL, NULL),
(45, 40, 'Lama', 'লামা', NULL, NULL, NULL, NULL),
(46, 40, 'Naikhongchhari', 'নাইখংছড়ি ', NULL, NULL, NULL, NULL),
(47, 40, 'Ali kadam', 'আলী কদম', NULL, NULL, NULL, NULL),
(48, 40, 'Rowangchhari', 'রউয়াংছড়ি ', NULL, NULL, NULL, NULL),
(49, 40, 'Ruma', 'রুমা', NULL, NULL, NULL, NULL),
(50, 41, 'Brahmanbaria Sadar Upazila', 'ব্রাহ্মণবাড়িয়া সদর', NULL, NULL, NULL, NULL),
(51, 41, 'Ashuganj Upazila', 'আশুগঞ্জ', NULL, NULL, NULL, NULL),
(52, 41, 'Nasirnagar Upazila', 'নাসির নগর', NULL, NULL, NULL, NULL),
(53, 41, 'Nabinagar Upazila', 'নবীনগর', NULL, NULL, NULL, NULL),
(54, 41, 'Sarail Upazila', 'সরাইল', NULL, NULL, NULL, NULL),
(55, 41, 'Shahbazpur Town', 'শাহবাজপুর টাউন', NULL, NULL, NULL, NULL),
(56, 41, 'Kasba Upazila', 'কসবা', NULL, NULL, NULL, NULL),
(57, 41, 'Akhaura Upazila', 'আখাউরা', NULL, NULL, NULL, NULL),
(58, 41, 'Bancharampur Upazila', 'বাঞ্ছারামপুর', NULL, NULL, NULL, NULL),
(59, 41, 'Bijoynagar Upazila', 'বিজয় নগর', NULL, NULL, NULL, NULL),
(60, 42, 'Chandpur Sadar', 'চাঁদপুর সদর', NULL, NULL, NULL, NULL),
(61, 42, 'Faridganj', 'ফরিদগঞ্জ', NULL, NULL, NULL, NULL),
(62, 42, 'Haimchar', 'হাইমচর', NULL, NULL, NULL, NULL),
(63, 42, 'Haziganj', 'হাজীগঞ্জ', NULL, NULL, NULL, NULL),
(64, 42, 'Kachua', 'কচুয়া', NULL, NULL, NULL, NULL),
(65, 42, 'Matlab Uttar', 'মতলব উত্তর', NULL, NULL, NULL, NULL),
(66, 42, 'Matlab Dakkhin', 'মতলব দক্ষিণ', NULL, NULL, NULL, NULL),
(67, 42, 'Shahrasti', 'শাহরাস্তি', NULL, NULL, NULL, NULL),
(68, 43, 'Anwara Upazila', 'আনোয়ারা', NULL, NULL, NULL, NULL),
(69, 43, 'Banshkhali Upazila', 'বাশখালি', NULL, NULL, NULL, NULL),
(70, 43, 'Boalkhali Upazila', 'বোয়ালখালি', NULL, NULL, NULL, NULL),
(71, 43, 'Chandanaish Upazila', 'চন্দনাইশ', NULL, NULL, NULL, NULL),
(72, 43, 'Fatikchhari Upazila', 'ফটিকছড়ি', NULL, NULL, NULL, NULL),
(73, 43, 'Hathazari Upazila', 'হাঠহাজারী', NULL, NULL, NULL, NULL),
(74, 43, 'Lohagara Upazila', 'লোহাগারা', NULL, NULL, NULL, NULL),
(75, 43, 'Mirsharai Upazila', 'মিরসরাই', NULL, NULL, NULL, NULL),
(76, 43, 'Patiya Upazila', 'পটিয়া', NULL, NULL, NULL, NULL),
(77, 43, 'Rangunia Upazila', 'রাঙ্গুনিয়া', NULL, NULL, NULL, NULL),
(78, 43, 'Raozan Upazila', 'রাউজান', NULL, NULL, NULL, NULL),
(79, 43, 'Sandwip Upazila', 'সন্দ্বীপ', NULL, NULL, NULL, NULL),
(80, 43, 'Satkania Upazila', 'সাতকানিয়া', NULL, NULL, NULL, NULL),
(81, 43, 'Sitakunda Upazila', 'সীতাকুণ্ড', NULL, NULL, NULL, NULL),
(82, 44, 'Barura Upazila', 'বড়ুরা', NULL, NULL, NULL, NULL),
(83, 44, 'Brahmanpara Upazila', 'ব্রাহ্মণপাড়া', NULL, NULL, NULL, NULL),
(84, 44, 'Burichong Upazila', 'বুড়িচং', NULL, NULL, NULL, NULL),
(85, 44, 'Chandina Upazila', 'চান্দিনা', NULL, NULL, NULL, NULL),
(86, 44, 'Chauddagram Upazila', 'চৌদ্দগ্রাম', NULL, NULL, NULL, NULL),
(87, 44, 'Daudkandi Upazila', 'দাউদকান্দি', NULL, NULL, NULL, NULL),
(88, 44, 'Debidwar Upazila', 'দেবীদ্বার', NULL, NULL, NULL, NULL),
(89, 44, 'Homna Upazila', 'হোমনা', NULL, NULL, NULL, NULL),
(90, 44, 'Comilla Sadar Upazila', 'কুমিল্লা সদর', NULL, NULL, NULL, NULL),
(91, 44, 'Laksam Upazila', 'লাকসাম', NULL, NULL, NULL, NULL),
(92, 44, 'Monohorgonj Upazila', 'মনোহরগঞ্জ', NULL, NULL, NULL, NULL),
(93, 44, 'Meghna Upazila', 'মেঘনা', NULL, NULL, NULL, NULL),
(94, 44, 'Muradnagar Upazila', 'মুরাদনগর', NULL, NULL, NULL, NULL),
(95, 44, 'Nangalkot Upazila', 'নাঙ্গালকোট', NULL, NULL, NULL, NULL),
(96, 44, 'Comilla Sadar South Upazila', 'কুমিল্লা সদর দক্ষিণ', NULL, NULL, NULL, NULL),
(97, 44, 'Titas Upazila', 'তিতাস', NULL, NULL, NULL, NULL),
(98, 45, 'Chakaria Upazila', 'চকরিয়া', NULL, NULL, NULL, NULL),
(100, 45, 'Cox\'s Bazar Sadar Upazila', 'কক্স বাজার সদর', NULL, NULL, NULL, NULL),
(101, 45, 'Kutubdia Upazila', 'কুতুবদিয়া', NULL, NULL, NULL, NULL),
(102, 45, 'Maheshkhali Upazila', 'মহেশখালী', NULL, NULL, NULL, NULL),
(103, 45, 'Ramu Upazila', 'রামু', NULL, NULL, NULL, NULL),
(104, 45, 'Teknaf Upazila', 'টেকনাফ', NULL, NULL, NULL, NULL),
(105, 45, 'Ukhia Upazila', 'উখিয়া', NULL, NULL, NULL, NULL),
(106, 45, 'Pekua Upazila', 'পেকুয়া', NULL, NULL, NULL, NULL),
(107, 46, 'Feni Sadar', 'ফেনী সদর', NULL, NULL, NULL, NULL),
(108, 46, 'Chagalnaiya', 'ছাগল নাইয়া', NULL, NULL, NULL, NULL),
(109, 46, 'Daganbhyan', 'দাগানভিয়া', NULL, NULL, NULL, NULL),
(110, 46, 'Parshuram', 'পরশুরাম', NULL, NULL, NULL, NULL),
(111, 46, 'Fhulgazi', 'ফুলগাজি', NULL, NULL, NULL, NULL),
(112, 46, 'Sonagazi', 'সোনাগাজি', NULL, NULL, NULL, NULL),
(113, 47, 'Dighinala Upazila', 'দিঘিনালা ', NULL, NULL, NULL, NULL),
(114, 47, 'Khagrachhari Upazila', 'খাগড়াছড়ি', NULL, NULL, NULL, NULL),
(115, 47, 'Lakshmichhari Upazila', 'লক্ষ্মীছড়ি', NULL, NULL, NULL, NULL),
(116, 47, 'Mahalchhari Upazila', 'মহলছড়ি', NULL, NULL, NULL, NULL),
(117, 47, 'Manikchhari Upazila', 'মানিকছড়ি', NULL, NULL, NULL, NULL),
(118, 47, 'Matiranga Upazila', 'মাটিরাঙ্গা', NULL, NULL, NULL, NULL),
(119, 47, 'Panchhari Upazila', 'পানছড়ি', NULL, NULL, NULL, NULL),
(120, 47, 'Ramgarh Upazila', 'রামগড়', NULL, NULL, NULL, NULL),
(121, 48, 'Lakshmipur Sadar Upazila', 'লক্ষ্মীপুর সদর', NULL, NULL, NULL, NULL),
(122, 48, 'Raipur Upazila', 'রায়পুর', NULL, NULL, NULL, NULL),
(123, 48, 'Ramganj Upazila', 'রামগঞ্জ', NULL, NULL, NULL, NULL),
(124, 48, 'Ramgati Upazila', 'রামগতি', NULL, NULL, NULL, NULL),
(125, 48, 'Komol Nagar Upazila', 'কমল নগর', NULL, NULL, NULL, NULL),
(126, 49, 'Noakhali Sadar Upazila', 'নোয়াখালী সদর', NULL, NULL, NULL, NULL),
(127, 49, 'Begumganj Upazila', 'বেগমগঞ্জ', NULL, NULL, NULL, NULL),
(128, 49, 'Chatkhil Upazila', 'চাটখিল', NULL, NULL, NULL, NULL),
(129, 49, 'Companyganj Upazila', 'কোম্পানীগঞ্জ', NULL, NULL, NULL, NULL),
(130, 49, 'Shenbag Upazila', 'শেনবাগ', NULL, NULL, NULL, NULL),
(131, 49, 'Hatia Upazila', 'হাতিয়া', NULL, NULL, NULL, NULL),
(132, 49, 'Kobirhat Upazila', 'কবিরহাট ', NULL, NULL, NULL, NULL),
(133, 49, 'Sonaimuri Upazila', 'সোনাইমুরি', NULL, NULL, NULL, NULL),
(134, 49, 'Suborno Char Upazila', 'সুবর্ণ চর ', NULL, NULL, NULL, NULL),
(135, 50, 'Rangamati Sadar Upazila', 'রাঙ্গামাটি সদর', NULL, NULL, NULL, NULL),
(136, 50, 'Belaichhari Upazila', 'বেলাইছড়ি', NULL, NULL, NULL, NULL),
(137, 50, 'Bagaichhari Upazila', 'বাঘাইছড়ি', NULL, NULL, NULL, NULL),
(138, 50, 'Barkal Upazila', 'বরকল', NULL, NULL, NULL, NULL),
(139, 50, 'Juraichhari Upazila', 'জুরাইছড়ি', NULL, NULL, NULL, NULL),
(140, 50, 'Rajasthali Upazila', 'রাজাস্থলি', NULL, NULL, NULL, NULL),
(141, 50, 'Kaptai Upazila', 'কাপ্তাই', NULL, NULL, NULL, NULL),
(142, 50, 'Langadu Upazila', 'লাঙ্গাডু', NULL, NULL, NULL, NULL),
(143, 50, 'Nannerchar Upazila', 'নান্নেরচর ', NULL, NULL, NULL, NULL),
(144, 50, 'Kaukhali Upazila', 'কাউখালি', NULL, NULL, NULL, NULL),
(145, 1, 'Dhamrai Upazila', 'ধামরাই', NULL, NULL, NULL, NULL),
(146, 1, 'Dohar Upazila', 'দোহার', NULL, NULL, NULL, NULL),
(147, 1, 'Keraniganj Upazila', 'কেরানীগঞ্জ', NULL, NULL, NULL, NULL),
(148, 1, 'Nawabganj Upazila', 'নবাবগঞ্জ', NULL, NULL, NULL, NULL),
(149, 1, 'Savar Upazila', 'সাভার', NULL, NULL, NULL, NULL),
(150, 2, 'Faridpur Sadar Upazila', 'ফরিদপুর সদর', NULL, NULL, NULL, NULL),
(151, 2, 'Boalmari Upazila', 'বোয়ালমারী', NULL, NULL, NULL, NULL),
(152, 2, 'Alfadanga Upazila', 'আলফাডাঙ্গা', NULL, NULL, NULL, NULL),
(153, 2, 'Madhukhali Upazila', 'মধুখালি', NULL, NULL, NULL, NULL),
(154, 2, 'Bhanga Upazila', 'ভাঙ্গা', NULL, NULL, NULL, NULL),
(155, 2, 'Nagarkanda Upazila', 'নগরকান্ড', NULL, NULL, NULL, NULL),
(156, 2, 'Charbhadrasan Upazila', 'চরভদ্রাসন ', NULL, NULL, NULL, NULL),
(157, 2, 'Sadarpur Upazila', 'সদরপুর', NULL, NULL, NULL, NULL),
(158, 2, 'Shaltha Upazila', 'শালথা', NULL, NULL, NULL, NULL),
(159, 3, 'Gazipur Sadar-Joydebpur', 'গাজীপুর সদর', NULL, NULL, NULL, NULL),
(160, 3, 'Kaliakior', 'কালিয়াকৈর', NULL, NULL, NULL, NULL),
(161, 3, 'Kapasia', 'কাপাসিয়া', NULL, NULL, NULL, NULL),
(162, 3, 'Sripur', 'শ্রীপুর', NULL, NULL, NULL, NULL),
(163, 3, 'Kaliganj', 'কালীগঞ্জ', NULL, NULL, NULL, NULL),
(164, 3, 'Tongi', 'টঙ্গি', NULL, NULL, NULL, NULL),
(165, 4, 'Gopalganj Sadar Upazila', 'গোপালগঞ্জ সদর', NULL, NULL, NULL, NULL),
(166, 4, 'Kashiani Upazila', 'কাশিয়ানি', NULL, NULL, NULL, NULL),
(167, 4, 'Kotalipara Upazila', 'কোটালিপাড়া', NULL, NULL, NULL, NULL),
(168, 4, 'Muksudpur Upazila', 'মুকসুদপুর', NULL, NULL, NULL, NULL),
(169, 4, 'Tungipara Upazila', 'টুঙ্গিপাড়া', NULL, NULL, NULL, NULL),
(170, 5, 'Dewanganj Upazila', 'দেওয়ানগঞ্জ', NULL, NULL, NULL, NULL),
(171, 5, 'Baksiganj Upazila', 'বকসিগঞ্জ', NULL, NULL, NULL, NULL),
(172, 5, 'Islampur Upazila', 'ইসলামপুর', NULL, NULL, NULL, NULL),
(173, 5, 'Jamalpur Sadar Upazila', 'জামালপুর সদর', NULL, NULL, NULL, NULL),
(174, 5, 'Madarganj Upazila', 'মাদারগঞ্জ', NULL, NULL, NULL, NULL),
(175, 5, 'Melandaha Upazila', 'মেলানদাহা', NULL, NULL, NULL, NULL),
(176, 5, 'Sarishabari Upazila', 'সরিষাবাড়ি ', NULL, NULL, NULL, NULL),
(177, 5, 'Narundi Police I.C', 'নারুন্দি', NULL, NULL, NULL, NULL),
(178, 6, 'Astagram Upazila', 'অষ্টগ্রাম', NULL, NULL, NULL, NULL),
(179, 6, 'Bajitpur Upazila', 'বাজিতপুর', NULL, NULL, NULL, NULL),
(180, 6, 'Bhairab Upazila', 'ভৈরব', NULL, NULL, NULL, NULL),
(181, 6, 'Hossainpur Upazila', 'হোসেনপুর ', NULL, NULL, NULL, NULL),
(182, 6, 'Itna Upazila', 'ইটনা', NULL, NULL, NULL, NULL),
(183, 6, 'Karimganj Upazila', 'করিমগঞ্জ', NULL, NULL, NULL, NULL),
(184, 6, 'Katiadi Upazila', 'কতিয়াদি', NULL, NULL, NULL, NULL),
(185, 6, 'Kishoreganj Sadar Upazila', 'কিশোরগঞ্জ সদর', NULL, NULL, NULL, NULL),
(186, 6, 'Kuliarchar Upazila', 'কুলিয়ারচর', NULL, NULL, NULL, NULL),
(187, 6, 'Mithamain Upazila', 'মিঠামাইন', NULL, NULL, NULL, NULL),
(188, 6, 'Nikli Upazila', 'নিকলি', NULL, NULL, NULL, NULL),
(189, 6, 'Pakundia Upazila', 'পাকুন্ডা', NULL, NULL, NULL, NULL),
(190, 6, 'Tarail Upazila', 'তাড়াইল', NULL, NULL, NULL, NULL),
(191, 7, 'Madaripur Sadar', 'মাদারীপুর সদর', NULL, NULL, NULL, NULL),
(192, 7, 'Kalkini', 'কালকিনি', NULL, NULL, NULL, NULL),
(193, 7, 'Rajoir', 'রাজইর', NULL, NULL, NULL, NULL),
(194, 7, 'Shibchar', 'শিবচর', NULL, NULL, NULL, NULL),
(195, 8, 'Manikganj Sadar Upazila', 'মানিকগঞ্জ সদর', NULL, NULL, NULL, NULL),
(196, 8, 'Singair Upazila', 'সিঙ্গাইর', NULL, NULL, NULL, NULL),
(197, 8, 'Shibalaya Upazila', 'শিবালয়', NULL, NULL, NULL, NULL),
(198, 8, 'Saturia Upazila', 'সাঠুরিয়া', NULL, NULL, NULL, NULL),
(199, 8, 'Harirampur Upazila', 'হরিরামপুর', NULL, NULL, NULL, NULL),
(200, 8, 'Ghior Upazila', 'ঘিওর', NULL, NULL, NULL, NULL),
(201, 8, 'Daulatpur Upazila', 'দৌলতপুর', NULL, NULL, NULL, NULL),
(202, 9, 'Lohajang Upazila', 'লোহাজং', NULL, NULL, NULL, NULL),
(203, 9, 'Sreenagar Upazila', 'শ্রীনগর', NULL, NULL, NULL, NULL),
(204, 9, 'Munshiganj Sadar Upazila', 'মুন্সিগঞ্জ সদর', NULL, NULL, NULL, NULL),
(205, 9, 'Sirajdikhan Upazila', 'সিরাজদিখান', NULL, NULL, NULL, NULL),
(206, 9, 'Tongibari Upazila', 'টঙ্গিবাড়ি', NULL, NULL, NULL, NULL),
(207, 9, 'Gazaria Upazila', 'গজারিয়া', NULL, NULL, NULL, NULL),
(208, 10, 'Bhaluka', 'ভালুকা', NULL, NULL, NULL, NULL),
(209, 10, 'Trishal', 'ত্রিশাল', NULL, NULL, NULL, NULL),
(210, 10, 'Haluaghat', 'হালুয়াঘাট', NULL, NULL, NULL, NULL),
(211, 10, 'Muktagachha', 'মুক্তাগাছা', NULL, NULL, NULL, NULL),
(212, 10, 'Dhobaura', 'ধবারুয়া', NULL, NULL, NULL, NULL),
(213, 10, 'Fulbaria', 'ফুলবাড়িয়া', NULL, NULL, NULL, NULL),
(214, 10, 'Gaffargaon', 'গফরগাঁও', NULL, NULL, NULL, NULL),
(215, 10, 'Gauripur', 'গৌরিপুর', NULL, NULL, NULL, NULL),
(216, 10, 'Ishwarganj', 'ঈশ্বরগঞ্জ', NULL, NULL, NULL, NULL),
(217, 10, 'Mymensingh Sadar', 'ময়মনসিং সদর', NULL, NULL, NULL, NULL),
(218, 10, 'Nandail', 'নন্দাইল', NULL, NULL, NULL, NULL),
(219, 10, 'Phulpur', 'ফুলপুর', NULL, NULL, NULL, NULL),
(220, 11, 'Araihazar Upazila', 'আড়াইহাজার', NULL, NULL, NULL, NULL),
(221, 11, 'Sonargaon Upazila', 'সোনারগাঁও', NULL, NULL, NULL, NULL),
(222, 11, 'Bandar', 'বান্দার', NULL, NULL, NULL, NULL),
(223, 11, 'Naryanganj Sadar Upazila', 'নারায়ানগঞ্জ সদর', NULL, NULL, NULL, NULL),
(224, 11, 'Rupganj Upazila', 'রূপগঞ্জ', NULL, NULL, NULL, NULL),
(225, 11, 'Siddirgonj Upazila', 'সিদ্ধিরগঞ্জ', NULL, NULL, NULL, NULL),
(226, 12, 'Belabo Upazila', 'বেলাবো', NULL, NULL, NULL, NULL),
(227, 12, 'Monohardi Upazila', 'মনোহরদি', NULL, NULL, NULL, NULL),
(228, 12, 'Narsingdi Sadar Upazila', 'নরসিংদী সদর', NULL, NULL, NULL, NULL),
(229, 12, 'Palash Upazila', 'পলাশ', NULL, NULL, NULL, NULL),
(230, 12, 'Raipura Upazila, Narsingdi', 'রায়পুর', NULL, NULL, NULL, NULL),
(231, 12, 'Shibpur Upazila', 'শিবপুর', NULL, NULL, NULL, NULL),
(232, 13, 'Kendua Upazilla', 'কেন্দুয়া', NULL, NULL, NULL, NULL),
(233, 13, 'Atpara Upazilla', 'আটপাড়া', NULL, NULL, NULL, NULL),
(234, 13, 'Barhatta Upazilla', 'বরহাট্টা', NULL, NULL, NULL, NULL),
(235, 13, 'Durgapur Upazilla', 'দুর্গাপুর', NULL, NULL, NULL, NULL),
(236, 13, 'Kalmakanda Upazilla', 'কলমাকান্দা', NULL, NULL, NULL, NULL),
(237, 13, 'Madan Upazilla', 'মদন', NULL, NULL, NULL, NULL),
(238, 13, 'Mohanganj Upazilla', 'মোহনগঞ্জ', NULL, NULL, NULL, NULL),
(239, 13, 'Netrakona-S Upazilla', 'নেত্রকোনা সদর', NULL, NULL, NULL, NULL),
(240, 13, 'Purbadhala Upazilla', 'পূর্বধলা', NULL, NULL, NULL, NULL),
(241, 13, 'Khaliajuri Upazilla', 'খালিয়াজুরি', NULL, NULL, NULL, NULL),
(242, 14, 'Baliakandi Upazila', 'বালিয়াকান্দি', NULL, NULL, NULL, NULL),
(243, 14, 'Goalandaghat Upazila', 'গোয়ালন্দ ঘাট', NULL, NULL, NULL, NULL),
(244, 14, 'Pangsha Upazila', 'পাংশা', NULL, NULL, NULL, NULL),
(245, 14, 'Kalukhali Upazila', 'কালুখালি', NULL, NULL, NULL, NULL),
(246, 14, 'Rajbari Sadar Upazila', 'রাজবাড়ি সদর', NULL, NULL, NULL, NULL),
(247, 15, 'Shariatpur Sadar -Palong', 'শরীয়তপুর সদর ', NULL, NULL, NULL, NULL),
(248, 15, 'Damudya Upazila', 'দামুদিয়া', NULL, NULL, NULL, NULL),
(249, 15, 'Naria Upazila', 'নড়িয়া', NULL, NULL, NULL, NULL),
(250, 15, 'Jajira Upazila', 'জাজিরা', NULL, NULL, NULL, NULL),
(251, 15, 'Bhedarganj Upazila', 'ভেদারগঞ্জ', NULL, NULL, NULL, NULL),
(252, 15, 'Gosairhat Upazila', 'গোসাইর হাট ', NULL, NULL, NULL, NULL),
(253, 16, 'Jhenaigati Upazila', 'ঝিনাইগাতি', NULL, NULL, NULL, NULL),
(254, 16, 'Nakla Upazila', 'নাকলা', NULL, NULL, NULL, NULL),
(255, 16, 'Nalitabari Upazila', 'নালিতাবাড়ি', NULL, NULL, NULL, NULL),
(256, 16, 'Sherpur Sadar Upazila', 'শেরপুর সদর', NULL, NULL, NULL, NULL),
(257, 16, 'Sreebardi Upazila', 'শ্রীবরদি', NULL, NULL, NULL, NULL),
(258, 17, 'Tangail Sadar Upazila', 'টাঙ্গাইল সদর', NULL, NULL, NULL, NULL),
(259, 17, 'Sakhipur Upazila', 'সখিপুর', NULL, NULL, NULL, NULL),
(260, 17, 'Basail Upazila', 'বসাইল', NULL, NULL, NULL, NULL),
(261, 17, 'Madhupur Upazila', 'মধুপুর', NULL, NULL, NULL, NULL),
(262, 17, 'Ghatail Upazila', 'ঘাটাইল', NULL, NULL, NULL, NULL),
(263, 17, 'Kalihati Upazila', 'কালিহাতি', NULL, NULL, NULL, NULL),
(264, 17, 'Nagarpur Upazila', 'নগরপুর', NULL, NULL, NULL, NULL),
(265, 17, 'Mirzapur Upazila', 'মির্জাপুর', NULL, NULL, NULL, NULL),
(266, 17, 'Gopalpur Upazila', 'গোপালপুর', NULL, NULL, NULL, NULL),
(267, 17, 'Delduar Upazila', 'দেলদুয়ার', NULL, NULL, NULL, NULL),
(268, 17, 'Bhuapur Upazila', 'ভুয়াপুর', NULL, NULL, NULL, NULL),
(269, 17, 'Dhanbari Upazila', 'ধানবাড়ি', NULL, NULL, NULL, NULL),
(270, 55, 'Bagerhat Sadar Upazila', 'বাগেরহাট সদর', NULL, NULL, NULL, NULL),
(271, 55, 'Chitalmari Upazila', 'চিতলমাড়ি', NULL, NULL, NULL, NULL),
(272, 55, 'Fakirhat Upazila', 'ফকিরহাট', NULL, NULL, NULL, NULL),
(273, 55, 'Kachua Upazila', 'কচুয়া', NULL, NULL, NULL, NULL),
(274, 55, 'Mollahat Upazila', 'মোল্লাহাট ', NULL, NULL, NULL, NULL),
(275, 55, 'Mongla Upazila', 'মংলা', NULL, NULL, NULL, NULL),
(276, 55, 'Morrelganj Upazila', 'মরেলগঞ্জ', NULL, NULL, NULL, NULL),
(277, 55, 'Rampal Upazila', 'রামপাল', NULL, NULL, NULL, NULL),
(278, 55, 'Sarankhola Upazila', 'স্মরণখোলা', NULL, NULL, NULL, NULL),
(279, 56, 'Damurhuda Upazila', 'দামুরহুদা', NULL, NULL, NULL, NULL),
(280, 56, 'Chuadanga-S Upazila', 'চুয়াডাঙ্গা সদর', NULL, NULL, NULL, NULL),
(281, 56, 'Jibannagar Upazila', 'জীবন নগর ', NULL, NULL, NULL, NULL),
(282, 56, 'Alamdanga Upazila', 'আলমডাঙ্গা', NULL, NULL, NULL, NULL),
(283, 57, 'Abhaynagar Upazila', 'অভয়নগর', NULL, NULL, NULL, NULL),
(284, 57, 'Keshabpur Upazila', 'কেশবপুর', NULL, NULL, NULL, NULL),
(285, 57, 'Bagherpara Upazila', 'বাঘের পাড়া ', NULL, NULL, NULL, NULL),
(286, 57, 'Jessore Sadar Upazila', 'যশোর সদর', NULL, NULL, NULL, NULL),
(287, 57, 'Chaugachha Upazila', 'চৌগাছা', NULL, NULL, NULL, NULL),
(288, 57, 'Manirampur Upazila', 'মনিরামপুর ', NULL, NULL, NULL, NULL),
(289, 57, 'Jhikargachha Upazila', 'ঝিকরগাছা', NULL, NULL, NULL, NULL),
(290, 57, 'Sharsha Upazila', 'সারশা', NULL, NULL, NULL, NULL),
(291, 58, 'Jhenaidah Sadar Upazila', 'ঝিনাইদহ সদর', NULL, NULL, NULL, NULL),
(292, 58, 'Maheshpur Upazila', 'মহেশপুর', NULL, NULL, NULL, NULL),
(293, 58, 'Kaliganj Upazila', 'কালীগঞ্জ', NULL, NULL, NULL, NULL),
(294, 58, 'Kotchandpur Upazila', 'কোট চাঁদপুর ', NULL, NULL, NULL, NULL),
(295, 58, 'Shailkupa Upazila', 'শৈলকুপা', NULL, NULL, NULL, NULL),
(296, 58, 'Harinakunda Upazila', 'হাড়িনাকুন্দা', NULL, NULL, NULL, NULL),
(297, 59, 'Terokhada Upazila', 'তেরোখাদা', NULL, NULL, NULL, NULL),
(298, 59, 'Batiaghata Upazila', 'বাটিয়াঘাটা ', NULL, NULL, NULL, NULL),
(299, 59, 'Dacope Upazila', 'ডাকপে', NULL, NULL, NULL, NULL),
(300, 59, 'Dumuria Upazila', 'ডুমুরিয়া', NULL, NULL, NULL, NULL),
(301, 59, 'Dighalia Upazila', 'দিঘলিয়া', NULL, NULL, NULL, NULL),
(302, 59, 'Koyra Upazila', 'কয়ড়া', NULL, NULL, NULL, NULL),
(303, 59, 'Paikgachha Upazila', 'পাইকগাছা', NULL, NULL, NULL, NULL),
(304, 59, 'Phultala Upazila', 'ফুলতলা', NULL, NULL, NULL, NULL),
(305, 59, 'Rupsa Upazila', 'রূপসা', NULL, NULL, NULL, NULL),
(306, 60, 'Kushtia Sadar', 'কুষ্টিয়া সদর', NULL, NULL, NULL, NULL),
(307, 60, 'Kumarkhali', 'কুমারখালি', NULL, NULL, NULL, NULL),
(308, 60, 'Daulatpur', 'দৌলতপুর', NULL, NULL, NULL, NULL),
(309, 60, 'Mirpur', 'মিরপুর', NULL, NULL, NULL, NULL),
(310, 60, 'Bheramara', 'ভেরামারা', NULL, NULL, NULL, NULL),
(311, 60, 'Khoksa', 'খোকসা', NULL, NULL, NULL, NULL),
(312, 61, 'Magura Sadar Upazila', 'মাগুরা সদর', NULL, NULL, NULL, NULL),
(313, 61, 'Mohammadpur Upazila', 'মোহাম্মাদপুর', NULL, NULL, NULL, NULL),
(314, 61, 'Shalikha Upazila', 'শালিখা', NULL, NULL, NULL, NULL),
(315, 61, 'Sreepur Upazila', 'শ্রীপুর', NULL, NULL, NULL, NULL),
(316, 62, 'angni Upazila', 'আংনি', NULL, NULL, NULL, NULL),
(317, 62, 'Mujib Nagar Upazila', 'মুজিব নগর', NULL, NULL, NULL, NULL),
(318, 62, 'Meherpur-S Upazila', 'মেহেরপুর সদর', NULL, NULL, NULL, NULL),
(319, 63, 'Narail-S Upazilla', 'নড়াইল সদর', NULL, NULL, NULL, NULL),
(320, 63, 'Lohagara Upazilla', 'লোহাগাড়া', NULL, NULL, NULL, NULL),
(321, 63, 'Kalia Upazilla', 'কালিয়া', NULL, NULL, NULL, NULL),
(322, 64, 'Satkhira Sadar Upazila', 'সাতক্ষীরা সদর', NULL, NULL, NULL, NULL),
(323, 64, 'Assasuni Upazila', 'আসসাশুনি ', NULL, NULL, NULL, NULL),
(324, 64, 'Debhata Upazila', 'দেভাটা', NULL, NULL, NULL, NULL),
(325, 64, 'Tala Upazila', 'তালা', NULL, NULL, NULL, NULL),
(326, 64, 'Kalaroa Upazila', 'কলরোয়া', NULL, NULL, NULL, NULL),
(327, 64, 'Kaliganj Upazila', 'কালীগঞ্জ', NULL, NULL, NULL, NULL),
(328, 64, 'Shyamnagar Upazila', 'শ্যামনগর', NULL, NULL, NULL, NULL),
(329, 18, 'Adamdighi', 'আদমদিঘী', NULL, NULL, NULL, NULL),
(330, 18, 'Bogra Sadar', 'বগুড়া সদর', NULL, NULL, NULL, NULL),
(331, 18, 'Sherpur', 'শেরপুর', NULL, NULL, NULL, NULL),
(332, 18, 'Dhunat', 'ধুনট', NULL, NULL, NULL, NULL),
(333, 18, 'Dhupchanchia', 'দুপচাচিয়া', NULL, NULL, NULL, NULL),
(334, 18, 'Gabtali', 'গাবতলি', NULL, NULL, NULL, NULL),
(335, 18, 'Kahaloo', 'কাহালু', NULL, NULL, NULL, NULL),
(336, 18, 'Nandigram', 'নন্দিগ্রাম', NULL, NULL, NULL, NULL),
(337, 18, 'Sahajanpur', 'শাহজাহানপুর', NULL, NULL, NULL, NULL),
(338, 18, 'Sariakandi', 'সারিয়াকান্দি', NULL, NULL, NULL, NULL),
(339, 18, 'Shibganj', 'শিবগঞ্জ', NULL, NULL, NULL, NULL),
(340, 18, 'Sonatala', 'সোনাতলা', NULL, NULL, NULL, NULL),
(341, 19, 'Joypurhat S', 'জয়পুরহাট সদর', NULL, NULL, NULL, NULL),
(342, 19, 'Akkelpur', 'আক্কেলপুর', NULL, NULL, NULL, NULL),
(343, 19, 'Kalai', 'কালাই', NULL, NULL, NULL, NULL),
(344, 19, 'Khetlal', 'খেতলাল', NULL, NULL, NULL, NULL),
(345, 19, 'Panchbibi', 'পাঁচবিবি', NULL, NULL, NULL, NULL),
(346, 20, 'Naogaon Sadar Upazila', 'নওগাঁ সদর', NULL, NULL, NULL, NULL),
(347, 20, 'Mohadevpur Upazila', 'মহাদেবপুর', NULL, NULL, NULL, NULL),
(348, 20, 'Manda Upazila', 'মান্দা', NULL, NULL, NULL, NULL),
(349, 20, 'Niamatpur Upazila', 'নিয়ামতপুর', NULL, NULL, NULL, NULL),
(350, 20, 'Atrai Upazila', 'আত্রাই', NULL, NULL, NULL, NULL),
(351, 20, 'Raninagar Upazila', 'রাণীনগর', NULL, NULL, NULL, NULL),
(352, 20, 'Patnitala Upazila', 'পত্নীতলা', NULL, NULL, NULL, NULL),
(353, 20, 'Dhamoirhat Upazila', 'ধামইরহাট ', NULL, NULL, NULL, NULL),
(354, 20, 'Sapahar Upazila', 'সাপাহার', NULL, NULL, NULL, NULL),
(355, 20, 'Porsha Upazila', 'পোরশা', NULL, NULL, NULL, NULL),
(356, 20, 'Badalgachhi Upazila', 'বদলগাছি', NULL, NULL, NULL, NULL),
(357, 21, 'Natore Sadar Upazila', 'নাটোর সদর', NULL, NULL, NULL, NULL),
(358, 21, 'Baraigram Upazila', 'বড়াইগ্রাম', NULL, NULL, NULL, NULL),
(359, 21, 'Bagatipara Upazila', 'বাগাতিপাড়া', NULL, NULL, NULL, NULL),
(360, 21, 'Lalpur Upazila', 'লালপুর', NULL, NULL, NULL, NULL),
(361, 21, 'Natore Sadar Upazila', 'নাটোর সদর', NULL, NULL, NULL, NULL),
(362, 21, 'Baraigram Upazila', 'বড়াই গ্রাম', NULL, NULL, NULL, NULL),
(363, 22, 'Bholahat Upazila', 'ভোলাহাট', NULL, NULL, NULL, NULL),
(364, 22, 'Gomastapur Upazila', 'গোমস্তাপুর', NULL, NULL, NULL, NULL),
(365, 22, 'Nachole Upazila', 'নাচোল', NULL, NULL, NULL, NULL),
(366, 22, 'Nawabganj Sadar Upazila', 'নবাবগঞ্জ সদর', NULL, NULL, NULL, NULL),
(367, 22, 'Shibganj Upazila', 'শিবগঞ্জ', NULL, NULL, NULL, NULL),
(368, 23, 'Atgharia Upazila', 'আটঘরিয়া', NULL, NULL, NULL, NULL),
(369, 23, 'Bera Upazila', 'বেড়া', NULL, NULL, NULL, NULL),
(370, 23, 'Bhangura Upazila', 'ভাঙ্গুরা', NULL, NULL, NULL, NULL),
(371, 23, 'Chatmohar Upazila', 'চাটমোহর', NULL, NULL, NULL, NULL),
(372, 23, 'Faridpur Upazila', 'ফরিদপুর', NULL, NULL, NULL, NULL),
(373, 23, 'Ishwardi Upazila', 'ঈশ্বরদী', NULL, NULL, NULL, NULL),
(374, 23, 'Pabna Sadar Upazila', 'পাবনা সদর', NULL, NULL, NULL, NULL),
(375, 23, 'Santhia Upazila', 'সাথিয়া', NULL, NULL, NULL, NULL),
(376, 23, 'Sujanagar Upazila', 'সুজানগর', NULL, NULL, NULL, NULL),
(377, 24, 'Bagha', 'বাঘা', NULL, NULL, NULL, NULL),
(378, 24, 'Bagmara', 'বাগমারা', NULL, NULL, NULL, NULL),
(379, 24, 'Charghat', 'চারঘাট', NULL, NULL, NULL, NULL),
(380, 24, 'Durgapur', 'দুর্গাপুর', NULL, NULL, NULL, NULL),
(381, 24, 'Godagari', 'গোদাগারি', NULL, NULL, NULL, NULL),
(382, 24, 'Mohanpur', 'মোহনপুর', NULL, NULL, NULL, NULL),
(383, 24, 'Paba', 'পবা', NULL, NULL, NULL, NULL),
(384, 24, 'Puthia', 'পুঠিয়া', NULL, NULL, NULL, NULL),
(385, 24, 'Tanore', 'তানোর', NULL, NULL, NULL, NULL),
(386, 25, 'Sirajganj Sadar Upazila', 'সিরাজগঞ্জ সদর', NULL, NULL, NULL, NULL),
(387, 25, 'Belkuchi Upazila', 'বেলকুচি', NULL, NULL, NULL, NULL),
(388, 25, 'Chauhali Upazila', 'চৌহালি', NULL, NULL, NULL, NULL),
(389, 25, 'Kamarkhanda Upazila', 'কামারখান্দা', NULL, NULL, NULL, NULL),
(390, 25, 'Kazipur Upazila', 'কাজীপুর', NULL, NULL, NULL, NULL),
(391, 25, 'Raiganj Upazila', 'রায়গঞ্জ', NULL, NULL, NULL, NULL),
(392, 25, 'Shahjadpur Upazila', 'শাহজাদপুর', NULL, NULL, NULL, NULL),
(393, 25, 'Tarash Upazila', 'তারাশ', NULL, NULL, NULL, NULL),
(394, 25, 'Ullahpara Upazila', 'উল্লাপাড়া', NULL, NULL, NULL, NULL),
(395, 26, 'Birampur Upazila', 'বিরামপুর', NULL, NULL, NULL, NULL),
(396, 26, 'Birganj', 'বীরগঞ্জ', NULL, NULL, NULL, NULL),
(397, 26, 'Biral Upazila', 'বিড়াল', NULL, NULL, NULL, NULL),
(398, 26, 'Bochaganj Upazila', 'বোচাগঞ্জ', NULL, NULL, NULL, NULL),
(399, 26, 'Chirirbandar Upazila', 'চিরিরবন্দর', NULL, NULL, NULL, NULL),
(400, 26, 'Phulbari Upazila', 'ফুলবাড়ি', NULL, NULL, NULL, NULL),
(401, 26, 'Ghoraghat Upazila', 'ঘোড়াঘাট', NULL, NULL, NULL, NULL),
(402, 26, 'Hakimpur Upazila', 'হাকিমপুর', NULL, NULL, NULL, NULL),
(403, 26, 'Kaharole Upazila', 'কাহারোল', NULL, NULL, NULL, NULL),
(404, 26, 'Khansama Upazila', 'খানসামা', NULL, NULL, NULL, NULL),
(405, 26, 'Dinajpur Sadar Upazila', 'দিনাজপুর সদর', NULL, NULL, NULL, NULL),
(406, 26, 'Nawabganj', 'নবাবগঞ্জ', NULL, NULL, NULL, NULL),
(407, 26, 'Parbatipur Upazila', 'পার্বতীপুর', NULL, NULL, NULL, NULL),
(408, 27, 'Fulchhari', 'ফুলছড়ি', NULL, NULL, NULL, NULL),
(409, 27, 'Gaibandha sadar', 'গাইবান্ধা সদর', NULL, NULL, NULL, NULL),
(410, 27, 'Gobindaganj', 'গোবিন্দগঞ্জ', NULL, NULL, NULL, NULL),
(411, 27, 'Palashbari', 'পলাশবাড়ী', NULL, NULL, NULL, NULL),
(412, 27, 'Sadullapur', 'সাদুল্যাপুর', NULL, NULL, NULL, NULL),
(413, 27, 'Saghata', 'সাঘাটা', NULL, NULL, NULL, NULL),
(414, 27, 'Sundarganj', 'সুন্দরগঞ্জ', NULL, NULL, NULL, NULL),
(415, 28, 'Kurigram Sadar', 'কুড়িগ্রাম সদর', NULL, NULL, NULL, NULL),
(416, 28, 'Nageshwari', 'নাগেশ্বরী', NULL, NULL, NULL, NULL),
(417, 28, 'Bhurungamari', 'ভুরুঙ্গামারি', NULL, NULL, NULL, NULL),
(418, 28, 'Phulbari', 'ফুলবাড়ি', NULL, NULL, NULL, NULL),
(419, 28, 'Rajarhat', 'রাজারহাট', NULL, NULL, NULL, NULL),
(420, 28, 'Ulipur', 'উলিপুর', NULL, NULL, NULL, NULL),
(421, 28, 'Chilmari', 'চিলমারি', NULL, NULL, NULL, NULL),
(422, 28, 'Rowmari', 'রউমারি', NULL, NULL, NULL, NULL),
(423, 28, 'Char Rajibpur', 'চর রাজিবপুর', NULL, NULL, NULL, NULL),
(424, 29, 'Lalmanirhat Sadar', 'লালমনিরহাট সদর', NULL, NULL, NULL, NULL),
(425, 29, 'Aditmari', 'আদিতমারি', NULL, NULL, NULL, NULL),
(426, 29, 'Kaliganj', 'কালীগঞ্জ', NULL, NULL, NULL, NULL),
(427, 29, 'Hatibandha', 'হাতিবান্ধা', NULL, NULL, NULL, NULL),
(428, 29, 'Patgram', 'পাটগ্রাম', NULL, NULL, NULL, NULL),
(429, 30, 'Nilphamari Sadar', 'নীলফামারী সদর', NULL, NULL, NULL, NULL),
(430, 30, 'Saidpur', 'সৈয়দপুর', NULL, NULL, NULL, NULL),
(431, 30, 'Jaldhaka', 'জলঢাকা', NULL, NULL, NULL, NULL),
(432, 30, 'Kishoreganj', 'কিশোরগঞ্জ', NULL, NULL, NULL, NULL),
(433, 30, 'Domar', 'ডোমার', NULL, NULL, NULL, NULL),
(434, 30, 'Dimla', 'ডিমলা', NULL, NULL, NULL, NULL),
(435, 31, 'Panchagarh Sadar', 'পঞ্চগড় সদর', NULL, NULL, NULL, NULL),
(436, 31, 'Debiganj', 'দেবীগঞ্জ', NULL, NULL, NULL, NULL),
(437, 31, 'Boda', 'বোদা', NULL, NULL, NULL, NULL),
(438, 31, 'Atwari', 'আটোয়ারি', NULL, NULL, NULL, NULL),
(439, 31, 'Tetulia', 'তেতুলিয়া', NULL, NULL, NULL, NULL),
(440, 32, 'Badarganj', 'বদরগঞ্জ', NULL, NULL, NULL, NULL),
(441, 32, 'Mithapukur', 'মিঠাপুকুর', NULL, NULL, NULL, NULL),
(442, 32, 'Gangachara', 'গঙ্গাচরা', NULL, NULL, NULL, NULL),
(443, 32, 'Kaunia', 'কাউনিয়া', NULL, NULL, NULL, NULL),
(444, 32, 'Rangpur Sadar', 'রংপুর সদর', NULL, NULL, NULL, NULL),
(445, 32, 'Pirgachha', 'পীরগাছা', NULL, NULL, NULL, NULL),
(446, 32, 'Pirganj', 'পীরগঞ্জ', NULL, NULL, NULL, NULL),
(447, 32, 'Taraganj', 'তারাগঞ্জ', NULL, NULL, NULL, NULL),
(448, 33, 'Thakurgaon Sadar Upazila', 'ঠাকুরগাঁও সদর', NULL, NULL, NULL, NULL),
(449, 33, 'Pirganj Upazila', 'পীরগঞ্জ', NULL, NULL, NULL, NULL),
(450, 33, 'Baliadangi Upazila', 'বালিয়াডাঙ্গি', NULL, NULL, NULL, NULL),
(451, 33, 'Haripur Upazila', 'হরিপুর', NULL, NULL, NULL, NULL),
(452, 33, 'Ranisankail Upazila', 'রাণীসংকইল', NULL, NULL, NULL, NULL),
(453, 51, 'Ajmiriganj', 'আজমিরিগঞ্জ', NULL, NULL, NULL, NULL),
(454, 51, 'Baniachang', 'বানিয়াচং', NULL, NULL, NULL, NULL),
(455, 51, 'Bahubal', 'বাহুবল', NULL, NULL, NULL, NULL),
(456, 51, 'Chunarughat', 'চুনারুঘাট', NULL, NULL, NULL, NULL),
(457, 51, 'Habiganj Sadar', 'হবিগঞ্জ সদর', NULL, NULL, NULL, NULL),
(458, 51, 'Lakhai', 'লাক্ষাই', NULL, NULL, NULL, NULL),
(459, 51, 'Madhabpur', 'মাধবপুর', NULL, NULL, NULL, NULL),
(460, 51, 'Nabiganj', 'নবীগঞ্জ', NULL, NULL, NULL, NULL),
(461, 51, 'Shaistagonj Upazila', 'শায়েস্তাগঞ্জ', NULL, NULL, NULL, NULL),
(462, 52, 'Moulvibazar Sadar', 'মৌলভীবাজার', NULL, NULL, NULL, NULL),
(463, 52, 'Barlekha', 'বড়লেখা', NULL, NULL, NULL, NULL),
(464, 52, 'Juri', 'জুড়ি', NULL, NULL, NULL, NULL),
(465, 52, 'Kamalganj', 'কামালগঞ্জ', NULL, NULL, NULL, NULL),
(466, 52, 'Kulaura', 'কুলাউরা', NULL, NULL, NULL, NULL),
(467, 52, 'Rajnagar', 'রাজনগর', NULL, NULL, NULL, NULL),
(468, 52, 'Sreemangal', 'শ্রীমঙ্গল', NULL, NULL, NULL, NULL),
(469, 53, 'Bishwamvarpur', 'বিসশম্ভারপুর', NULL, NULL, NULL, NULL),
(470, 53, 'Chhatak', 'ছাতক', NULL, NULL, NULL, NULL),
(471, 53, 'Derai', 'দেড়াই', NULL, NULL, NULL, NULL),
(472, 53, 'Dharampasha', 'ধরমপাশা', NULL, NULL, NULL, NULL),
(473, 53, 'Dowarabazar', 'দোয়ারাবাজার', NULL, NULL, NULL, NULL),
(474, 53, 'Jagannathpur', 'জগন্নাথপুর', NULL, NULL, NULL, NULL),
(475, 53, 'Jamalganj', 'জামালগঞ্জ', NULL, NULL, NULL, NULL),
(476, 53, 'Sulla', 'সুল্লা', NULL, NULL, NULL, NULL),
(477, 53, 'Sunamganj Sadar', 'সুনামগঞ্জ সদর', NULL, NULL, NULL, NULL),
(478, 53, 'Shanthiganj', 'শান্তিগঞ্জ', NULL, NULL, NULL, NULL),
(479, 53, 'Tahirpur', 'তাহিরপুর', NULL, NULL, NULL, NULL),
(480, 54, 'Sylhet Sadar', 'সিলেট সদর', NULL, NULL, NULL, NULL),
(481, 54, 'Beanibazar', 'বেয়ানিবাজার', NULL, NULL, NULL, NULL),
(482, 54, 'Bishwanath', 'বিশ্বনাথ', NULL, NULL, NULL, NULL),
(483, 54, 'Dakshin Surma Upazila', 'দক্ষিণ সুরমা', NULL, NULL, NULL, NULL),
(484, 54, 'Balaganj', 'বালাগঞ্জ', NULL, NULL, NULL, NULL),
(485, 54, 'Companiganj', 'কোম্পানিগঞ্জ', NULL, NULL, NULL, NULL),
(486, 54, 'Fenchuganj', 'ফেঞ্চুগঞ্জ', NULL, NULL, NULL, NULL),
(487, 54, 'Golapganj', 'গোলাপগঞ্জ', NULL, NULL, NULL, NULL),
(488, 54, 'Gowainghat', 'গোয়াইনঘাট', NULL, NULL, NULL, NULL),
(489, 54, 'Jaintiapur', 'জয়ন্তপুর', NULL, NULL, NULL, NULL),
(490, 54, 'Kanaighat', 'কানাইঘাট', NULL, NULL, NULL, NULL),
(491, 54, 'Zakiganj', 'জাকিগঞ্জ', NULL, NULL, NULL, NULL),
(492, 54, 'Nobigonj', 'নবীগঞ্জ', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txn_pin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomine_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` enum('admin','accountant','user','free','manager','dealer') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_signup_without_payment` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_premium` date DEFAULT NULL,
  `is_banned` date DEFAULT NULL,
  `register_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `phone`, `address`, `email`, `position`, `city`, `state`, `country`, `post_code`, `txn_pin`, `national_id`, `father_name`, `mother_name`, `nomine_name`, `profile_picture`, `user_type`, `is_signup_without_payment`, `is_premium`, `is_banned`, `register_by`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Super Admin', 'admin', NULL, NULL, NULL, NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', NULL, NULL, NULL, NULL, 'admin.jpg', 'admin', NULL, '2020-01-01', NULL, NULL, NULL, '$2y$10$C3L.m2BoLTl5PlyvJF6yVeXby0nI30Gz.evCJeC.apYO7anpaUZn2', NULL, '2020-01-01 02:13:55', '2020-01-01 16:42:45', NULL),
(2, 'Standard Global Private Ltd', 'standard1', 's0000001', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891001', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$TlirfFod3oznowQ4fJjEw.tyS8RaQ1hCF3gFixxZT5fKfkR71OgEq', NULL, '2020-01-05 18:56:34', '2020-01-05 18:56:34', NULL),
(3, 'Standard Global Private Ltd', 'standard2', 's0000002', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891002', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$8FU/fULTUpfW0tM2NQh.reuReCUSYb2Dfskg0uBD1RLhoaXi86HZK', NULL, '2020-01-05 18:56:34', '2020-01-05 18:56:34', NULL),
(4, 'Standard Global Private Ltd', 'standard3', 's0000003', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891003', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$Zskd/5qejX2NXYVfbaed2uTJeFjiMDWfwUrXGMx9ytv1DvzJiLOl.', NULL, '2020-01-05 18:56:34', '2020-01-05 18:56:34', NULL),
(5, 'Standard Global Private Ltd', 'standard4', 's0000004', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891004', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$QTSIcb6kxDmgTeYutQFRceWYuu6fvEXqaXjl5vpoMW4DAMT6XEjZ2', NULL, '2020-01-05 18:56:34', '2020-01-05 18:56:34', NULL),
(6, 'Standard Global Private Ltd', 'standard5', 's0000005', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891005', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$Sfg44Lf8lH42l0ylP5jkzeh02bNYonPvyRaslj3Bj4Ldyr0uuCmw.', NULL, '2020-01-05 18:56:34', '2020-01-05 18:56:34', NULL),
(7, 'Standard Global Private Ltd', 'standard6', 's0000006', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891006', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$vwHPtmjQjwHXZf/noGsT.uh5nztlt1huYuSY6Go3IsQuGIsNwcflK', NULL, '2020-01-05 18:56:35', '2020-01-05 18:56:35', NULL),
(8, 'Standard Global Private Ltd', 'standard7', 's0000007', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891007', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$9dqNrmP.i1JtTvtLQfTTJ.dQEsef276YX1QyzDgIu7fKxghE8Jmb6', NULL, '2020-01-05 18:56:35', '2020-01-05 18:56:35', NULL),
(9, 'Standard Global Private Ltd', 'standard8', 's0000008', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891008', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$d/uc.NZZfwUPB6jgfiZNFuy6MwVHOVif9anSWV9GtWHXUAWmp.ate', NULL, '2020-01-05 18:56:35', '2020-01-05 18:56:35', NULL),
(10, 'Standard Global Private Ltd', 'standard9', 's0000009', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891009', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$42xNKZguEyeEQpQb5QJsi.jXDwXA0wz5vOhW1XNOZQdUNHxrhQyR.', NULL, '2020-01-05 18:56:35', '2020-01-05 18:56:35', NULL),
(11, 'Standard Global Private Ltd', 'standard10', 's00000010', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910010', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$0KH3coeaQ/ijQFUSg2g0ROUK5FUpb3abP4tl6a2YAZ2xKlKak/7I6', NULL, '2020-01-05 18:56:35', '2020-01-05 18:56:35', NULL),
(12, 'Standard Global Private Ltd', 'standard11', 's00000011', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910011', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$ubqgKQo4OHBPU1DnXHaTnub9bA/u6CIspxC.SGATqXi.FbztRcFoO', NULL, '2020-01-05 18:56:36', '2020-01-05 18:56:36', NULL),
(13, 'Standard Global Private Ltd', 'standard12', 's00000012', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910012', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$H9OV8FgOCr0KstxpVcWMjeNaV9GSBLLZg1a.Bz7Ua42kj9SiOcStq', NULL, '2020-01-05 18:56:36', '2020-01-05 18:56:36', NULL),
(14, 'Standard Global Private Ltd', 'standard13', 's00000013', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910013', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$byxBxT.OtTKZIkNSNoMQDuRExPb.90bZgi/pQLiDcM2o.dW7VJsei', NULL, '2020-01-05 18:56:36', '2020-01-05 18:56:36', NULL),
(15, 'Standard Global Private Ltd', 'standard14', 's00000014', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910014', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$2nGaW6QTVc8.clChEjIlE.EDwkSCfkSr/a2BcwcRp9RFzg5624RZS', NULL, '2020-01-05 18:56:36', '2020-01-05 18:56:36', NULL),
(16, 'Standard Global Private Ltd', 'standard15', 's00000015', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910015', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$GpKuGtjsNsQTxGcCcwJ38.0zGiirzHN/4c8gen6xDM4buaTlBxKR6', NULL, '2020-01-05 18:56:36', '2020-01-05 18:56:36', NULL),
(17, 'Standard Global Private Ltd', 'standard16', 's00000016', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910016', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$BsbzECiIYZJPuY7aUO0h2OS3M9gLTfLacB8.LCNSQMKbHIMgQVFpK', NULL, '2020-01-05 18:56:37', '2020-01-05 18:56:37', NULL),
(18, 'Standard Global Private Ltd', 'standard17', 's00000017', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910017', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$GeERYiVkYos4v6CgPz6aIuCMuBIWJNN5gHYKoCjiuYisCzZSWyyo2', NULL, '2020-01-05 18:56:37', '2020-01-05 18:56:37', NULL),
(19, 'Standard Global Private Ltd', 'standard18', 's00000018', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910018', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$BUhUZzfFo09mWrTPhZVjWeP6AOYOb75Ri..535BECSj41Jd1HWGIK', NULL, '2020-01-05 18:56:37', '2020-01-05 18:56:37', NULL),
(20, 'Standard Global Private Ltd', 'standard19', 's00000019', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910019', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$Ogvks34JpNxniB34y1Id8OkU8IUOnuiQJMKJt6CQyR44biwdUMMwS', NULL, '2020-01-05 18:56:37', '2020-01-05 18:56:37', NULL),
(21, 'Standard Global Private Ltd', 'standard20', 's00000020', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910020', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$I8r5nzGX5/qQvpEVpiXftO.zRGwnlOLMbjIqJTa0xP5KwUornl2XO', NULL, '2020-01-05 18:56:37', '2020-01-05 18:56:37', NULL),
(22, 'Standard Global Private Ltd', 'standard21', 's00000021', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910021', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$Yn7LBT8qS4hL2UmNddfrwe29dkOREj7BAJq3j5K38diwp4Db5S3eS', NULL, '2020-01-05 18:56:38', '2020-01-05 18:56:38', NULL),
(23, 'Standard Global Private Ltd', 'standard22', 's00000022', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910022', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$yBMiKEEvjT2eyqptvgiS8.t7z/2ezZm9f3jaqElBgd/U5fhpECmym', NULL, '2020-01-05 18:56:38', '2020-01-05 18:56:38', NULL),
(24, 'Standard Global Private Ltd', 'standard23', 's00000023', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910023', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$/EVR6IuQ4NRzujQBvt3vpue9pBc7rxtHiG/Uzf/4SncwJDEzmu43a', NULL, '2020-01-05 18:56:38', '2020-01-05 18:56:38', NULL),
(25, 'Standard Global Private Ltd', 'standard24', 's00000024', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910024', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$tED9VMjyNIWzPZSlgauEHuD8CV2kgAD2V6L3Ez.HdB8O1.ylkYOg6', NULL, '2020-01-05 18:56:38', '2020-01-05 18:56:38', NULL),
(26, 'Standard Global Private Ltd', 'standard25', 's00000025', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910025', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$cDIBE9/3RurjO.6Wu8o88O6Yx2v/TA3.pynQZ6zpNnBAdKoGACtAq', NULL, '2020-01-05 18:56:38', '2020-01-05 18:56:38', NULL),
(27, 'Standard Global Private Ltd', 'standard26', 's00000026', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910026', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$2b6tL3oKZneDO3MDLGxwoOSvKqsfWuOJxCGAudV2x0nEl9.dgLIya', NULL, '2020-01-05 18:56:39', '2020-01-05 18:56:39', NULL),
(28, 'Standard Global Private Ltd', 'standard27', 's00000027', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910027', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$/D2sXrtJ8u1hhL4DQFVtvOaf5lHC/.8Z2Tyw7RIRSE6YSmU9norZ6', NULL, '2020-01-05 18:56:39', '2020-01-05 18:56:39', NULL),
(29, 'Standard Global Private Ltd', 'standard28', 's00000028', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910028', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$cw96SRa7ecr4Xpi9BpxjveaTGADVZ2gYN5IaJ8S7bQ9QkDhBc9FrK', NULL, '2020-01-05 18:56:39', '2020-01-05 18:56:39', NULL),
(30, 'Standard Global Private Ltd', 'standard29', 's00000029', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910029', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$0p8xxkrAlLNlgOxuvHIxo.7X4Lub5vLGh5hvkVj3oS/kcqLvhAokS', NULL, '2020-01-05 18:56:39', '2020-01-05 18:56:39', NULL),
(31, 'Standard Global Private Ltd', 'standard30', 's00000030', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910030', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$9Tuc9XHtezcM4RqklG2ZJOR4JoW4omYSW4upTQnjHtHnvb.GPAybS', NULL, '2020-01-05 18:56:39', '2020-01-05 18:56:39', NULL),
(32, 'Standard Global Private Ltd', 'standard31', 's00000031', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910031', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$LhDcVsoukwxaL0wiptTSm.Q2Q7LnbLLOHv3nUSuz6S.5ngcWjou3S', NULL, '2020-01-05 18:56:39', '2020-01-05 18:56:39', NULL),
(33, 'Standard Global Private Ltd', 'standard32', 's00000032', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910032', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$uvr0dxPuaOOCGoMasSY.r.tj.uiHi7kjetptyPb0pZ0AAbcit/ZNS', NULL, '2020-01-05 18:56:39', '2020-01-05 18:56:39', NULL),
(34, 'Standard Global Private Ltd', 'standard33', 's00000033', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910033', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$ldtLtLrhAbdVZZXc8m0gBeHNWcKj0K/sk2ZlqBkRrd46vhVWAVb0y', NULL, '2020-01-05 18:56:40', '2020-01-05 18:56:40', NULL),
(35, 'Standard Global Private Ltd', 'standard34', 's00000034', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910034', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$zVYYmkcod2cC/50sbYO6Be9Bk57NLt4GWI4Br0EY6m4xHDpFYBQju', NULL, '2020-01-05 18:56:40', '2020-01-05 18:56:40', NULL),
(36, 'Standard Global Private Ltd', 'standard35', 's00000035', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910035', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$jIh2/lULZQbShFKHcswfmOLau14e5bb8JNf4mLj.d8Z7N278KyXLu', NULL, '2020-01-05 18:56:40', '2020-01-05 18:56:40', NULL),
(37, 'Standard Global Private Ltd', 'standard36', 's00000036', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910036', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$VfDn2OpDnFiKIm..N/.5fem/FZg4iauNQWETiBjEgpEuoxSoVy.Q2', NULL, '2020-01-05 18:56:40', '2020-01-05 18:56:40', NULL),
(38, 'Standard Global Private Ltd', 'standard37', 's00000037', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910037', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$fVt2J1D6z.xdv3qrrjznM.SHu7OIljX4E50LD5nKYczkIqtZMkFu.', NULL, '2020-01-05 18:56:40', '2020-01-05 18:56:40', NULL),
(39, 'Standard Global Private Ltd', 'standard38', 's00000038', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910038', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$UCSV2wdeoe4TbHNk80Lcl.7VAzSUqyPQf4cok69fPOHy863toIfiS', NULL, '2020-01-05 18:56:40', '2020-01-05 18:56:40', NULL),
(40, 'Standard Global Private Ltd', 'standard39', 's00000039', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910039', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$exLynSmQj3R2jaW4/jNaau.lK5Lol2gx/Br55enRPifyXz2tY6Owi', NULL, '2020-01-05 18:56:40', '2020-01-05 18:56:40', NULL),
(41, 'Standard Global Private Ltd', 'standard40', 's00000040', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910040', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$FmOgrhGEqMVyn489I6kWXOc41EQN5C4KdrO5tAbh7hdZ7ibcUGAk2', NULL, '2020-01-05 18:56:40', '2020-01-05 18:56:40', NULL),
(42, 'Standard Global Private Ltd', 'standard41', 's00000041', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910041', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$hv07zrr6C4OhlJq4TGG/euzHhHKHBAPajLkenrBgS4rl9vtGw4YX6', NULL, '2020-01-05 18:56:41', '2020-01-05 18:56:41', NULL),
(43, 'Standard Global Private Ltd', 'standard42', 's00000042', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910042', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$o2KwQp9SMxxwGWZd1ZuesO8YKesnMwpCgf3Q4vO9tBvh3DXq3..Y2', NULL, '2020-01-05 18:56:41', '2020-01-05 18:56:41', NULL),
(44, 'Standard Global Private Ltd', 'standard43', 's00000043', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910043', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$J02B1USbofV98FGQdCki4uR0CWBBiQCmJ/OpAHVcFvJYjTqxlCaPu', NULL, '2020-01-05 18:56:41', '2020-01-05 18:56:41', NULL),
(45, 'Standard Global Private Ltd', 'standard44', 's00000044', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910044', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$cQCo6jO0TEMTazvAmZtRgu4QXZI5a5mSbYMub51TWHEg9WG638KEK', NULL, '2020-01-05 18:56:41', '2020-01-05 18:56:41', NULL),
(46, 'Standard Global Private Ltd', 'standard45', 's00000045', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910045', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$pIrr73f96OAmeoT2uIH.N.tYmH2ccQdbC1OTHymu2YBy44lwlSQ1O', NULL, '2020-01-05 18:56:41', '2020-01-05 18:56:41', NULL),
(47, 'Standard Global Private Ltd', 'standard46', 's00000046', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910046', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$r2hUwa0Hl11PdpBRz2yg1OfelVU9hW9VenkvjUqHFWS7skrYGKiQy', NULL, '2020-01-05 18:56:41', '2020-01-05 18:56:41', NULL),
(48, 'Standard Global Private Ltd', 'standard47', 's00000047', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910047', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$Qfnk.FBP3QOLT44yRIWqHu0RhhpxQpu1MsfG.jA0g3gO6HFgXSIh2', NULL, '2020-01-05 18:56:42', '2020-01-05 18:56:42', NULL),
(49, 'Standard Global Private Ltd', 'standard48', 's00000048', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910048', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$4b0wyUCNvqLQ.OW9D2pMd.v3DD0fApAdXLdZeW/wRsxnqhbrG8iym', NULL, '2020-01-05 18:56:42', '2020-01-05 18:56:42', NULL),
(50, 'Standard Global Private Ltd', 'standard49', 's00000049', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910049', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$00w6cczK4bMhOCV1CptLiufa5oSuHVsDdv6zmQzaVB3brkalncsci', NULL, '2020-01-05 18:56:42', '2020-01-05 18:56:42', NULL),
(51, 'Standard Global Private Ltd', 'standard50', 's00000050', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910050', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$jaLXQF3IhqT1ChaGereqE./p7i2XSmX5h14UCkSXBDhVNTGmSrCne', NULL, '2020-01-05 18:56:42', '2020-01-05 18:56:42', NULL),
(52, 'Standard Global Private Ltd', 'standard51', 's00000051', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910051', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$h2hTSVpfVB2j0jvkuEVEB.KU0LXATqOSGA5Ar5N9qgmHOEKf0AJlC', NULL, '2020-01-05 18:56:42', '2020-01-05 18:56:42', NULL),
(53, 'Standard Global Private Ltd', 'standard52', 's00000052', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910052', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$9AjF76.BaikCfZ8KDSMPyuPzrD7fRqD7v2JMpofTFZel9ei6oV9C.', NULL, '2020-01-05 18:56:42', '2020-01-05 18:56:42', NULL),
(54, 'Standard Global Private Ltd', 'standard53', 's00000053', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910053', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$eOARKrYzC7Bc5/X1Q2W13.teYsaXOWX3u6PP3u.eotDR31VvAjhxW', NULL, '2020-01-05 18:56:43', '2020-01-05 18:56:43', NULL),
(55, 'Standard Global Private Ltd', 'standard54', 's00000054', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910054', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$2D9RLHjZaTuwjprhmwDM2ea1K1hMGPJCFjipHgw4glyULRLKaGNJ2', NULL, '2020-01-05 18:56:43', '2020-01-05 18:56:43', NULL),
(56, 'Standard Global Private Ltd', 'standard55', 's00000055', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910055', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$FiWIFmaMtNs.CRLyhdTAG.U3i8Y9QkQw7KU1RCKsCl6kgbFbXzHgW', NULL, '2020-01-05 18:56:43', '2020-01-05 18:56:43', NULL),
(57, 'Standard Global Private Ltd', 'standard56', 's00000056', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910056', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$DL019Pa1u8ehE6kvoRO10uG1dcMhr.xKAD5X90N9O7GtBeuuAfxhu', NULL, '2020-01-05 18:56:43', '2020-01-05 18:56:43', NULL),
(58, 'Standard Global Private Ltd', 'standard57', 's00000057', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910057', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$O8Y1S1bHezfx3ufjBWI9auRO5A2kxsnPnNr.9GbSx6y3Jw30qJpoC', NULL, '2020-01-05 18:56:43', '2020-01-05 18:56:43', NULL),
(59, 'Standard Global Private Ltd', 'standard58', 's00000058', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910058', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$tSuXLWFb/wvpKSGKkLE14eTBQ0.K4uQacsy3TXk8oNARPOmBBIM3e', NULL, '2020-01-05 18:56:43', '2020-01-05 18:56:43', NULL),
(60, 'Standard Global Private Ltd', 'standard59', 's00000059', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910059', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$wdUVk50qDnacQQ4uwzbkDuw8DoG5642fAq//7sUOoJFmjIn/jY3Ne', NULL, '2020-01-05 18:56:44', '2020-01-05 18:56:44', NULL),
(61, 'Standard Global Private Ltd', 'standard60', 's00000060', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910060', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$H5IeQofwYxpUEvG11Nvh5.zZI9yrjpiAKwYpZFYvN3acW4FChn3CW', NULL, '2020-01-05 18:56:44', '2020-01-05 18:56:44', NULL),
(62, 'Standard Global Private Ltd', 'standard61', 's00000061', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910061', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$Nm3QmEwDYeS/y.T4WbLvKeEYA4erLNAv4kkaT7ie9vglDLLwwQHCG', NULL, '2020-01-05 18:56:44', '2020-01-05 18:56:44', NULL),
(63, 'Standard Global Private Ltd', 'standard62', 's00000062', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910062', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$U7tv3BmbWqjTv2fmWzdoHujkESklAFhSew8bExYEeesHaDT/EQ56K', NULL, '2020-01-05 18:56:44', '2020-01-05 18:56:44', NULL),
(64, 'Standard Global Private Ltd', 'standard63', 's00000063', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910063', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$rUaxJbG1G6EkjlJDVIux4.QN7xYRvvnmHaZVztA5.dl4fOq/N.tp6', NULL, '2020-01-05 18:56:44', '2020-01-05 18:56:44', NULL),
(65, 'Standard Global Private Ltd', 'standard64', 's00000064', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910064', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$/hM6/S2L7MmCkPns6SRBjubQeMHPiMZdTQvR.7u1jOhPDgxWXaY02', NULL, '2020-01-05 18:56:44', '2020-01-05 18:56:44', NULL),
(66, 'Standard Global Private Ltd', 'standard65', 's00000065', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910065', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$Pn0jOj9gcK/wsVqUeXAWf.YeFtHE5OudMa73m8mEgdEGNZaZ9Q97.', NULL, '2020-01-05 18:56:44', '2020-01-05 18:56:44', NULL),
(67, 'Standard Global Private Ltd', 'standard66', 's00000066', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910066', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$tbd/XwmuteX5qHMJQbIgEOsxr7T0IoPdroTIHRKDi3qi2024d1vs2', NULL, '2020-01-05 18:56:44', '2020-01-05 18:56:44', NULL),
(68, 'Standard Global Private Ltd', 'standard67', 's00000067', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910067', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$3YmC8DwkABwoQNbvBPJG.OW45LDNXbN/8l.OYmdJF2mYsw4ATo0u.', NULL, '2020-01-05 18:56:45', '2020-01-05 18:56:45', NULL),
(69, 'Standard Global Private Ltd', 'standard68', 's00000068', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910068', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$QetvH5B99mpRPwJ3nTHmnOQ2Kr9zLt9wsNYalk1.iEBFjMkZ5adyC', NULL, '2020-01-05 18:56:45', '2020-01-05 18:56:45', NULL),
(70, 'Standard Global Private Ltd', 'standard69', 's00000069', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910069', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$NXHeayhW.EFcMOnaSxQFwOGHRniSQkb3m1gpG/hTGjkAM27GaC6D2', NULL, '2020-01-05 18:56:45', '2020-01-05 18:56:45', NULL),
(71, 'Standard Global Private Ltd', 'standard70', 's00000070', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910070', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$Pw5aKOZ3Rh5bu/BvAocvveWL098HVJa8GWHKxvfTfS/zBwR1BKWSi', NULL, '2020-01-05 18:56:45', '2020-01-05 18:56:45', NULL),
(72, 'Standard Global Private Ltd', 'standard71', 's00000071', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910071', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$aKyxEUgC9cSZPsotULafWOpac3qTqWqDEtaSCFLFu/fGVR0s3Y5cy', NULL, '2020-01-05 18:56:45', '2020-01-05 18:56:45', NULL),
(73, 'Standard Global Private Ltd', 'standard72', 's00000072', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910072', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$P9CPNSLqMKeP9Idea.iud.qixhwXXKPhSYSIjdlNYnOOdSdxfrEGe', NULL, '2020-01-05 18:56:45', '2020-01-05 18:56:45', NULL),
(74, 'Standard Global Private Ltd', 'standard73', 's00000073', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910073', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$PsMT4RCZ2Ntxl3oVrTJfq.263HaP4YOFNifwiaug7vxdpT/OglFna', NULL, '2020-01-05 18:56:46', '2020-01-05 18:56:46', NULL),
(75, 'Standard Global Private Ltd', 'standard74', 's00000074', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910074', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$BC2lgfQreEecauuAh5Tnie2ml0MaXI7j.h0rJiNZAkOZrCPQeIsdi', NULL, '2020-01-05 18:56:46', '2020-01-05 18:56:46', NULL),
(76, 'Standard Global Private Ltd', 'standard75', 's00000075', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910075', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$N68BZWwN4wBY.mwO9xZ/N.cu.C7y84DljkdAe/SM8CRzaTIEKBPl6', NULL, '2020-01-05 18:56:46', '2020-01-05 18:56:46', NULL),
(77, 'Standard Global Private Ltd', 'standard76', 's00000076', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910076', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$hTb5qDUG1KmRiDfoMVvL7O/mhtqeR525eRJPmC7YkDqpYTa2RICOi', NULL, '2020-01-05 18:56:46', '2020-01-05 18:56:46', NULL),
(78, 'Standard Global Private Ltd', 'standard77', 's00000077', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910077', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$aV5wSUnQmBGJrFrYnrW1hOx5169.WBmnKK2WEZItNHQDurp3YunOG', NULL, '2020-01-05 18:56:46', '2020-01-05 18:56:46', NULL),
(79, 'Standard Global Private Ltd', 'standard78', 's00000078', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910078', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$qtTWlJGHX7v4zIt/lRkcFuZuIpBImy4KdTCfC5cmvQ8/nqYaVNkWi', NULL, '2020-01-05 18:56:47', '2020-01-05 18:56:47', NULL),
(80, 'Standard Global Private Ltd', 'standard79', 's00000079', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910079', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$/Kstu.a8DAD3VO1xFLDIWOCUIYSfazx32yCqYUnu7wjj0XrOzyudy', NULL, '2020-01-05 18:56:47', '2020-01-05 18:56:47', NULL),
(81, 'Standard Global Private Ltd', 'standard80', 's00000080', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910080', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$.p6mvpbULHLip1VO90km6e0Sy7W7Diqqc8diH3tqNny.QO3xPMxSK', NULL, '2020-01-05 18:56:47', '2020-01-05 18:56:47', NULL),
(82, 'Standard Global Private Ltd', 'standard81', 's00000081', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910081', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$Ygu8CQiAQadp8CIzuMDy0eN09HrwekEmtxEB689g.FXHB9Hk7kTB6', NULL, '2020-01-05 18:56:47', '2020-01-05 18:56:47', NULL),
(83, 'Standard Global Private Ltd', 'standard82', 's00000082', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910082', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$p5HczhAvq7Hwukp5RfNAKuTdfBTAlWhAll3Ev41EZnFhgQm0PgnhK', NULL, '2020-01-05 18:56:47', '2020-01-05 18:56:47', NULL),
(84, 'Standard Global Private Ltd', 'standard83', 's00000083', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910083', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$K5b35VFo/k1WyqfmMwuTi.QYLDF3RV/ekgIFb0lZ09zeh14y14fmG', NULL, '2020-01-05 18:56:47', '2020-01-05 18:56:47', NULL),
(85, 'Standard Global Private Ltd', 'standard84', 's00000084', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910084', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$9I3ErIMSIzYYAPhP3V9Je.n73EcE.DcZUGcuvEbsAH70BCsd5KV4K', NULL, '2020-01-05 18:56:47', '2020-01-05 18:56:47', NULL),
(86, 'Standard Global Private Ltd', 'standard85', 's00000085', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910085', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$VgRfFEsiYXJhueiE2grzK.SoOVLxF8VsUIYgQSyhs8o0QUXMVwO1e', NULL, '2020-01-05 18:56:47', '2020-01-05 18:56:47', NULL),
(87, 'Standard Global Private Ltd', 'standard86', 's00000086', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910086', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$0RqKI1MERXQFvHGXG/3kNuuVENSq9hnCi8LzfsKWTsFbkOKleAkfS', NULL, '2020-01-05 18:56:48', '2020-01-05 18:56:48', NULL),
(88, 'Standard Global Private Ltd', 'standard87', 's00000087', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910087', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$UdABdZLIXc0up4Sfriv.du6axyjraKTIADNuk4iFuP78cNsSIhCbq', NULL, '2020-01-05 18:56:48', '2020-01-05 18:56:48', NULL),
(89, 'Standard Global Private Ltd', 'standard88', 's00000088', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910088', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$QUhEIrEbb2w3V6684/HdmO6Xz47WgtfUhzbxjRM4rI6hHB1JUPxKC', NULL, '2020-01-05 18:56:48', '2020-01-05 18:56:48', NULL),
(90, 'Standard Global Private Ltd', 'standard89', 's00000089', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910089', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$oh9yaKjX.2x2Z7kKOAdHeeAxukwjF4bTQBHpt6UmmppF9RiH.78Fe', NULL, '2020-01-05 18:56:48', '2020-01-05 18:56:48', NULL),
(91, 'Standard Global Private Ltd', 'standard90', 's00000090', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910090', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$jQd1ft0rqHoJJiayU2jm6uEENUgf6vH0sTTt3KFC8J/JUK88lIHLC', NULL, '2020-01-05 18:56:49', '2020-01-05 18:56:49', NULL),
(92, 'Standard Global Private Ltd', 'standard91', 's00000091', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910091', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$bJ5goduV2o4rxg2NnMPQzO7CDYvimf4vj6nXSc/h7M277lV51VCp6', NULL, '2020-01-05 18:56:49', '2020-01-05 18:56:49', NULL),
(93, 'Standard Global Private Ltd', 'standard92', 's00000092', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910092', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$iJcRRyt0bZ6Ud6a7fuu36uEvQoyENPKk1b52aDilMaiJ8znvmA5aK', NULL, '2020-01-05 18:56:49', '2020-01-05 18:56:49', NULL),
(94, 'Standard Global Private Ltd', 'standard93', 's00000093', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910093', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$jc4784NG97I49.nlX7PhpeGnxpKx2FcEjDAzdwu6PkrHF6YhWsGiO', NULL, '2020-01-05 18:56:49', '2020-01-05 18:56:49', NULL),
(95, 'Standard Global Private Ltd', 'standard94', 's00000094', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910094', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$Dkd8cBrO6d9xtG/RosIwLe7l1CGFCwhkqt/Vlp7su8z7PGs9LNoQO', NULL, '2020-01-05 18:56:49', '2020-01-05 18:56:49', NULL),
(96, 'Standard Global Private Ltd', 'standard95', 's00000095', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910095', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$phAhchDA5u1AfFRwmDhC2ebBRoHMBh82SQnufDPyqrniHIDi43T32', NULL, '2020-01-05 18:56:49', '2020-01-05 18:56:49', NULL),
(97, 'Standard Global Private Ltd', 'standard96', 's00000096', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910096', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$mIoy/UT878bLqL02pcZv4Oq.SXLLHiZqiv9K4gLEXJ4FagDLrluOe', NULL, '2020-01-05 18:56:49', '2020-01-05 18:56:49', NULL),
(98, 'Standard Global Private Ltd', 'standard97', 's00000097', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910097', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$0/NnvacCGXyRQm3mZO5zxehpL4B6yiKdW.U.m8UjfmYc3s.1Eyc06', NULL, '2020-01-05 18:56:50', '2020-01-05 18:56:50', NULL),
(99, 'Azizul Islam', 'abdullah', '01619827849', 'Shariatpur, Bangladesh', 'radicalhomoeo@gmail.com', NULL, '24', '5', '18', '6000', '123456', '12345678910098', NULL, NULL, NULL, 'standard98.jpg', 'user', '50', '2020-01-29', NULL, '1', NULL, '$2y$10$B5F.GqyYnw88pCj8KH88POQo2aKO8hE7ebrXFe82F8mtsQ9AV8P2W', NULL, '2020-01-05 18:56:50', '2020-01-29 11:30:34', NULL),
(100, 'Azizul Islam', 'abdullah01', '01619827849', 'Shariatpur, Bangladesh', 'radicalhomoeo@gmail.com', NULL, '24', '5', '18', '6000', '123456', '12345678910099', NULL, NULL, NULL, 'standard99.jpg', 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$uV2cad2sCOXxkGhhz/OMhu7NrkSv2rrfJXxIXUubfhPROMZnkXBoO', NULL, '2020-01-05 18:56:50', '2020-01-29 11:29:13', NULL),
(101, 'Standard Global Private Ltd', 'standard01', '000000001', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '123456789101', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$98mWEiBEYCBII7yZKQ6JNuIRJ2fB9lBYLjSWhmABzjhzQ/urRbwim', NULL, '2020-01-05 18:57:54', '2020-01-05 18:57:54', NULL),
(102, 'Standard Global Private Ltd', 'standard02', '000000002', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '123456789102', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$CGqOgq4pGmPYHuSHPsxOBedA5mIeVrnIr17x71Z8f7C2m3zCfHFtu', NULL, '2020-01-05 18:57:55', '2020-01-05 18:57:55', NULL),
(103, 'Standard Global Private Ltd', 'standard03', '000000003', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '123456789103', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$w5Iasj.3xfpOTSDQwCHvCeb96XTrggZIIlBb1F4uvaRRUtCJHt1g2', NULL, '2020-01-05 18:57:55', '2020-01-05 18:57:55', NULL),
(104, 'Standard Global Private Ltd', 'standard04', '000000004', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '123456789104', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$xN3jBnxlx/lboPyw3YDM5eDUQEHK4LumAhPIQcezMpTnMFQNWeDv6', NULL, '2020-01-05 18:57:55', '2020-01-05 18:57:55', NULL),
(105, 'Standard Global Private Ltd', 'standard05', '000000005', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '123456789105', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$3RRK08pUQlsr7cPLr8vFVeANuBvL.7KqRHtHpFalAaCvM/g7zHGcO', NULL, '2020-01-05 18:57:55', '2020-01-05 18:57:55', NULL),
(106, 'Standard Global Private Ltd', 'standard06', '000000006', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '123456789106', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$l/EAfa.WAIc2q8ocy54gwuIjc4FHV9klS/OqMyD9Mcu9S9foJyVBe', NULL, '2020-01-05 18:57:55', '2020-01-05 18:57:55', NULL),
(107, 'Standard Global Private Ltd', 'standard07', '000000007', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '123456789107', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$cA0uTBQ/HRnj7eWcbmlb.ew85PdAGVJYwWOlyBwvEZ.Scd6dVgnCa', NULL, '2020-01-05 18:57:56', '2020-01-05 18:57:56', NULL),
(108, 'Standard Global Private Ltd', 'standard08', '000000008', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '123456789108', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$88gQqfAvgfahZTITs9OcWuUZmpSMzk7mLYTNyxC2Y/XPGCQq6GQ2W', NULL, '2020-01-05 18:57:56', '2020-01-05 18:57:56', NULL),
(109, 'Standard Global Private Ltd', 'standard09', '000000009', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '123456789109', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$7Jqcy1xwz.AeExGcSXFKBeugTh04hqj96yZQkZefZNpJoCN2h6NNa', NULL, '2020-01-05 18:57:56', '2020-01-05 18:57:56', NULL),
(110, 'Standard Global Private Ltd', 'standard010', '0000000010', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891010', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$dXtQaBnTZZhsNpn.PFXAGe/WTihgvEBT71eB.7tTaOCWb/m23sX.2', NULL, '2020-01-05 18:57:56', '2020-01-05 18:57:56', NULL),
(111, 'Standard Global Private Ltd', 'standard011', '0000000011', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891011', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$zkewj4gkVRe/Iv32vBj1d.R3zpyDhRil89I6EJ8BCnAjJufN9opzC', NULL, '2020-01-05 18:57:56', '2020-01-05 18:57:56', NULL),
(112, 'Standard Global Private Ltd', 'standard012', '0000000012', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891012', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$i9A2wmQ10jbG5EyePHCiEO0BQfzzKPC2WQdM7g/.L59gmj5BwDeUq', NULL, '2020-01-05 18:57:56', '2020-01-05 18:57:56', NULL),
(113, 'Standard Global Private Ltd', 'standard013', '0000000013', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891013', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$XTGrrM4d4wI79Pv7jUOvnuTPLRJ0iZtj2CGl/QNfXQ2/DL5LRDoEG', NULL, '2020-01-05 18:57:56', '2020-01-05 18:57:56', NULL),
(114, 'Standard Global Private Ltd', 'standard014', '0000000014', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891014', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$KHLbdYb6Q4x5.qaZvsP/K.1GmAh1HTxO/T/60U9b..bvYmoHtVuDe', NULL, '2020-01-05 18:57:57', '2020-01-05 18:57:57', NULL),
(115, 'Standard Global Private Ltd', 'standard015', '0000000015', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891015', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$yuOQA73O4I0sZk48G56wt.yPGb0XYGQKa1pSAqVFB1k1oVOMXURDe', NULL, '2020-01-05 18:57:57', '2020-01-05 18:57:57', NULL),
(116, 'Standard Global Private Ltd', 'standard016', '0000000016', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891016', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$zvUFhGhFkWI1Q/ggwH5fLe27C.VMtETQU5zt.b.bTHbwZO.GTQUuO', NULL, '2020-01-05 18:57:57', '2020-01-05 18:57:57', NULL),
(117, 'Standard Global Private Ltd', 'standard017', '0000000017', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891017', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$fJ2w0xge8FtAJg8J0BraKu4O7EY5K5SQzDniRpML0EDqNINhDRFN2', NULL, '2020-01-05 18:57:57', '2020-01-05 18:57:57', NULL),
(118, 'Standard Global Private Ltd', 'standard018', '0000000018', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891018', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$8.YEKR1AM0bS3Drj9Gfhh.p.EtFx4Wk0pK0N7McQTJ1g3yQl24NW6', NULL, '2020-01-05 18:57:57', '2020-01-05 18:57:57', NULL),
(119, 'Standard Global Private Ltd', 'standard019', '0000000019', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891019', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$SbuJCdPLKloN5HkdFdPC1OHN4ADgFGIWb5lssfWLz629/Ivdcxrda', NULL, '2020-01-05 18:57:57', '2020-01-05 18:57:57', NULL),
(120, 'Standard Global Private Ltd', 'standard020', '0000000020', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891020', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$fCZgcGpRmZBfy3B1xAcar.x2yKS734HDashxNygFZZTRngiQ.uyY.', NULL, '2020-01-05 18:57:57', '2020-01-05 18:57:57', NULL),
(121, 'Standard Global Private Ltd', 'standard021', '0000000021', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891021', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$7uUWXM/zQXZnwS358zkUdOpwT8L.ZCgB5KvXgfr/24xJ5rXWuH74m', NULL, '2020-01-05 18:57:57', '2020-01-05 18:57:57', NULL),
(122, 'Standard Global Private Ltd', 'standard022', '0000000022', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891022', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$17w.55gyV6AJzEE39kv1gOacpHZv6NRdJPIYdepEbiEYvA7gwm4/e', NULL, '2020-01-05 18:57:58', '2020-01-05 18:57:58', NULL),
(123, 'Standard Global Private Ltd', 'standard023', '0000000023', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891023', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$WU5e9zfN958KIu/0L4VN7.mbAU7tzZihuTZmNK/feK2.Bf6xLhOVe', NULL, '2020-01-05 18:57:58', '2020-01-05 18:57:58', NULL),
(124, 'Standard Global Private Ltd', 'standard024', '0000000024', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891024', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$d5D1iR5lwdClPSevAQwlg.0yLCKBRFm1jl5K3by.s236qM6GPZMGu', NULL, '2020-01-05 18:57:58', '2020-01-05 18:57:58', NULL),
(125, 'Standard Global Private Ltd', 'standard025', '0000000025', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891025', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$humyCz/n61Fej11P8.4Gier0XSSQrBS5SbQ6xHuvY8WSZiJ3Q7iWu', NULL, '2020-01-05 18:57:58', '2020-01-05 18:57:58', NULL),
(126, 'Standard Global Private Ltd', 'standard026', '0000000026', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891026', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$Yv6mBalXDJOOk.BbNUYu4u5RtD7rd4NfLUkQ23sBq5n3hgTiyzboG', NULL, '2020-01-05 18:57:58', '2020-01-05 18:57:58', NULL),
(127, 'Standard Global Private Ltd', 'standard027', '0000000027', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891027', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$mVAJcVDjWv9p1iXKCHOk7.N0d5a38Kf/W3EqAkKXtQuqELlWNOYr.', NULL, '2020-01-05 18:57:58', '2020-01-05 18:57:58', NULL),
(128, 'Standard Global Private Ltd', 'standard028', '0000000028', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891028', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$3BYrYovBcDMkZfi4Ko8Yg.b99HogSyt1XK.X2hjJNEN9p5h4lSoKq', NULL, '2020-01-05 18:57:58', '2020-01-05 18:57:58', NULL),
(129, 'Standard Global Private Ltd', 'standard029', '0000000029', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891029', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$EreqjGbAw5uAfMjICzQ1LOlOmONQ/XpQqXM9nk57XcLn2WYF2AT1u', NULL, '2020-01-05 18:57:59', '2020-01-05 18:57:59', NULL),
(130, 'Standard Global Private Ltd', 'standard030', '0000000030', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891030', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$bUof5JuNjPwJoTY6P9ZL2eIAyCpUSe4/jW2U5RNUihK9oCM/FNTSO', NULL, '2020-01-05 18:57:59', '2020-01-05 18:57:59', NULL),
(131, 'Standard Global Private Ltd', 'standard031', '0000000031', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891031', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$AzRmRHAa/37YZ1mnzgyI3.CUyrwbjQUH3.UIGXVAHNAFjuB.KcbeK', NULL, '2020-01-05 18:57:59', '2020-01-05 18:57:59', NULL),
(132, 'Standard Global Private Ltd', 'standard032', '0000000032', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891032', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$ojEspys3AAjwt8iIBI9xbeV10D63mCHrc8hCEWN.j9EYhc38If94a', NULL, '2020-01-05 18:57:59', '2020-01-05 18:57:59', NULL),
(133, 'Standard Global Private Ltd', 'standard033', '0000000033', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891033', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$1MF5AoC16iNkSk4D2jcEeugGMQZX8Ea5otVyV6OF8HZn26B/bwWQi', NULL, '2020-01-05 18:57:59', '2020-01-05 18:57:59', NULL),
(134, 'Standard Global Private Ltd', 'standard034', '0000000034', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891034', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$6SCt3FJBRm6PhGBOeFHpDu.3lLi92ds7gsXjnsCJmoXmON3gaBQQy', NULL, '2020-01-05 18:58:00', '2020-01-05 18:58:00', NULL),
(135, 'Standard Global Private Ltd', 'standard035', '0000000035', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891035', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$UT5wrI4X6ElfBoalCW0pbeqPDf9jS5fAr7rsJxwdAYPQiAs.EzBtq', NULL, '2020-01-05 18:58:00', '2020-01-05 18:58:00', NULL);
INSERT INTO `users` (`id`, `name`, `username`, `phone`, `address`, `email`, `position`, `city`, `state`, `country`, `post_code`, `txn_pin`, `national_id`, `father_name`, `mother_name`, `nomine_name`, `profile_picture`, `user_type`, `is_signup_without_payment`, `is_premium`, `is_banned`, `register_by`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(136, 'Standard Global Private Ltd', 'standard036', '0000000036', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891036', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$hcX.9iG34xwH3MCzq1DiYud0vTDHpb98fO8wiLJGX8w/94DONEGQ2', NULL, '2020-01-05 18:58:00', '2020-01-05 18:58:00', NULL),
(137, 'Standard Global Private Ltd', 'standard037', '0000000037', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891037', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$xw.Tw4Wb1Vu9e9HqOHZctuMFoU86zn3RIvczXYpb1zIwIn5oPUl1C', NULL, '2020-01-05 18:58:00', '2020-01-05 18:58:00', NULL),
(138, 'Standard Global Private Ltd', 'standard038', '0000000038', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891038', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$yXBOcnnvuvf3fyy39PIGBufvz0E1Sq4LxwR7iu2Wq4hRqzuhY6Nf.', NULL, '2020-01-05 18:58:00', '2020-01-05 18:58:00', NULL),
(139, 'Standard Global Private Ltd', 'standard039', '0000000039', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891039', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$RbtV8slTE0Ft0o92P9puO.Ignsptud/ZGf4wbqIUk7IDIBYPWesSi', NULL, '2020-01-05 18:58:01', '2020-01-05 18:58:01', NULL),
(140, 'Standard Global Private Ltd', 'standard040', '0000000040', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891040', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$TulJTWjj2h30xCWYJTU8ReH097o1HePGhMxvWQ4U7a1Dhyiw8YxZG', NULL, '2020-01-05 18:58:01', '2020-01-05 18:58:01', NULL),
(141, 'Standard Global Private Ltd', 'standard041', '0000000041', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891041', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$w6QZlnJ2utIHeFIRd09FaOq0NBsOXp8fOW3er6w0G0l/g7azZnT6u', NULL, '2020-01-05 18:58:01', '2020-01-05 18:58:01', NULL),
(142, 'Standard Global Private Ltd', 'standard042', '0000000042', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891042', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$KDVjGR8F/N5f.6jVIDQiRuFcOulK4ma1klagxnZS8itVptvIjS4uy', NULL, '2020-01-05 18:58:01', '2020-01-05 18:58:01', NULL),
(143, 'Standard Global Private Ltd', 'standard043', '0000000043', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891043', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$BHwyGviHpeWai3D0Pr2nD.t13jFs2wzCPJZyJGd/ct8Wwwm2J5tWm', NULL, '2020-01-05 18:58:01', '2020-01-05 18:58:01', NULL),
(144, 'Standard Global Private Ltd', 'standard044', '0000000044', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891044', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$gO6FC4yvmM/ooDI01xShUOBYnZkoxcpKHt.4.tIE4pMR0F1/xn2ty', NULL, '2020-01-05 18:58:01', '2020-01-05 18:58:01', NULL),
(145, 'Standard Global Private Ltd', 'standard045', '0000000045', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891045', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$ag3D81GjX/lqs3AugSsCV.ChiTfvA2roJ.APBfvsrjx3GtSG8Nvb.', NULL, '2020-01-05 18:58:01', '2020-01-05 18:58:01', NULL),
(146, 'Standard Global Private Ltd', 'standard046', '0000000046', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891046', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$PSEixNEmo8iw5N7boVhbl.T0VAcDn2xoTESK5QnVLknGcXt9uDGlW', NULL, '2020-01-05 18:58:02', '2020-01-05 18:58:02', NULL),
(147, 'Standard Global Private Ltd', 'standard047', '0000000047', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891047', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$coawUgob9FhSSNNezFuDgun7dzIYN8vUNA8ErRv8DBrwVk5xqwfI6', NULL, '2020-01-05 18:58:02', '2020-01-05 18:58:02', NULL),
(148, 'Standard Global Private Ltd', 'standard048', '0000000048', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891048', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$t01Cjin.IzR/TenqErRczubiFe3/ELSk1f2xBCsTQJBdJkZhU8dTG', NULL, '2020-01-05 18:58:02', '2020-01-05 18:58:02', NULL),
(149, 'Standard Global Private Ltd', 'standard049', '0000000049', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891049', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$QbPWkSiNVFIa136W/u9Wcex4u/d0SIVF4Vm8SI7MLGFQztGP2cc3y', NULL, '2020-01-05 18:58:02', '2020-01-05 18:58:02', NULL),
(150, 'Standard Global Private Ltd', 'standard050', '0000000050', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891050', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$eBocE7zfahfcPfNY8SjXjeZIJckhYlAgARdFfK/Cp1UnyYhTgiNjq', NULL, '2020-01-05 18:58:02', '2020-01-05 18:58:02', NULL),
(151, 'Standard Global Private Ltd', 'standard051', '0000000051', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891051', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$E7Gk92AxzPmt.4FV5p/Gy.8.BrGHwAT2uTYDsKEKCvKHyo9ZyzJ2K', NULL, '2020-01-05 18:58:02', '2020-01-05 18:58:02', NULL),
(152, 'Standard Global Private Ltd', 'standard052', '0000000052', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891052', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$2nWRUYOGCew.hviJXPr8c.E5s0B7XFOl94zuDrjVmjczScOI85t3.', NULL, '2020-01-05 18:58:03', '2020-01-05 18:58:03', NULL),
(153, 'Standard Global Private Ltd', 'standard053', '0000000053', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891053', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$Bf.u3gLUtwQcYjfSLwBNyubZaGm16wZxcjUEPlh3brdlgbIyD8vvW', NULL, '2020-01-05 18:58:03', '2020-01-05 18:58:03', NULL),
(154, 'Standard Global Private Ltd', 'standard054', '0000000054', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891054', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$ZlsMDQfEQhgxUFkQI98ESee.sHl4tizvRE9P9IKWBWQXCdADmQ5OO', NULL, '2020-01-05 18:58:03', '2020-01-05 18:58:03', NULL),
(155, 'Standard Global Private Ltd', 'standard055', '0000000055', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891055', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$xlLACjynd4RJG.DLPGxtCOqjyg5PRpUSfyfsEF8Lr4IsmHPV2J3Tm', NULL, '2020-01-05 18:58:03', '2020-01-05 18:58:03', NULL),
(156, 'Standard Global Private Ltd', 'standard056', '0000000056', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891056', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$2VcLlo0eVH889I7ZySswP.YFadxhyFaM7m/szdXll1l9bqdvaahuO', NULL, '2020-01-05 18:58:03', '2020-01-05 18:58:03', NULL),
(157, 'Standard Global Private Ltd', 'standard057', '0000000057', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891057', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$M3gAXf/z76Zo1kGmh8GKruxWYNzVBSEHy2AZifXaiarGh16WLnLaO', NULL, '2020-01-05 18:58:04', '2020-01-05 18:58:04', NULL),
(158, 'Standard Global Private Ltd', 'standard058', '0000000058', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891058', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$BDvyTbURDv8M1mIA/2EPGuMAJHqOrkUgZT.zLw8OuLRhcpNPavv1K', NULL, '2020-01-05 18:58:04', '2020-01-05 18:58:04', NULL),
(159, 'Standard Global Private Ltd', 'standard059', '0000000059', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891059', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$eQzJ395vcpac5wUaZLRGpeLNazq8QWzIH9ggVIaGCL6zwYC/UmH2a', NULL, '2020-01-05 18:58:04', '2020-01-05 18:58:04', NULL),
(160, 'Standard Global Private Ltd', 'standard060', '0000000060', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891060', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$hzyfuKCtdWRrTvu5iMVUd.4/NIB1cLhaAz6RY8icitxEArS2o7ePy', NULL, '2020-01-05 18:58:04', '2020-01-05 18:58:04', NULL),
(161, 'Standard Global Private Ltd', 'standard061', '0000000061', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891061', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$gPPz0a8h7BBPCV13bebddeD4HXnson4MiU9t6iC5e2cRo6e1OxlP.', NULL, '2020-01-05 18:58:04', '2020-01-05 18:58:04', NULL),
(162, 'Standard Global Private Ltd', 'standard062', '0000000062', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891062', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$PPyn8qcOWhfR4BB3hE4gU.8Vxkp5Pizgz0RTFrg81XbzVUv7HLOk6', NULL, '2020-01-05 18:58:05', '2020-01-05 18:58:05', NULL),
(163, 'Standard Global Private Ltd', 'standard063', '0000000063', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891063', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$44YAzKov52jh1NfEzX/CpevUtPwxusytMvMF9ppV0XHmExuD1KkU2', NULL, '2020-01-05 18:58:05', '2020-01-05 18:58:05', NULL),
(164, 'Standard Global Private Ltd', 'standard064', '0000000064', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891064', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$6x9DNn5rKXtY2DZYMg7LmugL1wdU7kvj/xJCEm38Txxur5KO6QESC', NULL, '2020-01-05 18:58:05', '2020-01-05 18:58:05', NULL),
(165, 'Standard Global Private Ltd', 'standard065', '0000000065', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891065', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$WbWI1xG.s1BqMstoX9fEzOfhkkrp0i//3gMYaFbIZmE3YUJvXYykC', NULL, '2020-01-05 18:58:05', '2020-01-05 18:58:05', NULL),
(166, 'Standard Global Private Ltd', 'standard066', '0000000066', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891066', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$tfSjn/mHLVAF1Q5e9Gq8zezd0/P2n6HnsmpqdOb5H8MhIqxErcHoK', NULL, '2020-01-05 18:58:05', '2020-01-05 18:58:05', NULL),
(167, 'Standard Global Private Ltd', 'standard067', '0000000067', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891067', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$WuA0h151ZKZEfSxE.W.2yuLwix.8I0iShNduuLs72Xfw3UmAv3vH2', NULL, '2020-01-05 18:58:05', '2020-01-05 18:58:05', NULL),
(168, 'Standard Global Private Ltd', 'standard068', '0000000068', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891068', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$C/oTbp16WJDVR/lXL3yHGu4k4Geqz2E3TnDEycDzPieIzt9FW/cFm', NULL, '2020-01-05 18:58:05', '2020-01-05 18:58:05', NULL),
(169, 'Standard Global Private Ltd', 'standard069', '0000000069', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891069', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$sTMPLjrXp376r1/PunQIbO6tjehaUIUnK5Hth3kgd5lXmHCpt4dWm', NULL, '2020-01-05 18:58:05', '2020-01-05 18:58:05', NULL),
(170, 'Standard Global Private Ltd', 'standard070', '0000000070', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891070', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$OFI13bTgc.p74JMXJAcDQuUaBsF6L3pptk6fds0g4ruHG89OCmszi', NULL, '2020-01-05 18:58:06', '2020-01-05 18:58:06', NULL),
(171, 'Standard Global Private Ltd', 'standard071', '0000000071', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891071', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$LZNc9Tw1GQMVTe8GcNFHPOmzR1jaEoVnOg5vCzOe.3pSoMRZr.Cyy', NULL, '2020-01-05 18:58:06', '2020-01-05 18:58:06', NULL),
(172, 'Standard Global Private Ltd', 'standard072', '0000000072', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891072', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$eQcTdRTXdp18QW5TiDibwuIGwpQkRVFasYLEgxSz7jXzkXhX89Bn6', NULL, '2020-01-05 18:58:06', '2020-01-05 18:58:06', NULL),
(173, 'Standard Global Private Ltd', 'standard073', '0000000073', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891073', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$7VF9DB6UNzX34ftpozlrU.BaUDzrL48osLyiLsX29VYN.LIeSGWl2', NULL, '2020-01-05 18:58:06', '2020-01-05 18:58:06', NULL),
(174, 'Standard Global Private Ltd', 'standard074', '0000000074', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891074', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$Cp5yWQiU3oh7cMTw3SzNde5wZPbGhCP1NJ9DAI4EABNJrhxkwnMcK', NULL, '2020-01-05 18:58:06', '2020-01-05 18:58:06', NULL),
(175, 'Standard Global Private Ltd', 'standard075', '0000000075', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891075', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$.OnPX/XEVZ8W9D2fzow2EehKaAQUkUPC7ZZTbAcz8atRi4AiTdX5i', NULL, '2020-01-05 18:58:06', '2020-01-05 18:58:06', NULL),
(176, 'Standard Global Private Ltd', 'standard076', '0000000076', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891076', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$gVqd0P03lH/.4ZWa2vyfv.l38V8J0y7UcKIec7ERfEpDoIm87H9l6', NULL, '2020-01-05 18:58:07', '2020-01-05 18:58:07', NULL),
(177, 'Standard Global Private Ltd', 'standard077', '0000000077', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891077', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$n0rp5j5ESW1YcXut.Aneg.7XfJM3P/Q/Rm7y/LdNKqmJHpacDPnrK', NULL, '2020-01-05 18:58:07', '2020-01-05 18:58:07', NULL),
(178, 'Standard Global Private Ltd', 'standard078', '0000000078', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891078', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$q8ma2eL5IVTVAuCB1rl7c.qJCiu8hz9VpbnOe3fkmzXoFiBah5JHS', NULL, '2020-01-05 18:58:07', '2020-01-05 18:58:07', NULL),
(179, 'Standard Global Private Ltd', 'standard079', '0000000079', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891079', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$8xDnAFuKrW50ebTSrN.MC.dtqoouRolL/Ata3lHVcrz4GV8cVbQSO', NULL, '2020-01-05 18:58:07', '2020-01-05 18:58:07', NULL),
(180, 'Standard Global Private Ltd', 'standard080', '0000000080', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891080', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$JdnZT2yzzC4tMeD/JXL7EuiEknFiFfUKKOmHu3r5dU8trSjZaVwk.', NULL, '2020-01-05 18:58:07', '2020-01-05 18:58:07', NULL),
(181, 'Standard Global Private Ltd', 'standard081', '0000000081', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891081', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$lsMWYSX2suTeWMFpuZDbxOv7fsrvKBNpjPmVJyL8Of9nciBajUoZG', NULL, '2020-01-05 18:58:07', '2020-01-05 18:58:07', NULL),
(182, 'Standard Global Private Ltd', 'standard082', '0000000082', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891082', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$lrp.1FJAzYP3h3TZx.MXT.y.Wy97vpU4f.H0uL80tfG72DEUABsqq', NULL, '2020-01-05 18:58:07', '2020-01-05 18:58:07', NULL),
(183, 'Standard Global Private Ltd', 'standard083', '0000000083', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891083', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$8X9ndPXwBAI5JVM8HFY7Re6.Lbd7xd6qybGoRlncGjMDXWfQw9lEe', NULL, '2020-01-05 18:58:08', '2020-01-05 18:58:08', NULL),
(184, 'Standard Global Private Ltd', 'standard084', '0000000084', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891084', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$CSMJQLgAbxovAogqbRVFhu9gbQ5EsbnJtZLG3q7Gq/Ktff8l2nV2e', NULL, '2020-01-05 18:58:08', '2020-01-05 18:58:08', NULL),
(185, 'Standard Global Private Ltd', 'standard085', '0000000085', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891085', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$Ukvt8i1RCSuAqF01x6ZyPu3CDzA2dkkbn9axNFeKs6uXW1pnSHkK.', NULL, '2020-01-05 18:58:08', '2020-01-05 18:58:08', NULL),
(186, 'Standard Global Private Ltd', 'standard086', '0000000086', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891086', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$6sq9i9x5bfZjT4.Pu4KyRu8LMcGv9jxteNMWDb5VRbB6U5xLdanyq', NULL, '2020-01-05 18:58:08', '2020-01-05 18:58:08', NULL),
(187, 'Standard Global Private Ltd', 'standard087', '0000000087', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891087', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$2s/Ulk3316.I0mH2RKWEAuvEpnz82eCVsFrm0kdX6gUlaQHSmTpMK', NULL, '2020-01-05 18:58:08', '2020-01-05 18:58:08', NULL),
(188, 'Standard Global Private Ltd', 'standard088', '0000000088', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891088', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$693s4wr0Kk6p0kyXmDfdxu43VncHQbM8cFyVmAmpEyYlF8eegHkxu', NULL, '2020-01-05 18:58:08', '2020-01-05 18:58:08', NULL),
(189, 'Standard Global Private Ltd', 'standard089', '0000000089', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891089', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$t8sShJdrotBehu0AOzYyxuTUFsCly0st8FBvc.Bf6AJrJPHVJxvRu', NULL, '2020-01-05 18:58:08', '2020-01-05 18:58:08', NULL),
(190, 'Standard Global Private Ltd', 'standard090', '0000000090', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891090', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$G/ISrhIP.DDtRbJ1nYJSF.QRbLj1GiLaRBFDEMKCF1bRuIEQ/3B2O', NULL, '2020-01-05 18:58:08', '2020-01-05 18:58:08', NULL),
(191, 'Standard Global Private Ltd', 'standard091', '0000000091', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891091', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$UhxegSlqm1X9JmTkswiEC.BpxQesg4tmkddlPs1/RufANiD2nDWai', NULL, '2020-01-05 18:58:08', '2020-01-05 18:58:08', NULL),
(192, 'Standard Global Private Ltd', 'standard092', '0000000092', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891092', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$tRaDgdqkdR2RQoslmOJohuTXSH3XN0FqEYD.MrguQrpamtzh2c0Wu', NULL, '2020-01-05 18:58:09', '2020-01-05 18:58:09', NULL),
(193, 'Standard Global Private Ltd', 'standard093', '0000000093', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891093', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$ObdixPGDIKmmsmABPcqILOOdeg0wl.SZJ3LSMrbzFGBBUzEDFP0FG', NULL, '2020-01-05 18:58:09', '2020-01-05 18:58:09', NULL),
(194, 'Standard Global Private Ltd', 'standard094', '0000000094', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891094', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$/kSQtHLVT9Ksq9U0/lZPVu4a3qApkpTDLTc2rUPeZBsO7kPmao/6m', NULL, '2020-01-05 18:58:09', '2020-01-05 18:58:09', NULL),
(195, 'Standard Global Private Ltd', 'standard095', '0000000095', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891095', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$JKp3UGzSV0ypQcH/co63mubZIeL5XwgmN0pxAgUc7mMRkNGKUzyIe', NULL, '2020-01-05 18:58:09', '2020-01-05 18:58:09', NULL),
(196, 'Standard Global Private Ltd', 'standard096', '0000000096', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891096', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$dJBKRTF3TPhhdWQhFE12guTD9sOSuEYN3AVCjSbKwL760tbZzjXl2', NULL, '2020-01-05 18:58:09', '2020-01-05 18:58:09', NULL),
(197, 'Standard Global Private Ltd', 'standard097', '0000000097', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891097', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$NSALfaYbTdiG6DQhxmW1EuFOzX7f4/...Bi2BRJr2cJoOdoYyD5uq', NULL, '2020-01-05 18:58:09', '2020-01-05 18:58:09', NULL),
(198, 'Rashedul Hasan Rashel', 'rashel2001', '01924168020', 'Shariatpur, Bangladesh', 'eng.rashel2001@gmail.com', NULL, '24', '5', '18', '6000', '123456', '6726819616208', NULL, NULL, NULL, 'standard098.jpg', 'user', '10', '2020-01-29', NULL, '1', NULL, '$2y$10$WecMujU1uIaTNqJsmoMoa.67Y46uLjyY79zVv/1VRqNAQPn2TdScK', NULL, '2020-01-05 18:58:09', '2020-01-29 11:16:40', NULL),
(199, 'Rashedul Hasan Rashel', 'rashel2002', '01924168020', 'Shariatpur, Bangladesh', 'eng.rashel2001@gmail.com', NULL, '24', '5', '18', '6000', '123456', '6726819616208', NULL, NULL, NULL, 'standard099.jpg', 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$PsVOZ2ccFZapmjH3faV40.ZFIKIPYuRxCU5dLbkXSig2IzFJl0BnK', NULL, '2020-01-05 18:58:09', '2020-01-29 11:15:33', NULL),
(200, 'Foyez Mia', 'foyez', '01865519870', NULL, 'foyez.sgapl2020@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '657867878', NULL, NULL, NULL, 'foyez.jpg', 'user', NULL, '2020-01-30', NULL, '1', NULL, '$2y$10$lQ7pVgk9FalhyCEDBtKHRuB6AB0Ebl591SsbVxn5KAcoHeOlqetZu', NULL, '2020-01-06 03:23:19', '2020-02-09 13:11:49', NULL),
(201, 'foyez mia', 'foyez1', '01865519870', NULL, 'foyez.sgapl2020@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '657867878780', NULL, NULL, NULL, 'foyez1.jpg', 'user', NULL, NULL, NULL, '200', NULL, '$2y$10$WoO8SsXoVi1Czee0nbpSY.SPB7Dd8TJSReEVJBydwx9WIAo.7eXHC', NULL, '2020-01-06 03:51:21', '2020-01-29 10:56:35', NULL),
(202, 'foyez mia', 'foyez2', '01865519870', NULL, 'foyez.sgapl2020@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '657867878781', NULL, NULL, NULL, 'foyez2.jpg', 'user', NULL, NULL, NULL, '200', NULL, '$2y$10$yiSP1tD0Ivq/M6Gy.lkv6ueHb0cIlA4SFB2jENbJ9N2kxqj/qI8c.', NULL, '2020-01-06 03:52:05', '2020-01-29 10:58:09', NULL),
(203, 'foyez mia', 'foyez3', '01865519870', NULL, 'foyez.sgapl2020@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '657867087878', NULL, NULL, NULL, 'foisal.jpg', 'user', NULL, NULL, NULL, '200', NULL, '$2y$10$Kf2CLQIGN1J3HT1y4Sz1.ubthw1ADzBizHyUiAlbbWoJYtZoMQnia', NULL, '2020-01-06 03:52:52', '2020-01-29 11:01:52', NULL),
(204, 'foisal mia', 'foyez4', '01865519872', NULL, 'foyez.sgapl2020@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '657860787878', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '200', NULL, '$2y$10$hRVUF4RdKL9dHDRQpYiy7O2o7xYK021f7mqDqy..3lMdwxRRtsK.K', NULL, '2020-01-06 03:53:35', '2020-01-06 03:53:35', NULL),
(205, 'foisal mia', 'foyez5', '01865519873', NULL, 'foyez.sgapl2020@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '657867870878', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '200', NULL, '$2y$10$eTi4AOuXbumx3/z7g/l2xui1cOPB8EHcDeYkJe.Ne22kAMli/p28q', NULL, '2020-01-06 03:54:19', '2020-01-06 03:54:19', NULL),
(206, 'foisal mia', 'foyez6', '01865519874', NULL, 'foyez.sgapl2020@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '6578787878', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '200', NULL, '$2y$10$9.DRcg7WiM4Vzl/6nYpPSOHsfnKUXxtjtQpIIcxnlQBhHTx6QvJAC', NULL, '2020-01-06 03:54:55', '2020-01-06 03:54:55', NULL),
(207, 'foisal mia', 'foyez7', '01865519876', NULL, 'foyez.sgapl2020@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '657086787878', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '200', NULL, '$2y$10$vraGi9n.8q/gFTBB3bDddeFuWhSds3206NHD72F8u.S/T2PdhjKvC', NULL, '2020-01-06 03:55:33', '2020-01-06 03:55:33', NULL),
(208, 'foisal mia', 'foyez8', '01865519877', NULL, 'foyez.sgapl2020@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '6570887878', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '200', NULL, '$2y$10$ym2ooPhBNQ1.MLjrJf/Yh.wOdPPOLlKRr2w.niLL4397G0OW/xe66', NULL, '2020-01-06 03:56:25', '2020-01-06 03:56:25', NULL),
(209, 'foisal mia', 'foyez9', '01865519878', NULL, 'foyez.sgapl2020@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '6578602787878', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '200', NULL, '$2y$10$Fs1zZqI5Ngwq569tOGEmTen6ybxazOjfwVd5Acf7GO6DSNHAP5tPy', NULL, '2020-01-06 03:57:09', '2020-01-06 03:57:09', NULL),
(210, 'foisal mia', 'foyez10', '01865519879', NULL, 'foyez.sgapl2020@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '65784578', NULL, NULL, NULL, 'foyez10.jpg', 'user', NULL, NULL, NULL, '200', NULL, '$2y$10$6aapAodqggOqsqlaM1Ygpu/OBW0rcs/18MgaNiNPPgcuMzFeRaJtW', NULL, '2020-01-06 03:57:55', '2020-01-06 04:08:47', NULL),
(211, 'foyez mia', 'foyez01', '01865519870', NULL, 'foyez.sgapl2020@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '6578678427878', NULL, NULL, NULL, 'foyez01.jpg', 'user', NULL, NULL, NULL, '200', NULL, '$2y$10$xxFafWnu1SnllYGTYH2rQe0OHAhrNxo6ycJSe6P797jsS5W2/l7o.', NULL, '2020-01-06 03:59:38', '2020-02-09 13:08:29', NULL),
(212, 'foyez mia', 'foyez02', '018655198774', NULL, 'foyez.sgapl2020@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '65700787878', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '200', NULL, '$2y$10$GlK1bVP40lE0mwwBuuC3QuM1YRu38xDh9mfuzZKtr0cS.y0g9L1AG', NULL, '2020-01-06 04:00:28', '2020-01-06 04:00:28', NULL),
(213, 'foyez mia', 'foyez03', '01865519810', NULL, 'foyez.sgapl2020@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '614786787878', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '200', NULL, '$2y$10$q1AhKMfi0s/wZR.ESnc3s.ZjfS45ewZ8/W3mCnqqqWCxD.DVeVLDi', NULL, '2020-01-06 04:01:28', '2020-01-06 04:01:28', NULL),
(214, 'foyez mia', 'foyez04', '01865519801', NULL, 'foyez.sgapl2020@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '65786787845', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '200', NULL, '$2y$10$av9yKEBKDpmUllJcQymhDuWjYnIpXJOGlHSFPAvxMteSPsxb5OGoi', NULL, '2020-01-06 04:02:06', '2020-01-06 04:02:06', NULL),
(215, 'foyez mia', 'foyez05', '018655198750', NULL, 'foyez.sgapl2020@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '65781787878', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '200', NULL, '$2y$10$/H5Y2hfuse/BLcjg8rybke7m7t9xai7zt/07qhe8WHkcJplGlKgv6', NULL, '2020-01-06 04:02:48', '2020-01-06 04:02:48', NULL),
(216, 'foyez mia', 'foyez06', '018655198701', NULL, 'foyez.sgapl2020@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '65706787878', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '200', NULL, '$2y$10$DVVnVULfZ7sYPVkiOjD2..VXcskUrPavRMueWbGeKfonwdz/gCXN6', NULL, '2020-01-06 04:03:53', '2020-01-06 04:03:53', NULL),
(217, 'foyez mia', 'foyez07', '01865519811', NULL, 'foyez.sgapl2020@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '65786787802', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '200', NULL, '$2y$10$4nUqZ.iZowEr6pis9yOti.YWnCUePmJ.0C/9cbUDGXI7OU1LK/4qe', NULL, '2020-01-06 04:05:26', '2020-01-06 04:05:26', NULL),
(218, 'foyez mia', 'foyez08', '018655198702', NULL, 'foyez.sgapl2020@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '65786287878', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '200', NULL, '$2y$10$EjtOMFObtkCbhNXfcaQO8uwYzTUbfrmSWMYtGcixMK/Rd52ty/ILG', NULL, '2020-01-06 04:06:02', '2020-01-06 04:06:02', NULL),
(219, 'foyez mia', 'foyez09', '01865519802', NULL, 'foyez.sgapl2020@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '65786087878', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '200', NULL, '$2y$10$SmJI7NCQ16dEl5oVsTL9ZuEFrbezu.D4/BcBQXenTfzULZqyYub4W', NULL, '2020-01-06 04:06:46', '2020-01-06 04:06:46', NULL),
(220, 'foyez mia', 'foyez010', '0186551984', NULL, 'foyez.sgapl2020@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '657860087878', NULL, NULL, NULL, 'foyez010.jpg', 'user', NULL, NULL, NULL, '200', NULL, '$2y$10$9qu192pacbEh.kRHegtNc.64XoJGwAjuAQQ.gXIwZBDvJnfTdwHFC', NULL, '2020-01-06 04:07:35', '2020-01-06 04:09:50', NULL),
(221, 'ABU SHALEH MUSA ROCKY', 'rocky', '01629506365', NULL, 'asmrocky1996@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '20018611443102691', NULL, NULL, NULL, 'rocky.jpg', 'user', NULL, '2020-01-30', NULL, '1', NULL, '$2y$10$81TUycJ9M2K4IvybEnJs3urvdETqS1dvBX21VItdwOz/HN2qv2GPa', NULL, '2020-01-06 05:05:40', '2020-01-30 15:11:40', NULL),
(222, 'Mohammad Golam Mustafa', 'mgmustafa', '01671718384', NULL, 'anex.mgm@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '2695435973670', NULL, NULL, NULL, 'mgmustafa.jpg', 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$sikBaTj7cvs13NQj7gLCl.KA9MxavNdk7ezIaKWGHRXwvKGEFHZWu', NULL, '2020-01-06 06:04:51', '2020-01-06 06:05:35', NULL),
(223, 'KHAN HOQUE', 'khanh', '01920320973', NULL, 'khanhoquebd1971@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '65786787878', NULL, NULL, NULL, 'khanh.jpg', 'user', NULL, '2020-01-30', NULL, '1', NULL, '$2y$10$.Rug8XMEiRSB8RSbIoR6dOWeIonWjpC6DYJX0MBWC5c2P9bAhmj1u', NULL, '2020-01-06 06:14:43', '2020-01-30 15:13:19', NULL),
(224, 'KHAN HOQUE', 'khanh1', '019203209731', NULL, 'khanhoquebd1971@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '657787878', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$nJuWHzJ8bPY2IzoaPe8XHOBqe0BaWlRCOuLGKzuwC/Z2poA1HlBIO', NULL, '2020-01-06 06:16:46', '2020-01-06 06:16:46', NULL),
(225, 'KHAN HOQUE', 'khanh2', '019203209732', NULL, 'khanhoquebd1971@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '686787878', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$hNwsf5DHWWhnpX0qImYMGOlKVv.TQ5nLJVRNbZLY3CQ3FPjJwwkDm', NULL, '2020-01-06 06:17:34', '2020-01-06 06:17:34', NULL),
(226, 'MD MOSHIN KHAN', 'moshin', '01968268886', NULL, 'standardagrofood19@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '657887878', NULL, NULL, NULL, 'moshin.jpg', 'user', NULL, '2020-01-30', NULL, '1', NULL, '$2y$10$2Tujuvw093LhfyLn0gZlY.w4qkiQCJolCxsuV9zARHZfXm3TKArsq', NULL, '2020-01-06 06:19:22', '2020-01-30 15:15:40', NULL),
(227, 'AKHI AKTER', 'akhi', '01961397575', NULL, 'standardagrofood19@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '657860787', NULL, NULL, NULL, 'akhi.jpg', 'user', NULL, '2020-01-30', NULL, '1', NULL, '$2y$10$qpT7aywbCCx1mUokmc2vQOaRkwf3DwC5sDtt2pci11.5k6A2IzHNa', NULL, '2020-01-06 06:21:38', '2020-01-30 15:13:33', NULL),
(229, 'MD JAHIDUL HASAN', 'mjhasan', '01794918131', NULL, 'jahidhassan8131@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '65186787878', NULL, NULL, NULL, 'mjhasan.jpg', 'user', NULL, '2020-01-30', NULL, '227', NULL, '$2y$10$1BGWI.cDxj7MvsVMwwZ6FOyJkGBlrT.AsVBlJsyhpj9DfD7hFasLe', NULL, '2020-01-06 06:26:28', '2020-01-30 15:15:11', NULL),
(230, 'MD IQBAL MAHMUD', 'mimahmud', '01920104891', NULL, 'iqbal.mahmud1361@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '7328678573', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$wJfqXwBrQEQ9/EIV5McU6uLwG5ck.G6EVYZSgB5pVq3Mn9aohqZ7.', NULL, '2020-01-06 06:51:23', '2020-01-06 06:51:23', NULL),
(231, 'MUHAMMAD DALOWAR HOSSAIN', 'dalowarh', '01640495741', NULL, 'dalowarh88@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '657867800878', NULL, NULL, NULL, 'dalowarh.jpg', 'user', NULL, '2020-01-30', NULL, '223', NULL, '$2y$10$7BBk193DhCRNg38Ly0/RoerSwV39xkaG/FdOEBHIl6o.fhHCx.gku', NULL, '2020-01-06 06:58:16', '2020-01-30 15:16:45', NULL),
(232, 'MD JAHANGIR HOSSAIN', 'jahangirh', '01912955258', NULL, 'mdjahangir3112@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '2699040721769', NULL, NULL, NULL, NULL, 'user', NULL, '2020-01-30', NULL, '223', NULL, '$2y$10$/1HsKZxtsqiTO0kr1RpPsu.LK2NiQ/IBMeSOxf9mdvrefni4GKBwC', NULL, '2020-01-06 07:04:28', '2020-01-30 15:14:52', NULL),
(233, 'MIZANUR RAHMAN', 'mizanur', '01883847912', NULL, 'standardagrofood19@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '7357896815', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '223', NULL, '$2y$10$ukkni4kR5Mnb0IY2bWmPTO9m4vLIOEf/UfZV010kD1eQj9.hNduGe', NULL, '2020-01-06 07:06:18', '2020-01-06 07:06:18', NULL),
(234, 'MD MASUD KHAN', 'mmkhan', '01861725840', NULL, 'masud.khandpsc@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '2398284279', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '223', NULL, '$2y$10$usMVEneQF6i80z/wKJbAYe2NesQyDZeYfT3LZNnvJ1MqLS/0h8/EC', NULL, '2020-01-06 07:08:21', '2020-01-06 07:08:21', NULL),
(235, 'SWEETY AKTER', 'sweety', '01688506545', NULL, 'standardagrofood19@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '02111114545', NULL, NULL, NULL, 'sweety.jpg', 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$mtWxYFLakWzvC8OWB6Qp2ufi0QrzhEGZbSB.sM8nfy3863wtcjXa6', NULL, '2020-01-06 07:22:26', '2020-01-06 07:31:08', NULL),
(236, 'MD BADRUL HOHEN', 'badrul', '01797002748', NULL, 'mdbadrulhosen@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '20010616983108059', NULL, NULL, NULL, 'badrul.jpg', 'user', NULL, '2020-01-30', NULL, '1', NULL, '$2y$10$hO0YJOPsLBsCE2j1i8rfNODDgi0qokTWRP1GlxaKNjwLxDH3jnJZu', NULL, '2020-01-06 07:25:29', '2020-01-30 15:14:31', NULL),
(237, 'ROMAN AHMED', 'roman', '01645646442', NULL, 'standardagrofood19@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '12012020', NULL, NULL, NULL, 'roman.jpg', 'user', NULL, '2020-01-30', NULL, '200', NULL, '$2y$10$fNOdFYsyD/0VIR2r/UR50eXwzBJG1IXjLSX9qGnm.E5ZiSh9g1Y3K', NULL, '2020-01-12 12:11:57', '2020-01-30 15:12:23', NULL),
(238, 'MD. SUZAN MIA', 'suzan', '01922580681', NULL, 'meherbniloy@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '215647896', NULL, NULL, NULL, 'suzan.jpg', 'user', NULL, '2020-01-30', NULL, '1', NULL, '$2y$10$GCjQcFrsSILC6L3DELKNaObmoau2SpMVDdTOLTVFF1Nk5HwNO9.Iy', NULL, '2020-01-25 06:30:02', '2020-01-30 15:16:11', NULL),
(239, 'MD. HABIBUR RAHMAN', 'habibur', '01676297708', NULL, 'standardagrofood19@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '01.01.1988', NULL, NULL, NULL, 'habibur.jpg', 'user', NULL, '2020-01-30', NULL, '1', NULL, '$2y$10$tlkfJb48MZop0nv2WG20geMNvKRSbJ25PoEBb8H55dYlXto6V8QUO', NULL, '2020-01-25 06:32:16', '2020-01-30 15:12:59', NULL),
(240, 'MD. FAHADUL ISLAM', 'fahadul', '01980983438', NULL, 'standardagrofood19@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '19986725509030883', NULL, NULL, NULL, 'fahadul.jpg', 'user', NULL, NULL, NULL, '239', NULL, '$2y$10$Zhkl2DEw0EOSzcKs6Jp56OfwYx72gKPRlTk2kzsLOZ1zO/uGfKqHC', NULL, '2020-01-25 06:35:44', '2020-01-25 06:49:37', NULL),
(241, 'Mst. FATEMA AKTER', 'fatema', '01999255880', NULL, 'standardagrofood19@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '2828225140', NULL, NULL, NULL, 'fatema.jpg', 'user', NULL, NULL, NULL, '239', NULL, '$2y$10$puNanGq2YmJ4x6a/b3gRAOjpkHDJ8wkNaQqRRAp5cGTZIU7WpZo5a', NULL, '2020-01-25 06:40:45', '2020-01-25 06:50:17', NULL),
(242, 'test1', 'test1', '01611227515', NULL, 'standardagrofood19@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '0213255888', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$BQ9dHCPiIx/a6eKBpWygr.rZZg4FW0nYeiD1UqFGvDn6.VQ1dpgMO', NULL, '2020-01-28 16:39:36', '2020-01-28 16:39:36', NULL),
(243, 'Fazle Rabbi', 'Rabbi', '01904845171', NULL, 'fazle474@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '4567886543', NULL, NULL, NULL, 'Rabbi.jpg', 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$8k8AiyHw3l5pQnEj8c7g8.Nt8mfuCHDeO.cUqDF.ZLn0eGg6PKXMq', NULL, '2020-02-03 06:34:20', '2020-02-03 17:14:00', NULL),
(244, 'Amit Ahmed Tirtho', 'Amit', '01959965633', NULL, 'amitahmed453@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '456788654', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, '1', NULL, '$2y$10$PIKd6Zhq8NxojhsYWeUcQeeuCXFqgCRJN21s.jIl/9PhB3BTll7Xm', NULL, '2020-02-03 06:38:24', '2020-02-03 06:38:24', NULL),
(246, 'Company', 'company', '01924713232', 'dhaka', 'standardagrofood19@gmail.com', NULL, '1', '3', '18', '100', '123456', '111000', NULL, NULL, NULL, NULL, 'dealer', NULL, '2020-02-17', NULL, '1', NULL, '$2y$10$0XZTMlT1eJDKLRhWU.eirO0MSLP7Fq8tMNcM3/fODd9FkNydnutcK', NULL, '2020-02-17 00:39:59', '2020-02-17 00:39:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_has_permissions`
--

CREATE TABLE `user_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_has_roles`
--

CREATE TABLE `user_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_has_roles`
--

INSERT INTO `user_has_roles` (`role_id`, `model_type`, `user_id`) VALUES
(1, 'App\\User', 245),
(1, 'App\\User', 246),
(3, 'App\\User', 1),
(4, 'App\\User', 2),
(4, 'App\\User', 3),
(4, 'App\\User', 4),
(4, 'App\\User', 5),
(4, 'App\\User', 6),
(4, 'App\\User', 7),
(4, 'App\\User', 8),
(4, 'App\\User', 9),
(4, 'App\\User', 10),
(4, 'App\\User', 11),
(4, 'App\\User', 12),
(4, 'App\\User', 13),
(4, 'App\\User', 14),
(4, 'App\\User', 15),
(4, 'App\\User', 16),
(4, 'App\\User', 17),
(4, 'App\\User', 18),
(4, 'App\\User', 19),
(4, 'App\\User', 20),
(4, 'App\\User', 21),
(4, 'App\\User', 22),
(4, 'App\\User', 23),
(4, 'App\\User', 24),
(4, 'App\\User', 25),
(4, 'App\\User', 26),
(4, 'App\\User', 27),
(4, 'App\\User', 28),
(4, 'App\\User', 29),
(4, 'App\\User', 30),
(4, 'App\\User', 31),
(4, 'App\\User', 32),
(4, 'App\\User', 33),
(4, 'App\\User', 34),
(4, 'App\\User', 35),
(4, 'App\\User', 36),
(4, 'App\\User', 37),
(4, 'App\\User', 38),
(4, 'App\\User', 39),
(4, 'App\\User', 40),
(4, 'App\\User', 41),
(4, 'App\\User', 42),
(4, 'App\\User', 43),
(4, 'App\\User', 44),
(4, 'App\\User', 45),
(4, 'App\\User', 46),
(4, 'App\\User', 47),
(4, 'App\\User', 48),
(4, 'App\\User', 49),
(4, 'App\\User', 50),
(4, 'App\\User', 51),
(4, 'App\\User', 52),
(4, 'App\\User', 53),
(4, 'App\\User', 54),
(4, 'App\\User', 55),
(4, 'App\\User', 56),
(4, 'App\\User', 57),
(4, 'App\\User', 58),
(4, 'App\\User', 59),
(4, 'App\\User', 60),
(4, 'App\\User', 61),
(4, 'App\\User', 62),
(4, 'App\\User', 63),
(4, 'App\\User', 64),
(4, 'App\\User', 65),
(4, 'App\\User', 66),
(4, 'App\\User', 67),
(4, 'App\\User', 68),
(4, 'App\\User', 69),
(4, 'App\\User', 70),
(4, 'App\\User', 71),
(4, 'App\\User', 72),
(4, 'App\\User', 73),
(4, 'App\\User', 74),
(4, 'App\\User', 75),
(4, 'App\\User', 76),
(4, 'App\\User', 77),
(4, 'App\\User', 78),
(4, 'App\\User', 79),
(4, 'App\\User', 80),
(4, 'App\\User', 81),
(4, 'App\\User', 82),
(4, 'App\\User', 83),
(4, 'App\\User', 84),
(4, 'App\\User', 85),
(4, 'App\\User', 86),
(4, 'App\\User', 87),
(4, 'App\\User', 88),
(4, 'App\\User', 89),
(4, 'App\\User', 90),
(4, 'App\\User', 91),
(4, 'App\\User', 92),
(4, 'App\\User', 93),
(4, 'App\\User', 94),
(4, 'App\\User', 95),
(4, 'App\\User', 96),
(4, 'App\\User', 97),
(4, 'App\\User', 98),
(4, 'App\\User', 99),
(4, 'App\\User', 100),
(4, 'App\\User', 101),
(4, 'App\\User', 102),
(4, 'App\\User', 103),
(4, 'App\\User', 104),
(4, 'App\\User', 105),
(4, 'App\\User', 106),
(4, 'App\\User', 107),
(4, 'App\\User', 108),
(4, 'App\\User', 109),
(4, 'App\\User', 110),
(4, 'App\\User', 111),
(4, 'App\\User', 112),
(4, 'App\\User', 113),
(4, 'App\\User', 114),
(4, 'App\\User', 115),
(4, 'App\\User', 116),
(4, 'App\\User', 117),
(4, 'App\\User', 118),
(4, 'App\\User', 119),
(4, 'App\\User', 120),
(4, 'App\\User', 121),
(4, 'App\\User', 122),
(4, 'App\\User', 123),
(4, 'App\\User', 124),
(4, 'App\\User', 125),
(4, 'App\\User', 126),
(4, 'App\\User', 127),
(4, 'App\\User', 128),
(4, 'App\\User', 129),
(4, 'App\\User', 130),
(4, 'App\\User', 131),
(4, 'App\\User', 132),
(4, 'App\\User', 133),
(4, 'App\\User', 134),
(4, 'App\\User', 135),
(4, 'App\\User', 136),
(4, 'App\\User', 137),
(4, 'App\\User', 138),
(4, 'App\\User', 139),
(4, 'App\\User', 140),
(4, 'App\\User', 141),
(4, 'App\\User', 142),
(4, 'App\\User', 143),
(4, 'App\\User', 144),
(4, 'App\\User', 145),
(4, 'App\\User', 146),
(4, 'App\\User', 147),
(4, 'App\\User', 148),
(4, 'App\\User', 149),
(4, 'App\\User', 150),
(4, 'App\\User', 151),
(4, 'App\\User', 152),
(4, 'App\\User', 153),
(4, 'App\\User', 154),
(4, 'App\\User', 155),
(4, 'App\\User', 156),
(4, 'App\\User', 157),
(4, 'App\\User', 158),
(4, 'App\\User', 159),
(4, 'App\\User', 160),
(4, 'App\\User', 161),
(4, 'App\\User', 162),
(4, 'App\\User', 163),
(4, 'App\\User', 164),
(4, 'App\\User', 165),
(4, 'App\\User', 166),
(4, 'App\\User', 167),
(4, 'App\\User', 168),
(4, 'App\\User', 169),
(4, 'App\\User', 170),
(4, 'App\\User', 171),
(4, 'App\\User', 172),
(4, 'App\\User', 173),
(4, 'App\\User', 174),
(4, 'App\\User', 175),
(4, 'App\\User', 176),
(4, 'App\\User', 177),
(4, 'App\\User', 178),
(4, 'App\\User', 179),
(4, 'App\\User', 180),
(4, 'App\\User', 181),
(4, 'App\\User', 182),
(4, 'App\\User', 183),
(4, 'App\\User', 184),
(4, 'App\\User', 185),
(4, 'App\\User', 186),
(4, 'App\\User', 187),
(4, 'App\\User', 188),
(4, 'App\\User', 189),
(4, 'App\\User', 190),
(4, 'App\\User', 191),
(4, 'App\\User', 192),
(4, 'App\\User', 193),
(4, 'App\\User', 194),
(4, 'App\\User', 195),
(4, 'App\\User', 196),
(4, 'App\\User', 197),
(4, 'App\\User', 198),
(4, 'App\\User', 199),
(4, 'App\\User', 200),
(4, 'App\\User', 201),
(4, 'App\\User', 202),
(4, 'App\\User', 203),
(4, 'App\\User', 204),
(4, 'App\\User', 205),
(4, 'App\\User', 206),
(4, 'App\\User', 207),
(4, 'App\\User', 208),
(4, 'App\\User', 209),
(4, 'App\\User', 210),
(4, 'App\\User', 211),
(4, 'App\\User', 212),
(4, 'App\\User', 213),
(4, 'App\\User', 214),
(4, 'App\\User', 215),
(4, 'App\\User', 216),
(4, 'App\\User', 217),
(4, 'App\\User', 218),
(4, 'App\\User', 219),
(4, 'App\\User', 220),
(4, 'App\\User', 221),
(4, 'App\\User', 222),
(4, 'App\\User', 223),
(4, 'App\\User', 224),
(4, 'App\\User', 225),
(4, 'App\\User', 226),
(4, 'App\\User', 227),
(4, 'App\\User', 229),
(4, 'App\\User', 230),
(4, 'App\\User', 231),
(4, 'App\\User', 232),
(4, 'App\\User', 233),
(4, 'App\\User', 234),
(4, 'App\\User', 235),
(4, 'App\\User', 236),
(4, 'App\\User', 237),
(4, 'App\\User', 238),
(4, 'App\\User', 239),
(4, 'App\\User', 240),
(4, 'App\\User', 241),
(4, 'App\\User', 242),
(4, 'App\\User', 243),
(4, 'App\\User', 244),
(6, 'App\\User', 246);

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_by_user_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `withdrawal_amount` decimal(20,2) DEFAULT NULL,
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method_details` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `withdrawal_charge` decimal(20,2) DEFAULT NULL,
  `vat_amount` decimal(20,2) DEFAULT NULL,
  `total_withdrawal_amount` decimal(20,2) DEFAULT NULL,
  `withdrawal_details` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `withdrawal_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_galleries`
--
ALTER TABLE `category_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cupon_codes`
--
ALTER TABLE `cupon_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dealers`
--
ALTER TABLE `dealers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dealer_bonuses`
--
ALTER TABLE `dealer_bonuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_bonuses`
--
ALTER TABLE `member_bonuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_trees`
--
ALTER TABLE `member_trees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `stock_managers`
--
ALTER TABLE `stock_managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topup_balances`
--
ALTER TABLE `topup_balances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_balances`
--
ALTER TABLE `transfer_balances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_has_permissions`
--
ALTER TABLE `user_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`user_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`user_id`,`model_type`);

--
-- Indexes for table `user_has_roles`
--
ALTER TABLE `user_has_roles`
  ADD PRIMARY KEY (`role_id`,`user_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`user_id`,`model_type`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category_galleries`
--
ALTER TABLE `category_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `cupon_codes`
--
ALTER TABLE `cupon_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dealers`
--
ALTER TABLE `dealers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dealer_bonuses`
--
ALTER TABLE `dealer_bonuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `member_bonuses`
--
ALTER TABLE `member_bonuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member_trees`
--
ALTER TABLE `member_trees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `points`
--
ALTER TABLE `points`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stock_managers`
--
ALTER TABLE `stock_managers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `topup_balances`
--
ALTER TABLE `topup_balances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `transfer_balances`
--
ALTER TABLE `transfer_balances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_has_permissions`
--
ALTER TABLE `user_has_permissions`
  ADD CONSTRAINT `user_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
