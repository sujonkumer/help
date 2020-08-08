-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 17, 2020 at 12:34 PM
-- Server version: 5.6.47
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sproduct_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `banner_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_des` text COLLATE utf8mb4_unicode_ci,
  `banner_image` text COLLATE utf8mb4_unicode_ci,
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
(2, 1, 'Hello Standard  Cosmetics Avalable Now', 'This is secon banner', 'upload/banner/1577185790.jpg', '1', 'Slide', 'Active', '2019-12-01 23:59:03', '2020-03-01 06:51:28', NULL),
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
(1, 1, 'STANDARD', 'upload/brandlogo/STANDARD1582370809.png', '1', 'Active', '2019-12-21 13:34:08', '2020-02-22 11:26:49', NULL),
(2, 1, 'LAVANA', 'upload/brandlogo/LAVANA1582370877.jpg', 'LAVANA', 'Active', '2019-12-23 12:08:13', '2020-02-22 11:27:57', NULL),
(3, 1, 'Upcoming', 'upload/brandlogo/Upcoming1582370913.jpg', 'Upcoming', 'Active', '2019-12-23 14:43:46', '2020-02-22 11:28:33', NULL),
(4, 1, 'DERMA PLUS+', '', 'DERMA PLUS+', 'Active', '2019-12-23 15:23:05', '2020-02-22 11:26:09', '2020-02-22 11:26:09'),
(5, 1, 'REAL', '', '1', 'Active', '2019-12-30 06:00:15', '2020-02-22 11:26:01', '2020-02-22 11:26:01'),
(6, 1, 'Aromix', 'upload/brandlogo/Aromix1582371035.jpg', '1', 'Active', '2020-01-06 17:33:26', '2020-02-22 11:30:36', NULL),
(7, 1, 'Disaar', '', '1', 'Active', '2020-01-16 16:24:17', '2020-02-22 11:25:58', '2020-02-22 11:25:58');

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
(1, 1, 'Soy Food Item', 'upload/categorylogo/Soy Food Item1592325962.jpg', '1', 'True', 'Active', '2019-12-21 13:32:15', '2020-06-16 10:46:02', NULL),
(2, 1, 'Tea Item', 'upload/categorylogo/Tea Item1592326060.jpg', '1', 'True', 'Active', '2019-12-21 13:32:25', '2020-06-16 10:47:40', NULL),
(3, 1, 'Cosmetics Product', 'upload/categorylogo/Cosmetics Product1582370238.jpg', '1', 'True', 'Active', '2019-12-21 13:32:38', '2020-02-22 11:17:18', NULL),
(4, 1, 'Standard Package', 'upload/categorylogo/Standard Package1582370082.jpg', '1', 'True', 'Active', '2019-12-21 14:57:30', '2020-02-22 11:14:43', NULL),
(5, 1, 'Consumer Product', 'upload/categorylogo/Consumer Product1583066757.jpg', '1', 'True', 'Active', '2019-12-30 05:53:28', '2020-03-01 06:45:57', NULL),
(6, 1, 'KOREA ITEM', '', '1', 'True', 'Active', '2020-01-16 15:59:00', '2020-01-30 15:31:08', '2020-01-30 15:31:08'),
(7, 1, 'Books', 'upload/categorylogo/Books1583075323.jpg', '1', 'True', 'Active', '2020-03-01 09:08:43', '2020-03-01 09:08:43', NULL),
(8, 1, 'Fasion', 'upload/categorylogo/Fasion1583221805.jpg', '1', 'True', 'Active', '2020-03-03 01:50:05', '2020-03-03 01:50:05', NULL);

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
(1, '1', 'admin', 2, 4, NULL, 'test', '213131231', 'test@email.com', 'Test', '46', '2', '1', '1229', 10.00, 10.00, 'yrd', NULL, NULL, NULL),
(2, '248', 'office', 1, 3, NULL, 'Dhaka, Bangladesh', '01924713232', 'standardglobal.info20@gmail.com', 'Standard Global', '1', '3', '18', '1214', NULL, NULL, NULL, '2020-02-20 11:13:20', '2020-02-20 11:13:20', NULL),
(3, '249', 'district', 15, 3, NULL, 'Shakhipur Bazar Molla Market, Rafiqul Islam Tower 4th Floor, Shakhipur, Shariatpur, Bangladesh-8030', '01924713232', 'standardglobal.info20@gmail.com', 'Standard E-Shop.com', '15', '3', '18', '8030', NULL, NULL, NULL, '2020-02-21 16:42:59', '2020-02-21 16:42:59', NULL),
(4, '250', 'district', 15, 3, NULL, 'DM KHALI BAZAR, Shakhipur, Shariatpur, Bangladesh-8030', '01629506365', 'asmrocky1996@gmail.com', 'Standard E-Shop.com2', '15', '3', '18', '8030', NULL, NULL, NULL, '2020-02-21 16:58:01', '2020-02-21 16:58:01', NULL),
(5, '251', 'district', 11, 3, NULL, 'Jalkuri koroetola, Siddirganj, Narayanganj-1430', '01676297708', 'standardglobal.info20@gmail.com', 'CHAPAI HOMEO HALL', '11', '3', '18', '1430', NULL, NULL, NULL, '2020-02-22 13:28:29', '2020-02-22 13:28:29', NULL);

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

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `user_id`, `designation_name`, `designation_details`, `status`, `deleted_at`, `created_at`, `updated_at`, `designation_title`) VALUES
(1, '1', 'so', NULL, 'active', NULL, '2020-06-14 00:09:29', '2020-06-14 00:09:29', 'Sales Officer');

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
  `desc` text COLLATE utf8mb4_unicode_ci,
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
(2, 1, 'STANDARD', 'STD\r\nSTD', 'image', 'upload/gallery/Men1580398132.png', 'Active', '2020-01-11 18:00:00', '2020-06-15 02:55:16'),
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
  `incentive_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bonus_pv` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member_bonuses`
--

INSERT INTO `member_bonuses` (`id`, `user_id`, `from_user_id`, `amount`, `bonus_type`, `incentive_type`, `bonus_pv`, `details`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '200', '201', 120.00, 'sponsor', NULL, NULL, 'You have received 120 Tk Sponsor bonus for 30 Point sales commission from foyez1', 'active', '2020-02-22 10:21:08', '2020-02-22 10:21:08', NULL),
(2, '200', '211', 60.00, 'sponsor', NULL, NULL, 'You have received 60 Tk Sponsor bonus for 15 Point sales commission from foyez01', 'active', '2020-02-22 12:14:05', '2020-02-22 12:14:05', NULL),
(3, '200', '211', 60.00, 'sponsor', NULL, NULL, 'You have received 60 Tk Sponsor bonus for 15 Point sales commission from foyez01', 'active', '2020-02-22 12:14:32', '2020-02-22 12:14:32', NULL),
(4, '200', '211', 40.00, 'sponsor', NULL, NULL, 'You have received 40 Tk Sponsor bonus for 10 Point sales commission from foyez01', 'active', '2020-02-22 12:39:53', '2020-02-22 12:39:53', NULL),
(5, '1', '248', 6.00, 'stockist_sponsor', NULL, NULL, 'You have received 6 TK Dealer Sponsor Bonus for 15.00 Point sales commission from standard dealer.', 'active', '2020-02-22 13:45:56', '2020-02-22 13:45:56', NULL),
(6, '200', NULL, 60.00, 'matching', NULL, NULL, 'You have received 60 TK Matching Bonus for 30 Point', NULL, '2020-03-01 12:00:12', '2020-03-01 12:00:12', NULL),
(7, '1', NULL, 3.00, 'mega_matching', NULL, NULL, 'You have received 3 TK Club Royalty Bonus from admin', NULL, '2020-03-01 12:00:12', '2020-03-01 12:00:12', NULL),
(8, '255', '256', 200.00, 'sponsor', NULL, NULL, 'You have received 200 Tk Sponsor bonus for 50 Point sales commission from fahadul', 'active', '2020-03-03 11:14:19', '2020-03-03 11:14:19', NULL),
(10, '255', '257', 200.00, 'sponsor', NULL, NULL, 'You have received 200 Tk Sponsor bonus for 50 Point sales commission from fatema', 'active', '2020-03-03 11:15:39', '2020-03-03 11:15:39', NULL),
(12, '200', NULL, 20.00, 'matching', NULL, NULL, 'You have received 20 TK Matching Bonus for 10 Point', NULL, '2020-03-03 12:00:15', '2020-03-03 12:00:15', NULL),
(13, '1', NULL, 1.00, 'mega_matching', NULL, NULL, 'You have received 1 TK Club Royalty Bonus from admin', NULL, '2020-03-03 12:00:15', '2020-03-03 12:00:15', NULL),
(14, '1', '247', 200.00, 'sponsor', NULL, NULL, 'You have received 200 Tk Sponsor bonus for 50 Point sales commission from mehedi', 'active', '2020-03-06 01:31:42', '2020-03-06 01:31:42', NULL),
(16, '1', '248', 20.00, 'stockist_sponsor', NULL, NULL, 'You have received 20 TK Dealer Sponsor Bonus for 50.00 Point sales commission from standard dealer.', 'active', '2020-03-06 01:37:07', '2020-03-06 01:37:07', NULL),
(17, '252', '253', 200.00, 'sponsor', NULL, NULL, 'You have received 200 Tk Sponsor bonus for 50 Point sales commission from azharul', 'active', '2020-03-06 01:44:14', '2020-03-06 01:44:14', NULL),
(19, '244', '252', 200.00, 'sponsor', NULL, NULL, 'You have received 200 Tk Sponsor bonus for 50 Point sales commission from nirob', 'active', '2020-03-07 10:33:54', '2020-03-07 10:33:54', NULL),
(21, '253', '254', 200.00, 'sponsor', NULL, NULL, 'You have received 200 Tk Sponsor bonus for 50 Point sales commission from sakib', 'active', '2020-03-07 10:35:37', '2020-03-07 10:35:37', NULL),
(23, '1', '248', 20.00, 'stockist_sponsor', NULL, NULL, 'You have received 20 TK Dealer Sponsor Bonus for 50.00 Point sales commission from standard dealer.', 'active', '2020-03-07 10:39:55', '2020-03-07 10:39:55', NULL),
(24, '1', '248', 20.00, 'stockist_sponsor', NULL, NULL, 'You have received 20 TK Dealer Sponsor Bonus for 50.00 Point sales commission from standard dealer.', 'active', '2020-03-07 10:40:10', '2020-03-07 10:40:10', NULL),
(25, '1', '248', 20.00, 'stockist_sponsor', NULL, NULL, 'You have received 20 TK Dealer Sponsor Bonus for 50.00 Point sales commission from standard dealer.', 'active', '2020-03-07 10:40:19', '2020-03-07 10:40:19', NULL),
(26, '253', '264', 200.00, 'sponsor', NULL, NULL, 'You have received 200 Tk Sponsor bonus for 50 Point sales commission from sowrove', 'active', '2020-03-13 00:25:27', '2020-03-13 00:25:27', NULL),
(27, '243', '259', 200.00, 'sponsor', NULL, NULL, 'You have received 200 Tk Sponsor bonus for 50 Point sales commission from dolon', 'active', '2020-03-13 00:31:00', '2020-03-13 00:31:00', NULL),
(28, '255', NULL, 250.00, 'matching', NULL, NULL, 'You have received 250 TK Matching Bonus for 100 Point', NULL, '2020-03-13 12:00:12', '2020-03-13 12:00:12', NULL),
(29, '1', NULL, 12.50, 'mega_matching', NULL, NULL, 'You have received 12.5 TK Leadership Bonus from admin', NULL, '2020-03-13 12:00:12', '2020-03-13 12:00:12', NULL),
(30, '252', '267', 200.00, 'sponsor', NULL, NULL, 'You have received 200 Tk Sponsor bonus for 50 Point sales commission from rubel', 'active', '2020-03-14 10:13:24', '2020-03-14 10:13:24', NULL),
(31, '1', '248', 25.00, 'stockist_sponsor', NULL, NULL, 'You have received 25 TK Dealer Sponsor Bonus for 50.00 Point sales commission from standard dealer.', 'active', '2020-03-15 01:02:30', '2020-03-15 01:02:30', NULL),
(32, '1', '248', 25.00, 'stockist_sponsor', NULL, NULL, 'You have received 25 TK Dealer Sponsor Bonus for 50.00 Point sales commission from standard dealer.', 'active', '2020-03-15 01:03:10', '2020-03-15 01:03:10', NULL),
(33, '1', '248', 25.00, 'stockist_sponsor', NULL, NULL, 'You have received 25 TK Dealer Sponsor Bonus for 50.00 Point sales commission from standard dealer.', 'active', '2020-03-15 01:54:43', '2020-03-15 01:54:43', NULL),
(34, '1', '101', 400.00, 'sponsor', NULL, NULL, 'You have received 400 Tk Sponsor bonus for 100 Point sales commission from standard01', 'active', '2020-03-15 06:20:55', '2020-03-15 06:20:55', NULL),
(35, '1', '248', 50.00, 'stockist_sponsor', NULL, NULL, 'You have received 50 TK Dealer Sponsor Bonus for 100.00 Point sales commission from standard dealer.', 'active', '2020-03-15 06:23:14', '2020-03-15 06:23:14', NULL),
(36, '1', '102', 400.00, 'sponsor', NULL, NULL, 'You have received 400 Tk Sponsor bonus for 100 Point sales commission from standard02', 'active', '2020-03-15 06:49:22', '2020-03-15 06:49:22', NULL),
(37, '1', '280', 400.00, 'sponsor', NULL, NULL, 'You have received 400 Tk Sponsor bonus for 100 Point sales commission from standardglobal', 'active', '2020-03-15 06:56:03', '2020-03-15 06:56:03', NULL),
(38, '1', '248', 50.00, 'stockist_sponsor', NULL, NULL, 'You have received 50 TK Dealer Sponsor Bonus for 100.00 Point sales commission from standard dealer.', 'active', '2020-03-15 06:57:54', '2020-03-15 06:57:54', NULL),
(39, '1', '248', 50.00, 'stockist_sponsor', NULL, NULL, 'You have received 50 TK Dealer Sponsor Bonus for 100.00 Point sales commission from standard dealer.', 'active', '2020-03-15 06:58:13', '2020-03-15 06:58:13', NULL),
(40, '101', NULL, 250.00, 'matching', NULL, NULL, 'You have received 250 TK Matching Bonus for 100 Point', NULL, '2020-03-15 12:00:15', '2020-03-15 12:00:15', NULL),
(41, '1', NULL, 12.50, 'mega_matching', NULL, NULL, 'You have received 12.5 TK Leadership Bonus from admin', NULL, '2020-03-15 12:00:15', '2020-03-15 12:00:15', NULL),
(42, '1', NULL, 750.00, 'matching', NULL, NULL, 'You have received 750 TK Matching Bonus for 300 Point', NULL, '2020-03-15 12:00:15', '2020-03-15 12:00:15', NULL),
(43, '247', '262', 200.00, 'sponsor', NULL, NULL, 'You have received 200 Tk Sponsor bonus for 50 Point sales commission from sojib', 'active', '2020-03-16 06:42:25', '2020-03-16 06:42:25', NULL),
(44, '1', '248', 25.00, 'stockist_sponsor', NULL, NULL, 'You have received 25 TK Dealer Sponsor Bonus for 50.00 Point sales commission from standard dealer.', 'active', '2020-03-16 06:44:47', '2020-03-16 06:44:47', NULL),
(45, '1', '103', 400.00, 'sponsor', NULL, NULL, 'You have received 400 Tk Sponsor bonus for 100 Point sales commission from standard03', 'active', '2020-03-16 22:27:22', '2020-03-16 22:27:22', NULL),
(46, '1', '104', 400.00, 'sponsor', NULL, NULL, 'You have received 400 Tk Sponsor bonus for 100 Point sales commission from standard04', 'active', '2020-03-16 22:30:30', '2020-03-16 22:30:30', NULL),
(47, '1', NULL, 500.00, 'matching', NULL, NULL, 'You have received 500 TK Matching Bonus for 200 Point', NULL, '2020-03-17 12:00:20', '2020-03-17 12:00:20', NULL),
(48, '243', '244', 200.00, 'sponsor', NULL, NULL, 'You have received 200 Tk Sponsor bonus for 50 Point sales commission from Amit', 'active', '2020-03-18 10:08:57', '2020-03-18 10:08:57', NULL),
(49, '1', '248', 50.00, 'stockist_sponsor', NULL, NULL, 'You have received 50 TK Dealer Sponsor Bonus for 100.00 Point sales commission from standard dealer.', 'active', '2020-03-18 10:11:42', '2020-03-18 10:11:42', NULL),
(50, '1', '248', 50.00, 'stockist_sponsor', NULL, NULL, 'You have received 50 TK Dealer Sponsor Bonus for 100.00 Point sales commission from standard dealer.', 'active', '2020-03-18 10:11:55', '2020-03-18 10:11:55', NULL),
(51, '1', '248', 25.00, 'stockist_sponsor', NULL, NULL, 'You have received 25 TK Dealer Sponsor Bonus for 50.00 Point sales commission from standard dealer.', 'active', '2020-03-18 10:12:12', '2020-03-18 10:12:12', NULL),
(52, '247', '282', 200.00, 'sponsor', NULL, NULL, 'You have received 200 Tk Sponsor bonus for 50 Point sales commission from Sania', 'active', '2020-03-20 00:31:22', '2020-03-20 00:31:22', NULL),
(53, '247', '284', 28.00, 'sponsor', NULL, NULL, 'You have received 28 Tk Sponsor bonus for 7 Point sales commission from Harun', 'active', '2020-03-20 01:06:55', '2020-03-20 01:06:55', NULL),
(54, '247', '261', 16.00, 'sponsor', NULL, NULL, 'You have received 16 Tk Sponsor bonus for 4 Point sales commission from Mehedi1', 'active', '2020-03-20 01:30:36', '2020-03-20 01:30:36', NULL),
(55, '1', '248', 2.00, 'stockist_sponsor', NULL, NULL, 'You have received 2 TK Dealer Sponsor Bonus for 4.00 Point sales commission from standard dealer.', 'active', '2020-03-20 01:53:12', '2020-03-20 01:53:12', NULL),
(56, '1', '248', 3.50, 'stockist_sponsor', NULL, NULL, 'You have received 3.5 TK Dealer Sponsor Bonus for 7.00 Point sales commission from standard dealer.', 'active', '2020-03-20 01:53:48', '2020-03-20 01:53:48', NULL),
(57, '1', '248', 25.00, 'stockist_sponsor', NULL, NULL, 'You have received 25 TK Dealer Sponsor Bonus for 50.00 Point sales commission from standard dealer.', 'active', '2020-03-20 01:54:21', '2020-03-20 01:54:21', NULL),
(58, '247', NULL, 152.50, 'matching', NULL, NULL, 'You have received 152.5 TK Matching Bonus for 61 Point', NULL, '2020-03-20 12:00:15', '2020-03-20 12:00:15', NULL),
(59, '1', NULL, 7.63, 'mega_matching', NULL, NULL, 'You have received 7.625 TK Leadership Bonus from admin', NULL, '2020-03-20 12:00:15', '2020-03-20 12:00:15', NULL),
(60, '200', '243', 200.00, 'sponsor', NULL, NULL, 'You have received 200 Tk Sponsor bonus for 50 Point sales commission from Rabbi', 'active', '2020-03-21 01:42:19', '2020-03-21 01:42:19', NULL),
(61, '247', '284', 2.80, 'sponsor', NULL, NULL, 'You have received 2.8 Tk Sponsor bonus for 0.7 Point sales commission from Harun', 'active', '2020-03-21 01:46:45', '2020-03-21 01:46:45', NULL),
(62, '247', NULL, 1.75, 'matching', NULL, NULL, 'You have received 1.75 TK Matching Bonus for 0.7 Point', NULL, '2020-03-21 12:00:14', '2020-03-21 12:00:14', NULL),
(63, '1', NULL, 0.09, 'mega_matching', NULL, NULL, 'You have received 0.0875 TK Leadership Bonus from admin', NULL, '2020-03-21 12:00:14', '2020-03-21 12:00:14', NULL),
(64, '1', '248', 25.00, 'stockist_sponsor', NULL, NULL, 'You have received 25 TK Dealer Sponsor Bonus for 50.00 Point sales commission from standard dealer.', 'active', '2020-03-22 01:00:54', '2020-03-22 01:00:54', NULL),
(65, '1', '248', 0.35, 'stockist_sponsor', NULL, NULL, 'You have received 0.35 TK Dealer Sponsor Bonus for 0.70 Point sales commission from standard dealer.', 'active', '2020-03-22 01:01:57', '2020-03-22 01:01:57', NULL),
(66, '247', '284', 3.00, 'sponsor', NULL, NULL, 'You have received 3 Tk Sponsor bonus for 0.75 Point sales commission from Harun', 'active', '2020-05-03 23:36:22', '2020-05-03 23:36:22', NULL),
(67, '247', NULL, 1.88, 'matching', NULL, NULL, 'You have received 1.875 TK Matching Bonus for 0.75 Point', NULL, '2020-05-04 12:00:15', '2020-05-04 12:00:15', NULL),
(68, '1', NULL, 0.09, 'mega_matching', NULL, NULL, 'You have received 0.09375 TK Leadership Bonus from admin', NULL, '2020-05-04 12:00:15', '2020-05-04 12:00:15', NULL),
(69, '259', '281', 4.00, 'sponsor', NULL, NULL, 'You have received 4 Tk Sponsor bonus for 1 Point sales commission from Afroza', 'active', '2020-05-07 21:33:02', '2020-05-07 21:33:02', NULL),
(70, '253', '264', 3.20, 'sponsor', NULL, NULL, 'You have received 3.2 Tk Sponsor bonus for 0.8 Point sales commission from sowrove', 'active', '2020-05-09 01:16:08', '2020-05-09 01:16:08', NULL),
(71, '1', '248', 0.50, 'stockist_sponsor', NULL, NULL, 'You have received 0.5 TK Dealer Sponsor Bonus for 1.00 Point sales commission from standard dealer.', 'active', '2020-05-09 01:29:31', '2020-05-09 01:29:31', NULL),
(72, '1', '248', 0.40, 'stockist_sponsor', NULL, NULL, 'You have received 0.4 TK Dealer Sponsor Bonus for 0.80 Point sales commission from standard dealer.', 'active', '2020-05-09 01:29:57', '2020-05-09 01:29:57', NULL),
(73, '247', '284', 156.00, 'sponsor', NULL, NULL, 'You have received 156 Tk Sponsor bonus for 39 Point sales commission from Harun', 'active', '2020-05-10 23:02:35', '2020-05-10 23:02:35', NULL),
(74, '247', '284', 12.00, 'sponsor', NULL, NULL, 'You have received 12 Tk Sponsor bonus for 3 Point sales commission from Harun', 'active', '2020-05-10 23:15:27', '2020-05-10 23:15:27', NULL),
(75, '282', '354', 200.00, 'sponsor', NULL, NULL, 'You have received 200 Tk Sponsor bonus for 50 Point sales commission from Firoj malot', 'active', '2020-05-11 00:21:07', '2020-05-11 00:21:07', NULL),
(76, '282', '354', 2.80, 'sponsor', NULL, NULL, 'You have received 2.8 Tk Sponsor bonus for 0.7 Point sales commission from Firoj malot', 'active', '2020-05-11 00:33:29', '2020-05-11 00:33:29', NULL),
(77, '282', NULL, 126.13, 'matching', NULL, NULL, 'You have received 126.125 TK Matching Bonus for 50.45 Point', NULL, '2020-05-11 12:00:16', '2020-05-11 12:00:16', NULL),
(78, '247', NULL, 6.31, 'mega_matching', NULL, NULL, 'You have received 6.30625 TK Leadership Bonus from mehedi', NULL, '2020-05-11 12:00:16', '2020-05-11 12:00:16', NULL),
(79, '247', NULL, 231.75, 'matching', NULL, NULL, 'You have received 231.75 TK Matching Bonus for 92.7 Point', NULL, '2020-05-11 12:00:17', '2020-05-11 12:00:17', NULL),
(80, '1', NULL, 11.59, 'mega_matching', NULL, NULL, 'You have received 11.5875 TK Leadership Bonus from admin', NULL, '2020-05-11 12:00:17', '2020-05-11 12:00:17', NULL),
(81, '247', '282', 1.40, 'sponsor', NULL, NULL, 'You have received 1.4 Tk Sponsor bonus for 0.35 Point sales commission from Sania', 'active', '2020-05-12 00:20:06', '2020-05-12 00:20:06', NULL),
(82, '247', NULL, 0.87, 'matching', NULL, NULL, 'You have received 0.87499999999999 TK Matching Bonus for 0.34999999999999 Point', NULL, '2020-05-12 12:00:13', '2020-05-12 12:00:13', NULL),
(83, '1', NULL, 0.04, 'mega_matching', NULL, NULL, 'You have received 0.043749999999999 TK Leadership Bonus from admin', NULL, '2020-05-12 12:00:13', '2020-05-12 12:00:13', NULL),
(84, '259', '281', 12.00, 'sponsor', NULL, NULL, 'You have received 12 Tk Sponsor bonus for 3 Point sales commission from Afroza', 'active', '2020-06-02 23:28:37', '2020-06-02 23:28:37', NULL),
(85, '259', '281', 12.00, 'sponsor', NULL, NULL, 'You have received 12 Tk Sponsor bonus for 3 Point sales commission from Afroza', 'active', '2020-06-02 23:31:32', '2020-06-02 23:31:32', NULL),
(86, '259', '281', 4.00, 'sponsor', NULL, NULL, 'You have received 4 Tk Sponsor bonus for 1 Point sales commission from Afroza', 'active', '2020-06-02 23:34:20', '2020-06-02 23:34:20', NULL),
(87, '284', '361', 200.00, 'sponsor', NULL, NULL, 'You have received 200 Tk Sponsor bonus for 50 Point sales commission from Nasir', 'active', '2020-06-06 23:17:00', '2020-06-06 23:17:00', NULL),
(88, '282', NULL, 0.63, 'matching', NULL, NULL, 'You have received 0.625 TK Matching Bonus for 0.25 Point', NULL, '2020-06-07 12:00:14', '2020-06-07 12:00:14', NULL),
(89, '247', NULL, 0.03, 'mega_matching', NULL, NULL, 'You have received 0.03125 TK Leadership Bonus from mehedi', NULL, '2020-06-07 12:00:14', '2020-06-07 12:00:14', NULL),
(90, '247', NULL, 125.00, 'matching', NULL, NULL, 'You have received 125 TK Matching Bonus for 50 Point', NULL, '2020-06-07 12:00:14', '2020-06-07 12:00:14', NULL),
(91, '1', NULL, 6.25, 'mega_matching', NULL, NULL, 'You have received 6.25 TK Leadership Bonus from admin', NULL, '2020-06-07 12:00:14', '2020-06-07 12:00:14', NULL),
(92, '1', '248', 25.00, 'stockist_sponsor', NULL, NULL, 'You have received 25 TK Dealer Sponsor Bonus for 50.00 Point sales commission from standard dealer.', 'active', '2020-06-09 02:23:04', '2020-06-09 02:23:04', NULL),
(93, '354', '363', 200.00, 'sponsor', NULL, NULL, 'You have received 200 Tk Sponsor bonus for 50 Point sales commission from Habib', 'active', '2020-06-10 00:57:00', '2020-06-10 00:57:00', NULL),
(94, '206', '335', 200.00, 'sponsor', NULL, NULL, 'You have received 200 Tk Sponsor bonus for 50 Point sales commission from moinuddin', 'active', '2020-06-10 06:20:33', '2020-06-10 06:20:33', NULL),
(95, '206', '330', 200.00, 'sponsor', NULL, NULL, 'You have received 200 Tk Sponsor bonus for 50 Point sales commission from fazlu', 'active', '2020-06-10 06:24:15', '2020-06-10 06:24:15', NULL),
(96, '206', '313', 200.00, 'sponsor', NULL, NULL, 'You have received 200 Tk Sponsor bonus for 50 Point sales commission from draziz', 'active', '2020-06-10 06:27:12', '2020-06-10 06:27:12', NULL),
(97, '282', NULL, 124.38, 'matching', NULL, NULL, 'You have received 124.375 TK Matching Bonus for 49.75 Point', NULL, '2020-06-10 12:00:15', '2020-06-10 12:00:15', NULL),
(98, '247', NULL, 6.22, 'mega_matching', NULL, NULL, 'You have received 6.21875 TK Leadership Bonus from mehedi', NULL, '2020-06-10 12:00:15', '2020-06-10 12:00:15', NULL),
(99, '247', NULL, 125.00, 'matching', NULL, NULL, 'You have received 125 TK Matching Bonus for 50 Point', NULL, '2020-06-10 12:00:15', '2020-06-10 12:00:15', NULL),
(100, '1', NULL, 6.25, 'mega_matching', NULL, NULL, 'You have received 6.25 TK Leadership Bonus from admin', NULL, '2020-06-10 12:00:15', '2020-06-10 12:00:15', NULL),
(101, '313', NULL, 125.00, 'matching', NULL, NULL, 'You have received 125 TK Matching Bonus for 50 Point', NULL, '2020-06-10 12:00:17', '2020-06-10 12:00:17', NULL),
(102, '206', NULL, 6.25, 'mega_matching', NULL, NULL, 'You have received 6.25 TK Leadership Bonus from abdullah', NULL, '2020-06-10 12:00:17', '2020-06-10 12:00:17', NULL),
(103, '206', NULL, 375.00, 'matching', NULL, NULL, 'You have received 375 TK Matching Bonus for 150 Point', NULL, '2020-06-10 12:00:17', '2020-06-10 12:00:17', NULL),
(104, '200', NULL, 18.75, 'mega_matching', NULL, NULL, 'You have received 18.75 TK Leadership Bonus from foyez', NULL, '2020-06-10 12:00:17', '2020-06-10 12:00:17', NULL),
(105, '361', '365', 200.00, 'sponsor', NULL, NULL, 'You have received 200 Tk Sponsor bonus for 50 Point sales commission from Shahadat', 'active', '2020-06-10 21:33:31', '2020-06-10 21:33:31', NULL),
(106, '282', NULL, 0.63, 'matching', NULL, NULL, 'You have received 0.625 TK Matching Bonus for 0.25 Point', NULL, '2020-06-11 12:00:13', '2020-06-11 12:00:13', NULL),
(107, '247', NULL, 0.03, 'mega_matching', NULL, NULL, 'You have received 0.03125 TK Leadership Bonus from mehedi', NULL, '2020-06-11 12:00:13', '2020-06-11 12:00:13', NULL),
(108, '247', NULL, 125.00, 'matching', NULL, NULL, 'You have received 125 TK Matching Bonus for 50 Point', NULL, '2020-06-11 12:00:14', '2020-06-11 12:00:14', NULL),
(109, '1', NULL, 6.25, 'mega_matching', NULL, NULL, 'You have received 6.25 TK Leadership Bonus from admin', NULL, '2020-06-11 12:00:14', '2020-06-11 12:00:14', NULL),
(110, '361', '377', 200.00, 'sponsor', NULL, NULL, 'You have received 200 Tk Sponsor bonus for 50 Point sales commission from Salma', 'active', '2020-06-11 23:29:07', '2020-06-11 23:29:07', NULL),
(111, '244', '260', 200.00, 'sponsor', NULL, NULL, 'You have received 200 Tk Sponsor bonus for 50 Point sales commission from monir', 'active', '2020-06-12 00:10:50', '2020-06-12 00:10:50', NULL),
(112, '259', '281', 12.00, 'sponsor', NULL, NULL, 'You have received 12 Tk Sponsor bonus for 3 Point sales commission from Afroza', 'active', '2020-06-12 02:30:08', '2020-06-12 02:30:08', NULL),
(113, '259', NULL, 27.50, 'matching', NULL, NULL, 'You have received 27.5 TK Matching Bonus for 11 Point', NULL, '2020-06-12 12:00:17', '2020-06-12 12:00:17', NULL),
(114, '243', NULL, 1.38, 'mega_matching', NULL, NULL, 'You have received 1.375 TK Leadership Bonus from Rabbi', NULL, '2020-06-12 12:00:17', '2020-06-12 12:00:17', NULL),
(115, '361', NULL, 125.00, 'matching', NULL, NULL, 'You have received 125 TK Matching Bonus for 50 Point', NULL, '2020-06-12 12:00:18', '2020-06-12 12:00:18', NULL),
(116, '284', NULL, 6.25, 'mega_matching', NULL, NULL, 'You have received 6.25 TK Leadership Bonus from Harun', NULL, '2020-06-12 12:00:18', '2020-06-12 12:00:18', NULL),
(117, '247', NULL, 125.00, 'matching', NULL, NULL, 'You have received 125 TK Matching Bonus for 50 Point', NULL, '2020-06-12 12:00:18', '2020-06-12 12:00:18', NULL),
(118, '1', NULL, 6.25, 'mega_matching', NULL, NULL, 'You have received 6.25 TK Leadership Bonus from admin', NULL, '2020-06-12 12:00:18', '2020-06-12 12:00:18', NULL),
(119, '284', '369', 52.00, 'sponsor', NULL, NULL, 'You have received 52 Tk Sponsor bonus for 13 Point sales commission from shahed ahamed', 'active', '2020-06-14 23:54:16', '2020-06-14 23:54:16', NULL),
(120, '284', NULL, 32.50, 'matching', NULL, NULL, 'You have received 32.5 TK Matching Bonus for 13 Point', NULL, '2020-06-15 12:00:16', '2020-06-15 12:00:16', NULL),
(121, '247', NULL, 1.63, 'mega_matching', NULL, NULL, 'You have received 1.625 TK Leadership Bonus from mehedi', NULL, '2020-06-15 12:00:16', '2020-06-15 12:00:16', NULL),
(122, '247', NULL, 32.50, 'matching', NULL, NULL, 'You have received 32.5 TK Matching Bonus for 13 Point', NULL, '2020-06-15 12:00:16', '2020-06-15 12:00:16', NULL),
(123, '1', NULL, 1.63, 'mega_matching', NULL, NULL, 'You have received 1.625 TK Leadership Bonus from admin', NULL, '2020-06-15 12:00:16', '2020-06-15 12:00:16', NULL),
(124, '200', '220', 5.40, 'sponsor', NULL, NULL, 'You have received 5.4 Tk Sponsor bonus for 1.35 Point sales commission from akhifahim', 'active', '2020-06-16 00:53:33', '2020-06-16 00:53:33', NULL),
(125, '361', '378', 200.00, 'sponsor', NULL, NULL, 'You have received 200 Tk Sponsor bonus for 50 Point sales commission from Foysal', 'active', '2020-06-16 06:03:46', '2020-06-16 06:03:46', NULL),
(126, '1', '248', 25.00, 'stockist_sponsor', NULL, NULL, 'You have received 25 TK Dealer Sponsor Bonus for 50.00 Point sales commission from standard dealer.', 'active', '2020-06-16 06:15:18', '2020-06-16 06:15:18', NULL),
(127, '247', NULL, 125.00, 'matching', NULL, NULL, 'You have received 125 TK Matching Bonus for 50 Point', NULL, '2020-06-16 12:00:15', '2020-06-16 12:00:15', NULL),
(128, '1', NULL, 6.25, 'mega_matching', NULL, NULL, 'You have received 6.25 TK Leadership Bonus from admin', NULL, '2020-06-16 12:00:15', '2020-06-16 12:00:15', NULL),
(129, '200', NULL, 3.38, 'matching', NULL, NULL, 'You have received 3.375 TK Matching Bonus for 1.35 Point', NULL, '2020-06-16 12:00:19', '2020-06-16 12:00:19', NULL),
(130, '1', NULL, 0.17, 'mega_matching', NULL, NULL, 'You have received 0.16875 TK Leadership Bonus from admin', NULL, '2020-06-16 12:00:19', '2020-06-16 12:00:19', NULL);

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
  `extra_data` text COLLATE utf8mb4_unicode_ci,
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
(1, '1', NULL, 'so', '2', '101', 41340.95, 1301.65, 500.00, '283', '117', 500.00, 500.00, '2020-03-17', NULL, '{\"total_member\":400,\"total_point\":43142.5999999999985448084771633148193359375,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":\"so\"}', '2020-06-14', NULL, NULL, '2020-06-16 12:00:23', NULL),
(2, '2', '1', NULL, '3', '242', NULL, 1301.65, NULL, '279', '3', NULL, NULL, NULL, NULL, '{\"total_member\":282,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:34', '2020-06-16 12:00:22', NULL),
(3, '3', '1', NULL, '4', NULL, NULL, 1301.65, NULL, '278', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":278,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:34', '2020-06-16 12:00:21', NULL),
(4, '4', '1', NULL, '5', NULL, NULL, 1301.65, NULL, '277', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":277,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:34', '2020-06-16 12:00:21', NULL),
(5, '5', '1', NULL, '6', NULL, NULL, 1301.65, NULL, '276', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":276,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:34', '2020-06-16 12:00:21', NULL),
(6, '6', '1', NULL, '7', NULL, NULL, 1301.65, NULL, '275', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":275,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:34', '2020-06-16 12:00:21', NULL),
(7, '7', '1', NULL, '8', NULL, NULL, 1301.65, NULL, '274', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":274,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:35', '2020-06-16 12:00:21', NULL),
(8, '8', '1', NULL, '9', NULL, NULL, 1301.65, NULL, '273', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":273,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:35', '2020-06-16 12:00:21', NULL),
(9, '9', '1', NULL, '10', NULL, NULL, 1301.65, NULL, '272', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":272,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:35', '2020-06-16 12:00:21', NULL),
(10, '10', '1', NULL, '11', NULL, NULL, 1301.65, NULL, '271', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":271,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:35', '2020-06-16 12:00:21', NULL),
(11, '11', '1', NULL, '12', NULL, NULL, 1301.65, NULL, '270', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":270,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:35', '2020-06-16 12:00:21', NULL),
(12, '12', '1', NULL, '13', NULL, NULL, 1301.65, NULL, '269', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":269,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:36', '2020-06-16 12:00:21', NULL),
(13, '13', '1', NULL, '14', NULL, NULL, 1301.65, NULL, '268', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":268,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:36', '2020-06-16 12:00:21', NULL),
(14, '14', '1', NULL, '15', NULL, NULL, 1301.65, NULL, '267', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":267,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:36', '2020-06-16 12:00:21', NULL),
(15, '15', '1', NULL, '16', NULL, NULL, 1301.65, NULL, '266', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":266,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:36', '2020-06-16 12:00:21', NULL),
(16, '16', '1', NULL, '17', NULL, NULL, 1301.65, NULL, '265', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":265,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:36', '2020-06-16 12:00:21', NULL),
(17, '17', '1', NULL, '18', NULL, NULL, 1301.65, NULL, '264', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":264,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:37', '2020-06-16 12:00:21', NULL),
(18, '18', '1', NULL, '19', NULL, NULL, 1301.65, NULL, '263', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":263,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:37', '2020-06-16 12:00:21', NULL),
(19, '19', '1', NULL, '20', NULL, NULL, 1301.65, NULL, '262', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":262,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:37', '2020-06-16 12:00:21', NULL),
(20, '20', '1', NULL, '21', NULL, NULL, 1301.65, NULL, '261', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":261,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:37', '2020-06-16 12:00:21', NULL),
(21, '21', '1', NULL, '22', NULL, NULL, 1301.65, NULL, '260', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":260,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:37', '2020-06-16 12:00:21', NULL),
(22, '22', '1', NULL, '23', NULL, NULL, 1301.65, NULL, '259', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":259,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:38', '2020-06-16 12:00:21', NULL),
(23, '23', '1', NULL, '24', NULL, NULL, 1301.65, NULL, '258', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":258,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:38', '2020-06-16 12:00:21', NULL),
(24, '24', '1', NULL, '25', NULL, NULL, 1301.65, NULL, '257', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":257,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:38', '2020-06-16 12:00:21', NULL),
(25, '25', '1', NULL, '26', NULL, NULL, 1301.65, NULL, '256', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":256,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:38', '2020-06-16 12:00:21', NULL),
(26, '26', '1', NULL, '27', NULL, NULL, 1301.65, NULL, '255', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":255,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:38', '2020-06-16 12:00:21', NULL),
(27, '27', '1', NULL, '28', NULL, NULL, 1301.65, NULL, '254', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":254,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:39', '2020-06-16 12:00:21', NULL),
(28, '28', '1', NULL, '29', NULL, NULL, 1301.65, NULL, '253', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":253,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:39', '2020-06-16 12:00:21', NULL),
(29, '29', '1', NULL, '30', NULL, NULL, 1301.65, NULL, '252', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":252,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:39', '2020-06-16 12:00:21', NULL),
(30, '30', '1', NULL, '31', NULL, NULL, 1301.65, NULL, '251', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":251,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:39', '2020-06-16 12:00:21', NULL),
(31, '31', '1', NULL, '32', NULL, NULL, 1301.65, NULL, '250', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":250,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:39', '2020-06-16 12:00:21', NULL),
(32, '32', '1', NULL, '33', NULL, NULL, 1301.65, NULL, '249', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":249,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:39', '2020-06-16 12:00:21', NULL),
(33, '33', '1', NULL, '34', NULL, NULL, 1301.65, NULL, '248', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":248,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:39', '2020-06-16 12:00:21', NULL),
(34, '34', '1', NULL, '35', NULL, NULL, 1301.65, NULL, '247', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":247,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:40', '2020-06-16 12:00:21', NULL),
(35, '35', '1', NULL, '36', NULL, NULL, 1301.65, NULL, '246', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":246,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:40', '2020-06-16 12:00:21', NULL),
(36, '36', '1', NULL, '37', NULL, NULL, 1301.65, NULL, '245', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":245,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:40', '2020-06-16 12:00:21', NULL),
(37, '37', '1', NULL, '38', NULL, NULL, 1301.65, NULL, '244', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":244,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:40', '2020-06-16 12:00:21', NULL),
(38, '38', '1', NULL, '39', NULL, NULL, 1301.65, NULL, '243', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":243,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:40', '2020-06-16 12:00:21', NULL),
(39, '39', '1', NULL, '40', NULL, NULL, 1301.65, NULL, '242', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":242,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:40', '2020-06-16 12:00:21', NULL),
(40, '40', '1', NULL, '41', NULL, NULL, 1301.65, NULL, '241', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":241,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:40', '2020-06-16 12:00:21', NULL),
(41, '41', '1', NULL, '42', NULL, NULL, 1301.65, NULL, '240', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":240,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:40', '2020-06-16 12:00:21', NULL),
(42, '42', '1', NULL, '43', NULL, NULL, 1301.65, NULL, '239', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":239,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:41', '2020-06-16 12:00:21', NULL),
(43, '43', '1', NULL, '44', NULL, NULL, 1301.65, NULL, '238', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":238,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:41', '2020-06-16 12:00:21', NULL),
(44, '44', '1', NULL, '45', NULL, NULL, 1301.65, NULL, '237', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":237,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:41', '2020-06-16 12:00:20', NULL),
(45, '45', '1', NULL, '46', NULL, NULL, 1301.65, NULL, '236', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":236,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:41', '2020-06-16 12:00:20', NULL),
(46, '46', '1', NULL, '47', NULL, NULL, 1301.65, NULL, '235', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":235,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:41', '2020-06-16 12:00:20', NULL),
(47, '47', '1', NULL, '48', NULL, NULL, 1301.65, NULL, '234', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":234,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:41', '2020-06-16 12:00:20', NULL),
(48, '48', '1', NULL, '49', NULL, NULL, 1301.65, NULL, '233', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":233,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:42', '2020-06-16 12:00:20', NULL),
(49, '49', '1', NULL, '50', NULL, NULL, 1301.65, NULL, '232', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":232,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:42', '2020-06-16 12:00:20', NULL),
(50, '50', '1', NULL, '51', NULL, NULL, 1301.65, NULL, '231', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":231,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:42', '2020-06-16 12:00:20', NULL),
(51, '51', '1', NULL, '52', NULL, NULL, 1301.65, NULL, '230', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":230,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:42', '2020-06-16 12:00:20', NULL),
(52, '52', '1', NULL, '53', NULL, NULL, 1301.65, NULL, '229', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":229,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:42', '2020-06-16 12:00:20', NULL),
(53, '53', '1', NULL, '54', NULL, NULL, 1301.65, NULL, '228', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":228,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:42', '2020-06-16 12:00:20', NULL),
(54, '54', '1', NULL, '55', NULL, NULL, 1301.65, NULL, '227', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":227,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:43', '2020-06-16 12:00:20', NULL),
(55, '55', '1', NULL, '56', NULL, NULL, 1301.65, NULL, '226', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":226,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:43', '2020-06-16 12:00:20', NULL),
(56, '56', '1', NULL, '57', NULL, NULL, 1301.65, NULL, '225', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":225,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:43', '2020-06-16 12:00:20', NULL),
(57, '57', '1', NULL, '58', NULL, NULL, 1301.65, NULL, '224', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":224,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:43', '2020-06-16 12:00:20', NULL),
(58, '58', '1', NULL, '59', NULL, NULL, 1301.65, NULL, '223', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":223,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:43', '2020-06-16 12:00:20', NULL),
(59, '59', '1', NULL, '60', NULL, NULL, 1301.65, NULL, '222', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":222,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:44', '2020-06-16 12:00:20', NULL),
(60, '60', '1', NULL, '61', NULL, NULL, 1301.65, NULL, '221', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":221,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:44', '2020-06-16 12:00:20', NULL),
(61, '61', '1', NULL, '62', NULL, NULL, 1301.65, NULL, '220', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":220,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:44', '2020-06-16 12:00:20', NULL),
(62, '62', '1', NULL, '63', NULL, NULL, 1301.65, NULL, '219', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":219,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:44', '2020-06-16 12:00:20', NULL),
(63, '63', '1', NULL, '64', NULL, NULL, 1301.65, NULL, '218', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":218,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:44', '2020-06-16 12:00:20', NULL),
(64, '64', '1', NULL, '65', NULL, NULL, 1301.65, NULL, '217', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":217,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:44', '2020-06-16 12:00:20', NULL),
(65, '65', '1', NULL, '66', NULL, NULL, 1301.65, NULL, '216', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":216,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:44', '2020-06-16 12:00:20', NULL),
(66, '66', '1', NULL, '67', NULL, NULL, 1301.65, NULL, '215', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":215,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:44', '2020-06-16 12:00:20', NULL),
(67, '67', '1', NULL, '68', NULL, NULL, 1301.65, NULL, '214', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":214,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:44', '2020-06-16 12:00:20', NULL),
(68, '68', '1', NULL, '69', NULL, NULL, 1301.65, NULL, '213', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":213,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:45', '2020-06-16 12:00:20', NULL),
(69, '69', '1', NULL, '70', NULL, NULL, 1301.65, NULL, '212', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":212,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:45', '2020-06-16 12:00:20', NULL),
(70, '70', '1', NULL, '71', NULL, NULL, 1301.65, NULL, '211', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":211,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:45', '2020-06-16 12:00:20', NULL),
(71, '71', '1', NULL, '72', NULL, NULL, 1301.65, NULL, '210', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":210,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:45', '2020-06-16 12:00:20', NULL),
(72, '72', '1', NULL, '73', NULL, NULL, 1301.65, NULL, '209', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":209,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:45', '2020-06-16 12:00:20', NULL),
(73, '73', '1', NULL, '74', NULL, NULL, 1301.65, NULL, '208', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":208,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:45', '2020-06-16 12:00:20', NULL),
(74, '74', '1', NULL, '75', NULL, NULL, 1301.65, NULL, '207', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":207,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:46', '2020-06-16 12:00:20', NULL),
(75, '75', '1', NULL, '76', NULL, NULL, 1301.65, NULL, '206', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":206,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:46', '2020-06-16 12:00:20', NULL),
(76, '76', '1', NULL, '77', NULL, NULL, 1301.65, NULL, '205', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":205,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:46', '2020-06-16 12:00:20', NULL),
(77, '77', '1', NULL, '78', NULL, NULL, 1301.65, NULL, '204', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":204,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:46', '2020-06-16 12:00:20', NULL),
(78, '78', '1', NULL, '79', NULL, NULL, 1301.65, NULL, '203', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":203,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:46', '2020-06-16 12:00:20', NULL),
(79, '79', '1', NULL, '80', NULL, NULL, 1301.65, NULL, '202', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":202,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:47', '2020-06-16 12:00:20', NULL),
(80, '80', '1', NULL, '81', NULL, NULL, 1301.65, NULL, '201', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":201,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:47', '2020-06-16 12:00:20', NULL),
(81, '81', '1', NULL, '82', NULL, NULL, 1301.65, NULL, '200', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":200,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:47', '2020-06-16 12:00:19', NULL),
(82, '82', '1', NULL, '83', NULL, NULL, 1301.65, NULL, '199', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":199,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:47', '2020-06-16 12:00:19', NULL),
(83, '83', '1', NULL, '84', NULL, NULL, 1301.65, NULL, '198', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":198,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:47', '2020-06-16 12:00:19', NULL),
(84, '84', '1', NULL, '85', NULL, NULL, 1301.65, NULL, '197', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":197,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:47', '2020-06-16 12:00:19', NULL),
(85, '85', '1', NULL, '86', NULL, NULL, 1301.65, NULL, '196', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":196,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:47', '2020-06-16 12:00:19', NULL),
(86, '86', '1', NULL, '87', NULL, NULL, 1301.65, NULL, '195', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":195,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:47', '2020-06-16 12:00:19', NULL),
(87, '87', '1', NULL, '88', NULL, NULL, 1301.65, NULL, '194', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":194,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:48', '2020-06-16 12:00:19', NULL),
(88, '88', '1', NULL, '89', NULL, NULL, 1301.65, NULL, '193', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":193,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:48', '2020-06-16 12:00:19', NULL),
(89, '89', '1', NULL, '90', NULL, NULL, 1301.65, NULL, '192', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":192,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:48', '2020-06-16 12:00:19', NULL),
(90, '90', '1', NULL, '91', NULL, NULL, 1301.65, NULL, '191', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":191,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:48', '2020-06-16 12:00:19', NULL),
(91, '91', '1', NULL, '92', NULL, NULL, 1301.65, NULL, '190', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":190,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:49', '2020-06-16 12:00:19', NULL),
(92, '92', '1', NULL, '93', NULL, NULL, 1301.65, NULL, '189', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":189,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:49', '2020-06-16 12:00:19', NULL),
(93, '93', '1', NULL, '94', NULL, NULL, 1301.65, NULL, '188', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":188,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:49', '2020-06-16 12:00:19', NULL),
(94, '94', '1', NULL, '95', NULL, NULL, 1301.65, NULL, '187', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":187,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:49', '2020-06-16 12:00:19', NULL),
(95, '95', '1', NULL, '96', NULL, NULL, 1301.65, NULL, '186', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":186,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:49', '2020-06-16 12:00:19', NULL),
(96, '96', '1', NULL, '97', NULL, NULL, 1301.65, NULL, '185', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":185,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:49', '2020-06-16 12:00:19', NULL),
(97, '97', '1', NULL, '98', NULL, NULL, 1301.65, NULL, '184', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":184,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:49', '2020-06-16 12:00:19', NULL),
(98, '98', '1', NULL, '99', NULL, NULL, 1301.65, NULL, '183', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":183,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:50', '2020-06-16 12:00:19', NULL),
(99, '99', '1', NULL, '100', NULL, NULL, 1301.65, NULL, '182', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":182,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:50', '2020-06-16 12:00:19', NULL),
(100, '100', '1', NULL, '200', NULL, NULL, 1301.65, NULL, '181', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":181,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:56:50', '2020-06-16 12:00:19', NULL),
(101, '101', '1', NULL, '280', '102', 100.00, 100.00, 300.00, '1', '115', 100.00, 100.00, '2020-03-15', NULL, '{\"total_member\":116,\"total_point\":500,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:57:55', '2020-06-16 12:00:23', NULL),
(102, '102', '1', NULL, '408', '103', 100.00, NULL, 200.00, '1', '113', NULL, NULL, NULL, NULL, '{\"total_member\":114,\"total_point\":300,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:57:55', '2020-06-16 12:00:23', NULL),
(103, '103', '1', NULL, NULL, '104', 100.00, NULL, 100.00, NULL, '112', NULL, NULL, NULL, NULL, '{\"total_member\":112,\"total_point\":200,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:57:55', '2020-06-16 12:00:23', NULL),
(104, '104', '1', NULL, NULL, '105', 100.00, NULL, NULL, NULL, '111', NULL, NULL, NULL, NULL, '{\"total_member\":111,\"total_point\":100,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:57:55', '2020-03-17 12:00:20', NULL),
(105, '105', '1', NULL, NULL, '106', NULL, NULL, NULL, NULL, '110', NULL, NULL, NULL, NULL, '{\"total_member\":110,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:57:55', '2020-03-08 12:00:27', NULL),
(106, '106', '1', NULL, NULL, '107', NULL, NULL, NULL, NULL, '109', NULL, NULL, NULL, NULL, '{\"total_member\":109,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:57:55', '2020-03-08 12:00:27', NULL),
(107, '107', '1', NULL, NULL, '108', NULL, NULL, NULL, NULL, '108', NULL, NULL, NULL, NULL, '{\"total_member\":108,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:57:56', '2020-03-08 12:00:27', NULL),
(108, '108', '1', NULL, NULL, '109', NULL, NULL, NULL, NULL, '107', NULL, NULL, NULL, NULL, '{\"total_member\":107,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:57:56', '2020-03-08 12:00:27', NULL),
(109, '109', '1', NULL, NULL, '110', NULL, NULL, NULL, NULL, '106', NULL, NULL, NULL, NULL, '{\"total_member\":106,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:57:56', '2020-03-08 12:00:27', NULL),
(110, '110', '1', NULL, NULL, '111', NULL, NULL, NULL, NULL, '105', NULL, NULL, NULL, NULL, '{\"total_member\":105,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:57:56', '2020-03-08 12:00:27', NULL),
(111, '111', '1', NULL, NULL, '112', NULL, NULL, NULL, NULL, '104', NULL, NULL, NULL, NULL, '{\"total_member\":104,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:57:56', '2020-03-08 12:00:27', NULL),
(112, '112', '1', NULL, NULL, '113', NULL, NULL, NULL, NULL, '103', NULL, NULL, NULL, NULL, '{\"total_member\":103,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:57:56', '2020-03-08 12:00:27', NULL),
(113, '113', '1', NULL, NULL, '114', NULL, NULL, NULL, NULL, '102', NULL, NULL, NULL, NULL, '{\"total_member\":102,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:57:57', '2020-03-08 12:00:27', NULL),
(114, '114', '1', NULL, NULL, '115', NULL, NULL, NULL, NULL, '101', NULL, NULL, NULL, NULL, '{\"total_member\":101,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:57:57', '2020-03-08 12:00:27', NULL),
(115, '115', '1', NULL, NULL, '116', NULL, NULL, NULL, NULL, '100', NULL, NULL, NULL, NULL, '{\"total_member\":100,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:57:57', '2020-03-08 12:00:27', NULL),
(116, '116', '1', NULL, NULL, '117', NULL, NULL, NULL, NULL, '99', NULL, NULL, NULL, NULL, '{\"total_member\":99,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:57:57', '2020-03-08 12:00:27', NULL),
(117, '117', '1', NULL, NULL, '118', NULL, NULL, NULL, NULL, '98', NULL, NULL, NULL, NULL, '{\"total_member\":98,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:57:57', '2020-03-08 12:00:27', NULL),
(118, '118', '1', NULL, NULL, '119', NULL, NULL, NULL, NULL, '97', NULL, NULL, NULL, NULL, '{\"total_member\":97,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:57:57', '2020-03-08 12:00:27', NULL),
(119, '119', '1', NULL, NULL, '120', NULL, NULL, NULL, NULL, '96', NULL, NULL, NULL, NULL, '{\"total_member\":96,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:57:57', '2020-03-08 12:00:27', NULL),
(120, '120', '1', NULL, NULL, '121', NULL, NULL, NULL, NULL, '95', NULL, NULL, NULL, NULL, '{\"total_member\":95,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:57:57', '2020-03-08 12:00:27', NULL),
(121, '121', '1', NULL, NULL, '122', NULL, NULL, NULL, NULL, '94', NULL, NULL, NULL, NULL, '{\"total_member\":94,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:57:57', '2020-03-08 12:00:27', NULL),
(122, '122', '1', NULL, NULL, '123', NULL, NULL, NULL, NULL, '93', NULL, NULL, NULL, NULL, '{\"total_member\":93,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:57:58', '2020-03-08 12:00:27', NULL),
(123, '123', '1', NULL, NULL, '124', NULL, NULL, NULL, NULL, '92', NULL, NULL, NULL, NULL, '{\"total_member\":92,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:57:58', '2020-03-08 12:00:27', NULL),
(124, '124', '1', NULL, NULL, '125', NULL, NULL, NULL, NULL, '91', NULL, NULL, NULL, NULL, '{\"total_member\":91,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:57:58', '2020-03-08 12:00:27', NULL),
(125, '125', '1', NULL, NULL, '126', NULL, NULL, NULL, NULL, '90', NULL, NULL, NULL, NULL, '{\"total_member\":90,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:57:58', '2020-03-08 12:00:27', NULL),
(126, '126', '1', NULL, NULL, '127', NULL, NULL, NULL, NULL, '89', NULL, NULL, NULL, NULL, '{\"total_member\":89,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:57:58', '2020-03-08 12:00:27', NULL),
(127, '127', '1', NULL, NULL, '128', NULL, NULL, NULL, NULL, '88', NULL, NULL, NULL, NULL, '{\"total_member\":88,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:57:58', '2020-03-08 12:00:27', NULL),
(128, '128', '1', NULL, NULL, '129', NULL, NULL, NULL, NULL, '87', NULL, NULL, NULL, NULL, '{\"total_member\":87,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:57:58', '2020-03-08 12:00:27', NULL),
(129, '129', '1', NULL, NULL, '130', NULL, NULL, NULL, NULL, '86', NULL, NULL, NULL, NULL, '{\"total_member\":86,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:57:59', '2020-03-08 12:00:27', NULL),
(130, '130', '1', NULL, NULL, '131', NULL, NULL, NULL, NULL, '85', NULL, NULL, NULL, NULL, '{\"total_member\":85,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:57:59', '2020-03-08 12:00:27', NULL),
(131, '131', '1', NULL, NULL, '132', NULL, NULL, NULL, NULL, '84', NULL, NULL, NULL, NULL, '{\"total_member\":84,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:57:59', '2020-03-08 12:00:27', NULL),
(132, '132', '1', NULL, NULL, '133', NULL, NULL, NULL, NULL, '83', NULL, NULL, NULL, NULL, '{\"total_member\":83,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:57:59', '2020-03-08 12:00:27', NULL);
INSERT INTO `member_trees` (`id`, `user_id`, `sponsor_id`, `designation`, `l_id`, `r_id`, `p_point`, `l_point`, `r_point`, `l_member`, `r_member`, `total_matching`, `paid_matching`, `last_matching`, `last_incentive`, `extra_data`, `incentive_start_from`, `is_premium`, `created_at`, `updated_at`, `deleted_at`) VALUES
(133, '133', '1', NULL, NULL, '134', NULL, NULL, NULL, NULL, '82', NULL, NULL, NULL, NULL, '{\"total_member\":82,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:57:59', '2020-03-08 12:00:27', NULL),
(134, '134', '1', NULL, NULL, '135', NULL, NULL, NULL, NULL, '81', NULL, NULL, NULL, NULL, '{\"total_member\":81,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:00', '2020-03-08 12:00:27', NULL),
(135, '135', '1', NULL, NULL, '136', NULL, NULL, NULL, NULL, '80', NULL, NULL, NULL, NULL, '{\"total_member\":80,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:00', '2020-03-08 12:00:27', NULL),
(136, '136', '1', NULL, NULL, '137', NULL, NULL, NULL, NULL, '79', NULL, NULL, NULL, NULL, '{\"total_member\":79,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:00', '2020-03-08 12:00:26', NULL),
(137, '137', '1', NULL, NULL, '138', NULL, NULL, NULL, NULL, '78', NULL, NULL, NULL, NULL, '{\"total_member\":78,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:00', '2020-03-08 12:00:26', NULL),
(138, '138', '1', NULL, NULL, '139', NULL, NULL, NULL, NULL, '77', NULL, NULL, NULL, NULL, '{\"total_member\":77,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:00', '2020-03-08 12:00:26', NULL),
(139, '139', '1', NULL, NULL, '140', NULL, NULL, NULL, NULL, '76', NULL, NULL, NULL, NULL, '{\"total_member\":76,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:01', '2020-03-08 12:00:26', NULL),
(140, '140', '1', NULL, NULL, '141', NULL, NULL, NULL, NULL, '75', NULL, NULL, NULL, NULL, '{\"total_member\":75,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:01', '2020-03-08 12:00:26', NULL),
(141, '141', '1', NULL, NULL, '142', NULL, NULL, NULL, NULL, '74', NULL, NULL, NULL, NULL, '{\"total_member\":74,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:01', '2020-03-08 12:00:26', NULL),
(142, '142', '1', NULL, NULL, '143', NULL, NULL, NULL, NULL, '73', NULL, NULL, NULL, NULL, '{\"total_member\":73,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:01', '2020-03-08 12:00:26', NULL),
(143, '143', '1', NULL, NULL, '144', NULL, NULL, NULL, NULL, '72', NULL, NULL, NULL, NULL, '{\"total_member\":72,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:01', '2020-03-08 12:00:26', NULL),
(144, '144', '1', NULL, NULL, '145', NULL, NULL, NULL, NULL, '71', NULL, NULL, NULL, NULL, '{\"total_member\":71,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:01', '2020-03-08 12:00:26', NULL),
(145, '145', '1', NULL, NULL, '146', NULL, NULL, NULL, NULL, '70', NULL, NULL, NULL, NULL, '{\"total_member\":70,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:02', '2020-03-08 12:00:26', NULL),
(146, '146', '1', NULL, NULL, '147', NULL, NULL, NULL, NULL, '69', NULL, NULL, NULL, NULL, '{\"total_member\":69,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:02', '2020-03-08 12:00:26', NULL),
(147, '147', '1', NULL, NULL, '148', NULL, NULL, NULL, NULL, '68', NULL, NULL, NULL, NULL, '{\"total_member\":68,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:02', '2020-03-08 12:00:26', NULL),
(148, '148', '1', NULL, NULL, '149', NULL, NULL, NULL, NULL, '67', NULL, NULL, NULL, NULL, '{\"total_member\":67,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:02', '2020-03-08 12:00:26', NULL),
(149, '149', '1', NULL, NULL, '150', NULL, NULL, NULL, NULL, '66', NULL, NULL, NULL, NULL, '{\"total_member\":66,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:02', '2020-03-08 12:00:26', NULL),
(150, '150', '1', NULL, NULL, '151', NULL, NULL, NULL, NULL, '65', NULL, NULL, NULL, NULL, '{\"total_member\":65,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:02', '2020-03-08 12:00:26', NULL),
(151, '151', '1', NULL, NULL, '152', NULL, NULL, NULL, NULL, '64', NULL, NULL, NULL, NULL, '{\"total_member\":64,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:02', '2020-03-08 12:00:26', NULL),
(152, '152', '1', NULL, NULL, '153', NULL, NULL, NULL, NULL, '63', NULL, NULL, NULL, NULL, '{\"total_member\":63,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:03', '2020-03-08 12:00:26', NULL),
(153, '153', '1', NULL, NULL, '154', NULL, NULL, NULL, NULL, '62', NULL, NULL, NULL, NULL, '{\"total_member\":62,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:03', '2020-03-08 12:00:26', NULL),
(154, '154', '1', NULL, NULL, '155', NULL, NULL, NULL, NULL, '61', NULL, NULL, NULL, NULL, '{\"total_member\":61,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:03', '2020-03-08 12:00:26', NULL),
(155, '155', '1', NULL, NULL, '156', NULL, NULL, NULL, NULL, '60', NULL, NULL, NULL, NULL, '{\"total_member\":60,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:03', '2020-03-08 12:00:26', NULL),
(156, '156', '1', NULL, NULL, '157', NULL, NULL, NULL, NULL, '59', NULL, NULL, NULL, NULL, '{\"total_member\":59,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:03', '2020-03-08 12:00:26', NULL),
(157, '157', '1', NULL, NULL, '158', NULL, NULL, NULL, NULL, '58', NULL, NULL, NULL, NULL, '{\"total_member\":58,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:04', '2020-03-08 12:00:26', NULL),
(158, '158', '1', NULL, NULL, '159', NULL, NULL, NULL, NULL, '57', NULL, NULL, NULL, NULL, '{\"total_member\":57,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:04', '2020-03-08 12:00:26', NULL),
(159, '159', '1', NULL, NULL, '160', NULL, NULL, NULL, NULL, '56', NULL, NULL, NULL, NULL, '{\"total_member\":56,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:04', '2020-03-08 12:00:26', NULL),
(160, '160', '1', NULL, NULL, '161', NULL, NULL, NULL, NULL, '55', NULL, NULL, NULL, NULL, '{\"total_member\":55,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:04', '2020-03-08 12:00:26', NULL),
(161, '161', '1', NULL, NULL, '162', NULL, NULL, NULL, NULL, '54', NULL, NULL, NULL, NULL, '{\"total_member\":54,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:04', '2020-03-08 12:00:26', NULL),
(162, '162', '1', NULL, NULL, '163', NULL, NULL, NULL, NULL, '53', NULL, NULL, NULL, NULL, '{\"total_member\":53,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:05', '2020-03-08 12:00:26', NULL),
(163, '163', '1', NULL, NULL, '164', NULL, NULL, NULL, NULL, '52', NULL, NULL, NULL, NULL, '{\"total_member\":52,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:05', '2020-03-08 12:00:26', NULL),
(164, '164', '1', NULL, NULL, '165', NULL, NULL, NULL, NULL, '51', NULL, NULL, NULL, NULL, '{\"total_member\":51,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:05', '2020-03-08 12:00:26', NULL),
(165, '165', '1', NULL, NULL, '166', NULL, NULL, NULL, NULL, '50', NULL, NULL, NULL, NULL, '{\"total_member\":50,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:05', '2020-03-08 12:00:26', NULL),
(166, '166', '1', NULL, NULL, '167', NULL, NULL, NULL, NULL, '49', NULL, NULL, NULL, NULL, '{\"total_member\":49,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:05', '2020-03-08 12:00:26', NULL),
(167, '167', '1', NULL, NULL, '168', NULL, NULL, NULL, NULL, '48', NULL, NULL, NULL, NULL, '{\"total_member\":48,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:05', '2020-03-08 12:00:25', NULL),
(168, '168', '1', NULL, NULL, '169', NULL, NULL, NULL, NULL, '47', NULL, NULL, NULL, NULL, '{\"total_member\":47,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:05', '2020-03-08 12:00:25', NULL),
(169, '169', '1', NULL, NULL, '170', NULL, NULL, NULL, NULL, '46', NULL, NULL, NULL, NULL, '{\"total_member\":46,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:05', '2020-03-08 12:00:25', NULL),
(170, '170', '1', NULL, NULL, '171', NULL, NULL, NULL, NULL, '45', NULL, NULL, NULL, NULL, '{\"total_member\":45,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:06', '2020-03-08 12:00:25', NULL),
(171, '171', '1', NULL, NULL, '172', NULL, NULL, NULL, NULL, '44', NULL, NULL, NULL, NULL, '{\"total_member\":44,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:06', '2020-03-08 12:00:25', NULL),
(172, '172', '1', NULL, NULL, '173', NULL, NULL, NULL, NULL, '43', NULL, NULL, NULL, NULL, '{\"total_member\":43,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:06', '2020-03-08 12:00:25', NULL),
(173, '173', '1', NULL, NULL, '174', NULL, NULL, NULL, NULL, '42', NULL, NULL, NULL, NULL, '{\"total_member\":42,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:06', '2020-03-08 12:00:25', NULL),
(174, '174', '1', NULL, NULL, '175', NULL, NULL, NULL, NULL, '41', NULL, NULL, NULL, NULL, '{\"total_member\":41,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:06', '2020-03-08 12:00:25', NULL),
(175, '175', '1', NULL, NULL, '176', NULL, NULL, NULL, NULL, '40', NULL, NULL, NULL, NULL, '{\"total_member\":40,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:06', '2020-03-08 12:00:25', NULL),
(176, '176', '1', NULL, NULL, '177', NULL, NULL, NULL, NULL, '39', NULL, NULL, NULL, NULL, '{\"total_member\":39,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:07', '2020-03-08 12:00:25', NULL),
(177, '177', '1', NULL, NULL, '178', NULL, NULL, NULL, NULL, '38', NULL, NULL, NULL, NULL, '{\"total_member\":38,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:07', '2020-03-08 12:00:25', NULL),
(178, '178', '1', NULL, NULL, '179', NULL, NULL, NULL, NULL, '37', NULL, NULL, NULL, NULL, '{\"total_member\":37,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:07', '2020-03-08 12:00:25', NULL),
(179, '179', '1', NULL, NULL, '180', NULL, NULL, NULL, NULL, '36', NULL, NULL, NULL, NULL, '{\"total_member\":36,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:07', '2020-03-08 12:00:25', NULL),
(180, '180', '1', NULL, NULL, '181', NULL, NULL, NULL, NULL, '35', NULL, NULL, NULL, NULL, '{\"total_member\":35,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:07', '2020-03-08 12:00:25', NULL),
(181, '181', '1', NULL, NULL, '182', NULL, NULL, NULL, NULL, '34', NULL, NULL, NULL, NULL, '{\"total_member\":34,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:07', '2020-03-08 12:00:25', NULL),
(182, '182', '1', NULL, NULL, '183', NULL, NULL, NULL, NULL, '33', NULL, NULL, NULL, NULL, '{\"total_member\":33,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:07', '2020-03-08 12:00:25', NULL),
(183, '183', '1', NULL, NULL, '184', NULL, NULL, NULL, NULL, '32', NULL, NULL, NULL, NULL, '{\"total_member\":32,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:08', '2020-03-08 12:00:25', NULL),
(184, '184', '1', NULL, NULL, '185', NULL, NULL, NULL, NULL, '31', NULL, NULL, NULL, NULL, '{\"total_member\":31,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:08', '2020-03-08 12:00:25', NULL),
(185, '185', '1', NULL, NULL, '186', NULL, NULL, NULL, NULL, '30', NULL, NULL, NULL, NULL, '{\"total_member\":30,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:08', '2020-03-08 12:00:25', NULL),
(186, '186', '1', NULL, NULL, '187', NULL, NULL, NULL, NULL, '29', NULL, NULL, NULL, NULL, '{\"total_member\":29,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:08', '2020-03-08 12:00:24', NULL),
(187, '187', '1', NULL, NULL, '188', NULL, NULL, NULL, NULL, '28', NULL, NULL, NULL, NULL, '{\"total_member\":28,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:08', '2020-03-08 12:00:24', NULL),
(188, '188', '1', NULL, NULL, '189', NULL, NULL, NULL, NULL, '27', NULL, NULL, NULL, NULL, '{\"total_member\":27,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:08', '2020-03-08 12:00:24', NULL),
(189, '189', '1', NULL, NULL, '190', NULL, NULL, NULL, NULL, '26', NULL, NULL, NULL, NULL, '{\"total_member\":26,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:08', '2020-03-08 12:00:24', NULL),
(190, '190', '1', NULL, NULL, '191', NULL, NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, '{\"total_member\":25,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:08', '2020-03-08 12:00:24', NULL),
(191, '191', '1', NULL, NULL, '192', NULL, NULL, NULL, NULL, '24', NULL, NULL, NULL, NULL, '{\"total_member\":24,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:09', '2020-03-08 12:00:24', NULL),
(192, '192', '1', NULL, NULL, '193', NULL, NULL, NULL, NULL, '23', NULL, NULL, NULL, NULL, '{\"total_member\":23,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:09', '2020-03-08 12:00:24', NULL),
(193, '193', '1', NULL, NULL, '194', NULL, NULL, NULL, NULL, '22', NULL, NULL, NULL, NULL, '{\"total_member\":22,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:09', '2020-03-08 12:00:24', NULL),
(194, '194', '1', NULL, NULL, '195', NULL, NULL, NULL, NULL, '21', NULL, NULL, NULL, NULL, '{\"total_member\":21,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:09', '2020-03-08 12:00:24', NULL),
(195, '195', '1', NULL, NULL, '196', NULL, NULL, NULL, NULL, '20', NULL, NULL, NULL, NULL, '{\"total_member\":20,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:09', '2020-03-08 12:00:24', NULL),
(196, '196', '1', NULL, NULL, '197', NULL, NULL, NULL, NULL, '19', NULL, NULL, NULL, NULL, '{\"total_member\":19,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:09', '2020-03-08 12:00:24', NULL),
(197, '197', '1', NULL, NULL, '198', NULL, NULL, NULL, NULL, '18', NULL, NULL, NULL, NULL, '{\"total_member\":18,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:09', '2020-03-08 12:00:24', NULL),
(198, '198', '1', NULL, NULL, '199', NULL, NULL, NULL, NULL, '17', NULL, NULL, NULL, NULL, '{\"total_member\":17,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:09', '2020-03-08 12:00:24', NULL),
(199, '199', '1', NULL, '222', NULL, NULL, NULL, NULL, '16', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":16,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-05 18:58:09', '2020-03-08 12:00:24', NULL),
(200, '200', '1', NULL, '201', '211', NULL, 1260.30, 41.35, '170', '10', 41.35, 41.35, '2020-06-16', NULL, '{\"total_member\":180,\"total_point\":1301.649999999999863575794734060764312744140625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 03:23:19', '2020-06-16 12:00:19', NULL),
(201, '201', '200', NULL, '202', NULL, 30.00, 1230.30, NULL, '169', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":169,\"total_point\":1260.299999999999954525264911353588104248046875,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 03:51:21', '2020-06-16 12:00:18', NULL),
(202, '202', '200', NULL, '203', NULL, NULL, 1230.30, NULL, '168', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":168,\"total_point\":1230.299999999999954525264911353588104248046875,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 03:52:05', '2020-06-16 12:00:18', NULL),
(203, '203', '200', NULL, '204', NULL, NULL, 1230.30, NULL, '167', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":167,\"total_point\":1230.299999999999954525264911353588104248046875,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 03:52:52', '2020-06-16 12:00:18', NULL),
(204, '204', '200', NULL, '205', NULL, NULL, 1230.30, NULL, '166', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":166,\"total_point\":1230.299999999999954525264911353588104248046875,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 03:53:35', '2020-06-16 12:00:18', NULL),
(205, '205', '200', NULL, '206', NULL, NULL, 1230.30, NULL, '165', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":165,\"total_point\":1230.299999999999954525264911353588104248046875,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 03:54:19', '2020-06-16 12:00:18', NULL),
(206, '206', '200', NULL, '207', '313', NULL, 1080.30, 150.00, '93', '71', 150.00, 150.00, '2020-06-10', NULL, '{\"total_member\":164,\"total_point\":1230.299999999999954525264911353588104248046875,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 03:54:55', '2020-06-16 12:00:18', NULL),
(207, '207', '200', NULL, '208', NULL, NULL, 1080.30, NULL, '92', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":92,\"total_point\":1080.299999999999954525264911353588104248046875,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 03:55:33', '2020-06-16 12:00:17', NULL),
(208, '208', '200', NULL, '209', NULL, NULL, 1080.30, NULL, '91', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":91,\"total_point\":1080.299999999999954525264911353588104248046875,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 03:56:25', '2020-06-16 12:00:17', NULL),
(209, '209', '200', NULL, '210', NULL, NULL, 1080.30, NULL, '90', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":90,\"total_point\":1080.299999999999954525264911353588104248046875,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 03:57:09', '2020-06-16 12:00:17', NULL),
(210, '210', '200', NULL, '221', '265', NULL, 1080.30, NULL, '63', '26', NULL, NULL, NULL, NULL, '{\"total_member\":89,\"total_point\":1080.299999999999954525264911353588104248046875,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 03:57:55', '2020-06-16 12:00:16', NULL),
(211, '211', '200', NULL, '212', NULL, 40.00, 1.35, NULL, '9', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":9,\"total_point\":41.35000000000000142108547152020037174224853515625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 03:59:38', '2020-06-16 12:00:19', NULL),
(212, '212', '200', NULL, '213', NULL, NULL, 1.35, NULL, '8', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":8,\"total_point\":1.350000000000000088817841970012523233890533447265625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 04:00:28', '2020-06-16 12:00:18', NULL),
(213, '213', '200', NULL, '214', NULL, NULL, 1.35, NULL, '7', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":7,\"total_point\":1.350000000000000088817841970012523233890533447265625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 04:01:28', '2020-06-16 12:00:18', NULL),
(214, '214', '200', NULL, '215', NULL, NULL, 1.35, NULL, '6', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":6,\"total_point\":1.350000000000000088817841970012523233890533447265625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 04:02:06', '2020-06-16 12:00:18', NULL),
(215, '215', '200', NULL, '216', NULL, NULL, 1.35, NULL, '5', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":5,\"total_point\":1.350000000000000088817841970012523233890533447265625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 04:02:48', '2020-06-16 12:00:18', NULL),
(216, '216', '200', NULL, '217', NULL, NULL, 1.35, NULL, '4', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":4,\"total_point\":1.350000000000000088817841970012523233890533447265625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 04:03:53', '2020-06-16 12:00:18', NULL),
(217, '217', '200', NULL, '218', NULL, NULL, 1.35, NULL, '3', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":3,\"total_point\":1.350000000000000088817841970012523233890533447265625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 04:05:26', '2020-06-16 12:00:18', NULL),
(218, '218', '200', NULL, '219', NULL, NULL, 1.35, NULL, '2', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":2,\"total_point\":1.350000000000000088817841970012523233890533447265625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 04:06:02', '2020-06-16 12:00:18', NULL),
(219, '219', '200', NULL, '220', NULL, NULL, 1.35, NULL, '1', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":1,\"total_point\":1.350000000000000088817841970012523233890533447265625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 04:06:46', '2020-06-16 12:00:18', NULL),
(220, '220', '200', NULL, NULL, NULL, 1.35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"total_member\":0,\"total_point\":1.350000000000000088817841970012523233890533447265625,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 04:07:35', '2020-06-16 12:00:18', NULL),
(221, '221', '1', NULL, '235', NULL, NULL, 1080.30, NULL, '62', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":62,\"total_point\":1080.299999999999954525264911353588104248046875,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 05:05:40', '2020-06-16 12:00:16', NULL),
(222, '222', '1', NULL, '223', NULL, NULL, NULL, NULL, '15', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":15,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 06:04:51', '2020-03-08 12:00:24', NULL),
(223, '223', '1', NULL, '224', '225', NULL, NULL, NULL, '6', '8', NULL, NULL, NULL, NULL, '{\"total_member\":14,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 06:14:43', '2020-03-08 12:00:24', NULL),
(224, '224', '1', NULL, '230', NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":5,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 06:16:46', '2020-03-08 12:00:24', NULL),
(225, '225', '1', NULL, '226', NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":7,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 06:17:34', '2020-03-08 12:00:24', NULL),
(226, '226', '1', NULL, '227', NULL, NULL, NULL, NULL, '6', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":6,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 06:19:22', '2020-03-08 12:00:24', NULL),
(227, '227', '1', NULL, '229', NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":5,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 06:21:38', '2020-03-08 12:00:24', NULL),
(228, '229', '227', NULL, '238', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":4,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 06:26:28', '2020-03-08 12:00:24', NULL),
(229, '230', '223', NULL, '231', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":4,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 06:51:23', '2020-03-08 12:00:24', NULL),
(230, '231', '223', NULL, '232', NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":3,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 06:58:17', '2020-03-08 12:00:24', NULL),
(231, '232', '223', NULL, '233', NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":2,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 07:04:28', '2020-03-08 12:00:24', NULL),
(232, '233', '223', NULL, '234', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":1,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 07:06:18', '2020-03-08 12:00:24', NULL),
(233, '234', '223', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-06 07:08:21', '2020-01-06 07:08:21', NULL),
(234, '235', '1', NULL, '236', NULL, NULL, 1080.30, NULL, '61', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":61,\"total_point\":1080.299999999999954525264911353588104248046875,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 07:22:26', '2020-06-16 12:00:16', NULL),
(235, '236', '1', NULL, '237', NULL, NULL, 1080.30, NULL, '60', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":60,\"total_point\":1080.299999999999954525264911353588104248046875,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-06 07:25:29', '2020-06-16 12:00:16', NULL),
(236, '237', '200', NULL, '243', NULL, NULL, 1080.30, NULL, '59', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":59,\"total_point\":1080.299999999999954525264911353588104248046875,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-12 12:11:57', '2020-06-16 12:00:16', NULL),
(237, '238', '1', NULL, '239', NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":3,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-25 06:30:02', '2020-03-08 12:00:24', NULL),
(238, '239', '1', NULL, '240', NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":2,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-25 06:32:17', '2020-03-08 12:00:24', NULL),
(239, '240', '239', NULL, '241', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":1,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-25 06:35:44', '2020-03-08 12:00:24', NULL),
(240, '241', '239', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-25 06:40:45', '2020-01-25 06:40:45', NULL),
(241, '242', '1', NULL, '348', '349', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '{\"total_member\":2,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-01-28 16:39:36', '2020-04-22 12:00:16', NULL),
(242, '243', '200', NULL, '244', '357', 50.00, 1030.30, NULL, '57', '1', NULL, NULL, NULL, NULL, '{\"total_member\":58,\"total_point\":1080.299999999999954525264911353588104248046875,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-02-03 06:34:20', '2020-06-16 12:00:16', NULL),
(243, '244', '243', NULL, '245', '289', 50.00, 980.30, NULL, '53', '3', NULL, NULL, NULL, NULL, '{\"total_member\":56,\"total_point\":1030.299999999999954525264911353588104248046875,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-02-03 06:38:24', '2020-06-16 12:00:16', NULL),
(244, '245', '1', NULL, '246', NULL, NULL, 980.30, NULL, '52', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":52,\"total_point\":980.299999999999954525264911353588104248046875,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-02-18 16:35:04', '2020-06-16 12:00:16', NULL),
(245, '246', '1', NULL, '247', NULL, NULL, 980.30, NULL, '51', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":51,\"total_point\":980.299999999999954525264911353588104248046875,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-02-20 05:12:36', '2020-06-16 12:00:16', NULL),
(246, '247', '1', NULL, '252', '261', 50.00, 511.80, 418.50, '32', '18', 418.50, 418.50, '2020-06-16', NULL, '{\"total_member\":50,\"total_point\":980.299999999999954525264911353588104248046875,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-02-20 06:35:00', '2020-06-16 12:00:15', NULL),
(247, '248', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-20 11:13:20', '2020-02-20 11:13:20', NULL),
(248, '249', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-21 16:42:59', '2020-02-21 16:42:59', NULL),
(249, '250', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-21 16:58:01', '2020-02-21 16:58:01', NULL),
(250, '251', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-22 13:28:29', '2020-02-22 13:28:29', NULL),
(251, '252', '244', NULL, '253', '290', 50.00, 461.80, NULL, '29', '2', NULL, NULL, NULL, NULL, '{\"total_member\":31,\"total_point\":511.80000000000001136868377216160297393798828125,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-02-28 05:41:23', '2020-06-16 12:00:15', NULL),
(252, '253', '252', NULL, '254', NULL, 50.00, 411.80, NULL, '28', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":28,\"total_point\":461.80000000000001136868377216160297393798828125,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-02-28 05:49:26', '2020-06-16 12:00:15', NULL),
(253, '254', '253', NULL, '255', NULL, 50.00, 361.80, NULL, '27', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":27,\"total_point\":411.80000000000001136868377216160297393798828125,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-02-28 05:54:12', '2020-06-16 12:00:15', NULL),
(254, '255', '1', NULL, '256', '258', NULL, 100.00, 261.80, '2', '24', 100.00, 100.00, '2020-03-13', NULL, '{\"total_member\":26,\"total_point\":361.80000000000001136868377216160297393798828125,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-03 09:52:02', '2020-06-16 12:00:15', NULL),
(255, '256', '255', NULL, '257', NULL, 50.00, 50.00, NULL, '1', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":1,\"total_point\":100,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-03 09:56:49', '2020-06-16 12:00:14', NULL),
(256, '257', '255', NULL, NULL, NULL, 50.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"total_member\":0,\"total_point\":50,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-03 09:58:56', '2020-03-08 12:00:19', NULL),
(257, '258', '252', NULL, '259', NULL, NULL, 261.80, NULL, '23', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":23,\"total_point\":261.80000000000001136868377216160297393798828125,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-05 23:49:14', '2020-06-16 12:00:15', NULL),
(258, '259', '243', NULL, '260', '269', 50.00, 200.80, 11.00, '14', '8', 11.00, 11.00, '2020-06-12', NULL, '{\"total_member\":22,\"total_point\":261.80000000000001136868377216160297393798828125,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-06 21:45:10', '2020-06-16 12:00:15', NULL),
(259, '260', '244', NULL, '262', NULL, 50.00, 150.80, NULL, '13', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":13,\"total_point\":200.80000000000001136868377216160297393798828125,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-06 21:50:11', '2020-06-16 12:00:14', NULL),
(260, '261', '247', NULL, '272', NULL, 4.00, 414.50, NULL, '17', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":17,\"total_point\":418.5,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-06 22:24:58', '2020-06-16 12:00:15', NULL),
(261, '262', '247', NULL, '263', '285', 50.00, 100.80, NULL, '10', '2', NULL, NULL, NULL, NULL, '{\"total_member\":12,\"total_point\":150.80000000000001136868377216160297393798828125,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-09 03:39:27', '2020-06-16 12:00:14', NULL),
(262, '263', '253', NULL, '264', NULL, NULL, 100.80, NULL, '9', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":9,\"total_point\":100.7999999999999971578290569595992565155029296875,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-09 03:40:46', '2020-06-16 12:00:14', NULL),
(263, '264', '253', NULL, '267', '295', 50.80, 50.00, NULL, '7', '1', NULL, NULL, NULL, NULL, '{\"total_member\":8,\"total_point\":100.7999999999999971578290569595992565155029296875,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-09 03:42:16', '2020-06-16 12:00:14', NULL),
(264, '265', '210', NULL, '266', '288', NULL, NULL, NULL, '15', '10', NULL, NULL, NULL, NULL, '{\"total_member\":25,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-11 01:55:19', '2020-05-30 12:00:18', NULL),
(265, '266', '265', NULL, '273', NULL, NULL, NULL, NULL, '14', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":14,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-11 08:58:47', '2020-05-30 12:00:18', NULL),
(266, '267', '252', NULL, '268', NULL, 50.00, NULL, NULL, '6', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":6,\"total_point\":50,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-12 23:26:43', '2020-03-22 12:00:13', NULL),
(267, '268', '263', NULL, '271', NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":5,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-12 23:29:25', '2020-03-22 12:00:13', NULL),
(268, '269', '259', NULL, '270', NULL, NULL, 11.00, NULL, '7', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":7,\"total_point\":11,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-12 23:38:49', '2020-06-16 12:00:15', NULL),
(269, '270', '259', NULL, '281', NULL, NULL, 11.00, NULL, '6', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":6,\"total_point\":11,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-12 23:40:40', '2020-06-16 12:00:15', NULL),
(270, '271', '264', NULL, '278', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":4,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-12 23:44:08', '2020-03-22 12:00:13', NULL),
(271, '272', '247', NULL, '282', NULL, NULL, 414.50, NULL, '16', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":16,\"total_point\":414.5,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-13 07:27:20', '2020-06-16 12:00:15', NULL),
(272, '273', '265', NULL, '274', '359', NULL, NULL, NULL, '11', '2', NULL, NULL, NULL, NULL, '{\"total_member\":13,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-14 00:52:47', '2020-05-30 12:00:18', NULL),
(273, '274', '273', NULL, '275', '304', NULL, NULL, NULL, '9', '1', NULL, NULL, NULL, NULL, '{\"total_member\":10,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-14 00:59:12', '2020-03-29 12:00:16', NULL),
(274, '275', '265', NULL, '276', '277', NULL, NULL, NULL, '5', '3', NULL, NULL, NULL, NULL, '{\"total_member\":8,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-14 01:14:30', '2020-03-29 12:00:16', NULL),
(275, '276', '274', NULL, '299', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":4,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-14 01:19:34', '2020-03-29 12:00:16', NULL);
INSERT INTO `member_trees` (`id`, `user_id`, `sponsor_id`, `designation`, `l_id`, `r_id`, `p_point`, `l_point`, `r_point`, `l_member`, `r_member`, `total_matching`, `paid_matching`, `last_matching`, `last_incentive`, `extra_data`, `incentive_start_from`, `is_premium`, `created_at`, `updated_at`, `deleted_at`) VALUES
(276, '277', '265', NULL, '297', NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":2,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-14 01:25:17', '2020-03-23 12:00:14', NULL),
(277, '278', '1', NULL, '279', '293', NULL, NULL, NULL, '1', '2', NULL, NULL, NULL, NULL, '{\"total_member\":3,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-15 06:10:27', '2020-03-22 12:00:13', NULL),
(278, '279', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-15 06:12:59', '2020-03-15 06:12:59', NULL),
(279, '280', '1', NULL, NULL, NULL, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"total_member\":0,\"total_point\":100,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-15 06:42:29', '2020-03-15 12:00:15', NULL),
(280, '281', '259', NULL, '287', '356', 11.00, NULL, NULL, '4', '1', NULL, NULL, NULL, NULL, '{\"total_member\":5,\"total_point\":11,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-17 22:06:24', '2020-06-12 12:00:17', NULL),
(281, '282', '247', NULL, '284', '354', 50.35, 263.45, 100.70, '10', '5', 100.70, 100.70, '2020-06-11', NULL, '{\"total_member\":15,\"total_point\":414.5,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-18 06:05:29', '2020-06-16 12:00:15', NULL),
(282, '284', '247', NULL, '361', '368', 50.45, 200.00, 13.00, '5', '4', 13.00, 13.00, '2020-06-15', NULL, '{\"total_member\":9,\"total_point\":263.44999999999998863131622783839702606201171875,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-18 06:09:27', '2020-06-16 12:00:15', NULL),
(283, '285', '262', NULL, '286', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":1,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-18 06:27:05', '2020-03-18 12:00:16', NULL),
(284, '286', '262', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-18 06:40:01', '2020-03-18 06:40:01', NULL),
(285, '287', '259', NULL, '352', NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":3,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-18 22:47:28', '2020-05-10 12:00:14', NULL),
(286, '288', '265', NULL, '300', NULL, NULL, NULL, NULL, '9', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":9,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-19 21:35:13', '2020-04-03 12:00:20', NULL),
(287, '289', '244', NULL, '291', NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":2,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-20 06:28:20', '2020-03-21 12:00:14', NULL),
(288, '290', '252', NULL, '296', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":1,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-20 07:04:31', '2020-03-22 12:00:13', NULL),
(289, '291', '244', NULL, '292', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":1,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-20 23:11:33', '2020-03-21 12:00:14', NULL),
(290, '292', '244', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-20 23:19:56', '2020-03-20 23:19:56', NULL),
(291, '293', '1', NULL, '294', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":1,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-21 23:33:53', '2020-03-22 12:00:13', NULL),
(292, '294', '293', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-21 23:36:27', '2020-03-21 23:36:27', NULL),
(293, '295', '264', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-22 01:09:58', '2020-03-22 01:09:58', NULL),
(294, '296', '252', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-22 05:54:05', '2020-03-22 05:54:05', NULL),
(295, '297', '275', NULL, '298', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":1,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-22 22:07:59', '2020-03-23 12:00:14', NULL),
(296, '298', '275', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-22 22:11:29', '2020-03-22 22:11:29', NULL),
(297, '299', '275', NULL, '302', '311', NULL, NULL, NULL, '2', '1', NULL, NULL, NULL, NULL, '{\"total_member\":3,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-24 00:11:35', '2020-03-29 12:00:16', NULL),
(298, '300', '210', NULL, '301', NULL, NULL, NULL, NULL, '8', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":8,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-25 04:40:53', '2020-04-03 12:00:20', NULL),
(299, '301', '300', NULL, '303', NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":7,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-25 04:43:56', '2020-04-03 12:00:20', NULL),
(300, '302', '275', NULL, '308', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":1,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-25 04:46:53', '2020-03-29 12:00:16', NULL),
(301, '303', '210', NULL, '305', NULL, NULL, NULL, NULL, '6', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":6,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-25 04:53:38', '2020-04-03 12:00:20', NULL),
(302, '304', '274', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-26 04:27:11', '2020-03-26 04:27:11', NULL),
(303, '305', '210', NULL, '306', NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":5,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-26 04:30:18', '2020-04-03 12:00:20', NULL),
(304, '306', '210', NULL, '307', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":4,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-26 04:33:07', '2020-04-03 12:00:20', NULL),
(305, '307', '210', NULL, '309', NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":3,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-26 05:39:18', '2020-04-03 12:00:20', NULL),
(306, '308', '210', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-29 04:12:06', '2020-03-29 04:12:06', NULL),
(307, '309', '300', NULL, '310', NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":2,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-29 04:15:14', '2020-04-03 12:00:20', NULL),
(308, '310', '309', NULL, '312', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":1,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-03-29 05:04:33', '2020-04-03 12:00:20', NULL),
(309, '311', '299', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-29 05:08:04', '2020-03-29 05:08:04', NULL),
(310, '312', '300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-03 01:04:44', '2020-04-03 01:04:44', NULL),
(311, '313', '206', NULL, '314', '317', 50.00, 50.00, 50.00, '24', '46', 50.00, 50.00, '2020-06-10', NULL, '{\"total_member\":70,\"total_point\":150,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-04-03 09:35:09', '2020-06-16 12:00:18', NULL),
(312, '314', '206', NULL, '315', '316', NULL, NULL, 50.00, '5', '18', NULL, NULL, NULL, NULL, '{\"total_member\":23,\"total_point\":50,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-04-03 22:41:01', '2020-06-16 12:00:17', NULL),
(313, '315', '314', NULL, '347', '350', NULL, NULL, NULL, '3', '1', NULL, NULL, NULL, NULL, '{\"total_member\":4,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-04-03 22:53:51', '2020-06-11 12:00:14', NULL),
(314, '316', '206', NULL, '320', '362', NULL, 50.00, NULL, '16', '1', NULL, NULL, NULL, NULL, '{\"total_member\":17,\"total_point\":50,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-04-03 22:58:09', '2020-06-16 12:00:17', NULL),
(315, '317', '206', NULL, '318', '319', NULL, 50.00, NULL, '13', '32', NULL, NULL, NULL, NULL, '{\"total_member\":45,\"total_point\":50,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-04-04 05:17:44', '2020-06-16 12:00:18', NULL),
(316, '318', '206', NULL, '330', '336', NULL, 50.00, NULL, '6', '6', NULL, NULL, NULL, NULL, '{\"total_member\":12,\"total_point\":50,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-04-04 05:21:26', '2020-06-16 12:00:17', NULL),
(317, '319', '206', NULL, '322', '351', NULL, NULL, NULL, '30', '1', NULL, NULL, NULL, NULL, '{\"total_member\":31,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-04-04 05:24:17', '2020-06-13 12:00:14', NULL),
(318, '320', '314', NULL, '321', '411', NULL, 50.00, NULL, '13', '2', NULL, NULL, NULL, NULL, '{\"total_member\":15,\"total_point\":50,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-04-04 05:41:17', '2020-06-16 12:00:17', NULL),
(319, '321', '314', NULL, '328', NULL, NULL, 50.00, NULL, '12', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":12,\"total_point\":50,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-04-04 05:45:39', '2020-06-16 12:00:17', NULL),
(320, '322', '206', NULL, '323', '358', NULL, NULL, NULL, '28', '1', NULL, NULL, NULL, NULL, '{\"total_member\":29,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-04-04 05:56:46', '2020-06-13 12:00:14', NULL),
(321, '323', '206', NULL, '324', NULL, NULL, NULL, NULL, '27', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":27,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-04-04 06:08:01', '2020-06-13 12:00:14', NULL),
(322, '324', '206', NULL, '325', NULL, NULL, NULL, NULL, '26', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":26,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-04-04 06:16:16', '2020-06-13 12:00:14', NULL),
(323, '325', '206', NULL, '326', NULL, NULL, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":25,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-04-04 06:18:37', '2020-06-13 12:00:14', NULL),
(324, '326', '206', NULL, '327', NULL, NULL, NULL, NULL, '24', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":24,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-04-04 06:23:01', '2020-06-13 12:00:14', NULL),
(325, '327', '206', NULL, '329', NULL, NULL, NULL, NULL, '23', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":23,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-04-04 06:39:10', '2020-06-13 12:00:14', NULL),
(326, '328', '206', NULL, '331', NULL, NULL, 50.00, NULL, '11', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":11,\"total_point\":50,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-04-04 06:51:02', '2020-06-16 12:00:17', NULL),
(327, '329', '206', NULL, '337', NULL, NULL, NULL, NULL, '22', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":22,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-04-04 22:25:17', '2020-06-13 12:00:14', NULL),
(328, '330', '206', NULL, '371', '372', 50.00, NULL, NULL, '2', '3', NULL, NULL, NULL, NULL, '{\"total_member\":5,\"total_point\":50,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-04-04 22:31:00', '2020-06-11 12:00:15', NULL),
(329, '331', '328', NULL, '332', NULL, NULL, 50.00, NULL, '10', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":10,\"total_point\":50,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-04-04 22:45:27', '2020-06-16 12:00:17', NULL),
(330, '332', '206', NULL, '333', NULL, NULL, 50.00, NULL, '9', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":9,\"total_point\":50,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-04-04 23:02:16', '2020-06-16 12:00:17', NULL),
(331, '333', '206', NULL, '334', NULL, NULL, 50.00, NULL, '8', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":8,\"total_point\":50,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-04-05 01:02:42', '2020-06-16 12:00:17', NULL),
(332, '334', '206', NULL, '335', NULL, NULL, 50.00, NULL, '7', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":7,\"total_point\":50,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-04-05 01:08:05', '2020-06-16 12:00:17', NULL),
(333, '335', '206', NULL, '385', '386', 50.00, NULL, NULL, '3', '3', NULL, NULL, NULL, NULL, '{\"total_member\":6,\"total_point\":50,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-04-05 01:12:07', '2020-06-13 12:00:13', NULL),
(334, '336', '206', NULL, '401', '402', NULL, NULL, NULL, '3', '2', NULL, NULL, NULL, NULL, '{\"total_member\":5,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-04-05 08:12:32', '2020-06-14 12:00:13', NULL),
(335, '337', '206', NULL, '338', NULL, NULL, NULL, NULL, '21', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":21,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-04-09 01:33:23', '2020-06-13 12:00:13', NULL),
(336, '338', '206', NULL, '339', NULL, NULL, NULL, NULL, '20', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":20,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-04-09 01:36:12', '2020-06-13 12:00:13', NULL),
(337, '339', '206', NULL, '340', NULL, NULL, NULL, NULL, '19', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":19,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-04-09 01:38:23', '2020-06-13 12:00:13', NULL),
(338, '340', '206', NULL, '341', NULL, NULL, NULL, NULL, '18', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":18,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-04-09 01:42:03', '2020-06-13 12:00:13', NULL),
(339, '341', '206', NULL, '343', NULL, NULL, NULL, NULL, '17', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":17,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-04-09 01:48:54', '2020-06-13 12:00:13', NULL),
(340, '343', '206', NULL, '344', NULL, NULL, NULL, NULL, '16', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":16,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-04-12 01:45:16', '2020-06-13 12:00:13', NULL),
(341, '344', '206', NULL, '345', '366', NULL, NULL, NULL, '14', '1', NULL, NULL, NULL, NULL, '{\"total_member\":15,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-04-12 03:03:16', '2020-06-13 12:00:13', NULL),
(342, '345', '206', NULL, '346', '379', NULL, NULL, NULL, '7', '6', NULL, NULL, NULL, NULL, '{\"total_member\":13,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-04-12 03:10:32', '2020-06-13 12:00:13', NULL),
(343, '346', '345', NULL, '394', '396', NULL, NULL, NULL, '3', '3', NULL, NULL, NULL, NULL, '{\"total_member\":6,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-04-13 01:00:14', '2020-06-13 12:00:13', NULL),
(344, '347', '206', NULL, '367', NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":2,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-04-15 05:46:18', '2020-06-11 12:00:14', NULL),
(345, '348', '242', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-22 05:42:37', '2020-04-22 05:42:37', NULL),
(346, '349', '242', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-22 06:17:41', '2020-04-22 06:17:41', NULL),
(347, '350', '206', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-24 00:38:26', '2020-04-24 00:38:26', NULL),
(348, '351', '206', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-24 01:04:52', '2020-04-24 01:04:52', NULL),
(349, '352', '259', NULL, '353', NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":2,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-05-09 22:49:38', '2020-05-10 12:00:14', NULL),
(350, '353', '259', NULL, '355', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":1,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-05-09 22:51:49', '2020-05-10 12:00:14', NULL),
(351, '354', '282', NULL, '363', '364', 50.70, 50.00, NULL, '3', '1', NULL, NULL, NULL, NULL, '{\"total_member\":4,\"total_point\":100.7000000000000028421709430404007434844970703125,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-05-09 23:44:21', '2020-06-16 12:00:15', NULL),
(352, '355', '259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-09 23:53:04', '2020-05-09 23:53:04', NULL),
(353, '356', '259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-12 01:21:06', '2020-05-12 01:21:06', NULL),
(354, '357', '243', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-14 00:53:20', '2020-05-14 00:53:20', NULL),
(355, '358', '206', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-16 02:37:08', '2020-05-16 02:37:08', NULL),
(356, '359', '273', NULL, '360', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":1,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-05-29 21:28:51', '2020-05-30 12:00:18', NULL),
(357, '360', '273', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-29 21:32:57', '2020-05-29 21:32:57', NULL),
(358, '361', '284', NULL, '365', '377', 50.00, 50.00, 100.00, '1', '3', 50.00, 50.00, '2020-06-12', NULL, '{\"total_member\":4,\"total_point\":200,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-06-02 01:50:17', '2020-06-16 12:00:15', NULL),
(359, '362', '206', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-02 21:43:03', '2020-06-02 21:43:03', NULL),
(360, '363', '354', NULL, '415', NULL, 50.00, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":2,\"total_point\":50,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-06-05 05:57:11', '2020-06-16 12:00:15', NULL),
(361, '364', '354', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-06 23:40:19', '2020-06-06 23:40:19', NULL),
(362, '365', '361', NULL, NULL, NULL, 50.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"total_member\":0,\"total_point\":50,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-06-10 04:16:20', '2020-06-11 12:00:13', NULL),
(363, '366', '206', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-10 04:21:44', '2020-06-10 04:21:44', NULL),
(364, '367', '206', NULL, '375', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":1,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-06-10 22:47:56', '2020-06-11 12:00:14', NULL),
(365, '368', '284', NULL, '369', NULL, NULL, 13.00, NULL, '3', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":3,\"total_point\":13,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-06-10 23:49:15', '2020-06-16 12:00:15', NULL),
(366, '369', '284', NULL, '393', NULL, 13.00, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":2,\"total_point\":13,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-06-11 01:42:55', '2020-06-15 12:00:16', NULL),
(367, '371', '330', NULL, '376', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":1,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-06-11 07:33:32', '2020-06-11 12:00:15', NULL),
(368, '372', '330', NULL, '373', NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":2,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-06-11 07:35:34', '2020-06-11 12:00:15', NULL),
(369, '373', '330', NULL, '374', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":1,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-06-11 07:40:41', '2020-06-11 12:00:15', NULL),
(370, '374', '330', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-11 07:43:24', '2020-06-11 07:43:24', NULL),
(371, '375', '206', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-11 07:59:52', '2020-06-11 07:59:52', NULL),
(372, '376', '330', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-11 08:03:33', '2020-06-11 08:03:33', NULL),
(373, '377', '361', NULL, '378', NULL, 50.00, 50.00, NULL, '2', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":2,\"total_point\":100,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-06-11 23:18:57', '2020-06-16 12:00:15', NULL),
(374, '378', '361', NULL, '414', NULL, 50.00, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":1,\"total_point\":50,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-06-11 23:22:38', '2020-06-16 12:00:15', NULL),
(375, '379', '345', NULL, '380', '383', NULL, NULL, NULL, '3', '2', NULL, NULL, NULL, NULL, '{\"total_member\":5,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-06-12 04:13:27', '2020-06-12 12:00:19', NULL),
(376, '380', '345', NULL, '381', NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":2,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-06-12 04:15:30', '2020-06-12 12:00:19', NULL),
(377, '381', '345', NULL, '382', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":1,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-06-12 04:29:50', '2020-06-12 12:00:19', NULL),
(378, '382', '345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-12 04:33:02', '2020-06-12 04:33:02', NULL),
(379, '383', '345', NULL, '384', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":1,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-06-12 04:38:31', '2020-06-12 12:00:19', NULL),
(380, '384', '345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-12 04:41:07', '2020-06-12 04:41:07', NULL),
(381, '385', '335', NULL, '388', '391', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '{\"total_member\":2,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-06-13 01:40:06', '2020-06-13 12:00:13', NULL),
(382, '386', '335', NULL, '389', '390', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '{\"total_member\":2,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-06-13 01:45:07', '2020-06-13 12:00:13', NULL),
(383, '388', '335', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-13 01:47:06', '2020-06-13 01:47:06', NULL),
(384, '389', '335', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-13 01:50:25', '2020-06-13 01:50:25', NULL),
(385, '390', '335', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-13 01:51:46', '2020-06-13 01:51:46', NULL),
(386, '391', '335', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-13 01:53:40', '2020-06-13 01:53:40', NULL),
(387, '393', '284', NULL, '407', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":1,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-06-13 02:11:21', '2020-06-15 12:00:16', NULL),
(388, '394', '346', NULL, '397', '398', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '{\"total_member\":2,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-06-13 07:17:45', '2020-06-13 12:00:13', NULL),
(389, '396', '346', NULL, '399', '400', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '{\"total_member\":2,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-06-13 07:20:04', '2020-06-13 12:00:13', NULL),
(390, '397', '346', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-13 07:22:06', '2020-06-13 07:22:06', NULL),
(391, '398', '346', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-13 07:23:47', '2020-06-13 07:23:47', NULL),
(392, '399', '346', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-13 07:26:04', '2020-06-13 07:26:04', NULL),
(393, '400', '346', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-13 07:28:04', '2020-06-13 07:28:04', NULL),
(394, '401', '336', NULL, '403', '405', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '{\"total_member\":2,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-06-14 07:17:33', '2020-06-14 12:00:13', NULL),
(395, '402', '336', NULL, '406', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":1,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-06-14 07:20:04', '2020-06-14 12:00:13', NULL),
(396, '403', '336', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-14 07:22:45', '2020-06-14 07:22:45', NULL),
(397, '405', '336', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-14 07:24:38', '2020-06-14 07:24:38', NULL),
(398, '406', '336', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-14 07:28:24', '2020-06-14 07:28:24', NULL),
(399, '407', '284', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-15 00:19:25', '2020-06-15 00:19:25', NULL),
(400, '408', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-15 02:47:21', '2020-06-15 02:47:21', NULL),
(401, '409', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-15 03:22:44', '2020-06-15 03:22:44', NULL),
(402, '410', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-15 03:23:50', '2020-06-15 03:23:50', NULL),
(403, '411', '206', NULL, '413', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":1,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-06-15 04:49:26', '2020-06-15 12:00:19', NULL),
(404, '413', '206', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-15 04:52:00', '2020-06-15 04:52:00', NULL),
(405, '414', '361', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-16 00:12:40', '2020-06-16 00:12:40', NULL),
(406, '415', '363', NULL, '416', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, '{\"total_member\":1,\"total_point\":0,\"total\":{\"so\":0,\"sso\":0,\"rmo\":0,\"mo\":0,\"smo\":0,\"agm\":0,\"gm\":0,\"vp\":0,\"president\":0,\"ba\":0},\"member_designation\":null}', NULL, NULL, '2020-06-16 00:16:15', '2020-06-16 12:00:15', NULL),
(407, '416', '363', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-16 00:31:10', '2020-06-16 00:31:10', NULL);

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

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_amount`, `order_discount`, `order_charge`, `order_vat`, `order_net_amount`, `order_total_point`, `order_delivery_type`, `order_delivery_from`, `order_delivery_from_user_id`, `order_delivery_name`, `order_delivery_address`, `order_delivery_phone`, `order_delivery_mobile`, `order_delivery_company`, `order_delivery_status`, `order_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '248', 3500.00, NULL, NULL, NULL, 3500.00, 75.00, 'self', 'admin', '1', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-02-21 17:11:14', '2020-02-22 09:12:11', NULL),
(2, '201', 1400.00, NULL, NULL, NULL, 1400.00, 30.00, 'self', 'dealer', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-02-22 10:21:08', '2020-02-22 13:54:19', NULL),
(3, '248', 4730.00, NULL, NULL, NULL, 4730.00, 98.00, 'self', 'admin', '1', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-02-22 10:26:48', '2020-02-22 10:28:59', NULL),
(4, '211', 700.00, NULL, NULL, NULL, 700.00, 15.00, 'self', 'dealer', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-02-22 12:14:05', '2020-02-22 13:54:32', NULL),
(5, '211', 700.00, NULL, NULL, NULL, 700.00, 15.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-02-22 12:14:32', '2020-02-22 13:45:56', NULL),
(6, '211', 400.00, NULL, NULL, NULL, 400.00, 10.00, 'self', 'dealer', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-02-22 12:39:53', '2020-02-22 13:54:45', NULL),
(7, '248', 76930.00, NULL, NULL, NULL, 76930.00, 1610.00, 'self', 'admin', '1', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-03-01 06:12:32', '2020-03-01 06:13:55', NULL),
(8, '256', 2100.00, NULL, NULL, NULL, 2100.00, 50.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-03-03 11:14:19', '2020-03-03 11:24:21', NULL),
(9, '257', 2100.00, NULL, NULL, NULL, 2100.00, 50.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-03-03 11:15:39', '2020-03-03 11:24:59', NULL),
(10, '1', 750.00, NULL, NULL, NULL, 750.00, 17.50, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-03-04 19:39:45', '2020-03-06 01:34:55', NULL),
(11, '247', 2100.00, NULL, NULL, NULL, 2100.00, 50.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-03-06 01:31:42', '2020-03-06 01:37:07', NULL),
(12, '253', 2500.00, NULL, NULL, NULL, 2500.00, 50.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-03-06 01:44:14', '2020-03-07 10:39:55', NULL),
(13, '252', 2100.00, NULL, NULL, NULL, 2100.00, 50.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-03-07 10:33:54', '2020-03-07 10:40:10', NULL),
(14, '254', 2100.00, NULL, NULL, NULL, 2100.00, 50.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-03-07 10:35:37', '2020-03-07 10:40:19', NULL),
(15, '248', 129500.00, NULL, NULL, NULL, 129500.00, 2650.00, 'self', 'admin', '1', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-03-10 07:34:28', '2020-03-10 07:34:58', NULL),
(16, '248', 2500.00, NULL, NULL, NULL, 2500.00, 50.00, 'self', 'admin', '1', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-03-10 07:36:32', '2020-03-10 07:36:54', NULL),
(17, '264', 2500.00, NULL, NULL, NULL, 2500.00, 50.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-03-13 00:25:27', '2020-03-15 01:02:30', NULL),
(18, '259', 2500.00, NULL, NULL, NULL, 2500.00, 50.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-03-13 00:31:00', '2020-03-15 01:03:10', NULL),
(19, '267', 2500.00, NULL, NULL, NULL, 2500.00, 50.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-03-14 10:13:24', '2020-03-15 01:54:43', NULL),
(20, '101', 4850.00, NULL, NULL, NULL, 4850.00, 100.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-03-15 06:20:55', '2020-03-15 06:23:13', NULL),
(21, '102', 4850.00, NULL, NULL, NULL, 4850.00, 100.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-03-15 06:49:21', '2020-03-15 06:57:54', NULL),
(22, '280', 4850.00, NULL, NULL, NULL, 4850.00, 100.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-03-15 06:56:03', '2020-03-15 06:58:13', NULL),
(23, '262', 2500.00, NULL, NULL, NULL, 2500.00, 50.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-03-16 06:42:25', '2020-03-16 06:44:47', NULL),
(24, '103', 4550.00, NULL, NULL, NULL, 4550.00, 100.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-03-16 22:27:22', '2020-03-18 10:11:42', NULL),
(25, '104', 4550.00, NULL, NULL, NULL, 4550.00, 100.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-03-16 22:30:30', '2020-03-18 10:11:55', NULL),
(26, '244', 2500.00, NULL, NULL, NULL, 2500.00, 50.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-03-18 10:08:57', '2020-03-18 10:12:12', NULL),
(27, '248', 2040.00, NULL, NULL, NULL, 2040.00, 21.00, 'self', 'admin', '1', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-03-18 10:13:15', '2020-03-18 10:14:34', NULL),
(28, '282', 2500.00, NULL, NULL, NULL, 2500.00, 50.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-03-20 00:31:22', '2020-03-20 01:54:21', NULL),
(29, '284', 480.00, NULL, NULL, NULL, 480.00, 7.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-03-20 01:06:55', '2020-03-20 01:53:48', NULL),
(30, '261', 390.00, NULL, NULL, NULL, 390.00, 4.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-03-20 01:30:36', '2020-03-20 01:53:12', NULL),
(31, '243', 2500.00, NULL, NULL, NULL, 2500.00, 50.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-03-21 01:42:19', '2020-03-22 01:00:54', NULL),
(32, '284', 76.00, NULL, NULL, NULL, 76.00, 0.70, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-03-21 01:46:45', '2020-03-22 01:01:57', NULL),
(33, '248', 4500.00, NULL, NULL, NULL, 4500.00, 50.00, 'self', 'admin', '1', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-03-22 01:08:56', '2020-03-22 01:09:38', NULL),
(34, '248', 214100.00, NULL, NULL, NULL, 214100.00, 4300.00, 'self', 'admin', '1', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-03-24 04:37:32', '2020-03-24 04:38:06', NULL),
(35, '248', 38.00, NULL, NULL, NULL, 38.00, 0.35, 'self', 'admin', '1', NULL, NULL, NULL, NULL, NULL, 'pending', 'complete', '2020-04-03 07:10:42', '2020-04-03 07:10:42', NULL),
(36, '284', 90.00, NULL, NULL, NULL, 90.00, 0.75, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-05-03 23:36:22', '2020-05-04 01:31:16', NULL),
(37, '281', 90.00, NULL, NULL, NULL, 90.00, 1.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-05-07 21:33:02', '2020-05-09 01:29:31', NULL),
(38, '264', 90.00, NULL, NULL, NULL, 90.00, 0.80, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-05-09 01:16:07', '2020-05-09 01:29:57', NULL),
(39, '248', 13026.00, NULL, NULL, NULL, 13026.00, 198.40, 'self', 'admin', '1', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-05-09 01:45:54', '2020-05-10 23:09:17', NULL),
(40, '284', 2100.00, NULL, NULL, NULL, 2100.00, 39.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-05-10 23:02:35', '2020-05-10 23:09:27', NULL),
(41, '284', 180.00, NULL, NULL, NULL, 180.00, 3.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-05-10 23:15:27', '2020-05-11 00:24:25', NULL),
(42, '354', 2750.00, NULL, NULL, NULL, 2750.00, 50.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-05-11 00:21:07', '2020-05-11 00:24:13', NULL),
(43, '248', 11000.00, NULL, NULL, NULL, 11000.00, 200.00, 'self', 'admin', '1', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-05-11 00:23:07', '2020-05-11 00:23:59', NULL),
(44, '354', 76.00, NULL, NULL, NULL, 76.00, 0.70, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-05-11 00:33:28', '2020-05-12 02:52:41', NULL),
(45, '282', 38.00, NULL, NULL, NULL, 38.00, 0.35, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-05-12 00:20:06', '2020-05-12 02:52:54', NULL),
(46, '248', 2400.00, NULL, NULL, NULL, 2400.00, 24.00, 'self', 'admin', '1', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-05-13 05:28:34', '2020-05-13 05:30:08', NULL),
(47, '248', 250000.00, NULL, NULL, NULL, 250000.00, 5000.00, 'self', 'admin', '1', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-06-02 00:27:00', '2020-06-02 00:27:48', NULL),
(48, '249', 25000.00, NULL, NULL, NULL, 25000.00, 500.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-06-02 00:29:27', '2020-06-02 00:36:46', NULL),
(49, '281', 180.00, NULL, NULL, NULL, 180.00, 3.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-06-02 23:28:37', '2020-06-03 11:34:20', NULL),
(50, '281', 190.00, NULL, NULL, NULL, 190.00, 3.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-06-02 23:31:32', '2020-06-03 11:35:04', NULL),
(51, '281', 90.00, NULL, NULL, NULL, 90.00, 1.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-06-02 23:34:20', '2020-06-03 11:35:51', NULL),
(52, '248', 54420.00, NULL, NULL, NULL, 54420.00, 1052.00, 'self', 'admin', '1', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-06-03 11:32:53', '2020-06-03 11:36:14', NULL),
(53, '249', 16100.00, NULL, NULL, NULL, 16100.00, 313.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-06-03 11:42:17', '2020-06-03 11:44:14', NULL),
(54, '361', 2750.00, NULL, NULL, NULL, 2750.00, 50.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-06-06 23:16:59', '2020-06-09 02:23:03', NULL),
(55, '363', 2750.00, NULL, NULL, NULL, 2750.00, 50.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-06-10 00:57:00', '2020-06-10 03:53:54', NULL),
(56, '335', 2500.00, NULL, NULL, NULL, 2500.00, 50.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'pending', 'complete', '2020-06-10 06:20:33', '2020-06-10 06:20:33', NULL),
(57, '330', 2500.00, NULL, NULL, NULL, 2500.00, 50.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'pending', 'complete', '2020-06-10 06:24:15', '2020-06-10 06:24:15', NULL),
(58, '313', 2500.00, NULL, NULL, NULL, 2500.00, 50.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'pending', 'complete', '2020-06-10 06:27:12', '2020-06-10 06:27:12', NULL),
(59, '365', 2750.00, NULL, NULL, NULL, 2750.00, 50.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-06-10 21:33:31', '2020-06-11 06:15:25', NULL),
(60, '377', 2750.00, NULL, NULL, NULL, 2750.00, 50.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-06-11 23:29:07', '2020-06-12 00:23:57', NULL),
(61, '260', 2750.00, NULL, NULL, NULL, 2750.00, 50.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-06-12 00:10:50', '2020-06-12 00:23:43', NULL),
(62, '281', 180.00, NULL, NULL, NULL, 180.00, 3.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-06-12 02:30:05', '2020-06-13 03:18:46', NULL),
(63, '369', 700.00, NULL, NULL, NULL, 700.00, 13.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-06-14 23:54:16', '2020-06-15 02:10:24', NULL),
(64, '410', 2500.00, NULL, NULL, NULL, 2500.00, 50.00, 'self', 'admin', '1', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-06-15 03:37:07', '2020-06-15 03:38:15', NULL),
(65, '1', 2500.00, NULL, NULL, NULL, 2500.00, 50.00, 'self', 'dealer', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-06-15 03:39:53', '2020-06-15 04:02:54', NULL),
(66, '249', 4065.00, NULL, NULL, NULL, 4065.00, 48.75, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-06-15 04:12:39', '2020-06-15 04:14:13', NULL),
(67, '248', 1080.00, NULL, NULL, NULL, 1080.00, 16.80, 'self', 'admin', '1', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-06-15 22:55:26', '2020-06-15 22:57:08', NULL),
(68, '220', 128.00, NULL, NULL, NULL, 128.00, 1.35, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-06-16 00:53:33', '2020-06-16 01:02:34', NULL),
(69, '248', 55000.00, NULL, NULL, NULL, 55000.00, 1000.00, 'self', 'admin', '1', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-06-16 05:59:36', '2020-06-16 06:00:41', NULL),
(70, '378', 2500.00, NULL, NULL, NULL, 2500.00, 50.00, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-06-16 06:03:39', '2020-06-16 06:15:18', NULL),
(71, '249', 1080.00, NULL, NULL, NULL, 1080.00, 16.80, 'self', 'office', '248', NULL, NULL, NULL, NULL, NULL, 'delivered', 'complete', '2020-06-17 00:32:11', '2020-06-17 00:34:01', NULL);

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
(5, '1', 'Standard Business Pack', '100', '2', 'True', 'Active', '2019-12-21 15:08:27', '2020-06-15 03:02:12', NULL),
(6, '1', 'Standard Easy Pack', '50', '1', 'True', 'Active', '2020-01-28 16:48:09', '2020-03-01 06:53:37', NULL);

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
  `bonus_pv` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_order` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `point_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `points`
--

INSERT INTO `points` (`id`, `user_id`, `from_user_id`, `point_amount`, `point_flow`, `point_details`, `bonus_pv`, `is_order`, `point_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', '1', 12.00, 'in', 'You have received 12 PV for new stock of Active Gold Mehedi and product quantity is 12', NULL, NULL, 'active', '2020-01-20 12:58:37', '2020-01-20 12:58:37', NULL),
(2, '1', '1', 5.00, 'in', 'You have received 5 PV for new stock of Aqua Gel Sunscreen SPF 50++PA++ and product quantity is 1', NULL, NULL, 'active', '2020-01-20 12:58:53', '2020-01-20 12:58:53', NULL),
(3, '1', '1', 24.00, 'in', 'You have received 24 PV for new stock of Aromix Toothpast and product quantity is 12', NULL, NULL, 'active', '2020-01-20 12:59:08', '2020-01-20 12:59:08', NULL),
(4, '1', '1', 25.00, 'in', 'You have received 25 PV for new stock of Anytime Sanitary Napkin and product quantity is 10', NULL, NULL, 'active', '2020-01-20 12:59:19', '2020-01-20 12:59:19', NULL),
(5, '1', '1', 4.00, 'in', 'You have received 4 PV for new stock of Aloevera Soothing Gel and product quantity is 1', NULL, NULL, 'active', '2020-01-20 12:59:34', '2020-01-20 12:59:34', NULL),
(6, '1', '1', 45.00, 'in', 'You have received 45 PV for new stock of Azmeri Huney and product quantity is 10', NULL, NULL, 'active', '2020-01-20 12:59:43', '2020-01-20 12:59:43', NULL),
(7, '1', '1', 4.00, 'in', 'You have received 4 PV for new stock of Crystal Aqua Sleeping Pack and product quantity is 1', NULL, NULL, 'active', '2020-01-20 12:59:54', '2020-01-20 12:59:54', NULL),
(8, '1', '1', 13.25, 'in', 'You have received 13.25 PV for new stock of Derma Plus Anti Acne Cream and product quantity is 1', NULL, NULL, 'active', '2020-01-20 13:00:04', '2020-01-20 13:00:04', NULL),
(9, '1', '1', 3.50, 'in', 'You have received 3.5 PV for new stock of Disaar Toothpast and product quantity is 1', NULL, NULL, 'active', '2020-01-20 13:00:27', '2020-01-20 13:00:27', NULL),
(10, '1', '1', 5.00, 'in', 'You have received 5 PV for new stock of Aqua Gel Sunscreen SPF 50++PA++ and product quantity is 1', NULL, NULL, 'active', '2020-01-20 13:00:33', '2020-01-20 13:00:33', NULL),
(11, '1', '1', 0.00, 'in', 'You have received 0 PV for new stock of Horse Oil and product quantity is ', NULL, NULL, 'active', '2020-01-20 13:02:05', '2020-01-20 13:02:05', NULL),
(12, '1', '1', 7.00, 'in', 'You have received 7 PV for new stock of Horse Oil and product quantity is 1', NULL, NULL, 'active', '2020-01-20 13:02:27', '2020-01-20 13:02:27', NULL),
(13, '1', '1', 54.00, 'in', 'You have received 54 PV for new stock of Aloevera Sampoo and product quantity is 12', NULL, NULL, 'active', '2020-01-20 13:02:45', '2020-01-20 13:02:45', NULL),
(14, '1', '1', 6.00, 'in', 'You have received 6 PV for new stock of Neem Aloevera Soap and product quantity is 12', NULL, NULL, 'active', '2020-01-20 13:08:57', '2020-01-20 13:08:57', NULL),
(15, '1', '1', 18.00, 'in', 'You have received 18 PV for new stock of Neem Face Wash and product quantity is 12', NULL, NULL, 'active', '2020-01-20 13:09:22', '2020-01-20 13:09:22', NULL),
(16, '1', '1', 48.00, 'in', 'You have received 48 PV for new stock of Lavana Neem Oil and product quantity is 12', NULL, NULL, 'active', '2020-01-20 13:09:42', '2020-01-20 13:09:42', NULL),
(17, '1', '1', 48.00, 'in', 'You have received 48 PV for new stock of Whitening Body Lotion and product quantity is 12', NULL, NULL, 'active', '2020-01-20 13:09:57', '2020-01-20 13:09:57', NULL),
(18, '1', '1', 17.00, 'in', 'You have received 17 PV for new stock of Mayu Mask and product quantity is 20', NULL, NULL, 'active', '2020-01-20 13:10:11', '2020-01-20 13:10:11', NULL),
(19, '1', '1', 12.60, 'in', 'You have received 12.6 PV for new stock of Real Dishwash Bar and product quantity is 36', NULL, NULL, 'active', '2020-01-20 13:11:42', '2020-01-20 13:11:42', NULL),
(20, '1', '1', 13.80, 'in', 'You have received 13.8 PV for new stock of Real Power White and product quantity is 12', NULL, NULL, 'active', '2020-01-20 13:12:12', '2020-01-20 13:12:12', NULL),
(21, '1', '1', 10.80, 'in', 'You have received 10.8 PV for new stock of Real Toilet Cleaner and product quantity is 12', NULL, NULL, 'active', '2020-01-20 13:12:31', '2020-01-20 13:12:31', NULL),
(22, '1', '1', 350.00, 'in', 'You have received 350 PV for new stock of Baby Life Plus and product quantity is 20', NULL, NULL, 'active', '2020-01-20 13:12:45', '2020-01-20 13:12:45', NULL),
(23, '1', '1', 350.00, 'in', 'You have received 350 PV for new stock of Agro Vita Gold and product quantity is 20', NULL, NULL, 'active', '2020-01-20 13:12:59', '2020-01-20 13:12:59', NULL),
(24, '1', '1', 120.00, 'in', 'You have received 120 PV for new stock of Black Seed Oil and product quantity is 10', NULL, NULL, 'active', '2020-01-20 13:13:15', '2020-01-20 13:13:15', NULL),
(25, '1', '1', 350.00, 'in', 'You have received 350 PV for new stock of Detox Foot Patch and product quantity is 14', NULL, NULL, 'active', '2020-01-20 13:13:28', '2020-01-20 13:13:28', NULL),
(26, '1', '1', 500.00, 'in', 'You have received 500 PV for new stock of Exclusive Soy Combo Pack-01 and product quantity is 5', NULL, NULL, 'active', '2020-01-20 13:13:44', '2020-01-20 13:13:44', NULL),
(27, '1', '1', 232.50, 'in', 'You have received 232.5 PV for new stock of EFA Omega 3,6,9 and product quantity is 15', NULL, NULL, 'active', '2020-01-20 13:14:02', '2020-01-20 13:14:02', NULL),
(28, '1', '1', 140.00, 'in', 'You have received 140 PV for new stock of Female Care Gold and product quantity is 8', NULL, NULL, 'active', '2020-01-20 13:14:15', '2020-01-20 13:14:15', NULL),
(29, '1', '1', 175.00, 'in', 'You have received 175 PV for new stock of Gluco Cure Plus and product quantity is 10', NULL, NULL, 'active', '2020-01-20 13:14:38', '2020-01-20 13:14:38', NULL),
(30, '1', '1', 100.00, 'in', 'You have received 100 PV for new stock of Masala Tea and product quantity is 10', NULL, NULL, 'active', '2020-01-20 13:14:51', '2020-01-20 13:14:51', NULL),
(31, '1', '1', 350.00, 'in', 'You have received 350 PV for new stock of Soy Protein Gold and product quantity is 20', NULL, NULL, 'active', '2020-01-20 13:15:05', '2020-01-20 13:15:05', NULL),
(32, '1', '1', 200.00, 'in', 'You have received 200 PV for new stock of Triphala Plus and product quantity is 20', NULL, NULL, 'active', '2020-01-20 13:15:22', '2020-01-20 13:15:22', NULL),
(33, '1', '1', 100.00, 'in', 'You have received 100 PV for new stock of Tulsi Dry Juice and product quantity is 10', NULL, NULL, 'active', '2020-01-20 13:15:45', '2020-01-20 13:15:45', NULL),
(34, '1', '1', 100.00, 'in', 'You have received 100 PV for new stock of Green Tea and product quantity is 10', NULL, NULL, 'active', '2020-01-20 13:15:59', '2020-01-20 13:15:59', NULL),
(35, '248', '248', 75.00, 'in', 'You have received 75 Point for order 1', NULL, NULL, 'active', '2020-02-21 17:11:14', '2020-02-21 17:11:14', NULL),
(36, '1', '248', 75.00, 'out', 'You have transfer 75.00 PV for delivery order 1 to standard', NULL, NULL, 'active', '2020-02-22 09:12:11', '2020-02-22 09:12:11', NULL),
(37, '201', '201', 30.00, 'in', 'You have received 30 Point for order 2', NULL, '1', 'active', '2020-02-22 10:21:08', '2020-02-22 10:21:08', NULL),
(38, '248', '248', 98.00, 'in', 'You have received 98 Point for order 3', NULL, NULL, 'active', '2020-02-22 10:26:48', '2020-02-22 10:26:48', NULL),
(39, '1', '248', 98.00, 'out', 'You have transfer 98.00 PV for delivery order 3 to standard', NULL, NULL, 'active', '2020-02-22 10:28:59', '2020-02-22 10:28:59', NULL),
(40, '211', '211', 15.00, 'in', 'You have received 15 Point for order 4', NULL, '1', 'active', '2020-02-22 12:14:05', '2020-02-22 12:14:05', NULL),
(41, '211', '211', 15.00, 'in', 'You have received 15 Point for order 5', NULL, '1', 'active', '2020-02-22 12:14:32', '2020-02-22 12:14:32', NULL),
(42, '211', '211', 10.00, 'in', 'You have received 10 Point for order 6', NULL, '1', 'active', '2020-02-22 12:39:53', '2020-02-22 12:39:53', NULL),
(43, '248', '211', 15.00, 'out', 'You have transfer 15.00 PV for delivery order 5 to foyez01', NULL, NULL, 'active', '2020-02-22 13:45:56', '2020-02-22 13:45:56', NULL),
(44, '248', '201', 30.00, 'out', 'You have transfer 30.00 PV for delivery order 2 to foyez1', NULL, NULL, 'active', '2020-02-22 13:54:19', '2020-02-22 13:54:19', NULL),
(45, '248', '211', 15.00, 'out', 'You have transfer 15.00 PV for delivery order 4 to foyez01', NULL, NULL, 'active', '2020-02-22 13:54:32', '2020-02-22 13:54:32', NULL),
(46, '248', '211', 10.00, 'out', 'You have transfer 10.00 PV for delivery order 6 to foyez01', NULL, NULL, 'active', '2020-02-22 13:54:45', '2020-02-22 13:54:45', NULL),
(47, '1', '1', 0.00, 'out', 'You have Remove 0 PV for new stock of Active Gold Mehedi and product quantity is 0', NULL, NULL, 'active', '2020-02-22 13:58:16', '2020-02-22 13:58:16', NULL),
(48, '1', '1', 12.00, 'out', 'You have Remove 12 PV for new stock of Active Gold Mehedi and product quantity is 12', NULL, NULL, 'active', '2020-02-22 13:58:45', '2020-02-22 13:58:45', NULL),
(49, '1', '1', 12.00, 'in', 'You have received 12 PV for new stock of Active Gold Mehedi and product quantity is 12', NULL, NULL, 'active', '2020-02-22 13:59:12', '2020-02-22 13:59:12', NULL),
(50, '1', '1', 12.00, 'in', 'You have received 12 PV for new stock of Standard Liquid Detergent and product quantity is 12', NULL, NULL, 'active', '2020-03-01 06:04:02', '2020-03-01 06:04:02', NULL),
(51, '1', '1', 12.00, 'in', 'You have received 12 PV for new stock of Standard Liquid Dish Wash and product quantity is 12', NULL, NULL, 'active', '2020-03-01 06:04:25', '2020-03-01 06:04:25', NULL),
(52, '1', '1', 2000.00, 'in', 'You have received 2000 PV for new stock of Family Combo Pack-01 and product quantity is 20', NULL, NULL, 'active', '2020-03-01 06:04:38', '2020-03-01 06:04:38', NULL),
(53, '1', '1', 1000.00, 'in', 'You have received 1000 PV for new stock of Family Combo Pack-02 and product quantity is 20', NULL, NULL, 'active', '2020-03-01 06:04:53', '2020-03-01 06:04:53', NULL),
(54, '1', '1', 1000.00, 'in', 'You have received 1000 PV for new stock of Soy Combo Pack-03 and product quantity is 20', NULL, NULL, 'active', '2020-03-01 06:05:15', '2020-03-01 06:05:15', NULL),
(55, '1', '1', 12.00, 'in', 'You have received 12 PV for new stock of Standard Toilet Cleaner and product quantity is 12', NULL, NULL, 'active', '2020-03-01 06:05:45', '2020-03-01 06:05:45', NULL),
(56, '1', '1', 24.00, 'in', 'You have received 24 PV for new stock of Standard Hand Wash and product quantity is 12', NULL, NULL, 'active', '2020-03-01 06:06:36', '2020-03-01 06:06:36', NULL),
(57, '1', '1', 1360.00, 'in', 'You have received 1360 PV for new stock of Soy Protein Gold and product quantity is 80', NULL, NULL, 'active', '2020-03-01 06:07:01', '2020-03-01 06:07:01', NULL),
(58, '1', '1', 24.00, 'in', 'You have received 24 PV for new stock of Hair Remobal Cream and product quantity is 12', NULL, NULL, 'active', '2020-03-01 06:07:39', '2020-03-01 06:07:39', NULL),
(59, '248', '248', 1610.00, 'in', 'You have received 1610 Point for order 7', NULL, NULL, 'active', '2020-03-01 06:12:32', '2020-03-01 06:12:32', NULL),
(60, '1', '248', 1610.00, 'out', 'You have transfer 1610.00 PV for delivery order 7 to standard', NULL, NULL, 'active', '2020-03-01 06:13:55', '2020-03-01 06:13:55', NULL),
(61, '256', '256', 50.00, 'in', 'You have received 50 Point for order 8', NULL, '1', 'active', '2020-03-03 11:14:19', '2020-03-03 11:14:19', NULL),
(62, '256', '256', 50.00, 'out', 'You have Upgrade you account with 50.00 Point', NULL, NULL, 'active', '2020-03-03 11:14:42', '2020-03-03 11:14:42', NULL),
(63, '257', '257', 50.00, 'in', 'You have received 50 Point for order 9', NULL, '1', 'active', '2020-03-03 11:15:39', '2020-03-03 11:15:39', NULL),
(64, '257', '257', 50.00, 'out', 'You have Upgrade you account with 50.00 Point', NULL, NULL, 'active', '2020-03-03 11:15:57', '2020-03-03 11:15:57', NULL),
(65, '248', '256', 50.00, 'out', 'You have transfer 50.00 PV for delivery order 8 to fahadul', NULL, NULL, 'active', '2020-03-03 11:24:21', '2020-03-03 11:24:21', NULL),
(66, '248', '257', 50.00, 'out', 'You have transfer 50.00 PV for delivery order 9 to fatema', NULL, NULL, 'active', '2020-03-03 11:24:59', '2020-03-03 11:24:59', NULL),
(67, '1', '1', 17.50, 'in', 'You have received 17.5 Point for order 10', NULL, NULL, 'active', '2020-03-04 19:39:45', '2020-03-04 19:39:45', NULL),
(68, '247', '247', 50.00, 'in', 'You have received 50 Point for order 11', NULL, '1', 'active', '2020-03-06 01:31:42', '2020-03-06 01:31:42', NULL),
(69, '247', '247', 50.00, 'out', 'You have Upgrade you account with 50.00 Point', NULL, NULL, 'active', '2020-03-06 01:32:55', '2020-03-06 01:32:55', NULL),
(70, '248', '1', 17.50, 'out', 'You have transfer 17.50 PV for delivery order 10 to admin', NULL, NULL, 'active', '2020-03-06 01:34:55', '2020-03-06 01:34:55', NULL),
(71, '248', '247', 50.00, 'out', 'You have transfer 50.00 PV for delivery order 11 to mehedi', NULL, NULL, 'active', '2020-03-06 01:37:07', '2020-03-06 01:37:07', NULL),
(72, '253', '253', 50.00, 'in', 'You have received 50 Point for order 12', NULL, '1', 'active', '2020-03-06 01:44:14', '2020-03-06 01:44:14', NULL),
(73, '253', '253', 50.00, 'out', 'You have Upgrade you account with 50.00 Point', NULL, NULL, 'active', '2020-03-06 01:44:58', '2020-03-06 01:44:58', NULL),
(74, '252', '252', 50.00, 'in', 'You have received 50 Point for order 13', NULL, '1', 'active', '2020-03-07 10:33:54', '2020-03-07 10:33:54', NULL),
(75, '252', '252', 50.00, 'out', 'You have Upgrade you account with 50.00 Point', NULL, NULL, 'active', '2020-03-07 10:34:10', '2020-03-07 10:34:10', NULL),
(76, '254', '254', 50.00, 'in', 'You have received 50 Point for order 14', NULL, '1', 'active', '2020-03-07 10:35:37', '2020-03-07 10:35:37', NULL),
(77, '254', '254', 50.00, 'out', 'You have Upgrade you account with 50.00 Point', NULL, NULL, 'active', '2020-03-07 10:35:52', '2020-03-07 10:35:52', NULL),
(78, '248', '253', 50.00, 'out', 'You have transfer 50.00 PV for delivery order 12 to azharul', NULL, NULL, 'active', '2020-03-07 10:39:55', '2020-03-07 10:39:55', NULL),
(79, '248', '252', 50.00, 'out', 'You have transfer 50.00 PV for delivery order 13 to nirob', NULL, NULL, 'active', '2020-03-07 10:40:10', '2020-03-07 10:40:10', NULL),
(80, '248', '254', 50.00, 'out', 'You have transfer 50.00 PV for delivery order 14 to sakib', NULL, NULL, 'active', '2020-03-07 10:40:19', '2020-03-07 10:40:19', NULL),
(81, '1', '1', 150.00, 'in', 'You have received 150 PV for new stock of Aloevera Sampoo and product quantity is 50', NULL, NULL, 'active', '2020-03-08 11:27:29', '2020-03-08 11:27:29', NULL),
(82, '1', '1', 85.00, 'in', 'You have received 85 PV for new stock of Face Pack Glow and product quantity is 50', NULL, NULL, 'active', '2020-03-08 11:27:38', '2020-03-08 11:27:38', NULL),
(83, '1', '1', 220.00, 'in', 'You have received 220 PV for new stock of Jeans Pant and product quantity is 10', NULL, NULL, 'active', '2020-03-08 11:28:00', '2020-03-08 11:28:00', NULL),
(84, '1', '1', 200.00, 'in', 'You have received 200 PV for new stock of Hair Tonic and product quantity is 50', NULL, NULL, 'active', '2020-03-08 11:28:08', '2020-03-08 11:28:08', NULL),
(85, '1', '1', 85.40, 'in', 'You have received 85.4 PV for new stock of Neem Aloevera Soap and product quantity is 244', NULL, NULL, 'active', '2020-03-08 11:28:55', '2020-03-08 11:28:55', NULL),
(86, '1', '1', 36.00, 'in', 'You have received 36 PV for new stock of Lavana Neem Oil and product quantity is 12', NULL, NULL, 'active', '2020-03-08 11:29:06', '2020-03-08 11:29:06', NULL),
(87, '1', '1', 125.00, 'in', 'You have received 125 PV for new stock of Neem Face Wash and product quantity is 50', NULL, NULL, 'active', '2020-03-08 11:29:16', '2020-03-08 11:29:16', NULL),
(88, '1', '1', 900.00, 'in', 'You have received 900 PV for new stock of Cardio Care Gold and product quantity is 50', NULL, NULL, 'active', '2020-03-08 11:29:49', '2020-03-08 11:29:49', NULL),
(89, '1', '1', 1000.00, 'in', 'You have received 1000 PV for new stock of SLIM FAST and product quantity is 50', NULL, NULL, 'active', '2020-03-08 11:30:40', '2020-03-08 11:30:40', NULL),
(90, '1', '1', 700.00, 'in', 'You have received 700 PV for new stock of Female Care Gold and product quantity is 50', NULL, NULL, 'active', '2020-03-08 11:30:55', '2020-03-08 11:30:55', NULL),
(91, '1', '1', 574.00, 'in', 'You have received 574 PV for new stock of Gluco Cure Plus and product quantity is 41', NULL, NULL, 'active', '2020-03-08 11:31:18', '2020-03-08 11:31:18', NULL),
(92, '1', '1', 75.00, 'in', 'You have received 75 PV for new stock of Tulsi Dry Juice and product quantity is 10', NULL, NULL, 'active', '2020-03-08 11:32:10', '2020-03-08 11:32:10', NULL),
(93, '1', '1', 20.00, 'in', 'You have received 20 PV for new stock of YOU CAN WIN and product quantity is 10', NULL, NULL, 'active', '2020-03-08 11:32:24', '2020-03-08 11:32:24', NULL),
(94, '1', '1', 7.50, 'in', 'You have received 7.5 PV for new stock of Standard Liquid Dish Wash and product quantity is 10', NULL, NULL, 'active', '2020-03-08 11:32:42', '2020-03-08 11:32:42', NULL),
(95, '1', '1', 8.00, 'in', 'You have received 8 PV for new stock of Standard Toilet Cleaner and product quantity is 10', NULL, NULL, 'active', '2020-03-08 11:32:56', '2020-03-08 11:32:56', NULL),
(96, '1', '1', 10.00, 'in', 'You have received 10 PV for new stock of Standard Liquid Detergent and product quantity is 10', NULL, NULL, 'active', '2020-03-08 11:33:06', '2020-03-08 11:33:06', NULL),
(97, '1', '1', 72.00, 'in', 'You have received 72 PV for new stock of Standard Hand Wash and product quantity is 48', NULL, NULL, 'active', '2020-03-08 11:33:19', '2020-03-08 11:33:19', NULL),
(98, '1', '1', 5000.00, 'in', 'You have received 5000 PV for new stock of Family Combo Pack and product quantity is 50', NULL, NULL, 'active', '2020-03-10 07:28:39', '2020-03-10 07:28:39', NULL),
(99, '1', '1', 5000.00, 'in', 'You have received 5000 PV for new stock of Health Care Combo Pack-2 and product quantity is 50', NULL, NULL, 'active', '2020-03-10 07:29:00', '2020-03-10 07:29:00', NULL),
(100, '1', '1', 2500.00, 'in', 'You have received 2500 PV for new stock of Health & Beauty Pack and product quantity is 50', NULL, NULL, 'active', '2020-03-10 07:29:16', '2020-03-10 07:29:16', NULL),
(101, '1', '1', 2500.00, 'in', 'You have received 2500 PV for new stock of Health Care Combo Pack and product quantity is 50', NULL, NULL, 'active', '2020-03-10 07:29:31', '2020-03-10 07:29:31', NULL),
(102, '248', '248', 2650.00, 'in', 'You have received 2650 Point for order 15', NULL, NULL, 'active', '2020-03-10 07:34:28', '2020-03-10 07:34:28', NULL),
(103, '1', '248', 2650.00, 'out', 'You have transfer 2650.00 PV for delivery order 15 to standard', NULL, NULL, 'active', '2020-03-10 07:34:58', '2020-03-10 07:34:58', NULL),
(104, '248', '248', 50.00, 'in', 'You have received 50 Point for order 16', NULL, NULL, 'active', '2020-03-10 07:36:32', '2020-03-10 07:36:32', NULL),
(105, '1', '248', 50.00, 'out', 'You have transfer 50.00 PV for delivery order 16 to standard', NULL, NULL, 'active', '2020-03-10 07:36:54', '2020-03-10 07:36:54', NULL),
(106, '1', '1', 62.50, 'in', 'You have received 62.5 PV for new stock of Neem Face Wash and product quantity is 50', NULL, NULL, 'active', '2020-03-11 23:06:42', '2020-03-11 23:06:42', NULL),
(107, '264', '264', 50.00, 'in', 'You have received 50 Point for order 17', NULL, '1', 'active', '2020-03-13 00:25:27', '2020-03-13 00:25:27', NULL),
(108, '264', '264', 50.00, 'out', 'You have Upgrade you account with 50.00 Point', NULL, NULL, 'active', '2020-03-13 00:25:58', '2020-03-13 00:25:58', NULL),
(109, '259', '259', 50.00, 'in', 'You have received 50 Point for order 18', NULL, '1', 'active', '2020-03-13 00:31:00', '2020-03-13 00:31:00', NULL),
(110, '259', '259', 50.00, 'out', 'You have Upgrade you account with 50.00 Point', NULL, NULL, 'active', '2020-03-13 00:43:22', '2020-03-13 00:43:22', NULL),
(111, '267', '267', 50.00, 'in', 'You have received 50 Point for order 19', NULL, '1', 'active', '2020-03-14 10:13:24', '2020-03-14 10:13:24', NULL),
(112, '267', '267', 50.00, 'out', 'You have Upgrade you account with 50.00 Point', NULL, NULL, 'active', '2020-03-14 10:13:50', '2020-03-14 10:13:50', NULL),
(113, '248', '264', 50.00, 'out', 'You have transfer 50.00 PV for delivery order 17 to sowrove', NULL, NULL, 'active', '2020-03-15 01:02:30', '2020-03-15 01:02:30', NULL),
(114, '248', '259', 50.00, 'out', 'You have transfer 50.00 PV for delivery order 18 to dolon', NULL, NULL, 'active', '2020-03-15 01:03:10', '2020-03-15 01:03:10', NULL),
(115, '248', '267', 50.00, 'out', 'You have transfer 50.00 PV for delivery order 19 to rubel', NULL, NULL, 'active', '2020-03-15 01:54:43', '2020-03-15 01:54:43', NULL),
(116, '101', '101', 100.00, 'in', 'You have received 100 Point for order 20', NULL, '1', 'active', '2020-03-15 06:20:55', '2020-03-15 06:20:55', NULL),
(117, '101', '101', 100.00, 'out', 'You have Upgrade you account with 100.00 Point', NULL, NULL, 'active', '2020-03-15 06:21:24', '2020-03-15 06:21:24', NULL),
(118, '248', '101', 100.00, 'out', 'You have transfer 100.00 PV for delivery order 20 to standard01', NULL, NULL, 'active', '2020-03-15 06:23:14', '2020-03-15 06:23:14', NULL),
(119, '102', '102', 100.00, 'in', 'You have received 100 Point for order 21', NULL, '1', 'active', '2020-03-15 06:49:22', '2020-03-15 06:49:22', NULL),
(120, '102', '102', 100.00, 'out', 'You have Upgrade you account with 100.00 Point', NULL, NULL, 'active', '2020-03-15 06:54:32', '2020-03-15 06:54:32', NULL),
(121, '280', '280', 100.00, 'in', 'You have received 100 Point for order 22', NULL, '1', 'active', '2020-03-15 06:56:03', '2020-03-15 06:56:03', NULL),
(122, '280', '280', 100.00, 'out', 'You have Upgrade you account with 100.00 Point', NULL, NULL, 'active', '2020-03-15 06:56:23', '2020-03-15 06:56:23', NULL),
(123, '248', '102', 100.00, 'out', 'You have transfer 100.00 PV for delivery order 21 to standard02', NULL, NULL, 'active', '2020-03-15 06:57:54', '2020-03-15 06:57:54', NULL),
(124, '248', '280', 100.00, 'out', 'You have transfer 100.00 PV for delivery order 22 to standardglobal', NULL, NULL, 'active', '2020-03-15 06:58:13', '2020-03-15 06:58:13', NULL),
(125, '262', '262', 50.00, 'in', 'You have received 50 Point for order 23', NULL, '1', 'active', '2020-03-16 06:42:25', '2020-03-16 06:42:25', NULL),
(126, '262', '262', 50.00, 'out', 'You have Upgrade you account with 50.00 Point', NULL, NULL, 'active', '2020-03-16 06:43:05', '2020-03-16 06:43:05', NULL),
(127, '248', '262', 50.00, 'out', 'You have transfer 50.00 PV for delivery order 23 to sojib', NULL, NULL, 'active', '2020-03-16 06:44:47', '2020-03-16 06:44:47', NULL),
(128, '103', '103', 100.00, 'in', 'You have received 100 Point for order 24', NULL, '1', 'active', '2020-03-16 22:27:22', '2020-03-16 22:27:22', NULL),
(129, '103', '103', 100.00, 'out', 'You have Upgrade you account with 100.00 Point', NULL, NULL, 'active', '2020-03-16 22:27:38', '2020-03-16 22:27:38', NULL),
(130, '104', '104', 100.00, 'in', 'You have received 100 Point for order 25', NULL, '1', 'active', '2020-03-16 22:30:30', '2020-03-16 22:30:30', NULL),
(131, '104', '104', 100.00, 'out', 'You have Upgrade you account with 100.00 Point', NULL, NULL, 'active', '2020-03-16 22:30:50', '2020-03-16 22:30:50', NULL),
(132, '1', '1', 10.00, 'in', 'You have received 10 PV for new stock of Rich Dad Poor Dad and product quantity is 10', NULL, NULL, 'active', '2020-03-18 09:19:33', '2020-03-18 09:19:33', NULL),
(133, '1', '1', 15.00, 'in', 'You have received 15 PV for new stock of Power Of Subconscious Mind and product quantity is 10', NULL, NULL, 'active', '2020-03-18 09:19:46', '2020-03-18 09:19:46', NULL),
(134, '244', '244', 50.00, 'in', 'You have received 50 Point for order 26', NULL, '1', 'active', '2020-03-18 10:08:57', '2020-03-18 10:08:57', NULL),
(135, '244', '244', 50.00, 'out', 'You have Upgrade you account with 50.00 Point', NULL, NULL, 'active', '2020-03-18 10:09:24', '2020-03-18 10:09:24', NULL),
(136, '248', '103', 100.00, 'out', 'You have transfer 100.00 PV for delivery order 24 to standard03', NULL, NULL, 'active', '2020-03-18 10:11:42', '2020-03-18 10:11:42', NULL),
(137, '248', '104', 100.00, 'out', 'You have transfer 100.00 PV for delivery order 25 to standard04', NULL, NULL, 'active', '2020-03-18 10:11:55', '2020-03-18 10:11:55', NULL),
(138, '248', '244', 50.00, 'out', 'You have transfer 50.00 PV for delivery order 26 to Amit', NULL, NULL, 'active', '2020-03-18 10:12:12', '2020-03-18 10:12:12', NULL),
(139, '248', '248', 21.00, 'in', 'You have received 21 Point for order 27', NULL, NULL, 'active', '2020-03-18 10:13:15', '2020-03-18 10:13:15', NULL),
(140, '1', '248', 21.00, 'out', 'You have transfer 21.00 PV for delivery order 27 to standard', NULL, NULL, 'active', '2020-03-18 10:14:34', '2020-03-18 10:14:34', NULL),
(141, '282', '282', 50.00, 'in', 'You have received 50 Point for order 28', NULL, '1', 'active', '2020-03-20 00:31:22', '2020-03-20 00:31:22', NULL),
(142, '282', '282', 50.00, 'out', 'You have Upgrade you account with 50.00 Point', NULL, NULL, 'active', '2020-03-20 00:32:15', '2020-03-20 00:32:15', NULL),
(143, '284', '284', 7.00, 'in', 'You have received 7 Point for order 29', NULL, '1', 'active', '2020-03-20 01:06:55', '2020-03-20 01:06:55', NULL),
(144, '261', '261', 4.00, 'in', 'You have received 4 Point for order 30', NULL, '1', 'active', '2020-03-20 01:30:36', '2020-03-20 01:30:36', NULL),
(145, '248', '261', 4.00, 'out', 'You have transfer 4.00 PV for delivery order 30 to Mehedi1', NULL, NULL, 'active', '2020-03-20 01:53:12', '2020-03-20 01:53:12', NULL),
(146, '248', '284', 7.00, 'out', 'You have transfer 7.00 PV for delivery order 29 to Harun', NULL, NULL, 'active', '2020-03-20 01:53:48', '2020-03-20 01:53:48', NULL),
(147, '248', '282', 50.00, 'out', 'You have transfer 50.00 PV for delivery order 28 to Sania', NULL, NULL, 'active', '2020-03-20 01:54:21', '2020-03-20 01:54:21', NULL),
(148, '243', '243', 50.00, 'in', 'You have received 50 Point for order 31', NULL, '1', 'active', '2020-03-21 01:42:19', '2020-03-21 01:42:19', NULL),
(149, '243', '243', 50.00, 'out', 'You have Upgrade you account with 50.00 Point', NULL, NULL, 'active', '2020-03-21 01:42:48', '2020-03-21 01:42:48', NULL),
(150, '284', '284', 0.70, 'in', 'You have received 0.7 Point for order 32', NULL, '1', 'active', '2020-03-21 01:46:45', '2020-03-21 01:46:45', NULL),
(151, '248', '243', 50.00, 'out', 'You have transfer 50.00 PV for delivery order 31 to Rabbi', NULL, NULL, 'active', '2020-03-22 01:00:54', '2020-03-22 01:00:54', NULL),
(152, '248', '284', 0.70, 'out', 'You have transfer 0.70 PV for delivery order 32 to Harun', NULL, NULL, 'active', '2020-03-22 01:01:57', '2020-03-22 01:01:57', NULL),
(153, '1', '1', 50.00, 'in', 'You have received 50 PV for new stock of Power White Powder and product quantity is 50', NULL, NULL, 'active', '2020-03-22 01:07:55', '2020-03-22 01:07:55', NULL),
(154, '248', '248', 50.00, 'in', 'You have received 50 Point for order 33', NULL, NULL, 'active', '2020-03-22 01:08:56', '2020-03-22 01:08:56', NULL),
(155, '1', '248', 50.00, 'out', 'You have transfer 50.00 PV for delivery order 33 to standard', NULL, NULL, 'active', '2020-03-22 01:09:38', '2020-03-22 01:09:38', NULL),
(156, '1', '1', 2500.00, 'in', 'You have received 2500 PV for new stock of Health & Beauty (ctg-01) and product quantity is 50', NULL, NULL, 'active', '2020-03-24 04:26:54', '2020-03-24 04:26:54', NULL),
(157, '1', '1', 5000.00, 'in', 'You have received 5000 PV for new stock of Health & Beauty (ctg-02) and product quantity is 50', NULL, NULL, 'active', '2020-03-24 04:27:05', '2020-03-24 04:27:05', NULL),
(158, '248', '248', 4300.00, 'in', 'You have received 4300 Point for order 34', NULL, NULL, 'active', '2020-03-24 04:37:32', '2020-03-24 04:37:32', NULL),
(159, '1', '248', 4300.00, 'out', 'You have transfer 4300.00 PV for delivery order 34 to standard', NULL, NULL, 'active', '2020-03-24 04:38:06', '2020-03-24 04:38:06', NULL),
(160, '248', '248', 0.35, 'in', 'You have received 0.35 Point for order 35', NULL, NULL, 'active', '2020-04-03 07:10:42', '2020-04-03 07:10:42', NULL),
(161, '1', '1', 14.40, 'in', 'You have received 14.4 PV for new stock of Neam & Clove Toothpaste and product quantity is 12', NULL, NULL, 'active', '2020-04-29 05:28:12', '2020-04-29 05:28:12', NULL),
(162, '1', '1', 2500.00, 'out', 'You have Remove 2500 PV for new stock of Health & Beauty (ctg-01) and product quantity is 50', NULL, NULL, 'active', '2020-04-29 05:28:47', '2020-04-29 05:28:47', NULL),
(163, '1', '1', 100.00, 'in', 'You have received 100 PV for new stock of Power White Powder and product quantity is 100', NULL, NULL, 'active', '2020-04-29 05:29:27', '2020-04-29 05:29:27', NULL),
(164, '284', '284', 0.75, 'in', 'You have received 0.75 Point for order 36', NULL, '1', 'active', '2020-05-03 23:36:22', '2020-05-03 23:36:22', NULL),
(165, '281', '281', 1.00, 'in', 'You have received 1 Point for order 37', NULL, '1', 'active', '2020-05-07 21:33:02', '2020-05-07 21:33:02', NULL),
(166, '264', '264', 0.80, 'in', 'You have received 0.8 Point for order 38', NULL, '1', 'active', '2020-05-09 01:16:08', '2020-05-09 01:16:08', NULL),
(167, '248', '281', 1.00, 'out', 'You have transfer 1.00 PV for delivery order 37 to Afroza', NULL, NULL, 'active', '2020-05-09 01:29:31', '2020-05-09 01:29:31', NULL),
(168, '248', '264', 0.80, 'out', 'You have transfer 0.80 PV for delivery order 38 to sowrove', NULL, NULL, 'active', '2020-05-09 01:29:57', '2020-05-09 01:29:57', NULL),
(169, '1', '1', 77.00, 'in', 'You have received 77 PV for new stock of Green Tea and product quantity is 11', NULL, NULL, 'active', '2020-05-09 01:44:22', '2020-05-09 01:44:22', NULL),
(170, '248', '248', 198.40, 'in', 'You have received 198.4 Point for order 39', NULL, NULL, 'active', '2020-05-09 01:45:54', '2020-05-09 01:45:54', NULL),
(171, '284', '284', 39.00, 'in', 'You have received 39 Point for order 40', NULL, '1', 'active', '2020-05-10 23:02:35', '2020-05-10 23:02:35', NULL),
(172, '1', '248', 198.40, 'out', 'You have transfer 198.40 PV for delivery order 39 to standard', NULL, NULL, 'active', '2020-05-10 23:09:17', '2020-05-10 23:09:17', NULL),
(173, '248', '284', 39.00, 'out', 'You have transfer 39.00 PV for delivery order 40 to Harun', NULL, NULL, 'active', '2020-05-10 23:09:27', '2020-05-10 23:09:27', NULL),
(174, '284', '284', 3.00, 'in', 'You have received 3 Point for order 41', NULL, '1', 'active', '2020-05-10 23:15:27', '2020-05-10 23:15:27', NULL),
(175, '284', '284', 50.45, 'out', 'You have Upgrade you account with 50.45 Point', NULL, NULL, 'active', '2020-05-10 23:16:12', '2020-05-10 23:16:12', NULL),
(176, '354', '354', 50.00, 'in', 'You have received 50 Point for order 42', NULL, '1', 'active', '2020-05-11 00:21:07', '2020-05-11 00:21:07', NULL),
(177, '354', '354', 50.00, 'out', 'You have Upgrade you account with 50.00 Point', NULL, NULL, 'active', '2020-05-11 00:21:48', '2020-05-11 00:21:48', NULL),
(178, '248', '248', 200.00, 'in', 'You have received 200 Point for order 43', NULL, NULL, 'active', '2020-05-11 00:23:07', '2020-05-11 00:23:07', NULL),
(179, '1', '248', 200.00, 'out', 'You have transfer 200.00 PV for delivery order 43 to standard', NULL, NULL, 'active', '2020-05-11 00:23:59', '2020-05-11 00:23:59', NULL),
(180, '248', '354', 50.00, 'out', 'You have transfer 50.00 PV for delivery order 42 to Firoj malot', NULL, NULL, 'active', '2020-05-11 00:24:14', '2020-05-11 00:24:14', NULL),
(181, '248', '284', 3.00, 'out', 'You have transfer 3.00 PV for delivery order 41 to Harun', NULL, NULL, 'active', '2020-05-11 00:24:25', '2020-05-11 00:24:25', NULL),
(182, '354', '354', 0.70, 'in', 'You have received 0.7 Point for order 44', NULL, '1', 'active', '2020-05-11 00:33:29', '2020-05-11 00:33:29', NULL),
(183, '282', '282', 0.35, 'in', 'You have received 0.35 Point for order 45', NULL, '1', 'active', '2020-05-12 00:20:06', '2020-05-12 00:20:06', NULL),
(184, '248', '354', 0.70, 'out', 'You have transfer 0.70 PV for delivery order 44 to Firoj malot', NULL, NULL, 'active', '2020-05-12 02:52:41', '2020-05-12 02:52:41', NULL),
(185, '248', '282', 0.35, 'out', 'You have transfer 0.35 PV for delivery order 45 to Sania', NULL, NULL, 'active', '2020-05-12 02:52:54', '2020-05-12 02:52:54', NULL),
(186, '1', '1', 24.00, 'in', 'You have received 24 PV for new stock of Instant and product quantity is 24', NULL, NULL, 'active', '2020-05-13 05:24:00', '2020-05-13 05:24:00', NULL),
(187, '248', '248', 24.00, 'in', 'You have received 24 Point for order 46', NULL, NULL, 'active', '2020-05-13 05:28:34', '2020-05-13 05:28:34', NULL),
(188, '1', '248', 24.00, 'out', 'You have transfer 24.00 PV for delivery order 46 to standard', NULL, NULL, 'active', '2020-05-13 05:30:08', '2020-05-13 05:30:08', NULL),
(189, '1', '1', 5000.00, 'in', 'You have received 5000 PV for new stock of Soy Combo Pack-(ctg01) and product quantity is 100', NULL, NULL, 'active', '2020-06-01 22:51:09', '2020-06-01 22:51:09', NULL),
(190, '248', '248', 5000.00, 'in', 'You have received 5000 Point for order 47', NULL, NULL, 'active', '2020-06-02 00:27:00', '2020-06-02 00:27:00', NULL),
(191, '1', '248', 5000.00, 'out', 'You have transfer 5000.00 PV for delivery order 47 to standard', NULL, NULL, 'active', '2020-06-02 00:27:48', '2020-06-02 00:27:48', NULL),
(192, '249', '249', 500.00, 'in', 'You have received 500 Point for order 48', NULL, NULL, 'active', '2020-06-02 00:29:27', '2020-06-02 00:29:27', NULL),
(193, '248', '249', 500.00, 'out', 'You have transfer 500.00 PV for delivery order 48 to eshop.com', NULL, NULL, 'active', '2020-06-02 00:36:46', '2020-06-02 00:36:46', NULL),
(194, '281', '281', 3.00, 'in', 'You have received 3 Point for order 49', NULL, '1', 'active', '2020-06-02 23:28:37', '2020-06-02 23:28:37', NULL),
(195, '281', '281', 3.00, 'in', 'You have received 3 Point for order 50', NULL, '1', 'active', '2020-06-02 23:31:32', '2020-06-02 23:31:32', NULL),
(196, '281', '281', 1.00, 'in', 'You have received 1 Point for order 51', NULL, '1', 'active', '2020-06-02 23:34:20', '2020-06-02 23:34:20', NULL),
(197, '1', '1', 36.00, 'in', 'You have received 36 PV for new stock of Neem & Clove Toothpaste and product quantity is 30', NULL, NULL, 'active', '2020-06-03 11:23:40', '2020-06-03 11:23:40', NULL),
(198, '248', '248', 1052.00, 'in', 'You have received 1052 Point for order 52', NULL, NULL, 'active', '2020-06-03 11:32:53', '2020-06-03 11:32:53', NULL),
(199, '248', '281', 3.00, 'out', 'You have transfer 3.00 PV for delivery order 49 to Afroza', NULL, NULL, 'active', '2020-06-03 11:34:21', '2020-06-03 11:34:21', NULL),
(200, '248', '281', 3.00, 'out', 'You have transfer 3.00 PV for delivery order 50 to Afroza', NULL, NULL, 'active', '2020-06-03 11:35:04', '2020-06-03 11:35:04', NULL),
(201, '248', '281', 1.00, 'out', 'You have transfer 1.00 PV for delivery order 51 to Afroza', NULL, NULL, 'active', '2020-06-03 11:35:51', '2020-06-03 11:35:51', NULL),
(202, '1', '248', 1052.00, 'out', 'You have transfer 1052.00 PV for delivery order 52 to standard', NULL, NULL, 'active', '2020-06-03 11:36:14', '2020-06-03 11:36:14', NULL),
(203, '249', '249', 313.00, 'in', 'You have received 313 Point for order 53', NULL, NULL, 'active', '2020-06-03 11:42:17', '2020-06-03 11:42:17', NULL),
(204, '248', '249', 313.00, 'out', 'You have transfer 313.00 PV for delivery order 53 to eshop.com', NULL, NULL, 'active', '2020-06-03 11:44:14', '2020-06-03 11:44:14', NULL),
(205, '361', '361', 50.00, 'in', 'You have received 50 Point for order 54', NULL, '1', 'active', '2020-06-06 23:17:00', '2020-06-06 23:17:00', NULL),
(206, '361', '361', 50.00, 'out', 'You have Upgrade you account with 50.00 Point', NULL, NULL, 'active', '2020-06-06 23:17:49', '2020-06-06 23:17:49', NULL),
(207, '248', '361', 50.00, 'out', 'You have transfer 50.00 PV for delivery order 54 to Nasir', NULL, NULL, 'active', '2020-06-09 02:23:04', '2020-06-09 02:23:04', NULL),
(208, '363', '363', 50.00, 'in', 'You have received 50 Point for order 55', NULL, '1', 'active', '2020-06-10 00:57:00', '2020-06-10 00:57:00', NULL),
(209, '363', '363', 50.00, 'out', 'You have Upgrade you account with 50.00 Point', NULL, NULL, 'active', '2020-06-10 00:57:42', '2020-06-10 00:57:42', NULL),
(210, '248', '363', 50.00, 'out', 'You have transfer 50.00 PV for delivery order 55 to Habib', NULL, NULL, 'active', '2020-06-10 03:53:54', '2020-06-10 03:53:54', NULL),
(211, '335', '335', 50.00, 'in', 'You have received 50 Point for order 56', NULL, '1', 'active', '2020-06-10 06:20:33', '2020-06-10 06:20:33', NULL),
(212, '335', '335', 50.00, 'out', 'You have Upgrade you account with 50.00 Point', NULL, NULL, 'active', '2020-06-10 06:21:25', '2020-06-10 06:21:25', NULL),
(213, '330', '330', 50.00, 'in', 'You have received 50 Point for order 57', NULL, '1', 'active', '2020-06-10 06:24:15', '2020-06-10 06:24:15', NULL),
(214, '330', '330', 50.00, 'out', 'You have Upgrade you account with 50.00 Point', NULL, NULL, 'active', '2020-06-10 06:24:45', '2020-06-10 06:24:45', NULL),
(215, '313', '313', 50.00, 'in', 'You have received 50 Point for order 58', NULL, '1', 'active', '2020-06-10 06:27:12', '2020-06-10 06:27:12', NULL),
(216, '313', '313', 50.00, 'out', 'You have Upgrade you account with 50.00 Point', NULL, NULL, 'active', '2020-06-10 06:27:58', '2020-06-10 06:27:58', NULL),
(217, '365', '365', 50.00, 'in', 'You have received 50 Point for order 59', NULL, '1', 'active', '2020-06-10 21:33:31', '2020-06-10 21:33:31', NULL),
(218, '365', '365', 50.00, 'out', 'You have Upgrade you account with 50.00 Point', NULL, NULL, 'active', '2020-06-10 21:34:15', '2020-06-10 21:34:15', NULL),
(219, '248', '365', 50.00, 'out', 'You have transfer 50.00 PV for delivery order 59 to Shahadat', NULL, NULL, 'active', '2020-06-11 06:15:25', '2020-06-11 06:15:25', NULL),
(220, '377', '377', 50.00, 'in', 'You have received 50 Point for order 60', NULL, '1', 'active', '2020-06-11 23:29:07', '2020-06-11 23:29:07', NULL),
(221, '377', '377', 50.00, 'out', 'You have Upgrade you account with 50.00 Point', NULL, NULL, 'active', '2020-06-11 23:29:45', '2020-06-11 23:29:45', NULL),
(222, '260', '260', 50.00, 'in', 'You have received 50 Point for order 61', NULL, '1', 'active', '2020-06-12 00:10:50', '2020-06-12 00:10:50', NULL),
(223, '260', '260', 50.00, 'out', 'You have Upgrade you account with 50.00 Point', NULL, NULL, 'active', '2020-06-12 00:12:07', '2020-06-12 00:12:07', NULL),
(224, '248', '260', 50.00, 'out', 'You have transfer 50.00 PV for delivery order 61 to monir', NULL, NULL, 'active', '2020-06-12 00:23:43', '2020-06-12 00:23:43', NULL),
(225, '248', '377', 50.00, 'out', 'You have transfer 50.00 PV for delivery order 60 to Salma', NULL, NULL, 'active', '2020-06-12 00:23:57', '2020-06-12 00:23:57', NULL),
(226, '281', '281', 3.00, 'in', 'You have received 3 Point for order 62', NULL, '1', 'active', '2020-06-12 02:30:06', '2020-06-12 02:30:06', NULL),
(227, '248', '281', 3.00, 'out', 'You have transfer 3.00 PV for delivery order 62 to Afroza', NULL, NULL, 'active', '2020-06-13 03:18:46', '2020-06-13 03:18:46', NULL),
(228, '369', '369', 13.00, 'in', 'You have received 13 Point for order 63', NULL, '1', 'active', '2020-06-14 23:54:16', '2020-06-14 23:54:16', NULL),
(229, '248', '369', 13.00, 'out', 'You have transfer 13.00 PV for delivery order 63 to shahed ahamed', NULL, NULL, 'active', '2020-06-15 02:10:25', '2020-06-15 02:10:25', NULL),
(230, '410', '410', 50.00, 'in', 'You have received 50 Point for order 64', NULL, NULL, 'active', '2020-06-15 03:37:08', '2020-06-15 03:37:08', NULL),
(231, '1', '410', 50.00, 'out', 'You have transfer 50.00 PV for delivery order 64 to e-Shopdhkhq', NULL, NULL, 'active', '2020-06-15 03:38:15', '2020-06-15 03:38:15', NULL),
(232, '1', '1', 50.00, 'in', 'You have received 50 Point for order 65', NULL, NULL, 'active', '2020-06-15 03:39:53', '2020-06-15 03:39:53', NULL),
(233, '248', '1', 50.00, 'out', 'You have transfer 50.00 PV for delivery order 65 to admin', NULL, NULL, 'active', '2020-06-15 04:02:54', '2020-06-15 04:02:54', NULL),
(234, '249', '249', 48.75, 'in', 'You have received 48.75 Point for order 66', NULL, NULL, 'active', '2020-06-15 04:12:39', '2020-06-15 04:12:39', NULL),
(235, '248', '249', 48.75, 'out', 'You have transfer 48.75 PV for delivery order 66 to eshop.com', NULL, NULL, 'active', '2020-06-15 04:14:13', '2020-06-15 04:14:13', NULL),
(236, '1', '1', 16.80, 'in', 'You have received 16.8 PV for new stock of Hair Removal Cream and product quantity is 12', NULL, NULL, 'active', '2020-06-15 11:34:10', '2020-06-15 11:34:10', NULL),
(237, '1', '1', 16.80, 'in', 'You have received 16.8 PV for new stock of Hair Removal Cream and product quantity is 12', NULL, NULL, 'active', '2020-06-15 11:34:10', '2020-06-15 11:34:10', NULL),
(238, '1', '1', 16.80, 'out', 'You have Remove 16.8 PV for new stock of Hair Removal Cream and product quantity is 12', NULL, NULL, 'active', '2020-06-15 11:34:30', '2020-06-15 11:34:30', NULL),
(239, '1', '1', 16.80, 'out', 'You have Remove 16.8 PV for new stock of Hair Removal Cream and product quantity is 12', NULL, NULL, 'active', '2020-06-15 11:34:30', '2020-06-15 11:34:30', NULL),
(240, '1', '1', 16.80, 'out', 'You have Remove 16.8 PV for new stock of Hair Removal Cream and product quantity is 12', NULL, NULL, 'active', '2020-06-15 11:34:51', '2020-06-15 11:34:51', NULL),
(241, '1', '1', 33.60, 'in', 'You have received 33.6 PV for new stock of Hair Removal Cream and product quantity is 24', NULL, NULL, 'active', '2020-06-15 11:35:26', '2020-06-15 11:35:26', NULL),
(242, '248', '248', 16.80, 'in', 'You have received 16.8 Point for order 67', NULL, NULL, 'active', '2020-06-15 22:55:26', '2020-06-15 22:55:26', NULL),
(243, '1', '248', 16.80, 'out', 'You have transfer 16.80 PV for delivery order 67 to standard', NULL, NULL, 'active', '2020-06-15 22:57:08', '2020-06-15 22:57:08', NULL),
(244, '1', '1', 150.00, 'in', 'You have received 150 PV for new stock of Aloevera Sampoo and product quantity is 50', NULL, NULL, 'active', '2020-06-15 23:16:36', '2020-06-15 23:16:36', NULL),
(245, '220', '220', 1.35, 'in', 'You have received 1.35 Point for order 68', NULL, '1', 'active', '2020-06-16 00:53:33', '2020-06-16 00:53:33', NULL),
(246, '248', '220', 1.35, 'out', 'You have transfer 1.35 PV for delivery order 68 to akhifahim', NULL, NULL, 'active', '2020-06-16 01:02:34', '2020-06-16 01:02:34', NULL),
(247, '248', '248', 1000.00, 'in', 'You have received 1000 Point for order 69', NULL, NULL, 'active', '2020-06-16 05:59:36', '2020-06-16 05:59:36', NULL),
(248, '1', '248', 1000.00, 'out', 'You have transfer 1000.00 PV for delivery order 69 to standard', NULL, NULL, 'active', '2020-06-16 06:00:41', '2020-06-16 06:00:41', NULL),
(249, '378', '378', 50.00, 'in', 'You have received 50 Point for order 70', NULL, '1', 'active', '2020-06-16 06:03:45', '2020-06-16 06:03:45', NULL),
(250, '378', '378', 50.00, 'out', 'You have Upgrade you account with 50.00 Point', NULL, NULL, 'active', '2020-06-16 06:04:03', '2020-06-16 06:04:03', NULL),
(251, '248', '378', 50.00, 'out', 'You have transfer 50.00 PV for delivery order 70 to Foysal', NULL, NULL, 'active', '2020-06-16 06:15:18', '2020-06-16 06:15:18', NULL),
(252, '249', '249', 16.80, 'in', 'You have received 16.8 Point for order 71', NULL, NULL, 'active', '2020-06-17 00:32:11', '2020-06-17 00:32:11', NULL),
(253, '248', '249', 16.80, 'out', 'You have transfer 16.80 PV for delivery order 71 to eshop.com', NULL, NULL, 'active', '2020-06-17 00:34:01', '2020-06-17 00:34:01', NULL);

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
  `product_des` text COLLATE utf8mb4_unicode_ci,
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
(1, 1, 1, 1, 1, 'Soy Protein Gold', 'SSPP#01', 'STANDARD_SOY _PROTEIN_GOLD\r\nউপকারিতা: *ওজন বা মেদ-ভুড়ি কমাতে অদ্বিতীয়, * হৃদরোগ প্রতিরোধে কার্যকরী, * কোলেষ্টেরল নিয়ন্ত্রনে কার্যকরী,* হাড়ক্ষয় রোধ করে, * রক্তের কোলেষ্টেরল কমায়,* আকর্ষনীয় দেহ নিশ্চিত করে, সোন্দর্য্য বৃদ্ধি করে।\r\nউপাদান: উতকৃষ্টমানের ফার্মেন্টেড সয়া প্রোটিন, হোয়াইট ওট, বেঙ্গলল গ্রাম, গ্রীন গ্রাম, বিভিন্ন প্রকার বীনস ও রাইস ব্রান।\r\nসেবন বিধি: ৪ চামচ পাউডার ঠান্ডা ও বিভিন্ন প্রকার পাকা ফল বা ফলের রস/লেবু/ কমলার রস, এর সহিত ব্লেন্ডিং করে পানি শরবত, পরিবর্তিত খাদ্য রূপে পরামর্শ অনুযায়ী দিনে ১বা ২ বার সেব্য।\r\n\r\nপ্যাক সাইজ : ৫০০গ্রাম\r\n\r\nসতর্কতা: কিডনী, স্কীন এলার্জি ও থাইরোয়েড সমস্যা যুক্ত রোগিদের ক্ষেত্রে পরামর্শ ছাড়া সয়া প্রোটিন সেবন নিষেধ।', '800.00', '700.00', NULL, '13', 'upload/product/SOY_PROTEIN_GOLD1576935395.jpg', 'True', 'Single', 'Active', '2019-12-21 13:36:36', '2020-03-09 12:09:45', NULL),
(2, 1, 1, 1, 1, 'SOY_PROTEIN_GOLD', 'SSPP#01', 'STANDARD_SOY _PROTEIN_GOLD\nউপকারিতা: *ওজন বা মেদ-ভুড়ি কমাতে অদ্বিতীয়, * হৃদরোগ প্রতিরোধে কার্যকরী, * কোলেষ্টেরল নিয়ন্ত্রনে কার্যকরী,* হাড়ক্ষয় রোধ করে, * রক্তের কোলেষ্টেরল কমায়,* আকর্ষনীয় দেহ নিশ্চিত করে, সোন্দর্য্য বৃদ্ধি করে।\nউপাদান: উতকৃষ্টমানের ফার্মেন্টেড সয়া প্রোটিন, হোয়াইট ওট, বেঙ্গলল গ্রাম, গ্রীন গ্রাম, বিভিন্ন প্রকার বীনস ও রাইস ব্রান।\nসেবন বিধি: ৪ চামচ পাউডার ঠান্ডা ও বিভিন্ন প্রকার পাকা ফল বা ফলের রস/লেবু/ কমলার রস, এর সহিত ব্লেন্ডিং করে পানি শরবত, পরিবর্তিত খাদ্য রূপে পরামর্শ অনুযায়ী দিনে ১বা ২ বার সেব্য।\n\nপ্যাক সাইজ : ৫০০গ্রাম\n\nসতর্কতা: কিডনী, স্কীন এলার্জি ও থাইরোয়েড সমস্যা যুক্ত রোগিদের ক্ষেত্রে পরামর্শ ছাড়া সয়া প্রোটিন সেবন নিষেধ।', '800.00', '700.00', '000', '17.5', 'upload/product/SOY_PROTEIN_GOLD1576935397.jpg', 'True', 'Single', 'Active', '2019-12-21 13:36:37', '2019-12-21 13:39:38', '2019-12-21 13:39:38'),
(3, 1, 1, 1, 1, 'STANDARD_GLUCO_CURE_PLUS', 'SGCP#02', 'Standard_Gluco_ Cure_Plas.\nউপকারীতা: *ব্লাড সুগার নিয়ন্ত্রণ করে, * প্যানক্রিয়াসের কর্মক্ষমতা বৃদ্ধি করে, * ইনসুলিন উতপাদন বৃদ্ধি করে,* বাহ্যিকভাবে Drug বা ইনসুলিন গ্রহনের মাত্রা ক্রমান্বয়ে কমিয়ে আনে,* গ্যাংরিন বা ডায়াবেটিস জনিত ইনফেকশন কমাতে সাহায্য করে।\nIngredients: Soya Protein Powder, Amloki, korela, Jambiz,Alfalfa, Leaf, Garlic, Methi,Chirota, Kalojira and many Other nutritional suppliment.\n\nসেবন বিধি: ২চামচ পাউডার ১ গ্লাস ঠান্ডা পানির সহিত সকালে ও বিকালে\nখালি পেটে দিনে ২ বার সেব্য।\n\nপ্যাক সাইজ: ৪০০গ্রাম', '850.00', '750.00', '000', '17.5', 'upload/product/STANDARD_GLUCO_CURE_PLUS1576935788.jpg', 'True', 'Single', 'Active', '2019-12-21 13:43:09', '2019-12-21 13:44:01', '2019-12-21 13:44:01'),
(4, 1, 1, 1, 1, 'Gluco Cure Plus', 'SGCP#02', 'Standard_Gluco_ Cure_Plas.\r\nউপকারীতা: *ব্লাড সুগার নিয়ন্ত্রণ করে, * প্যানক্রিয়াসের কর্মক্ষমতা বৃদ্ধি করে, * ইনসুলিন উতপাদন বৃদ্ধি করে,* বাহ্যিকভাবে Drug বা ইনসুলিন গ্রহনের মাত্রা ক্রমান্বয়ে কমিয়ে আনে,* গ্যাংরিন বা ডায়াবেটিস জনিত ইনফেকশন কমাতে সাহায্য করে।\r\nIngredients: Soya Protein Powder, Amloki, korela, Jambiz,Alfalfa, Leaf, Garlic, Methi,Chirota, Kalojira and many Other nutritional suppliment.\r\n\r\nসেবন বিধি: ২চামচ পাউডার ১ গ্লাস ঠান্ডা পানির সহিত সকালে ও বিকালে\r\nখালি পেটে দিনে ২ বার সেব্য।\r\n\r\nপ্যাক সাইজ: ৪০০গ্রাম', '850.00', '750.00', NULL, '14', 'upload/product/STANDARD_GLUCO_CURE_PLUS1576935789.jpg', 'True', 'Single', 'Active', '2019-12-21 13:43:09', '2020-03-08 10:53:12', NULL),
(5, 1, 1, 1, 1, 'Female Care Gold', 'SFCG#03', 'Female_Care_Gold\r\n\r\nউপকারীতা: আমাদের দেশের মহিলারা সাধারণত সংসারের সকল কাজকর্ম ও স্বামী সন্তানের সেবা সম্পাদনে ব্যস্ত থাকায় নিজের স্বাস্থ্যের প্রতি উদাসীন থাকে, ফলে পূষ্টিহীনতার কারনে দেহ শীর্নতায় অথবা চর্বিবহুল হয়ে পরে, ফলে নানা প্রকার স্ত্রীরোগ, তথা শ্বেতপ্রদর, অকাল রক্তপ্রদর, সিষ্ট/টিউমার, মাসিকের গোলযোগ, অকাল ঋতুবন্ধ ও অল্প বয়সে দেহের সোন্দর্য্য চর্মে বৃদ্ধার ছাপ পরিলক্ষিত হয়। এ সকল ক্ষেত্রে \"\"ফিমেল কেয়ার গোল্ড\"\" একটি উৎকৃষ্ট সুফলদায়ক পুষ্টি টনিক হিসেবে প্রমানিত হয়েছে, নিয়মিত সেবনে মাথার চুল থেকে হাত-পায়ের নখের ও বক্ষের সোন্দর্য বৃদ্ধি, মুখমন্ডলের লাবন্যতা, প্রান চঞ্চলতা, কর্মশক্তি ও মানসিক প্রশান্তি বৃদ্ধি পায়। অকাল ঋতু বন্ধের কারন দূরীভূত হয়ে যৌবন দীর্ঘায়িত হয়।\r\n\r\nসেবন বিধি: ১ বা ২ চামচ পাউডার ১গ্লাস ঠান্ডা পানির সহিত সকাল ও বিকাল খালি পেটে সেব্য।\r\n\r\nপ্যাক সাইজ: ৩০০গ্রাম', '800.00', '700.00', NULL, '14', 'upload/product/FEMALE_CARE_GOLD1576935991.jpg', 'True', 'Single', 'Active', '2019-12-21 13:46:31', '2020-03-08 10:53:34', NULL),
(6, 1, 1, 1, 1, 'Baby Life Plus', 'SBLP#04', 'BABY_LIFE_PLUS\r\nউপকারীতা: শিশুদের সু-স্বাস্থ্য সুরক্ষা, স্বাস্থ্য বর্ধক, মাংসপেশি ও হাড়কে ক্যালসিয়াম সমৃদ্ধ মজবুত করে। ব্রেইন পাওয়ার, IQ মেধাশক্তি, ক্ষুধা বৃদ্ধি এবং প্রাত্যাহিক অধ্যায়ন, খেলাধুলা ও বিভিন্ন কারিকুলামে অংশ গ্রহনে উদ্যমি, তারুণ্যদীপ্ত করে তোলে, বেবী লাইফ ফুড সাপ্লিমেন্ট কোন দুধের বিকল্প খাদ্য নয়। ২ বছরের উর্ধে সকল শিশুদের প্রাত্যাহিক খাদ্য অভ্যাসের সাথে অতিরিক্ত ভাবে এই পুষ্টি খাদ্য অতি প্রয়োজনীয় প্রোটিন, ভিটামিন মিনারেল ও ওমেগা-৩ (DHA, EFA, Co-Q-10) খাদ্য উপাদান সরবরাহ করে ফলে একটি স্বাস্থ্যদিপ্ত ও মেধা সমৃদ্ধ শিশু গঠনে ইহার কোন বিকল্প পুষ্টি খাদ্য আমাদের দেশে নেই।\r\n\r\nসেবন বিধি: ২/৩ চা চামচ পাউডার এক বা আধা গ্লাস পাতলা দুধ, পাকা কলা, মিষ্টি দই, এর সাথে ব্লেন্ডিং করে সকালে ও বিকালে খাবারের ১ ঘন্টা পরে সেবন বাঞ্ছনীয়।\r\n\r\nখুচরা মূল্যঃ৮০০.০০\r\nপ্যাক সাইজ: ৩০০গ্রাম', '800.00', '700.00', NULL, '14', 'upload/product/BABY_LIFE_PLUS1576936328.jpg', 'True', 'Single', 'Active', '2019-12-21 13:52:08', '2020-03-08 10:53:57', NULL),
(7, 1, 1, 1, 1, 'Agro Vita Gold', 'SBLP#05', 'AGRO_ভিটা_গোল্ডঃ\r\nপুরুষ ও মহিলাদের গোপন শক্তি বর্ধক খাদ্য কার্যকারিতাঃ *সাধারন বল কারক, *শক্তি বর্ধক, *মহিলা ও পুরুষের হর্মোন ব্যালেন্স ফিরিয়ে আনে, *শুক্রানু বৃদ্ধি করে এবং বন্ধ্যাত্ব দূরীকরনে সহায়তা করে, *দাম্পত্য জীবনকে আনন্দদায়ক করে ।Ingredients: Korean Red Ginseng, White Oat, Mashroom, Damiana, Alfalfa Leaf, Tribulus, Aswaganda, Crocas sat, Velvet bean, Soya protein . সেবন বিধিঃ প্রয়োজন অনুসারে দুপুরের/রাতের খাবারের ১ ঘন্টা পরে হাফ/১ চা চামচ পাউডার কুসুম গরম পানি/চা দুধের সাথে মিশিয়ে সেব্য । প্যাক\r\n\r\nসাইজঃ ১০০ গ্রাম', '800.00', '700.00', NULL, '14', 'upload/product/Agro Vita Gold1587652915.jpg', 'True', 'Single', 'Active', '2019-12-21 13:55:50', '2020-04-23 08:41:55', NULL),
(8, 1, 1, 1, 1, 'Triphala Plus', 'STFP#06', '“স্ট্যান্ডার্ড ত্রিফলা প্লাস”\r\nসুস্থ থাকুন, সুস্থ রাখুন। ব্যবহার করুন হাজার বছরের পরীক্ষিত ভেষজ সাপ্লিমেন্ট “স্ট্যান্ডার্ড ত্রিফলা প্লাস” যা এখন Medicated Measurement-এ আধুনিক বোতলজাত পদ্ধতিতে উৎপাদিত হচ্ছে এবং বাংলাদেশে \"Triphala Plus\" নামে বাজারজাত হচ্ছে।\r\n\r\nউপকারীতাসমুহ: প্রতিদিন রাতে খাওয়ার পরে এক চা চামচ পরিমাণ Triphala Plus এর পাউডার পরিমাণমত হালকা গরম পানিতে মিশিয়ে টানা ১২০ দিন সেবন করলে নিন্মোক্ত সমস্যা সমুহ থেকে স্থায়ী মুক্তি মিলবে, ইনশাআল্লাহ।\r\n\r\n১) নতুন ও পুরাতন গ্যাস্ট্রিক (বুক জ্বলা, এসিডিটি, গ্যাস জনিত বায়ূর কারণে পেটে ব্যাথা ইত্যাদি)\r\n২) পুরাতন আমাশয় (পেটে কামড় দিয়ে পায়খানার বেগ হওয়া, খাওয়ার পরপরই পায়খানার বেগ হওয়া, মাঝে মাঝে পেটে ব্যাথা ইত্যাদি)\r\n৩) কোষ্ঠকাঠিন্য (নিয়মিত পায়খানা না হওয়া, পায়খানা কষা ও শক্ত হওয়া, পায়খানার সময় কষ্ট অনুভব করা ইত্যাদি)\r\n৪) পাকস্থলীর দূর্বলতা (ক্ষুধা মন্দা, খাবার ঠিকমত হজম না হওয়া, একবার খাবার পর অনেক দেরীতে ক্ষুধা লাগা, খাবারে অরুচি ইত্যাদি)\r\n৫) পাইলস\r\n৬) আলসার\r\n\r\nবিশেষ দ্রষ্টব্য: * Triphala Plus ২ বছরের উপরে সকল বয়সের জন্য প্রযোয্য। তবে ২ বছর এর উপর থেকে ৯ বছর বয়সের শিশুদের জন্য আধা চামচ খাওয়াতে হবে।\r\nTriphala Plus শতভাগ প্রাকৃতিক ভেষজ খাবার, তাই ইহা সম্পূর্ণ\r\nপার্শ্ব প্রতিক্রিয়া মুক্ত।\r\nবয়স্কদের ক্ষেত্রে প্রথম ৩/৪ দিন পায়খানা নরম হওয়া স্বাভাবিক।\r\nweigth: 100 gm\r\nRetail Price: 450.00', '450.00', '400.00', NULL, '8.5', 'upload/product/Triphala Plus1587652873.jpg', 'True', 'Single', 'Active', '2019-12-21 14:00:45', '2020-04-23 08:41:13', NULL),
(9, 1, 1, 3, 1, 'EFA Omega 3,6,9', 'SEFA#07', 'EFA উপকারীতাঃOmega-3+Co-Q-10 100% Natural anti oxident একমাত্র প্রাকৃতিক উৎস Leen seed/flax seed ,Almond,wallnut ও pistacio থেকে cold process পদ্ধতিতে আহরিত Omega-3 (৫৭%) এবং মালেশিয়া থেকে আমদানীকৃত ২৫% Carotino Co-angyme-Q-10 এর সাথে সংমিশ্রনের মাধ্যমে এই পুষ্টি খাদ্য সাপ্লিমেন্ট উৎপাদন করা হয়। নিয়মিত সেবনে দেহের বাড়তি কলেষ্টেরল ,ট্রাইগ্লিসারিয়েডের মাত্রা ক্রম্বানয়ে কমিয়ে এনে স্বাভাবিক করে। ওমেগা-৩ ও Co-Q-10 এর অভাবে করোনারী আর্টারীতে রক্ত ও চর্বি জমাট বেধে হার্ট ব্লকেজ সৃষ্টি করে এবং হার্ট এটাক ও ষ্ট্রোকের ঝুকি বাড়িয়ে দেয়। এমতাবস্থায় EFA নিয়মিত সেবনে আর্টারী ব্লকেজ ও জমাট বাধা চর্বি গলিয়ে নিঃস্বরন করতে বিস্ময়কর ভাবে কার্যকরী।                                              সেবনবিধিঃ প্রত্যেহ সকাল ও রাতে ৫মিলি ১ চা-চামচ ইএফএ আধা কাপ টক দইয়ের সাথে ব্লেন্ড করে পরামর্শ অনুযায়ী সেব্য। \r\n\r\nওজনঃ ২৫০ মিলি', '700.00', '600.00', NULL, '11', 'upload/product/EFA Omega 3,6,91579949662.jpg', 'True', 'Single', 'Active', '2019-12-21 14:05:33', '2020-03-08 10:55:20', NULL),
(10, 2, 1, 2, 1, 'Tulsi Dry Juice', 'STFP#08', '✔️তুলসি_ড্রাই_জুস শরবত\r\n★★ তুলসি_ড্রাই_জুস কেন খাবেন???\r\n\r\n★★ উপকারিতাঃ\r\nশীতলকারক পানীয় হিসাবে পান করা যায়। অন্যান্য শরবত, লেবু পানি ও ফালুদার সাথে ব্যবহার করা যায়। ঠান্ডা, কাশি ও শ্বাসতন্ত্রের জন্য উপকারী পানীয়। হজমে সাহায্য করে ও কোষ্ঠকাঠিন্য উপকারী ভেষজ পানীয়। শরীরের ক্লান্তি দুর করে ও দেহ-মন সতেজ রাখে।\r\n\r\n★★ উপকরণঃ\r\nতুলসি বীজ, স্টেভিয়া, ইসুবগুল,ভিটামিন সি ও অন্যান্য হারবাল উপাদানের মিশ্রণ।\r\n\r\n★★ জুস তৈরির নিয়মঃ\r\n১ গ্লাস পানির মধ্যে ১ টি প্যাকেট ড্রাই জুস ঢেলে চামচ দিয়ে নেঢ়ে ২ মিনিট পর পান করুন।\r\n\r\nওজনঃ ১বক্স ৩৫পিছ স্যাসেট, ১৭৫ গ্রাম।\r\n\r\nমূল্যঃ ৫২৫.০০/-', '525.00', '480.00', NULL, '7', 'upload/product/TULSI_DRY_JUICE1576937298.jpg', 'True', 'Single', 'Active', '2019-12-21 14:08:18', '2020-03-09 12:08:53', NULL),
(11, 2, 1, 2, 1, 'Green Tea', 'STFP#09', 'উপকরণঃ চা পাতা কুড়ি ও অন্যান্য উপকরণ ।\r\nউপকারিতাঃ উচ্চরক্তচাপ নিয়ন্ত্রনে রাখে, গ্রিন চা-এ ম্যাঙ্গানিজ, পটাশিয়াম ও জিংক আছে ফলে হৃদরোগ, ক্যানসার প্রতিরোধ করে শরীর বৃদ্ধির কাজ করে। এন্টি-অক্সিডেন্ট সমৃদ্ধ হওয়ায় বার্ধক্য দেরিতে আসে । ১ কাপ গ্রিন চা-এ ৫৮ মিলি গ্রাম ক্যাফেইন থাকে । এই ক্যাফেইন শরীরকে সতেজ রাখে । চায়ের ফ্লাভোনয়েডের মধ্যে অধিক পরিমান এন্টি-অক্সিডেন্ট আছে ফলে শরীরের ক্ষতিকারক ইলেক্ট্রনের ভারসাম্য ফেরায়। \r\n\r\nটি ব্যাগ যত বেশী সময় গরম পানির কাপে থাকবে ততবেশি গুনাগুন বৃদ্ধি পাবে । \r\n\r\nচা তৈরির নিয়মঃ ফুটন্ত ১ কাপ পানির মধ্যে ১টি ব্যাগ রেখে ১-২ মিনিট নাড়াচাড়া করুণ । প্রয়োজনমত চিনি অথবা মধু মিশান ।\r\n\r\n৫০ টি টি ব্যাগ ৭৫ গ্রাম ।', '450.00', '400.00', NULL, '7', 'upload/product/Green Tea1591458195.jpg', 'True', 'Single', 'Active', '2019-12-21 14:10:15', '2020-06-11 22:47:51', NULL),
(12, 2, 1, 2, 1, 'Tulsi Tea', 'STT#10', 'USFHSFCVJ', '400.00', '350.00', NULL, '8', 'upload/product/TULSI_TEA1576937485.jpg', 'True', 'Single', 'Active', '2019-12-21 14:11:25', '2020-03-08 10:02:07', '2020-03-08 10:02:07'),
(13, 2, 1, 2, 1, 'Masala Tea', 'SMT#11', '\'\'Prevention is better than cure\'\' (প্রতিকারের চেয়ে প্রতিরোধ শ্রেয়)\r\nআসসালামু আলাইকুম, আপনাকে বলছি! চা-তো করচ্ছেনই ভালো ও সুস্বাস্থ্যকর চা পান করুণ ।\r\n-স্ট্যান্ডার্ড মাসালা চা-\r\nউপকরনঃ দারুচিনি, এলাচ, লবঙ্গ, তেজপাতা, যষ্ঠিমধু, বাছাইকৃত চা পাতার কুড়ি ও অন্যান্য উপকারী ভেষজ উপকরণ ।\r\n\r\nউপকারিতাঃ\r\n১. সতেজ কারক পানীয় ।\r\n২. হজম শক্তি বৃদ্ধিতে সহায়ক ।\r\n৩. শ্বাস যন্ত্রের জ্বালা-পোড়া ও খুশখুশে ভাব দূর করে ।\r\n৪. বিভিন্ন প্রকার শারীরিক ব্যাথা দূর করে ।\r\n৫. রোগ প্রতিরোধ ক্ষমতা বাড়ায় ও মানসিক চাপ কমায় ।\r\n\r\nটি ব্যাগ যত বেশী সময় গরম পানির কাপে থাকবে ততবেশী গুনাগুন বৃদ্ধি পাবে ।\r\n\r\nচা তৈরির নিয়মঃ\r\nফুটন্ত গরম ১ কাপ পানির মধ্যে ১টি ব্যাগ রেখে ১-২ মিনিট নাড়াচাড়া করুণ ।\r\nপ্রয়োজনমত চিনি অথবা মধু মিশান ।\r\n\r\nপরিমাণঃ ৫০টি টি ব্যাগ ৭৫ গ্রাম ।', '450.00', '400.00', NULL, '7', 'upload/product/Masala Tea1591458332.jpg', 'True', 'Single', 'Active', '2019-12-21 14:13:22', '2020-06-11 22:47:16', NULL),
(14, 2, 1, 2, 1, 'Slim Tea', 'SSL#01', 'RT5YRYR', '550.00', '500.00', '000', '10', 'upload/product/SLIM_TEA1576937659.jpg', 'True', 'Single', 'Active', '2019-12-21 14:14:19', '2020-03-08 10:04:32', '2020-03-08 10:04:32'),
(15, 2, 1, 3, 1, 'Black Seed Oil', 'SBSO#12', 'RETETERTGRG', '650.00', '600.00', '000', '12', 'upload/product/BLACK_SEED_OIL1576937944.jpg', 'True', 'Single', 'Active', '2019-12-21 14:19:05', '2020-01-29 10:52:58', '2020-01-29 10:52:58'),
(16, 2, 1, 2, 1, 'Detox Foot Patch', 'SDFP#13', 'DETOX FOOT PATCH\r\nব্যবহার করুন নিজেকে বিষ মুক্ত রাখুন।\r\nউপকারিতা: * ডিটক্স ফুড প্যাচ ব্যবহারে বাতের ব্যথা,হাটু ব্যথা,কোমর ব্যথা,এবং মাংশপেশীর ব্যথা কমিয়ে শরীরকে ঝরঝরে করে তোলে।শরীরের ভিতর অতিরিক্ত চর্বি জাতীয় পদার্থ শোষন করে,রক্তের কোলেস্টেরল কমাতে সাহায্য করে,ব্লাড প্রেশার নিয়ন্ত্রণ রাখে,চামড়ার কালো দাগ ও কুঁচকানো রোধ করে।এজমা ও ব্রংকাইটিসে বিশেষ উপকারী।ঘামের দুর্গন্ধ ও পায়ের মোজার দুর্গন্ধ দূর করে।পরিপাক তন্ত্রের কার্যকারীতা বাড়িয়ে দেয়।রক্ত পরিস্কার ও রক্ত প্রবাহ বাড়িয়ে দেয়।শরীর সুস্থ্য ও সতেজ করে।তাই ডিটক্স ফুট প্যাচ ব্যবহার করুন সুস্থ্য সবল জীবন গড়ুন।\r\n10 pair-20 pc.', '1050.00', '950.00', NULL, '20', 'upload/product/DETOX_FOOT_PATCH1576938076.jpg', 'True', 'Single', 'Active', '2019-12-21 14:21:16', '2020-03-08 10:58:04', NULL),
(17, 4, 1, NULL, 1, 'Soy Combo Pack-02', 'SECP#01', '০১	স্ট্যান্ডার্ড সয়া প্রোটিন গোল্ড =৫০০ গ্রাম=০১\r\n০২	স্ট্যান্ডার্ড তুলসি ড্রাই জুস=৩৫ স্যাসট=০১\r\n০৩	স্ট্যান্ডার্ড বেবি লাইফ প্লাস =৩০০ গ্রাম=০১\r\n০৪	স্ট্যান্ডার্ড মধু =২৫০ গ্রাম=০১\r\n// 	সয়া কম্বো প্যাকেজ-০৫  =০৪', '2,375.00', '2,100.00', NULL, '50', 'upload/product/Soy Combo Pack-051580921011.jpg', 'True', 'Bundle', 'Active', '2019-12-21 15:02:23', '2020-03-01 05:12:36', '2020-03-01 05:12:36'),
(18, 3, 2, 1, 1, 'Aloevera Sampoo', 'LAVS01', 'প্রকৃতিতে সৃষ্টি কর্তা বহু ঔষধি গাছ দিয়েছেন যার লতা,পাতা,ছাল,ডাল,ফল কিংবা মূল মানুষের রোগ নিরাময়ে ব্যবহৃত হয়।রোগ নিরাময়ের পাশাপাশি কিছু কিছু গাছের পাতা,ফল,মূল কিংবা ছাল ব্যবহৃত হয় চুলের যত্নে।চুলের জন্য উপকারী তেমনি কিছু গাছ যেমন মেহেদি, নিম, শিকাকাই, মেথি, রিঠা, আমলকী, খৈল, এলোভেরা ইত্যাদির নির্যাস নিয়ে তৈরি করা হয়েছে #লাভানা শ্যাম্পু। ইহা নিয়মিত ব্যবহারে ধীরেধীরে মাথার চুল পড়া বন্ধ হবে, খুশকি দূর হবে, চুলের গোড়া থেকে মাথা পর্যন্ত পুষ্টি সরবরাহ হবে, চুল হয়ে উঠবে উজ্জ্বল কালো ও ঝলমলে মসৃন।সপ্তাহে অন্তত ৩ দিন ব্যবহার করুন।\nওজনঃ ২০০ এমএল', '245.00', '220.00', NULL, '4', 'upload/product/LAVANA_ALOE_VERA_SHAMPOO1577104456.png', 'True', 'Single', 'Active', '2019-12-23 12:34:17', '2020-03-08 10:03:07', '2020-03-08 10:03:07'),
(19, 3, 1, 3, 1, 'Whitening Body Lotion', 'LWBL02', '0000', '225.00', '215.00', '000', '4', 'upload/product/LAVANA_WHITENING_BODY_LOTION1577105498.png', 'True', 'Single', 'Active', '2019-12-23 12:51:40', '2020-02-16 11:28:52', '2020-02-16 11:28:52'),
(20, 3, 2, 1, 1, 'Spot Out Skin Cream', 'LSOSC03', '00000', '125.00', '120.00', '000', '2.25', 'upload/product/LAVANA_SPOT_OUT_SKIN_CREAM1577106335.png', 'True', 'Single', 'Active', '2019-12-23 13:05:36', '2020-01-18 16:15:49', '2020-01-18 16:15:49'),
(21, 3, 2, 1, 1, 'Whitening Skin Cream', 'LWSC04', '0000', '125.00', '120.00', '000', '2.25', 'upload/product/LAVANA_WHITENING_SKIN_CREAM1577106477.png', 'True', 'Single', 'Active', '2019-12-23 13:07:58', '2020-01-18 16:15:34', '2020-01-18 16:15:34'),
(22, 3, 2, 1, 1, 'Hair Remobal Cream', 'LHRC05', '0000', '95.00', '90.00', NULL, '1.5', 'upload/product/LAVANA_HAIR_REMOVAL_CREAM1577108720.png', 'True', 'Single', 'Active', '2019-12-23 13:45:21', '2020-06-10 01:28:44', '2020-06-10 01:28:44'),
(23, 3, 2, 1, 1, 'Neem Face Wash', 'LNFW06', '0000', '95.00', '90.00', '000', '1.5', 'upload/product/LAVANA_NEEM_FACE_WASH1577108910.gif', 'True', 'Single', 'Active', '2019-12-23 13:48:31', '2020-03-08 10:03:32', '2020-03-08 10:03:32'),
(24, 3, 2, 3, 1, 'Lavana Neem Oil', 'LNO07', '000', '210.00', '190.00', NULL, '3', 'upload/product/LAVANA_NEEM_OIL1577110683.png', 'True', 'Single', 'Active', '2019-12-23 14:18:05', '2020-03-08 11:00:53', NULL),
(25, 3, 2, 3, 1, 'Lavana Castor Oil', 'LCO08', '000', '210.00', '200.00', '000', '4', 'upload/product/LAVANA_CASTOR_OIL1577110815.png', 'True', 'Single', 'Active', '2019-12-23 14:20:17', '2020-01-20 13:04:10', '2020-01-20 13:04:10'),
(26, 3, 2, 3, 1, 'Lavana Olive Oil', 'LOO09', '0000', '195.00', '185.00', '000', '3.25', 'upload/product/LAVANA_OLIVE_OIL1577110950.png', 'True', 'Single', 'Active', '2019-12-23 14:22:32', '2020-01-27 14:32:09', '2020-01-27 14:32:09'),
(27, 3, 2, 1, 1, 'Neem Aloevera Soap', 'LNAVS10', '000', '40.00', '38.00', NULL, '0.35', 'upload/product/LAVANA_NEEM-ALOEVERA_SOAP1577111042.gif', 'True', 'Single', 'Active', '2019-12-23 14:24:03', '2020-03-08 11:02:16', NULL),
(28, 3, 2, 1, 1, 'Cucumber Soap', 'LCS11', '000', '55.00', '52.00', '000', '0.5', 'upload/product/LAVANA_CUCUMBER_SOAP1577111124.png', 'True', 'Single', 'Active', '2019-12-23 14:25:25', '2020-03-08 10:02:32', '2020-03-08 10:02:32'),
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
(39, 2, 1, NULL, 1, 'Standard Huney', 'AZMH01', 'STANDARD HUNEY\n250 GM', '250.00', '240.00', NULL, '4', 'upload/product/Standard Huney1580396918.jpg', 'True', 'Single', 'Active', '2019-12-30 09:10:42', '2020-03-01 05:24:11', '2020-03-01 05:24:11'),
(40, 2, 1, 1, 1, 'Aromix Toothpast', 'ATP01', 'AROMIX_TOOTHPAST\n105 GM', '120.00', '110.00', '000', '2', 'upload/product/AROMIX_TOOTHPAST1577781808.jpg', 'True', 'Single', 'Active', '2019-12-31 08:43:28', '2020-03-08 10:02:20', '2020-03-08 10:02:20'),
(41, 3, 6, 1, 1, 'Active Gold Mehedi', 'AAGM01', 'Aromix Active Gold Mehedi', '50.00', '45.00', NULL, '0.75', 'upload/product/Aromix Active Gold Mehedi1578332221.jpg', 'True', 'Single', 'Active', '2020-01-06 17:37:02', '2020-06-10 01:28:13', '2020-06-10 01:28:13'),
(42, 5, 1, 2, 1, 'Anytime Sanitary Napkin', 'ATSN01', 'Title: Anytime Ultra Thin Sanitary Napkin\nQuality: Super soft perforated dry weave top cover provides quick penetration\nPad Quantity: 10 pads in a pack\nCapacity: 280 mm', '120.00', '100.00', '000', '1.5', 'upload/product/Anytime Sanitary Napkin1579182759.jpeg', 'True', 'Single', 'Active', '2020-01-16 13:52:40', '2020-01-30 15:06:11', '2020-01-30 15:06:11'),
(43, 6, 1, 1, 1, 'Mayu Mask', 'MM01', 'DESCRIPTION\nHow to use\n1.Aher washing the face amange the skin with a sin toner \n2. Match the sheet from the eye and fix it all overthe face with a fingertip \n3. Remover the mask after 20-30 minutes and use the finger to absorb the fmaning fluids lightly and amange according to the basic care order\n* use it regularly 1-3 times a week to get a better effec.\n* Do not use the once used mask again, When using the mask, pay attention to the contents not to contact to your eyes.\n\ningedetto: Water. Glycenin, Alcohol. Butylene Glycol, Tiehalose, Pantheroi, PEG-60 Hydrogenated Castor oil. Meghybaraben, Phenoryethanol,Bentonite,Aloe Extract, Portulaca Oleracel Extract, Carbomer, trieethanolamine, Disodun EDTA Fragrance\nCautors 1. Aoodusng an biermshes pirmoles irritated orsunburmed sin 2. stop using ilskn becomes red awollen. itchy during and ather use 3. pain penists atter maies speeled off and above sngs occur, de continue immediatuly indoonat yourdoctor \n4. Avoid contact with the If contact occurs, rinse eyes thoroughly with water', '55.00', '50.00', '000', '0.8', 'upload/product/Mayu Mask1579190848.jpg', 'True', 'Single', 'Active', '2020-01-16 16:07:29', '2020-01-30 15:05:59', '2020-01-30 15:05:59'),
(44, 1, 7, 1, 1, 'Disaar Toothpast', 'DT01', 'Product details of Disaar Beauty Go Smoke Stains Toothpaste Odor Removal Oral Problem After Cigateres 100G\nDescription100g in one Tube! FOUR TUBES OF TOOTHPASTE SOLVE FIVE MAJOR PROBLEMS AFTER CIGARETES!!! Smoking sequelae, you have to pay attention to: Swollen Gums, Tartar, Bad Breath, Yellow Teeth/Black Teeth, Loss of loose Teeth\nSTAINS Peg stain formulation, professionaly decomposes and removes tar and nicotine residue\nODOR REMOVAL Add cool mint flavors specially developed for smokers to quickly reduce the smell of oral smoke and make the breath fresh and natural.\nTEETH PROTECTION Reduce the bleeding of common gums amoung smokers and make your mouth healthier\nREFRESHING TONE TO PREVENT TOOTH DECAY Cold mint spice, fresh breath.', '250.00', '220.00', '000', '3.5', 'upload/product/Disaar Toothpast1579192125.jpg', 'True', 'Single', 'Active', '2020-01-16 16:28:46', '2020-01-30 15:05:36', '2020-01-30 15:05:36'),
(45, 6, 1, 1, 1, 'Horse Oil', 'HOSG01', 'Horse Oil 90% Soothing Gel এ রয়েছে হর্স পাওয়ার জিলোটিন, এলোভেরার তেল ও জিন সান পাওয়ার ওয়েল । ব্যবহারের ফলে আপনার স্কিন কালো হওয়া বন্ধ করবে, শরীরে কালো দাগ দূর করবে ।  চামড়া শুকিয়ে যাওয়া, এবড়ো থেবড়ো চামড়া, কোঁচকানো চামড়া, বলি রেখা রিপেয়ার করবে, চামড়া টানটান করে আপনাকে সৌন্দর্য্যময় করে তুলবে । হর্সওয়েল রাতে ব্যবহার করে, আপনার বয়স ধরে রাখুন । \nওজনঃ ২৬০ গ্রাম', '550.00', '500.00', '000', '7', 'upload/product/Horse Oil1579193966.jpg', 'True', 'Single', 'Active', '2020-01-16 16:43:15', '2020-01-30 15:05:49', '2020-01-30 15:05:49'),
(46, 6, 1, 1, 1, 'Aloevera Soothing Gel', 'AVG01', 'Aloevera Soothing Gel', '300.00', '260.00', '000', '4', 'upload/product/Aloevera Soothing Gel1579193789.png', 'True', 'Single', 'Active', '2020-01-16 16:56:31', '2020-01-29 10:53:24', '2020-01-29 10:53:24'),
(47, 6, 1, 1, 1, 'Crystal Aqua Sleeping Pack', 'CASP01', 'Crystal Aqua Sleeping Pack\nWeight: 50ml', '410.00', '380.00', '000', '4', 'upload/product/Crystal Aqua Sleeping Pack1579194605.png', 'True', 'Single', 'Active', '2020-01-16 17:10:06', '2020-01-29 10:53:33', '2020-01-29 10:53:33'),
(48, 6, 1, 1, 1, 'Aqua Gel Sunscreen SPF 50++PA++', 'AGSC01', 'Aqua Gel Sunscreen SPF 50++PA++\nWeight: 50ml', '370.00', '350.00', '000', '4', 'upload/product/Aqua Gel Sunscreen SPF 50++PA++1579195364.png', 'True', 'Single', 'Active', '2020-01-16 17:22:45', '2020-01-29 10:53:14', '2020-01-29 10:53:14'),
(49, 6, 1, 1, 1, 'Jocelyn Foam Cleanser Harbal Face Wash', 'FW01', 'বিষাক্ত কেমিক্যাল মুক্ত হারবাল ফেসওয়াস বিধায় সম্পুর্ণ পার্শপ্রতিক্রিয়া মুক্ত। মুখের তৈলাক্ত ভাব দূর করে, মুখ উজ্জল করবে। লোমকূপ বন্ধ হয়ে যাওয়াকে প্রতিরোধ ও ব্রণ হওয়া বন্ধ করে। মেসতা উঠাতে খুবই কার্যকর। প্রতিদিনের ধুলাবালি ময়লা বের করে দেয় এবং হারবাল ভিটামিন্স এর যোগান দেয়।\n100 gm', '375.00', '360.00', '000', '3.5', 'upload/product/Jocelyn Foam Cleanser Harbal Face Wash1579328248.png', 'True', 'Single', 'Active', '2020-01-18 06:17:29', '2020-01-22 16:51:11', '2020-01-22 16:51:11'),
(50, 1, 1, 1, 1, 'Cardio Care Gold', 'SCCG36', 'Standard Cardio Care Gold \r\nউপকারিতাঃ\r\nকরােনারী হার্ট কেয়ার , ব্লকেজ যুক্ত রােগীদের জন্য একটি উত্তম ডায়েটরি সাপ্লিমেন্ট। চিকিৎসকের নির্দেশীত ঔষধাবলীর সাথে কার্ডিও কেয়ার সেবনে ( মল উপাদান – প্রােটিন + ওমেগা - ৩ + Co - Q - 10 + L - Argenina+L সমৃদ্ধ। করােনারী আর্টারী / রক্তনালীর প্রাচীর প্রসারিত ও পিচ্ছিল হয় এবং রক্তে অক্সিজেনের আধিক্য ঘটায় এবং Nitric Oxide বৃদ্ধি পূর্বক সকল পকার কার্ডিয়াক ব্যথা / এনজাইনা দূরীভূত করে এবং ক্রমান্বয়ে ব্লকেজের মাত্রা কমায় ও রক্ত সঞ্চালন প্রক্রিয়াকে স্বাভাবিক করে । দীর্ঘকাল সেবনে পার্শ্বপ্রতিক্রিয়া মুক্ত ঔষধের ব্যবহার ক্রমান্বয়ে কমে আসে এবং অধিকাংশ রােগীর ক্ষেত্রে রিং এবং Bypass Surgery নতুন রক্তনালী সংযােজনের প্রয়ােজন হয় না ।\r\nসেবন মাত্রাঃ\r\nসকালে এবং রাতে ২৫ গ্রাম পাউডার অথবা ৪চা চামচ ১ গ্লাস বিশুদ্ধ পানিতে মিশিয়ে সেব্য অথবা সংশ্লিষ্ট কনসালটেন্ট এর পরামর্শ অনুযায়ী সেব্য।\r\nCardio Care Gold ( 500mg )', '1050.00', '950.00', NULL, '18', 'upload/product/STANDARD CARDIO CARE GOLD1579948772.jpg', 'True', 'Single', 'Active', '2020-01-25 10:39:33', '2020-06-01 22:17:11', '2020-06-01 22:17:11'),
(51, 1, 1, 1, 1, 'SLIM FAST', 'SF037', 'Products name : Slim Fast\r\nNaturally Harvested Product\r\nপ্রাকৃতিক পুষ্টি ও ভেষজ পণ্য \r\n\r\nউপকারিতা:\r\nসাধারণত কিডনী ও থাইরয়েড সমস্যা যুক্ত রোগী, চর্ম হার্পিস বা এলার্জি যুক্ত রোগী, যাদের সয়াবিন জাতীয় খাদ্যে এলার্জি বা বদহজম/গ্যাস বা ডায়রিয়া দেখা যায় এবং যাদের নিকট সয়াবিন সয়াপ্রোটিন যুক্ত খাদ্যে বিস্বাদ ও খেতে ভালো লাগে না বমি বমি লাগে কেবলমাত্র তাদের ক্ষেত্রে ১০০% সয়াবিন ফ্রী সুষম ফাইবার ও প্রোটিন সমৃদ্ধ খাদ্য উপাদান সমন্বয়ে বায়ো-স্লিম ড্রিংক মিক্স প্রস্তুত করা হয়েছে। নিয়ম মোতাবেক সেবনে দেহের বাড়তি ওজন চর্বি কমে আসবে এবং সেই সাথে ডায়াবেটিস, উচ্চ ট্রাইগ্লিসাডির ও কলেষ্টেররের মাত্রা কমে আসবে। ইহা ছাড়া ডাইজেষ্টিব সিস্টেম বা হজম প্রক্রিয়াকে শক্তিশালী করে কোষ্টবদ্ধতা, বদহজম, গ্যাসট্রাইটিজ ও পাকস্থলীর বিভিন্ন গোলোযোগ দূরিভূত করে।\r\n\r\nসেবনবিধি:\r\n১) ওজন কমানোর ক্ষেত্রে দুপুর ও রাতের খাবারের আধা ঘন্টা আগে ১ গ্লাস ঠান্ডা পানির সহিত পরামর্শ অনুযায়ী ১ বা ২ চামচ পাউডার গুলিয়ে সেবন করলে উত্তম ফল পাওয়া যাবে।\r\n২) সাধারণ কোষ্টবদ্ধতা ও হজম জনিত সমস্যার ক্ষেত্রে: উষ্ম গরম পানির সহিত উপরের নিয়ম অনুযায়ী খাবারের পরে সেব্য।\r\nবি:দ্র: কিডনী ও থাইরয়েড রোগীদের সেবন করতে বাধা নেই। কোন পার্শ্ব প্রতিক্রিয়া নেই।\r\n৩০০ গ্রাম', '1250.00', '1150.00', NULL, '20', 'upload/product/SLIM FAST1579949097.jpg', 'True', 'Single', 'Active', '2020-01-25 10:44:58', '2020-06-01 22:17:23', '2020-06-01 22:17:23'),
(52, 4, 1, 2, 1, 'Family Combo Pack-01', 'STDP-01', '০১	স্ট্যান্ডার্ড টয়লেট ক্লিনার	৫০০ এমএল	০১\n০২	স্ট্যান্ডার্ড লিকুইড ডিশওয়াস 	৫০০ এমএল	০১\n০৩	স্ট্যান্ডার্ড হ্যান্ড ওয়াশ 	২৫০ এমএল	০১\n০৪	টুথপেস্ট 	১০৫ গ্রাম 	০১\n০৫	এলোভেরা শ্যাম্পু	২০০ এমএল	০১\n০৬ 	নিম ফেস ওয়াশ	৬০ গ্রাম	০১\n০৭	নিম অয়েল 	১৪০ এমএল	০১\n০৮	নিম ও এলোভেরা সাবান	৭৫ গ্রাম	০২\n০৯	স্ট্যান্ডার্ড সয়া প্রোটিন গোল্ড 	৫০০ গ্রাম	০২ \n১০	স্ট্যান্ডার্ড বেবি লাইফ প্লাস   	৩০০ গ্রাম	০১ \n১১	স্ট্যান্ডার্ড তুলসি ড্রাই জুস	৩৫ স্যাসট	০১\n১২	স্ট্যান্ডার্ড ডিটক্স ফুট প্যাচ	১০ জোড়া	০১\n// 	ফ্যামিলি কম্বো প্যাকেজ-০১     	/// 	১৪', '5065', '4500', NULL, '100', 'upload/product/Family Combo Pack-011583218743.jpg', 'True', 'Bundle', 'Active', '2020-02-28 06:33:40', '2020-03-08 10:04:15', '2020-03-08 10:04:15'),
(53, 4, 1, 2, 1, 'Family Combo Pack-02', 'STDP-02', '০১	স্ট্যান্ডার্ড টয়লেট ক্লিনার	৫০০ এমএল	০১\n০২	স্ট্যান্ডার্ড লিকুইড ডিশওয়াস 	৫০০ এমএল	০১\n০৩	স্ট্যান্ডার্ড হ্যান্ড ওয়াশ 	২৫০ এমএল	০১\n০৪	টুথপেস্ট 	১০৫ গ্রাম	০১\n০৫	এলোভেরা শ্যাম্পু	২০০ এমএল	০১\n০৬ 	নিম ফেস ওয়াশ	৬০ গ্রাম	০১\n০৭	নিম অয়েল 	১৪০ এমএল	০১\n০৮	নিম ও এলোভেরা সাবান	৭৫ গ্রাম 	০১\n০৯	স্ট্যান্ডার্ড সয়া প্রোটিন গোল্ড 	৫০০ গ্রাম	০১\n১০	স্ট্যান্ডার্ড তুলসি ড্রাই জুস	৩৫ স্যাসট	০১\n১১	স্ট্যান্ডার্ড গ্রিন চা 	৫০,টি ব্যাগ	০১\n// 	ফ্যামিলি কম্বো প্যাকেজ-০২    	/// 	১১', '2825', '2500', NULL, '50', 'upload/product/Family Combo Pack-021583218535.jpg', 'True', 'Bundle', 'Active', '2020-02-28 07:30:32', '2020-03-08 10:03:54', '2020-03-08 10:03:54'),
(54, 4, 1, 2, 1, 'Soy Combo Pack-03', 'STDP-03', '০১	স্ট্যান্ডার্ড সয়া প্রোটিন গোল্ড 	৫০০ গ্রাম	০১\n০২	স্ট্যান্ডার্ড ডিটক্স ফুট প্যাচ	১০ জোড়া	০১\n০৩	স্ট্যান্ডার্ড তুলসি ড্রাই জুস	৩৫ স্যাসট	০১\n// 	সয়া কম্বো প্যাকেজ-০৩       	///	০৩', '2375', '2100', NULL, '50', 'upload/product/Soy Combo Pack-031582896856.jpg', 'True', 'Bundle', 'Active', '2020-02-28 07:34:16', '2020-03-08 10:04:04', '2020-03-08 10:04:04'),
(55, 5, 1, 3, 1, 'Standard Hand Wash', 'STDHW01', 'Standard Hand Wash', '140.00', '125.00', NULL, '1.5', 'upload/product/Standard Hand Wash1587539843.jpg', 'True', 'Single', 'Active', '2020-02-28 08:06:06', '2020-04-22 01:17:23', NULL),
(56, 5, 1, 3, 1, 'Standard Liquid Detergent', 'STDLD02', 'Standard Liquid Detergent', '115.00', '100.00', NULL, '1', 'upload/product/Standard Liquid Detergent1582899164.jpg', 'True', 'Single', 'Active', '2020-02-28 08:12:44', '2020-03-22 01:10:51', '2020-03-22 01:10:51'),
(57, 5, 1, 3, 1, 'Standard Liquid Dish Wash', 'STDLDW03', 'Standard Liquid Dish Wash', '100.00', '95.00', NULL, '0.75', 'upload/product/Standard Liquid Dish Wash1587539869.jpg', 'True', 'Single', 'Active', '2020-02-28 08:15:07', '2020-06-06 11:32:48', NULL),
(58, 5, 1, 3, 1, 'Standard Toilet Cleaner', 'STDTC04', 'Standard Toilet Cleaner', '100.00', '95.00', NULL, '0.80', 'upload/product/Standard Toilet Cleaner1587540771.jpg', 'True', 'Single', 'Active', '2020-02-28 08:16:30', '2020-06-06 11:32:13', NULL),
(59, 7, 1, 2, 1, 'YOU CAN WIN', 'UCW01', 'YOU CAN WIN', '200.00', '150.00', NULL, '1.5', 'upload/product/YOU CAN WIN1583075448.jpg', 'True', 'Single', 'Active', '2020-03-01 09:10:48', '2020-03-10 07:15:38', NULL),
(60, 4, 1, 2, 1, 'Soy Combo Pack-05', 'SCP#05', '০১	স্ট্যান্ডার্ড সয়া প্রোটিন গোল্ড 	৫০০ গ্রাম	০২\n০২	স্ট্যান্ডার্ড তুলসি ড্রাই জুস	৩৫ স্যাসট	০১\n০৩	স্ট্যান্ডার্ড মাসালা চা 	৫০,টি ব্যাগ	০১\n// 	সয়া কম্বো প্যাকেজ-০৪        	///	০৫', '2525.00', '2200.00', NULL, '50', 'upload/product/Soy Combo Pack-051583218403.jpg', 'True', 'Bundle', 'Active', '2020-03-03 00:53:23', '2020-03-08 10:04:48', '2020-03-08 10:04:48'),
(61, 4, 1, 2, 1, 'Soy Combo Pack-04', 'SCP#04', '০১	স্ট্যান্ডার্ড সয়া প্রোটিন গোল্ড 	৫০০ গ্রাম	০২ \n০২	স্ট্যান্ডার্ড বেবি লাইফ প্লাস   	৩০০ গ্রাম	০১ \n০৩	স্ট্যান্ডার্ড তুলসি ড্রাই জুস	৩৫ স্যাসট	০১\n০৪	স্ট্যান্ডার্ড ডিটক্স ফুট প্যাচ	১০ জোড়া	০১\n// 	সয়া কম্বো প্যাকেজ-০৪        	/// 	০৫', '3975.00', '3500.00', NULL, '100', 'upload/product/Soy Combo Pack-041583220153.jpg', 'True', 'Bundle', 'Active', '2020-03-03 01:22:33', '2020-03-08 10:04:58', '2020-03-08 10:04:58'),
(62, 3, 1, 3, 1, 'Neem Face Wash', 'NFW01', 'NEEM FACE WASH\r\n120 ml', '180.00', '160.00', NULL, '2.5', 'upload/product/Neem Face Wash1587547156.jpg', 'True', 'Single', 'Active', '2020-03-08 11:11:07', '2020-04-22 03:19:16', NULL),
(63, 3, 1, 3, 1, 'Aloevera Sampoo', 'AS02', 'Aloevera Sampoo\r\n200 ml', '205.00', '180.00', NULL, '3', 'upload/product/Aloevera Sampoo1584893278.jpg', 'True', 'Single', 'Active', '2020-03-08 11:13:02', '2020-03-22 10:07:58', NULL),
(64, 3, 1, 1, 1, 'Face Pack Glow', 'FPG03', 'Face Pack Glow\r\n100 gm', '115.00', '100.00', NULL, '1.70', 'upload/product/Face Pack Glow1583687946.jpg', 'True', 'Single', 'Active', '2020-03-08 11:19:06', '2020-03-17 08:00:41', '2020-03-17 08:00:41'),
(65, 3, 1, 3, 1, 'Hair Tonic', 'HT04', 'Hair Tonic\r\n120 ml', '280.00', '250.00', NULL, '4', 'upload/product/Hair Tonic1583688068.jpg', 'True', 'Single', 'Active', '2020-03-08 11:21:08', '2020-03-11 07:27:08', '2020-03-11 07:27:08'),
(66, 8, 1, 2, 1, 'Jeans Pant', 'JP01', 'JEANS PANT\r\n32\'\'30\'\'', '550.00', '500.00', NULL, '4', 'upload/product/Jeans Pant1583688280.jpg', 'True', 'Single', 'Active', '2020-03-08 11:24:40', '2020-05-13 07:10:20', NULL),
(67, 8, 1, 2, 1, 'Jeans Pant', 'JP02', 'Jeans Pant \r\n30\'\'32\'\'', '550.00', '500.00', NULL, '4', 'upload/product/Jeans Pant1583688358.jpg', 'True', 'Single', 'Active', '2020-03-08 11:25:58', '2020-05-13 07:11:18', NULL),
(68, 4, 1, 2, 1, 'Soy Combo Pack-03', 'SGP#01', '1. Standard Soy Protein Gold  500 gm 1 pies\r\n2. Standard Triphala Plus 100 gm 1 pies\r\n3. Standard EFA-Omega 3,6,9  250ml 1 pies\r\n4. Standard Tulsi Dry Juice 35 cct. 175 gm 1 box\r\n5. Masala Tea 50 tea. bag 1 box\r\n//Soy Combo Pack-STS#SCP03// Total=05 pies//Point=46.5', '2875.00', '2500.00', NULL, '50', 'upload/product/Soy Combo Pack-031589375174.jpg', 'True', 'Single', 'Active', '2020-03-10 07:21:58', '2020-06-15 04:19:49', '2020-06-15 04:19:49'),
(69, 4, 1, 2, 1, 'Family Pack-02', 'SGP#02', '1. Neem & Aloevera Bar 2 pies\r\n2. Aloevera Shampoo 1 pies\r\n3. Standard Soy Protein Gold  2 pies\r\n4. Standard Tulsi Dry Juice 1 pies\r\n5. Green Tea pies\r\n// Family Pack-STD#FP02// Total=7 pies.//Point=43.7', '2840.00', '2500.00', NULL, '50', 'upload/product/Family Pack-021589375121.jpg', 'True', 'Single', 'Active', '2020-03-10 07:23:44', '2020-05-13 07:05:21', NULL),
(70, 4, 1, 2, 1, 'Family  Pack-01', 'SGP#03', '01	Power White Powder	1kg	01\r\n02	Aloevera Shampoo	200 ml	01\r\n03	Neem Face wash	120 ml	01\r\n04	Standard Dish wash	500 ml	01\r\n05	Standard Hand wash	250 ml	01\r\n06	Toothpaste	105 gm 	01\r\n07	Neem & Aloevera Bar	75 gm	02\r\n08	Standard Soy Protein Gold 	500 gm	01\r\n09	Standard Tulsi Dry Juice	175 gm 	01\r\n10	Standard Triphala Plus	100 gm	01\r\n11	Masala Tea	50 tea bag	01\r\n//Family Pack-STDFP#01//	Total=12 pies', '3095.00', '2750.00', NULL, '50', 'upload/product/STD Family  Pack-011589177863.jpg', 'True', 'Bundle', 'Active', '2020-03-10 07:25:24', '2020-05-12 05:43:16', NULL),
(71, 4, 1, 2, 1, 'Soy Combo Pack', 'SGP#04', '০১	স্ট্যান্ডার্ড সয়া প্রোটিন গোল্ড 	৫০০ গ্রাম	০২ \r\n০২	স্ট্যান্ডার্ড ফিমেল কেয়ার গোল্ড    	৩০০ গ্রাম	০১\r\n০৩	স্ট্যান্ডার্ড বেবি লাইফ প্লাস   	৩০০ গ্রাম	০১\r\n০৪	স্ট্যান্ডার্ড তুলসি ড্রাই জুস	৩৫ স্যাসট	০১\r\n০৫	স্ট্যান্ডার্ড গ্রিন চা 	৫০,টি ব্যাগ	০১\r\n০৬ 	স্ট্যান্ডার্ড ডিটক্স ফুট প্যাচ	১০ জোড়া	০১\r\n// 	হেলথ কেয়ার কম্বো প্যাকেজ-০২     	/// 	০৭', '5225.00', '4550.00', NULL, '100', 'upload/product/Health Care Combo Pack-21583846819.jpg', 'True', 'Bundle', 'Active', '2020-03-10 07:26:59', '2020-03-24 04:29:34', '2020-03-24 04:29:34'),
(72, 3, 2, 3, 1, 'Neem Face Wash', 'NFW02', 'Neem Face Wash', '95.00', '90.00', NULL, '1.2', 'upload/product/Neem Face Wash1583989538.gif', 'True', 'Single', 'Active', '2020-03-11 23:05:39', '2020-06-15 09:17:59', NULL),
(73, 7, 1, 2, 1, 'Rich Dad Poor Dad', 'RDPD01', 'Rich Dad Poor Dad', '110.00', '90.00', NULL, '1', 'upload/product/Rich Dad Poor Dad1584544608.jpg', 'True', 'Single', 'Active', '2020-03-18 09:16:48', '2020-03-18 09:16:48', NULL),
(74, 7, 1, 2, 1, 'Power Of Subconscious Mind', 'POSCM01', 'Power Of Subconscious Mind', '200.00', '150.00', NULL, '1.5', 'upload/product/Power Of Subconscious Mind1584544722.jpg', 'True', 'Single', 'Active', '2020-03-18 09:18:42', '2020-03-18 09:18:42', NULL),
(75, 5, 1, 1, 1, 'Power White Powder', 'RDPD01', 'Real Power White Powder\r\n1000 gm', '95.00', '90.00', NULL, '1', 'upload/product/Power White Powder1584860827.png', 'True', 'Single', 'Active', '2020-03-22 01:07:07', '2020-03-22 01:07:07', NULL),
(76, 4, 1, 2, 1, 'Health & Beauty (ctg-01)', 'H&BCTG01', '০১	নিম ও এলোভেরা সাবান	৭৫ গ্রাম 	০১ \r\n০২	নিম অয়েল 	১৪০ এমএল	০১\r\n০৩	নিম ফেস ওয়াশ	১২০ এমএল	০১\r\n০৪	এলোভেরা শ্যাম্পু 	২০০ এমএল	০১\r\n০৫	স্ট্যান্ডার্ড সয়া প্রোটিন গোল্ড 	৫০০ গ্রাম	০১  \r\n০৬ 	স্ট্যান্ডার্ড তুলসি ড্রাই জুস 	৩৫ স্যাসট	০১\r\n০৭	স্ট্যান্ডার্ড ত্রিফলা প্লাস 	১০০ গ্রাম	০১\r\n০৮	স্ট্যান্ডার্ড গ্রিন চা 	৫০,টি ব্যাগ	০১\r\n// 	হেলথ এন্ড বিউটি (চিটাগাং-০১)      	/// 	\r\nমোট=০৮ পিছ', '2840.00', '2500.00', NULL, '50', 'upload/product/Health & Beauty (ctg-01)1585045505.jpg', 'True', 'Single', 'Active', '2020-03-24 04:25:06', '2020-05-13 07:12:26', '2020-05-13 07:12:26'),
(77, 4, 1, 2, 1, 'Health & Beauty (ctg-02)', 'H&BCTG02', '০১	স্ট্যান্ডার্ড সয়া প্রোটিন গোল্ড 	৫০০ গ্রাম	০২ \r\n০২	স্ট্যান্ডার্ড ত্রিফলা প্লাস 	১০০ গ্রাম	০২\r\n০৩	স্ট্যান্ডার্ড তুলসি ড্রাই জুস	৩৫ স্যাসট	০১\r\n০৪	স্ট্যান্ডার্ড গ্রিন চা 	৫০,টি ব্যাগ	০২\r\n০৫	স্ট্যান্ডার্ড ডিটক্স ফুট প্যাচ	১০ জোড়া	০১\r\n০৬ 	নিম ও এলোভেরা সাবান	৭৫ গ্রাম 	০২ \r\n০৭	নিম অয়েল 	১৪০ এমএল	০১\r\n০৮	নিম ফেস ওয়াশ	১২০ এমএল	০১\r\n০৯	এলোভেরা শ্যাম্পু  	২০০ এমএল	০১\r\n// 	হেলথ এন্ড বিউটি (চিটাগাং-০২)       	/// 	১৩', '5610.00', '4950.00', NULL, '100', 'upload/product/Health & Beauty (ctg-02)1585045588.jpg', 'True', 'Single', 'Active', '2020-03-24 04:26:29', '2020-05-13 07:11:49', '2020-05-13 07:11:49'),
(78, 5, 1, 1, 1, 'Neem & Clove Toothpaste', 'ATP01', 'weight:105 gm', '120.00', '108.00', NULL, '1.2', 'upload/product/Neam & Clove Toothpaste1588159418.jpg', 'True', 'Single', 'Active', '2020-04-29 05:23:39', '2020-04-29 05:30:55', NULL),
(79, 1, 1, 3, 1, 'Instant Hand Sanitizer', 'HS#01', 'Hand Sanitizer\r\nWeight 50ml', '110.00', '100.00', NULL, '1', 'upload/product/Instant1589368998.jpg', 'True', 'Single', 'Active', '2020-05-13 05:23:18', '2020-05-13 05:24:54', NULL),
(80, 4, 1, 2, 1, 'Soy Combo Pack-(ctg01)', 'SCPCTH#01', '০১.	স্ট্যান্ডার্ড সয়া প্রোটিন গোল্ড =৫০০ গ্রাম=০১  \r\n০২.	স্ট্যান্ডার্ড তুলসি ড্রাই জুস =৩৫ স্যাসট=০১\r\n০৩.	স্ট্যান্ডার্ড ত্রিফলা প্লাস =১০০ গ্রাম=০২\r\n০৪.	স্ট্যান্ডার্ড গ্রিন চা =৫০,টি ব্যাগ=০১\r\n০৫.	নিম লবঙ্গ টুথপেস্ট  =১০৫ গ্রাম=০১\r\n০৬. নিম এলোভেরা সাবান= ৭৫ গ্রাম=০১ \r\n// 	Soy Combo Pack(ctg01)  /// ০৭', '2815.00', '2500.00', NULL, '50', 'upload/product/Soy Combo Pack-(ctg01)1591074730.png', 'True', 'Bundle', 'Active', '2020-06-01 22:50:31', '2020-06-01 23:12:11', NULL),
(81, 3, 2, 1, 1, 'Hair Removal Cream', 'LVNHRC1', 'Hair Removal Cream 	30 gm', '95.00', '90', NULL, '1.4', 'upload/product/Hair Removal Cream1592242380.png', 'True', 'Single', 'Active', '2020-06-15 11:33:02', '2020-06-15 11:33:02', NULL),
(82, 3, 2, 3, 1, 'Aloevera Sampoo', 'STDAS1', 'Net Qty. 200 ml', '245.00', '225.00', NULL, '3', 'upload/product/Aloevera Sampoo1592284528.png', 'True', 'Single', 'Active', '2020-06-15 23:15:29', '2020-06-15 23:15:29', NULL);

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
(2, 1),
(3, 1),
(4, 2),
(5, 2),
(6, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(13, 4),
(14, 4),
(15, 4),
(16, 6),
(17, 6),
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
(36, '1', '11', NULL, NULL, '10', 'in', 'delivered', '2020-01-20 13:15:59', '2020-01-20 13:15:59', NULL),
(37, '248', '1', '1', 1, '5', 'in', 'delivered', '2020-02-21 17:11:14', '2020-02-22 09:12:11', NULL),
(38, '201', '1', '2', 248, '2', 'out', 'ordered', '2020-02-22 10:21:08', '2020-02-22 10:21:08', NULL),
(39, '248', '4', '3', 1, '1', 'in', 'delivered', '2020-02-22 10:26:48', '2020-02-22 10:28:59', NULL),
(40, '248', '5', '3', 1, '1', 'in', 'delivered', '2020-02-22 10:26:48', '2020-02-22 10:28:59', NULL),
(41, '248', '6', '3', 1, '1', 'in', 'delivered', '2020-02-22 10:26:48', '2020-02-22 10:28:59', NULL),
(42, '248', '7', '3', 1, '1', 'in', 'delivered', '2020-02-22 10:26:48', '2020-02-22 10:28:59', NULL),
(43, '248', '8', '3', 1, '1', 'in', 'delivered', '2020-02-22 10:26:48', '2020-02-22 10:28:59', NULL),
(44, '248', '9', '3', 1, '1', 'in', 'delivered', '2020-02-22 10:26:48', '2020-02-22 10:28:59', NULL),
(45, '248', '10', '3', 1, '1', 'in', 'delivered', '2020-02-22 10:26:48', '2020-02-22 10:28:59', NULL),
(46, '248', '11', '3', 1, '1', 'in', 'delivered', '2020-02-22 10:26:48', '2020-02-22 10:28:59', NULL),
(47, '211', '1', '4', 248, '1', 'out', 'ordered', '2020-02-22 12:14:05', '2020-02-22 12:14:05', NULL),
(48, '211', '5', '5', 248, '1', 'out', 'delivered', '2020-02-22 12:14:32', '2020-02-22 13:45:56', NULL),
(49, '211', '11', '6', 248, '1', 'out', 'ordered', '2020-02-22 12:39:53', '2020-02-22 12:39:53', NULL),
(50, NULL, '41', NULL, 1, '0', 'out', 'delivered', '2020-02-22 13:58:16', '2020-02-22 13:58:16', NULL),
(51, NULL, '41', NULL, 1, '12', 'out', 'delivered', '2020-02-22 13:58:45', '2020-02-22 13:58:45', NULL),
(52, '1', '41', NULL, NULL, '12', 'in', 'delivered', '2020-02-22 13:59:12', '2020-02-22 13:59:12', NULL),
(53, '1', '56', NULL, NULL, '12', 'in', 'delivered', '2020-03-01 06:04:02', '2020-03-01 06:04:02', NULL),
(54, '1', '57', NULL, NULL, '12', 'in', 'delivered', '2020-03-01 06:04:25', '2020-03-01 06:04:25', NULL),
(55, '1', '52', NULL, NULL, '20', 'in', 'delivered', '2020-03-01 06:04:38', '2020-03-01 06:04:38', NULL),
(56, '1', '53', NULL, NULL, '20', 'in', 'delivered', '2020-03-01 06:04:53', '2020-03-01 06:04:53', NULL),
(57, '1', '54', NULL, NULL, '20', 'in', 'delivered', '2020-03-01 06:05:15', '2020-03-01 06:05:15', NULL),
(58, '1', '58', NULL, NULL, '12', 'in', 'delivered', '2020-03-01 06:05:45', '2020-03-01 06:05:45', NULL),
(59, '1', '55', NULL, NULL, '12', 'in', 'delivered', '2020-03-01 06:06:36', '2020-03-01 06:06:36', NULL),
(60, '1', '1', NULL, NULL, '80', 'in', 'delivered', '2020-03-01 06:07:01', '2020-03-01 06:07:01', NULL),
(61, '1', '22', NULL, NULL, '12', 'in', 'delivered', '2020-03-01 06:07:39', '2020-03-01 06:07:39', NULL),
(62, '248', '1', '7', 1, '10', 'in', 'delivered', '2020-03-01 06:12:32', '2020-03-01 06:13:55', NULL),
(63, '248', '10', '7', 1, '5', 'in', 'delivered', '2020-03-01 06:12:32', '2020-03-01 06:13:55', NULL),
(64, '248', '18', '7', 1, '10', 'in', 'delivered', '2020-03-01 06:12:32', '2020-03-01 06:13:55', NULL),
(65, '248', '23', '7', 1, '10', 'in', 'delivered', '2020-03-01 06:12:32', '2020-03-01 06:13:55', NULL),
(66, '248', '24', '7', 1, '10', 'in', 'delivered', '2020-03-01 06:12:32', '2020-03-01 06:13:55', NULL),
(67, '248', '27', '7', 1, '10', 'in', 'delivered', '2020-03-01 06:12:32', '2020-03-01 06:13:55', NULL),
(68, '248', '52', '7', 1, '5', 'in', 'delivered', '2020-03-01 06:12:32', '2020-03-01 06:13:55', NULL),
(69, '248', '54', '7', 1, '5', 'in', 'delivered', '2020-03-01 06:12:32', '2020-03-01 06:13:55', NULL),
(70, '248', '53', '7', 1, '10', 'in', 'delivered', '2020-03-01 06:12:32', '2020-03-01 06:13:55', NULL),
(71, '248', '55', '7', 1, '10', 'in', 'delivered', '2020-03-01 06:12:32', '2020-03-01 06:13:55', NULL),
(72, '248', '58', '7', 1, '10', 'in', 'delivered', '2020-03-01 06:12:32', '2020-03-01 06:13:55', NULL),
(73, '248', '57', '7', 1, '10', 'in', 'delivered', '2020-03-01 06:12:32', '2020-03-01 06:13:55', NULL),
(74, '248', '56', '7', 1, '10', 'in', 'delivered', '2020-03-01 06:12:32', '2020-03-01 06:13:55', NULL),
(75, '256', '54', '8', 248, '1', 'out', 'ordered', '2020-03-03 11:14:19', '2020-03-03 11:14:19', NULL),
(76, '257', '54', '9', 248, '1', 'out', 'ordered', '2020-03-03 11:15:39', '2020-03-03 11:15:39', NULL),
(77, '1', '4', '10', 248, '1', 'in', 'ordered', '2020-03-04 19:39:45', '2020-03-04 19:39:45', NULL),
(78, '247', '54', '11', 248, '1', 'out', 'delivered', '2020-03-06 01:31:42', '2020-03-06 01:37:07', NULL),
(79, '253', '53', '12', 248, '1', 'out', 'delivered', '2020-03-06 01:44:14', '2020-03-07 10:39:55', NULL),
(80, '252', '54', '13', 248, '1', 'out', 'delivered', '2020-03-07 10:33:54', '2020-03-07 10:40:10', NULL),
(81, '254', '54', '14', 248, '1', 'out', 'delivered', '2020-03-07 10:35:37', '2020-03-07 10:40:19', NULL),
(82, '1', '63', NULL, NULL, '50', 'in', 'delivered', '2020-03-08 11:27:29', '2020-03-08 11:27:29', NULL),
(83, '1', '64', NULL, NULL, '50', 'in', 'delivered', '2020-03-08 11:27:38', '2020-03-08 11:27:38', NULL),
(84, '1', '66', NULL, NULL, '10', 'in', 'delivered', '2020-03-08 11:28:00', '2020-03-08 11:28:00', NULL),
(85, '1', '65', NULL, NULL, '50', 'in', 'delivered', '2020-03-08 11:28:08', '2020-03-08 11:28:08', NULL),
(86, '1', '67', NULL, NULL, '50', 'in', 'delivered', '2020-03-08 11:28:18', '2020-03-08 11:28:18', NULL),
(87, '1', '67', NULL, NULL, '10', 'in', 'delivered', '2020-03-08 11:28:32', '2020-03-08 11:28:32', NULL),
(88, '1', '27', NULL, NULL, '244', 'in', 'delivered', '2020-03-08 11:28:55', '2020-03-08 11:28:55', NULL),
(89, '1', '24', NULL, NULL, '12', 'in', 'delivered', '2020-03-08 11:29:06', '2020-03-08 11:29:06', NULL),
(90, '1', '62', NULL, NULL, '50', 'in', 'delivered', '2020-03-08 11:29:16', '2020-03-08 11:29:16', NULL),
(91, '1', '50', NULL, NULL, '50', 'in', 'delivered', '2020-03-08 11:29:49', '2020-03-08 11:29:49', NULL),
(92, '1', '51', NULL, NULL, '50', 'in', 'delivered', '2020-03-08 11:30:40', '2020-03-08 11:30:40', NULL),
(93, '1', '5', NULL, NULL, '50', 'in', 'delivered', '2020-03-08 11:30:55', '2020-03-08 11:30:55', NULL),
(94, '1', '4', NULL, NULL, '41', 'in', 'delivered', '2020-03-08 11:31:18', '2020-03-08 11:31:18', NULL),
(95, '1', '10', NULL, NULL, '10', 'in', 'delivered', '2020-03-08 11:32:10', '2020-03-08 11:32:10', NULL),
(96, '1', '59', NULL, NULL, '10', 'in', 'delivered', '2020-03-08 11:32:24', '2020-03-08 11:32:24', NULL),
(97, '1', '57', NULL, NULL, '10', 'in', 'delivered', '2020-03-08 11:32:42', '2020-03-08 11:32:42', NULL),
(98, '1', '58', NULL, NULL, '10', 'in', 'delivered', '2020-03-08 11:32:56', '2020-03-08 11:32:56', NULL),
(99, '1', '56', NULL, NULL, '10', 'in', 'delivered', '2020-03-08 11:33:06', '2020-03-08 11:33:06', NULL),
(100, '1', '55', NULL, NULL, '48', 'in', 'delivered', '2020-03-08 11:33:19', '2020-03-08 11:33:19', NULL),
(101, '1', '70', NULL, NULL, '50', 'in', 'delivered', '2020-03-10 07:28:39', '2020-03-10 07:28:39', NULL),
(102, '1', '71', NULL, NULL, '50', 'in', 'delivered', '2020-03-10 07:29:00', '2020-03-10 07:29:00', NULL),
(103, '1', '68', NULL, NULL, '50', 'in', 'delivered', '2020-03-10 07:29:16', '2020-03-10 07:29:16', NULL),
(104, '1', '69', NULL, NULL, '50', 'in', 'delivered', '2020-03-10 07:29:30', '2020-03-10 07:29:30', NULL),
(105, '248', '68', '15', 1, '18', 'in', 'delivered', '2020-03-10 07:34:28', '2020-03-10 07:34:58', NULL),
(106, '248', '69', '15', 1, '15', 'in', 'delivered', '2020-03-10 07:34:28', '2020-03-10 07:34:58', NULL),
(107, '248', '70', '15', 1, '5', 'in', 'delivered', '2020-03-10 07:34:28', '2020-03-10 07:34:58', NULL),
(108, '248', '71', '15', 1, '5', 'in', 'delivered', '2020-03-10 07:34:28', '2020-03-10 07:34:58', NULL),
(109, '248', '68', '16', 1, '1', 'in', 'delivered', '2020-03-10 07:36:32', '2020-03-10 07:36:54', NULL),
(110, '1', '72', NULL, NULL, '50', 'in', 'delivered', '2020-03-11 23:06:42', '2020-03-11 23:06:42', NULL),
(111, '264', '68', '17', 248, '1', 'out', 'delivered', '2020-03-13 00:25:27', '2020-03-15 01:02:30', NULL),
(112, '259', '68', '18', 248, '1', 'out', 'delivered', '2020-03-13 00:31:00', '2020-03-15 01:03:10', NULL),
(113, '267', '68', '19', 248, '1', 'out', 'delivered', '2020-03-14 10:13:24', '2020-03-15 01:54:43', NULL),
(114, '101', '70', '20', 248, '1', 'out', 'delivered', '2020-03-15 06:20:55', '2020-03-15 06:23:14', NULL),
(115, '102', '70', '21', 248, '1', 'out', 'delivered', '2020-03-15 06:49:22', '2020-03-15 06:57:54', NULL),
(116, '280', '70', '22', 248, '1', 'out', 'delivered', '2020-03-15 06:56:03', '2020-03-15 06:58:13', NULL),
(117, '262', '69', '23', 248, '1', 'out', 'delivered', '2020-03-16 06:42:25', '2020-03-16 06:44:47', NULL),
(118, '103', '71', '24', 248, '1', 'out', 'delivered', '2020-03-16 22:27:22', '2020-03-18 10:11:42', NULL),
(119, '104', '71', '25', 248, '1', 'out', 'delivered', '2020-03-16 22:30:30', '2020-03-18 10:11:55', NULL),
(120, '1', '73', NULL, NULL, '10', 'in', 'delivered', '2020-03-18 09:19:33', '2020-03-18 09:19:33', NULL),
(121, '1', '74', NULL, NULL, '10', 'in', 'delivered', '2020-03-18 09:19:46', '2020-03-18 09:19:46', NULL),
(122, '244', '68', '26', 248, '1', 'out', 'delivered', '2020-03-18 10:08:57', '2020-03-18 10:12:12', NULL),
(123, '248', '59', '27', 1, '5', 'in', 'delivered', '2020-03-18 10:13:15', '2020-03-18 10:14:34', NULL),
(124, '248', '73', '27', 1, '6', 'in', 'delivered', '2020-03-18 10:13:15', '2020-03-18 10:14:34', NULL),
(125, '248', '74', '27', 1, '5', 'in', 'delivered', '2020-03-18 10:13:15', '2020-03-18 10:14:34', NULL),
(126, '282', '68', '28', 248, '1', 'out', 'delivered', '2020-03-20 00:31:22', '2020-03-20 01:54:21', NULL),
(127, '284', '10', '29', 248, '1', 'out', 'delivered', '2020-03-20 01:06:55', '2020-03-20 01:53:48', NULL),
(128, '261', '59', '30', 248, '1', 'out', 'delivered', '2020-03-20 01:30:36', '2020-03-20 01:53:12', NULL),
(129, '261', '73', '30', 248, '1', 'out', 'delivered', '2020-03-20 01:30:36', '2020-03-20 01:53:12', NULL),
(130, '261', '74', '30', 248, '1', 'out', 'delivered', '2020-03-20 01:30:36', '2020-03-20 01:53:12', NULL),
(131, '243', '69', '31', 248, '1', 'out', 'delivered', '2020-03-21 01:42:19', '2020-03-22 01:00:54', NULL),
(132, '284', '27', '32', 248, '2', 'out', 'delivered', '2020-03-21 01:46:45', '2020-03-22 01:01:57', NULL),
(133, '1', '75', NULL, NULL, '50', 'in', 'delivered', '2020-03-22 01:07:55', '2020-03-22 01:07:55', NULL),
(134, '248', '75', '33', 1, '50', 'in', 'delivered', '2020-03-22 01:08:56', '2020-03-22 01:09:38', NULL),
(135, '1', '76', NULL, NULL, '50', 'in', 'delivered', '2020-03-24 04:26:54', '2020-03-24 04:26:54', NULL),
(136, '1', '77', NULL, NULL, '50', 'in', 'delivered', '2020-03-24 04:27:05', '2020-03-24 04:27:05', NULL),
(137, '248', '76', '34', 1, '50', 'in', 'delivered', '2020-03-24 04:37:32', '2020-03-24 04:38:06', NULL),
(138, '248', '77', '34', 1, '18', 'in', 'delivered', '2020-03-24 04:37:32', '2020-03-24 04:38:06', NULL),
(139, '248', '27', '35', 1, '1', 'in', 'ordered', '2020-04-03 07:10:42', '2020-04-03 07:10:42', NULL),
(140, '1', '78', NULL, NULL, '12', 'in', 'delivered', '2020-04-29 05:28:12', '2020-04-29 05:28:12', NULL),
(141, NULL, '76', NULL, 1, '50', 'out', 'delivered', '2020-04-29 05:28:47', '2020-04-29 05:28:47', NULL),
(142, '1', '75', NULL, NULL, '100', 'in', 'delivered', '2020-04-29 05:29:27', '2020-04-29 05:29:27', NULL),
(143, '284', '57', '36', 248, '1', 'out', 'delivered', '2020-05-03 23:36:22', '2020-05-04 01:31:16', NULL),
(144, '281', '75', '37', 248, '1', 'out', 'delivered', '2020-05-07 21:33:02', '2020-05-09 01:29:31', NULL),
(145, '264', '58', '38', 248, '1', 'out', 'delivered', '2020-05-09 01:16:08', '2020-05-09 01:29:57', NULL),
(146, '1', '11', NULL, NULL, '11', 'in', 'delivered', '2020-05-09 01:44:22', '2020-05-09 01:44:22', NULL),
(147, '248', '11', '39', 1, '10', 'in', 'delivered', '2020-05-09 01:45:54', '2020-05-10 23:09:17', NULL),
(148, '248', '55', '39', 1, '10', 'in', 'delivered', '2020-05-09 01:45:54', '2020-05-10 23:09:17', NULL),
(149, '248', '57', '39', 1, '12', 'in', 'delivered', '2020-05-09 01:45:54', '2020-05-10 23:09:17', NULL),
(150, '248', '63', '39', 1, '30', 'in', 'delivered', '2020-05-09 01:45:54', '2020-05-10 23:09:17', NULL),
(151, '248', '78', '39', 1, '12', 'in', 'delivered', '2020-05-09 01:45:54', '2020-05-10 23:09:17', NULL),
(152, '284', '1', '40', 248, '3', 'out', 'ordered', '2020-05-10 23:02:35', '2020-05-10 23:02:35', NULL),
(153, '284', '63', '41', 248, '1', 'out', 'ordered', '2020-05-10 23:15:27', '2020-05-10 23:15:27', NULL),
(154, '354', '70', '42', 248, '1', 'out', 'ordered', '2020-05-11 00:21:07', '2020-05-11 00:21:07', NULL),
(155, '248', '70', '43', 1, '4', 'in', 'delivered', '2020-05-11 00:23:07', '2020-05-11 00:23:59', NULL),
(156, '354', '27', '44', 248, '2', 'out', 'ordered', '2020-05-11 00:33:29', '2020-05-11 00:33:29', NULL),
(157, '282', '27', '45', 248, '1', 'out', 'ordered', '2020-05-12 00:20:06', '2020-05-12 00:20:06', NULL),
(158, '1', '79', NULL, NULL, '24', 'in', 'delivered', '2020-05-13 05:24:00', '2020-05-13 05:24:00', NULL),
(159, '248', '79', '46', 1, '24', 'in', 'delivered', '2020-05-13 05:28:34', '2020-05-13 05:30:08', NULL),
(160, '1', '80', NULL, NULL, '100', 'in', 'delivered', '2020-06-01 22:51:09', '2020-06-01 22:51:09', NULL),
(161, '248', '80', '47', 1, '100', 'in', 'delivered', '2020-06-02 00:27:00', '2020-06-02 00:27:48', NULL),
(162, '249', '80', '48', 248, '10', 'in', 'delivered', '2020-06-02 00:29:27', '2020-06-02 00:36:46', NULL),
(163, '281', '63', '49', 248, '1', 'out', 'ordered', '2020-06-02 23:28:37', '2020-06-02 23:28:37', NULL),
(164, '281', '24', '50', 248, '1', 'out', 'ordered', '2020-06-02 23:31:32', '2020-06-02 23:31:32', NULL),
(165, '281', '75', '51', 248, '1', 'out', 'ordered', '2020-06-02 23:34:20', '2020-06-02 23:34:20', NULL),
(166, '1', '78', NULL, NULL, '30', 'in', 'delivered', '2020-06-03 11:23:40', '2020-06-03 11:23:40', NULL),
(167, '248', '4', '52', 1, '10', 'in', 'delivered', '2020-06-03 11:32:53', '2020-06-03 11:36:14', NULL),
(168, '248', '5', '52', 1, '10', 'in', 'delivered', '2020-06-03 11:32:53', '2020-06-03 11:36:14', NULL),
(169, '248', '6', '52', 1, '10', 'in', 'delivered', '2020-06-03 11:32:53', '2020-06-03 11:36:14', NULL),
(170, '248', '7', '52', 1, '10', 'in', 'delivered', '2020-06-03 11:32:53', '2020-06-03 11:36:14', NULL),
(171, '248', '8', '52', 1, '10', 'in', 'delivered', '2020-06-03 11:32:53', '2020-06-03 11:36:14', NULL),
(172, '248', '9', '52', 1, '10', 'in', 'delivered', '2020-06-03 11:32:53', '2020-06-03 11:36:14', NULL),
(173, '248', '10', '52', 1, '10', 'in', 'delivered', '2020-06-03 11:32:53', '2020-06-03 11:36:14', NULL),
(174, '248', '16', '52', 1, '10', 'in', 'delivered', '2020-06-03 11:32:53', '2020-06-03 11:36:14', NULL),
(175, '248', '22', '52', 1, '12', 'in', 'delivered', '2020-06-03 11:32:53', '2020-06-03 11:36:14', NULL),
(176, '248', '41', '52', 1, '12', 'in', 'delivered', '2020-06-03 11:32:53', '2020-06-03 11:36:14', NULL),
(177, '249', '4', '53', 248, '5', 'in', 'delivered', '2020-06-03 11:42:17', '2020-06-03 11:44:14', NULL),
(178, '249', '5', '53', 248, '5', 'in', 'delivered', '2020-06-03 11:42:17', '2020-06-03 11:44:14', NULL),
(179, '249', '6', '53', 248, '5', 'in', 'delivered', '2020-06-03 11:42:17', '2020-06-03 11:44:14', NULL),
(180, '249', '7', '53', 248, '2', 'in', 'delivered', '2020-06-03 11:42:17', '2020-06-03 11:44:14', NULL),
(181, '249', '9', '53', 248, '5', 'in', 'delivered', '2020-06-03 11:42:17', '2020-06-03 11:44:14', NULL),
(182, '249', '16', '53', 248, '1', 'in', 'delivered', '2020-06-03 11:42:17', '2020-06-03 11:44:14', NULL),
(183, '361', '70', '54', 248, '1', 'out', 'delivered', '2020-06-06 23:17:00', '2020-06-09 02:23:03', NULL),
(184, '363', '70', '55', 248, '1', 'out', 'ordered', '2020-06-10 00:57:00', '2020-06-10 00:57:00', NULL),
(185, '335', '69', '56', 248, '1', 'out', 'ordered', '2020-06-10 06:20:33', '2020-06-10 06:20:33', NULL),
(186, '330', '69', '57', 248, '1', 'out', 'ordered', '2020-06-10 06:24:15', '2020-06-10 06:24:15', NULL),
(187, '313', '69', '58', 248, '1', 'out', 'ordered', '2020-06-10 06:27:12', '2020-06-10 06:27:12', NULL),
(188, '365', '70', '59', 248, '1', 'out', 'ordered', '2020-06-10 21:33:31', '2020-06-10 21:33:31', NULL),
(189, '377', '70', '60', 248, '1', 'out', 'ordered', '2020-06-11 23:29:07', '2020-06-11 23:29:07', NULL),
(190, '260', '70', '61', 248, '1', 'out', 'ordered', '2020-06-12 00:10:50', '2020-06-12 00:10:50', NULL),
(191, '281', '63', '62', 248, '1', 'out', 'ordered', '2020-06-12 02:30:06', '2020-06-12 02:30:06', NULL),
(192, '369', '1', '63', 248, '1', 'out', 'ordered', '2020-06-14 23:54:16', '2020-06-14 23:54:16', NULL),
(193, '410', '69', '64', 1, '1', 'in', 'delivered', '2020-06-15 03:37:08', '2020-06-15 03:37:08', NULL),
(194, '1', '69', '65', 248, '1', 'in', 'ordered', '2020-06-15 03:39:53', '2020-06-15 03:39:53', NULL),
(195, '249', '24', '66', 248, '6', 'in', 'ordered', '2020-06-15 04:12:39', '2020-06-15 04:12:39', NULL),
(196, '249', '55', '66', 248, '10', 'in', 'ordered', '2020-06-15 04:12:39', '2020-06-15 04:12:39', NULL),
(197, '249', '57', '66', 248, '5', 'in', 'ordered', '2020-06-15 04:12:39', '2020-06-15 04:12:39', NULL),
(198, '249', '79', '66', 248, '12', 'in', 'ordered', '2020-06-15 04:12:39', '2020-06-15 04:12:39', NULL),
(199, '1', '81', NULL, NULL, '12', 'in', 'delivered', '2020-06-15 11:34:10', '2020-06-15 11:34:10', NULL),
(200, '1', '81', NULL, NULL, '12', 'in', 'delivered', '2020-06-15 11:34:10', '2020-06-15 11:34:10', NULL),
(201, NULL, '81', NULL, 1, '12', 'out', 'delivered', '2020-06-15 11:34:30', '2020-06-15 11:34:30', NULL),
(202, NULL, '81', NULL, 1, '12', 'out', 'delivered', '2020-06-15 11:34:30', '2020-06-15 11:34:30', NULL),
(203, NULL, '81', NULL, 1, '12', 'out', 'delivered', '2020-06-15 11:34:51', '2020-06-15 11:34:51', NULL),
(204, '1', '81', NULL, NULL, '24', 'in', 'delivered', '2020-06-15 11:35:26', '2020-06-15 11:35:26', NULL),
(205, '248', '81', '67', 1, '12', 'in', 'delivered', '2020-06-15 22:55:26', '2020-06-15 22:55:26', NULL),
(206, '1', '82', NULL, NULL, '50', 'in', 'delivered', '2020-06-15 23:16:36', '2020-06-15 23:16:36', NULL),
(207, '220', '75', '68', 248, '1', 'out', 'ordered', '2020-06-16 00:53:33', '2020-06-16 00:53:33', NULL),
(208, '220', '27', '68', 248, '1', 'out', 'ordered', '2020-06-16 00:53:33', '2020-06-16 00:53:33', NULL),
(209, '248', '70', '69', 1, '20', 'in', 'delivered', '2020-06-16 05:59:36', '2020-06-16 05:59:36', NULL),
(210, '378', '69', '70', 248, '1', 'out', 'ordered', '2020-06-16 06:03:45', '2020-06-16 06:03:45', NULL),
(211, '249', '81', '71', 248, '12', 'in', 'ordered', '2020-06-17 00:32:11', '2020-06-17 00:32:11', NULL);

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
(1, '1', '1', 100.00, 'admin', 'in', '1', 'You Received 100 Tk TopUp Balance From System Administrator', 'active', '2020-01-06 03:21:25', '2020-01-06 03:21:25', NULL),
(2, '1', '200', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For foyez Membership ID Card.', 'active', '2020-01-06 03:23:19', '2020-01-06 03:23:19', NULL),
(3, '200', '1', 2000.00, 'admin', 'in', '1', 'You Received 2000 Tk TopUp Balance From System Administrator', 'active', '2020-01-06 03:50:03', '2020-01-06 03:50:03', NULL),
(4, '200', '201', 100.00, 'user', 'out', '200', 'Office Charge 100 Tk For foyez1 Membership ID Card.', 'active', '2020-01-06 03:51:21', '2020-01-06 03:51:21', NULL),
(5, '200', '202', 100.00, 'user', 'out', '200', 'Office Charge 100 Tk For foyez2 Membership ID Card.', 'active', '2020-01-06 03:52:05', '2020-01-06 03:52:05', NULL),
(6, '200', '203', 100.00, 'user', 'out', '200', 'Office Charge 100 Tk For foyez3 Membership ID Card.', 'active', '2020-01-06 03:52:52', '2020-01-06 03:52:52', NULL),
(7, '200', '204', 100.00, 'user', 'out', '200', 'Office Charge 100 Tk For foyez4 Membership ID Card.', 'active', '2020-01-06 03:53:35', '2020-01-06 03:53:35', NULL),
(8, '200', '205', 100.00, 'user', 'out', '200', 'Office Charge 100 Tk For foyez5 Membership ID Card.', 'active', '2020-01-06 03:54:19', '2020-01-06 03:54:19', NULL),
(9, '200', '206', 100.00, 'user', 'out', '200', 'Office Charge 100 Tk For foyez6 Membership ID Card.', 'active', '2020-01-06 03:54:55', '2020-01-06 03:54:55', NULL),
(10, '200', '207', 100.00, 'user', 'out', '200', 'Office Charge 100 Tk For foyez7 Membership ID Card.', 'active', '2020-01-06 03:55:33', '2020-01-06 03:55:33', NULL),
(11, '200', '208', 100.00, 'user', 'out', '200', 'Office Charge 100 Tk For foyez8 Membership ID Card.', 'active', '2020-01-06 03:56:25', '2020-01-06 03:56:25', NULL),
(12, '200', '209', 100.00, 'user', 'out', '200', 'Office Charge 100 Tk For foyez9 Membership ID Card.', 'active', '2020-01-06 03:57:09', '2020-01-06 03:57:09', NULL),
(13, '200', '210', 100.00, 'user', 'out', '200', 'Office Charge 100 Tk For foyez10 Membership ID Card.', 'active', '2020-01-06 03:57:55', '2020-01-06 03:57:55', NULL),
(14, '200', '211', 100.00, 'user', 'out', '200', 'Office Charge 100 Tk For foyez01 Membership ID Card.', 'active', '2020-01-06 03:59:38', '2020-01-06 03:59:38', NULL),
(15, '200', '212', 100.00, 'user', 'out', '200', 'Office Charge 100 Tk For foyez02 Membership ID Card.', 'active', '2020-01-06 04:00:28', '2020-01-06 04:00:28', NULL),
(16, '200', '213', 100.00, 'user', 'out', '200', 'Office Charge 100 Tk For foyez03 Membership ID Card.', 'active', '2020-01-06 04:01:28', '2020-01-06 04:01:28', NULL),
(17, '200', '214', 100.00, 'user', 'out', '200', 'Office Charge 100 Tk For foyez04 Membership ID Card.', 'active', '2020-01-06 04:02:06', '2020-01-06 04:02:06', NULL),
(18, '200', '215', 100.00, 'user', 'out', '200', 'Office Charge 100 Tk For foyez05 Membership ID Card.', 'active', '2020-01-06 04:02:48', '2020-01-06 04:02:48', NULL),
(19, '200', '216', 100.00, 'user', 'out', '200', 'Office Charge 100 Tk For foyez06 Membership ID Card.', 'active', '2020-01-06 04:03:53', '2020-01-06 04:03:53', NULL),
(20, '200', '217', 100.00, 'user', 'out', '200', 'Office Charge 100 Tk For foyez07 Membership ID Card.', 'active', '2020-01-06 04:05:26', '2020-01-06 04:05:26', NULL),
(21, '200', '218', 100.00, 'user', 'out', '200', 'Office Charge 100 Tk For foyez08 Membership ID Card.', 'active', '2020-01-06 04:06:02', '2020-01-06 04:06:02', NULL),
(22, '200', '219', 100.00, 'user', 'out', '200', 'Office Charge 100 Tk For foyez09 Membership ID Card.', 'active', '2020-01-06 04:06:46', '2020-01-06 04:06:46', NULL),
(23, '200', '220', 100.00, 'user', 'out', '200', 'Office Charge 100 Tk For foyez010 Membership ID Card.', 'active', '2020-01-06 04:07:35', '2020-01-06 04:07:35', NULL),
(24, '1', '1', 800.00, 'admin', 'in', '1', 'You Received 800 Tk TopUp Balance From System Administrator', 'active', '2020-01-06 05:00:38', '2020-01-06 05:00:38', NULL),
(25, '1', '221', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For rocky Membership ID Card.', 'active', '2020-01-06 05:05:40', '2020-01-06 05:05:40', NULL),
(26, '1', '222', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For mgmustafa Membership ID Card.', 'active', '2020-01-06 06:04:51', '2020-01-06 06:04:51', NULL),
(27, '1', '223', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For khanh Membership ID Card.', 'active', '2020-01-06 06:14:43', '2020-01-06 06:14:43', NULL),
(28, '1', '224', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For khanh1 Membership ID Card.', 'active', '2020-01-06 06:16:46', '2020-01-06 06:16:46', NULL),
(29, '1', '225', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For khanh2 Membership ID Card.', 'active', '2020-01-06 06:17:34', '2020-01-06 06:17:34', NULL),
(30, '1', '226', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For moshin Membership ID Card.', 'active', '2020-01-06 06:19:22', '2020-01-06 06:19:22', NULL),
(31, '1', '227', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For akhi Membership ID Card.', 'active', '2020-01-06 06:21:38', '2020-01-06 06:21:38', NULL),
(32, '227', '1', 100.00, 'admin', 'in', '1', 'You Received 100 Tk TopUp Balance From System Administrator', 'active', '2020-01-06 06:23:10', '2020-01-06 06:23:10', NULL),
(33, '227', '229', 100.00, 'user', 'out', '227', 'Office Charge 100 Tk For mjhasan Membership ID Card.', 'active', '2020-01-06 06:26:28', '2020-01-06 06:26:28', NULL),
(34, '223', '1', 500.00, 'admin', 'in', '1', 'You Received 500 Tk TopUp Balance From System Administrator', 'active', '2020-01-06 06:46:53', '2020-01-06 06:46:53', NULL),
(35, '1', '230', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For mimahmud Membership ID Card.', 'active', '2020-01-06 06:51:23', '2020-01-06 06:51:23', NULL),
(36, '223', '231', 100.00, 'user', 'out', '223', 'Office Charge 100 Tk For dalowarh Membership ID Card.', 'active', '2020-01-06 06:58:17', '2020-01-06 06:58:17', NULL),
(37, '223', '232', 100.00, 'user', 'out', '223', 'Office Charge 100 Tk For jahangirh Membership ID Card.', 'active', '2020-01-06 07:04:28', '2020-01-06 07:04:28', NULL),
(38, '223', '233', 100.00, 'user', 'out', '223', 'Office Charge 100 Tk For mizanur Membership ID Card.', 'active', '2020-01-06 07:06:18', '2020-01-06 07:06:18', NULL),
(39, '223', '234', 100.00, 'user', 'out', '223', 'Office Charge 100 Tk For mmkhan Membership ID Card.', 'active', '2020-01-06 07:08:21', '2020-01-06 07:08:21', NULL),
(40, '1', '1', 500.00, 'admin', 'in', '1', 'You Received 500 Tk TopUp Balance From System Administrator', 'active', '2020-01-06 07:20:54', '2020-01-06 07:20:54', NULL),
(41, '1', '235', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For sweety Membership ID Card.', 'active', '2020-01-06 07:22:26', '2020-01-06 07:22:26', NULL),
(42, '1', '236', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For badrul Membership ID Card.', 'active', '2020-01-06 07:25:29', '2020-01-06 07:25:29', NULL),
(43, '200', '1', 100.00, 'admin', 'in', '1', 'You Received 100 Tk TopUp Balance From System Administrator', 'active', '2020-01-12 12:09:02', '2020-01-12 12:09:02', NULL),
(44, '200', '237', 100.00, 'user', 'out', '200', 'Office Charge 100 Tk For roman Membership ID Card.', 'active', '2020-01-12 12:11:57', '2020-01-12 12:11:57', NULL),
(45, '1', '238', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For suzan Membership ID Card.', 'active', '2020-01-25 06:30:02', '2020-01-25 06:30:02', NULL),
(46, '1', '239', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For habibur Membership ID Card.', 'active', '2020-01-25 06:32:17', '2020-01-25 06:32:17', NULL),
(47, '239', '1', 200.00, 'admin', 'in', '1', 'You Received 200 Tk TopUp Balance From System Administrator', 'active', '2020-01-25 06:32:57', '2020-01-25 06:32:57', NULL),
(48, '239', '240', 100.00, 'user', 'out', '239', 'Office Charge 100 Tk For fahadul Membership ID Card.', 'active', '2020-01-25 06:35:44', '2020-01-25 06:35:44', NULL),
(49, '239', '241', 100.00, 'user', 'out', '239', 'Office Charge 100 Tk For fatema Membership ID Card.', 'active', '2020-01-25 06:40:45', '2020-01-25 06:40:45', NULL),
(50, '1', '242', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For test1 Membership ID Card.', 'active', '2020-01-28 16:39:36', '2020-01-28 16:39:36', NULL),
(51, '1', '1', 2000.00, 'admin', 'in', '1', 'You Received 2000 Tk TopUp Balance From System Administrator', 'active', '2020-02-03 06:28:31', '2020-02-03 06:28:31', NULL),
(52, '200', '1', 200.00, 'admin', 'in', '1', 'You Received 200 Tk TopUp Balance From System Administrator', 'active', '2020-02-03 06:30:57', '2020-02-03 06:30:57', NULL),
(53, '200', '1', 200.00, 'admin', 'in', '1', 'You Received 200 Tk TopUp Balance From System Administrator', 'active', '2020-02-03 06:30:58', '2020-02-03 06:30:58', NULL),
(54, '1', '243', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For Rabbi Membership ID Card.', 'active', '2020-02-03 06:34:20', '2020-02-03 06:34:20', NULL),
(55, '243', '1', 100.00, 'admin', 'in', '1', 'You Received 100 Tk TopUp Balance From System Administrator', 'active', '2020-02-03 06:35:07', '2020-02-03 06:35:07', NULL),
(56, '1', '244', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For Amit Membership ID Card.', 'active', '2020-02-03 06:38:24', '2020-02-03 06:38:24', NULL),
(57, '1', '245', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For Rafiqul Membership ID Card.', 'active', '2020-02-18 16:35:04', '2020-02-18 16:35:04', NULL),
(58, '1', '246', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For Arif Membership ID Card.', 'active', '2020-02-20 05:12:36', '2020-02-20 05:12:36', NULL),
(59, '1', '247', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For mehedi Membership ID Card.', 'active', '2020-02-20 06:35:00', '2020-02-20 06:35:00', NULL),
(60, '249', '1', 100000.00, 'admin', 'in', '1', 'You Received 100000 Tk TopUp Balance From System Administrator', 'active', '2020-02-21 16:48:16', '2020-02-21 16:48:16', NULL),
(61, '248', '1', 100000.00, 'admin', 'in', '1', 'You Received 100000 Tk TopUp Balance From System Administrator', 'active', '2020-02-21 17:06:14', '2020-02-21 17:06:14', NULL),
(62, '248', '248', 3500.00, 'user', 'out', '248', 'You have purchase 1 with 3500 Tk TopUp balance.', 'active', '2020-02-21 17:11:14', '2020-02-21 17:11:14', NULL),
(63, '1', '248', 3500.00, 'user', 'in', '248', 'You have received 3500.00 Tk TopUp balance for delivered 1 order to standard', 'active', '2020-02-22 09:12:11', '2020-02-22 09:12:11', NULL),
(64, '1', '1', 95000.00, 'admin', 'in', '1', 'You Received 95000 Tk TopUp Balance From System Administrator', 'active', '2020-02-22 10:12:57', '2020-02-22 10:12:57', NULL),
(65, '200', '1', 300.00, 'admin', 'in', '1', 'You Received 300 Tk TopUp Balance From System Administrator', 'active', '2020-02-22 10:13:36', '2020-02-22 10:13:36', NULL),
(66, '1', '201', 2100.00, 'user', 'out', '1', 'You have transfer 2100 Tk TopUp balance to foyez1 .', 'active', '2020-02-22 10:19:50', '2020-02-22 10:19:50', NULL),
(67, '201', '1', 2100.00, 'user', 'in', '1', 'You have received 2100 Tk TopUp balance From admin .', 'active', '2020-02-22 10:19:50', '2020-02-22 10:19:50', NULL),
(68, '201', '201', 1400.00, 'user', 'out', '201', 'You have purchase 2 with 1400 Tk TopUp balance.', 'active', '2020-02-22 10:21:08', '2020-02-22 10:21:08', NULL),
(69, '248', '248', 4730.00, 'user', 'out', '248', 'You have purchase 3 with 4730 Tk TopUp balance.', 'active', '2020-02-22 10:26:48', '2020-02-22 10:26:48', NULL),
(70, '1', '248', 4730.00, 'user', 'in', '248', 'You have received 4730.00 Tk TopUp balance for delivered 3 order to standard', 'active', '2020-02-22 10:28:59', '2020-02-22 10:28:59', NULL),
(71, '200', '1', 700.00, 'user', 'out', '200', 'You have transfer 700 Tk TopUp balance to admin .', 'active', '2020-02-22 10:32:11', '2020-02-22 10:32:11', NULL),
(72, '1', '200', 700.00, 'user', 'in', '200', 'You have received 700 Tk TopUp balance From foyez .', 'active', '2020-02-22 10:32:11', '2020-02-22 10:32:11', NULL),
(73, '1', '211', 2100.00, 'user', 'out', '1', 'You have transfer 2100 Tk TopUp balance to foyez01 .', 'active', '2020-02-22 12:00:46', '2020-02-22 12:00:46', NULL),
(74, '211', '1', 2100.00, 'user', 'in', '1', 'You have received 2100 Tk TopUp balance From admin .', 'active', '2020-02-22 12:00:46', '2020-02-22 12:00:46', NULL),
(75, '211', '211', 700.00, 'user', 'out', '211', 'You have purchase 4 with 700 Tk TopUp balance.', 'active', '2020-02-22 12:14:05', '2020-02-22 12:14:05', NULL),
(76, '211', '211', 700.00, 'user', 'out', '211', 'You have purchase 5 with 700 Tk TopUp balance.', 'active', '2020-02-22 12:14:32', '2020-02-22 12:14:32', NULL),
(77, '211', '211', 400.00, 'user', 'out', '211', 'You have purchase 6 with 400 Tk TopUp balance.', 'active', '2020-02-22 12:39:53', '2020-02-22 12:39:53', NULL),
(78, '248', '211', 700.00, 'user', 'in', '211', 'You have received 700.00 Tk TopUp balance for delivered 5 order to foyez01', 'active', '2020-02-22 13:45:56', '2020-02-22 13:45:56', NULL),
(79, '248', '201', 1400.00, 'user', 'in', '201', 'You have received 1400.00 Tk TopUp balance for delivered 2 order to foyez1', 'active', '2020-02-22 13:54:19', '2020-02-22 13:54:19', NULL),
(80, '248', '211', 700.00, 'user', 'in', '211', 'You have received 700.00 Tk TopUp balance for delivered 4 order to foyez01', 'active', '2020-02-22 13:54:32', '2020-02-22 13:54:32', NULL),
(81, '248', '211', 400.00, 'user', 'in', '211', 'You have received 400.00 Tk TopUp balance for delivered 6 order to foyez01', 'active', '2020-02-22 13:54:45', '2020-02-22 13:54:45', NULL),
(82, '1', '252', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For nirob Membership ID Card.', 'active', '2020-02-28 05:41:23', '2020-02-28 05:41:23', NULL),
(83, '1', '253', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For azharul Membership ID Card.', 'active', '2020-02-28 05:49:27', '2020-02-28 05:49:27', NULL),
(84, '1', '254', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For sakib Membership ID Card.', 'active', '2020-02-28 05:54:12', '2020-02-28 05:54:12', NULL),
(85, '1', '243', 900.00, 'user', 'out', '1', 'You have transfer 900 Tk TopUp balance to rabbi .', 'active', '2020-03-01 05:46:37', '2020-03-01 05:46:37', NULL),
(86, '243', '1', 900.00, 'user', 'in', '1', 'You have received 900 Tk TopUp balance From admin .', 'active', '2020-03-01 05:46:37', '2020-03-01 05:46:37', NULL),
(87, '1', '244', 1000.00, 'user', 'out', '1', 'You have transfer 1000 Tk TopUp balance to amit .', 'active', '2020-03-01 05:47:11', '2020-03-01 05:47:11', NULL),
(88, '244', '1', 1000.00, 'user', 'in', '1', 'You have received 1000 Tk TopUp balance From admin .', 'active', '2020-03-01 05:47:11', '2020-03-01 05:47:11', NULL),
(89, '1', '247', 900.00, 'user', 'out', '1', 'You have transfer 900 Tk TopUp balance to mehedi .', 'active', '2020-03-01 05:47:35', '2020-03-01 05:47:35', NULL),
(90, '247', '1', 900.00, 'user', 'in', '1', 'You have received 900 Tk TopUp balance From admin .', 'active', '2020-03-01 05:47:35', '2020-03-01 05:47:35', NULL),
(91, '1', '252', 2100.00, 'user', 'out', '1', 'You have transfer 2100 Tk TopUp balance to nirob .', 'active', '2020-03-01 05:48:05', '2020-03-01 05:48:05', NULL),
(92, '252', '1', 2100.00, 'user', 'in', '1', 'You have received 2100 Tk TopUp balance From admin .', 'active', '2020-03-01 05:48:05', '2020-03-01 05:48:05', NULL),
(93, '1', '253', 2400.00, 'user', 'out', '1', 'You have transfer 2400 Tk TopUp balance to azharul .', 'active', '2020-03-01 05:48:33', '2020-03-01 05:48:33', NULL),
(94, '253', '1', 2400.00, 'user', 'in', '1', 'You have received 2400 Tk TopUp balance From admin .', 'active', '2020-03-01 05:48:33', '2020-03-01 05:48:33', NULL),
(95, '1', '254', 2100.00, 'user', 'out', '1', 'You have transfer 2100 Tk TopUp balance to sakib .', 'active', '2020-03-01 05:49:13', '2020-03-01 05:49:13', NULL),
(96, '254', '1', 2100.00, 'user', 'in', '1', 'You have received 2100 Tk TopUp balance From admin .', 'active', '2020-03-01 05:49:13', '2020-03-01 05:49:13', NULL),
(97, '248', '248', 76930.00, 'user', 'out', '248', 'You have purchase 7 with 76930 Tk TopUp balance.', 'active', '2020-03-01 06:12:32', '2020-03-01 06:12:32', NULL),
(98, '1', '248', 76930.00, 'user', 'in', '248', 'You have received 76930.00 Tk TopUp balance for delivered 7 order to standard', 'active', '2020-03-01 06:13:55', '2020-03-01 06:13:55', NULL),
(99, '200', '200', 200.00, 'withdrawal', 'in', '200', 'You have received 200 Tk TopUp from withdrawal 1', 'active', '2020-03-01 06:24:41', '2020-03-01 06:24:41', NULL),
(100, '200', '1', 200.00, 'user', 'out', '200', 'You have transfer 200 Tk TopUp balance to admin .', 'active', '2020-03-01 06:25:18', '2020-03-01 06:25:18', NULL),
(101, '1', '200', 200.00, 'user', 'in', '200', 'You have received 200 Tk TopUp balance From foyez .', 'active', '2020-03-01 06:25:18', '2020-03-01 06:25:18', NULL),
(102, '1', '255', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For habibur Membership ID Card.', 'active', '2020-03-03 09:52:02', '2020-03-03 09:52:02', NULL),
(103, '1', '256', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For fahadul Membership ID Card.', 'active', '2020-03-03 09:56:49', '2020-03-03 09:56:49', NULL),
(104, '1', '257', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For fatema Membership ID Card.', 'active', '2020-03-03 09:58:56', '2020-03-03 09:58:56', NULL),
(105, '1', '256', 2100.00, 'user', 'out', '1', 'You have transfer 2100 Tk TopUp balance to fahadul .', 'active', '2020-03-03 11:11:43', '2020-03-03 11:11:43', NULL),
(106, '256', '1', 2100.00, 'user', 'in', '1', 'You have received 2100 Tk TopUp balance From admin .', 'active', '2020-03-03 11:11:43', '2020-03-03 11:11:43', NULL),
(107, '1', '257', 2100.00, 'user', 'out', '1', 'You have transfer 2100 Tk TopUp balance to fatema .', 'active', '2020-03-03 11:11:59', '2020-03-03 11:11:59', NULL),
(108, '257', '1', 2100.00, 'user', 'in', '1', 'You have received 2100 Tk TopUp balance From admin .', 'active', '2020-03-03 11:11:59', '2020-03-03 11:11:59', NULL),
(109, '256', '256', 2100.00, 'user', 'out', '256', 'You have purchase 8 with 2100 Tk TopUp balance.', 'active', '2020-03-03 11:14:19', '2020-03-03 11:14:19', NULL),
(110, '257', '257', 2100.00, 'user', 'out', '257', 'You have purchase 9 with 2100 Tk TopUp balance.', 'active', '2020-03-03 11:15:39', '2020-03-03 11:15:39', NULL),
(111, '248', '256', 2100.00, 'user', 'in', '256', 'You have received 2100.00 Tk TopUp balance for delivered 8 order to fahadul', 'active', '2020-03-03 11:24:21', '2020-03-03 11:24:21', NULL),
(112, '248', '257', 2100.00, 'user', 'in', '257', 'You have received 2100.00 Tk TopUp balance for delivered 9 order to fatema', 'active', '2020-03-03 11:24:59', '2020-03-03 11:24:59', NULL),
(113, '201', '1', 700.00, 'user', 'out', '201', 'You have transfer 700 Tk TopUp balance to admin .', 'active', '2020-03-03 23:12:36', '2020-03-03 23:12:36', NULL),
(114, '1', '201', 700.00, 'user', 'in', '201', 'You have received 700 Tk TopUp balance From foyez1 .', 'active', '2020-03-03 23:12:36', '2020-03-03 23:12:36', NULL),
(115, '1', '1', 750.00, 'user', 'out', '1', 'You have purchase 10 with 750 Tk TopUp balance.', 'active', '2020-03-04 19:39:45', '2020-03-04 19:39:45', NULL),
(116, '1', '258', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For robin Membership ID Card.', 'active', '2020-03-05 23:49:15', '2020-03-05 23:49:15', NULL),
(117, '1', '247', 1200.00, 'user', 'out', '1', 'You have transfer 1200 Tk TopUp balance to mehedi .', 'active', '2020-03-06 01:29:09', '2020-03-06 01:29:09', NULL),
(118, '247', '1', 1200.00, 'user', 'in', '1', 'You have received 1200 Tk TopUp balance From admin .', 'active', '2020-03-06 01:29:09', '2020-03-06 01:29:09', NULL),
(119, '247', '247', 2100.00, 'user', 'out', '247', 'You have purchase 11 with 2100 Tk TopUp balance.', 'active', '2020-03-06 01:31:42', '2020-03-06 01:31:42', NULL),
(120, '248', '1', 750.00, 'user', 'in', '1', 'You have received 750.00 Tk TopUp balance for delivered 10 order to admin', 'active', '2020-03-06 01:34:55', '2020-03-06 01:34:55', NULL),
(121, '248', '247', 2100.00, 'user', 'in', '247', 'You have received 2100.00 Tk TopUp balance for delivered 11 order to mehedi', 'active', '2020-03-06 01:37:07', '2020-03-06 01:37:07', NULL),
(122, '1', '253', 100.00, 'user', 'out', '1', 'You have transfer 100 Tk TopUp balance to azharul .', 'active', '2020-03-06 01:41:20', '2020-03-06 01:41:20', NULL),
(123, '253', '1', 100.00, 'user', 'in', '1', 'You have received 100 Tk TopUp balance From admin .', 'active', '2020-03-06 01:41:20', '2020-03-06 01:41:20', NULL),
(124, '253', '253', 2500.00, 'user', 'out', '253', 'You have purchase 12 with 2500 Tk TopUp balance.', 'active', '2020-03-06 01:44:14', '2020-03-06 01:44:14', NULL),
(125, '1', '259', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For dolon Membership ID Card.', 'active', '2020-03-06 21:45:10', '2020-03-06 21:45:10', NULL),
(126, '1', '260', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For monir Membership ID Card.', 'active', '2020-03-06 21:50:11', '2020-03-06 21:50:11', NULL),
(127, '1', '259', 400.00, 'user', 'out', '1', 'You have transfer 400 Tk TopUp balance to dolon .', 'active', '2020-03-06 21:54:21', '2020-03-06 21:54:21', NULL),
(128, '259', '1', 400.00, 'user', 'in', '1', 'You have received 400 Tk TopUp balance From admin .', 'active', '2020-03-06 21:54:21', '2020-03-06 21:54:21', NULL),
(129, '1', '260', 500.00, 'user', 'out', '1', 'You have transfer 500 Tk TopUp balance to monir .', 'active', '2020-03-06 21:54:40', '2020-03-06 21:54:40', NULL),
(130, '260', '1', 500.00, 'user', 'in', '1', 'You have received 500 Tk TopUp balance From admin .', 'active', '2020-03-06 21:54:40', '2020-03-06 21:54:40', NULL),
(131, '1', '247', 100.00, 'user', 'out', '1', 'You have transfer 100 Tk TopUp balance to mehedi .', 'active', '2020-03-06 22:18:15', '2020-03-06 22:18:15', NULL),
(132, '247', '1', 100.00, 'user', 'in', '1', 'You have received 100 Tk TopUp balance From admin .', 'active', '2020-03-06 22:18:15', '2020-03-06 22:18:15', NULL),
(133, '247', '261', 100.00, 'user', 'out', '247', 'Office Charge 100 Tk For Mehedi1 Membership ID Card.', 'active', '2020-03-06 22:24:58', '2020-03-06 22:24:58', NULL),
(134, '252', '252', 2100.00, 'user', 'out', '252', 'You have purchase 13 with 2100 Tk TopUp balance.', 'active', '2020-03-07 10:33:54', '2020-03-07 10:33:54', NULL),
(135, '254', '254', 2100.00, 'user', 'out', '254', 'You have purchase 14 with 2100 Tk TopUp balance.', 'active', '2020-03-07 10:35:37', '2020-03-07 10:35:37', NULL),
(136, '248', '253', 2500.00, 'user', 'in', '253', 'You have received 2500.00 Tk TopUp balance for delivered 12 order to azharul', 'active', '2020-03-07 10:39:55', '2020-03-07 10:39:55', NULL),
(137, '248', '252', 2100.00, 'user', 'in', '252', 'You have received 2100.00 Tk TopUp balance for delivered 13 order to nirob', 'active', '2020-03-07 10:40:10', '2020-03-07 10:40:10', NULL),
(138, '248', '254', 2100.00, 'user', 'in', '254', 'You have received 2100.00 Tk TopUp balance for delivered 14 order to sakib', 'active', '2020-03-07 10:40:19', '2020-03-07 10:40:19', NULL),
(139, '1', '1', 88.00, 'withdrawal', 'in', '1', 'You have received 88 Tk TopUp from withdrawal 3', 'active', '2020-03-08 01:50:59', '2020-03-08 01:50:59', NULL),
(140, '1', '262', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For sojib Membership ID Card.', 'active', '2020-03-09 03:39:27', '2020-03-09 03:39:27', NULL),
(141, '1', '263', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For sujon Membership ID Card.', 'active', '2020-03-09 03:40:46', '2020-03-09 03:40:46', NULL),
(142, '1', '264', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For sowrove Membership ID Card.', 'active', '2020-03-09 03:42:16', '2020-03-09 03:42:16', NULL),
(143, '248', '1', 100000.00, 'admin', 'in', '1', 'You Received 100000 Tk TopUp Balance From System Administrator', 'active', '2020-03-10 07:32:33', '2020-03-10 07:32:33', NULL),
(144, '248', '248', 129500.00, 'user', 'out', '248', 'You have purchase 15 with 129500 Tk TopUp balance.', 'active', '2020-03-10 07:34:28', '2020-03-10 07:34:28', NULL),
(145, '1', '248', 129500.00, 'user', 'in', '248', 'You have received 129500.00 Tk TopUp balance for delivered 15 order to standard', 'active', '2020-03-10 07:34:58', '2020-03-10 07:34:58', NULL),
(146, '248', '1', 210.00, 'admin', 'in', '1', 'You Received 210 Tk TopUp Balance From System Administrator', 'active', '2020-03-10 07:36:00', '2020-03-10 07:36:00', NULL),
(147, '248', '248', 2500.00, 'user', 'out', '248', 'You have purchase 16 with 2500 Tk TopUp balance.', 'active', '2020-03-10 07:36:32', '2020-03-10 07:36:32', NULL),
(148, '1', '248', 2500.00, 'user', 'in', '248', 'You have received 2500.00 Tk TopUp balance for delivered 16 order to standard', 'active', '2020-03-10 07:36:54', '2020-03-10 07:36:54', NULL),
(149, '1', '210', 100.00, 'user', 'out', '1', 'You have transfer 100 Tk TopUp balance to saim .', 'active', '2020-03-11 01:50:56', '2020-03-11 01:50:56', NULL),
(150, '210', '1', 100.00, 'user', 'in', '1', 'You have received 100 Tk TopUp balance From admin .', 'active', '2020-03-11 01:50:56', '2020-03-11 01:50:56', NULL),
(151, '210', '265', 100.00, 'user', 'out', '210', 'Office Charge 100 Tk For Karim Membership ID Card.', 'active', '2020-03-11 01:55:19', '2020-03-11 01:55:19', NULL),
(152, '1', '265', 200.00, 'user', 'out', '1', 'You have transfer 200 Tk TopUp balance to karim .', 'active', '2020-03-11 05:21:41', '2020-03-11 05:21:41', NULL),
(153, '265', '1', 200.00, 'user', 'in', '1', 'You have received 200 Tk TopUp balance From admin .', 'active', '2020-03-11 05:21:41', '2020-03-11 05:21:41', NULL),
(154, '265', '266', 100.00, 'user', 'out', '265', 'Office Charge 100 Tk For Dreamster Membership ID Card.', 'active', '2020-03-11 08:58:47', '2020-03-11 08:58:47', NULL),
(155, '1', '267', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For rubel Membership ID Card.', 'active', '2020-03-12 23:26:43', '2020-03-12 23:26:43', NULL),
(156, '1', '268', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For Mahir Membership ID Card.', 'active', '2020-03-12 23:29:25', '2020-03-12 23:29:25', NULL),
(157, '1', '264', 2500.00, 'user', 'out', '1', 'You have transfer 2500 Tk TopUp balance to Sowrove .', 'active', '2020-03-12 23:30:47', '2020-03-12 23:30:47', NULL),
(158, '264', '1', 2500.00, 'user', 'in', '1', 'You have received 2500 Tk TopUp balance From admin .', 'active', '2020-03-12 23:30:47', '2020-03-12 23:30:47', NULL),
(159, '1', '259', 2100.00, 'user', 'out', '1', 'You have transfer 2100 Tk TopUp balance to dolon .', 'active', '2020-03-12 23:32:28', '2020-03-12 23:32:28', NULL),
(160, '259', '1', 2100.00, 'user', 'in', '1', 'You have received 2100 Tk TopUp balance From admin .', 'active', '2020-03-12 23:32:28', '2020-03-12 23:32:28', NULL),
(161, '1', '269', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For mainuddin Membership ID Card.', 'active', '2020-03-12 23:38:49', '2020-03-12 23:38:49', NULL),
(162, '1', '270', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For tuhin Membership ID Card.', 'active', '2020-03-12 23:40:40', '2020-03-12 23:40:40', NULL),
(163, '1', '271', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For rayhan Membership ID Card.', 'active', '2020-03-12 23:44:08', '2020-03-12 23:44:08', NULL),
(164, '264', '264', 2500.00, 'user', 'out', '264', 'You have purchase 17 with 2500 Tk TopUp balance.', 'active', '2020-03-13 00:25:27', '2020-03-13 00:25:27', NULL),
(165, '259', '259', 2500.00, 'user', 'out', '259', 'You have purchase 18 with 2500 Tk TopUp balance.', 'active', '2020-03-13 00:31:00', '2020-03-13 00:31:00', NULL),
(166, '1', '272', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For omor Membership ID Card.', 'active', '2020-03-13 07:27:20', '2020-03-13 07:27:20', NULL),
(167, '1', '265', 500.00, 'user', 'out', '1', 'You have transfer 500 Tk TopUp balance to karim .', 'active', '2020-03-13 23:58:09', '2020-03-13 23:58:09', NULL),
(168, '265', '1', 500.00, 'user', 'in', '1', 'You have received 500 Tk TopUp balance From admin .', 'active', '2020-03-13 23:58:09', '2020-03-13 23:58:09', NULL),
(169, '265', '273', 100.00, 'user', 'out', '265', 'Office Charge 100 Tk For HossenCtg Membership ID Card.', 'active', '2020-03-14 00:52:47', '2020-03-14 00:52:47', NULL),
(170, '265', '274', 100.00, 'user', 'out', '265', 'Office Charge 100 Tk For ImranCtg Membership ID Card.', 'active', '2020-03-14 00:59:12', '2020-03-14 00:59:12', NULL),
(171, '265', '275', 100.00, 'user', 'out', '265', 'Office Charge 100 Tk For AfrojaCtg Membership ID Card.', 'active', '2020-03-14 01:14:30', '2020-03-14 01:14:30', NULL),
(172, '265', '276', 100.00, 'user', 'out', '265', 'Office Charge 100 Tk For SabrinaCtg Membership ID Card.', 'active', '2020-03-14 01:19:34', '2020-03-14 01:19:34', NULL),
(173, '265', '277', 100.00, 'user', 'out', '265', 'Office Charge 100 Tk For AsmaCtg Membership ID Card.', 'active', '2020-03-14 01:25:17', '2020-03-14 01:25:17', NULL),
(174, '1', '267', 2500.00, 'user', 'out', '1', 'You have transfer 2500 Tk TopUp balance to rubel .', 'active', '2020-03-14 10:12:20', '2020-03-14 10:12:20', NULL),
(175, '267', '1', 2500.00, 'user', 'in', '1', 'You have received 2500 Tk TopUp balance From admin .', 'active', '2020-03-14 10:12:20', '2020-03-14 10:12:20', NULL),
(176, '267', '267', 2500.00, 'user', 'out', '267', 'You have purchase 19 with 2500 Tk TopUp balance.', 'active', '2020-03-14 10:13:24', '2020-03-14 10:13:24', NULL),
(177, '1', '244', 1100.00, 'user', 'out', '1', 'You have transfer 1100 Tk TopUp balance to amit .', 'active', '2020-03-14 10:38:12', '2020-03-14 10:38:12', NULL),
(178, '244', '1', 1100.00, 'user', 'in', '1', 'You have received 1100 Tk TopUp balance From admin .', 'active', '2020-03-14 10:38:12', '2020-03-14 10:38:12', NULL),
(179, '248', '264', 2500.00, 'user', 'in', '264', 'You have received 2500.00 Tk TopUp balance for delivered 17 order to sowrove', 'active', '2020-03-15 01:02:30', '2020-03-15 01:02:30', NULL),
(180, '248', '259', 2500.00, 'user', 'in', '259', 'You have received 2500.00 Tk TopUp balance for delivered 18 order to dolon', 'active', '2020-03-15 01:03:10', '2020-03-15 01:03:10', NULL),
(181, '248', '267', 2500.00, 'user', 'in', '267', 'You have received 2500.00 Tk TopUp balance for delivered 19 order to rubel', 'active', '2020-03-15 01:54:43', '2020-03-15 01:54:43', NULL),
(182, '1', '278', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For ishaque Membership ID Card.', 'active', '2020-03-15 06:10:27', '2020-03-15 06:10:27', NULL),
(183, '1', '279', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For naim Membership ID Card.', 'active', '2020-03-15 06:12:59', '2020-03-15 06:12:59', NULL),
(184, '1', '101', 4850.00, 'user', 'out', '1', 'You have transfer 4850 Tk TopUp balance to standard01 .', 'active', '2020-03-15 06:18:55', '2020-03-15 06:18:55', NULL),
(185, '101', '1', 4850.00, 'user', 'in', '1', 'You have received 4850 Tk TopUp balance From admin .', 'active', '2020-03-15 06:18:55', '2020-03-15 06:18:55', NULL),
(186, '101', '101', 4850.00, 'user', 'out', '101', 'You have purchase 20 with 4850 Tk TopUp balance.', 'active', '2020-03-15 06:20:55', '2020-03-15 06:20:55', NULL),
(187, '248', '101', 4850.00, 'user', 'in', '101', 'You have received 4850.00 Tk TopUp balance for delivered 20 order to standard01', 'active', '2020-03-15 06:23:14', '2020-03-15 06:23:14', NULL),
(188, '1', '280', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For standardglobal Membership ID Card.', 'active', '2020-03-15 06:42:29', '2020-03-15 06:42:29', NULL),
(189, '1', '280', 4850.00, 'user', 'out', '1', 'You have transfer 4850 Tk TopUp balance to standardglobal .', 'active', '2020-03-15 06:42:59', '2020-03-15 06:42:59', NULL),
(190, '280', '1', 4850.00, 'user', 'in', '1', 'You have received 4850 Tk TopUp balance From admin .', 'active', '2020-03-15 06:42:59', '2020-03-15 06:42:59', NULL),
(191, '1', '102', 4850.00, 'user', 'out', '1', 'You have transfer 4850 Tk TopUp balance to standard02 .', 'active', '2020-03-15 06:43:17', '2020-03-15 06:43:17', NULL),
(192, '102', '1', 4850.00, 'user', 'in', '1', 'You have received 4850 Tk TopUp balance From admin .', 'active', '2020-03-15 06:43:17', '2020-03-15 06:43:17', NULL),
(193, '102', '102', 4850.00, 'user', 'out', '102', 'You have purchase 21 with 4850 Tk TopUp balance.', 'active', '2020-03-15 06:49:21', '2020-03-15 06:49:21', NULL),
(194, '280', '280', 4850.00, 'user', 'out', '280', 'You have purchase 22 with 4850 Tk TopUp balance.', 'active', '2020-03-15 06:56:03', '2020-03-15 06:56:03', NULL),
(195, '248', '102', 4850.00, 'user', 'in', '102', 'You have received 4850.00 Tk TopUp balance for delivered 21 order to standard02', 'active', '2020-03-15 06:57:54', '2020-03-15 06:57:54', NULL),
(196, '248', '280', 4850.00, 'user', 'in', '280', 'You have received 4850.00 Tk TopUp balance for delivered 22 order to standardglobal', 'active', '2020-03-15 06:58:13', '2020-03-15 06:58:13', NULL),
(197, '248', '1', 20000.00, 'user', 'out', '248', 'You have transfer 20000 Tk TopUp balance to admin .', 'active', '2020-03-15 06:58:41', '2020-03-15 06:58:41', NULL),
(198, '1', '248', 20000.00, 'user', 'in', '248', 'You have received 20000 Tk TopUp balance From standard .', 'active', '2020-03-15 06:58:41', '2020-03-15 06:58:41', NULL),
(199, '1', '262', 2500.00, 'user', 'out', '1', 'You have transfer 2500 Tk TopUp balance to sojib .', 'active', '2020-03-16 06:41:02', '2020-03-16 06:41:02', NULL),
(200, '262', '1', 2500.00, 'user', 'in', '1', 'You have received 2500 Tk TopUp balance From admin .', 'active', '2020-03-16 06:41:02', '2020-03-16 06:41:02', NULL),
(201, '262', '262', 2500.00, 'user', 'out', '262', 'You have purchase 23 with 2500 Tk TopUp balance.', 'active', '2020-03-16 06:42:25', '2020-03-16 06:42:25', NULL),
(202, '248', '262', 2500.00, 'user', 'in', '262', 'You have received 2500.00 Tk TopUp balance for delivered 23 order to sojib', 'active', '2020-03-16 06:44:47', '2020-03-16 06:44:47', NULL),
(203, '1', '103', 4550.00, 'user', 'out', '1', 'You have transfer 4550 Tk TopUp balance to standard03 .', 'active', '2020-03-16 22:19:22', '2020-03-16 22:19:22', NULL),
(204, '103', '1', 4550.00, 'user', 'in', '1', 'You have received 4550 Tk TopUp balance From admin .', 'active', '2020-03-16 22:19:22', '2020-03-16 22:19:22', NULL),
(205, '1', '104', 4550.00, 'user', 'out', '1', 'You have transfer 4550 Tk TopUp balance to standard04 .', 'active', '2020-03-16 22:19:37', '2020-03-16 22:19:37', NULL),
(206, '104', '1', 4550.00, 'user', 'in', '1', 'You have received 4550 Tk TopUp balance From admin .', 'active', '2020-03-16 22:19:37', '2020-03-16 22:19:37', NULL),
(207, '103', '103', 4550.00, 'user', 'out', '103', 'You have purchase 24 with 4550 Tk TopUp balance.', 'active', '2020-03-16 22:27:22', '2020-03-16 22:27:22', NULL),
(208, '104', '104', 4550.00, 'user', 'out', '104', 'You have purchase 25 with 4550 Tk TopUp balance.', 'active', '2020-03-16 22:30:30', '2020-03-16 22:30:30', NULL),
(209, '1', '200', 50000.00, 'user', 'out', '1', 'You have transfer 50000 Tk TopUp balance to foyez .', 'active', '2020-03-17 08:01:30', '2020-03-17 08:01:30', NULL),
(210, '200', '1', 50000.00, 'user', 'in', '1', 'You have received 50000 Tk TopUp balance From admin .', 'active', '2020-03-17 08:01:30', '2020-03-17 08:01:30', NULL),
(211, '200', '259', 100.00, 'user', 'out', '200', 'You have transfer 100 Tk TopUp balance to DOLON .', 'active', '2020-03-17 21:58:46', '2020-03-17 21:58:46', NULL),
(212, '259', '200', 100.00, 'user', 'in', '200', 'You have received 100 Tk TopUp balance From foyez .', 'active', '2020-03-17 21:58:46', '2020-03-17 21:58:46', NULL),
(213, '259', '281', 100.00, 'user', 'out', '259', 'Office Charge 100 Tk For Afroza Membership ID Card.', 'active', '2020-03-17 22:06:24', '2020-03-17 22:06:24', NULL),
(214, '200', '247', 200.00, 'user', 'out', '200', 'You have transfer 200 Tk TopUp balance to mehedi .', 'active', '2020-03-18 05:54:44', '2020-03-18 05:54:44', NULL),
(215, '247', '200', 200.00, 'user', 'in', '200', 'You have received 200 Tk TopUp balance From foyez .', 'active', '2020-03-18 05:54:44', '2020-03-18 05:54:44', NULL),
(216, '200', '247', 200.00, 'user', 'out', '200', 'You have transfer 200 Tk TopUp balance to mehedi .', 'active', '2020-03-18 05:54:44', '2020-03-18 05:54:44', NULL),
(217, '247', '200', 200.00, 'user', 'in', '200', 'You have received 200 Tk TopUp balance From foyez .', 'active', '2020-03-18 05:54:44', '2020-03-18 05:54:44', NULL),
(218, '247', '282', 100.00, 'user', 'out', '247', 'Office Charge 100 Tk For Sania Membership ID Card.', 'active', '2020-03-18 06:05:29', '2020-03-18 06:05:29', NULL),
(219, '247', '284', 100.00, 'user', 'out', '247', 'Office Charge 100 Tk For Harun Membership ID Card.', 'active', '2020-03-18 06:09:27', '2020-03-18 06:09:27', NULL),
(220, '200', '262', 100.00, 'user', 'out', '200', 'You have transfer 100 Tk TopUp balance to sojib .', 'active', '2020-03-18 06:15:26', '2020-03-18 06:15:26', NULL),
(221, '262', '200', 100.00, 'user', 'in', '200', 'You have received 100 Tk TopUp balance From foyez .', 'active', '2020-03-18 06:15:26', '2020-03-18 06:15:26', NULL),
(222, '200', '262', 100.00, 'user', 'out', '200', 'You have transfer 100 Tk TopUp balance to sojib .', 'active', '2020-03-18 06:15:27', '2020-03-18 06:15:27', NULL),
(223, '262', '200', 100.00, 'user', 'in', '200', 'You have received 100 Tk TopUp balance From foyez .', 'active', '2020-03-18 06:15:27', '2020-03-18 06:15:27', NULL),
(224, '262', '285', 100.00, 'user', 'out', '262', 'Office Charge 100 Tk For Sajeeb Khan Membership ID Card.', 'active', '2020-03-18 06:27:05', '2020-03-18 06:27:05', NULL),
(225, '262', '286', 100.00, 'user', 'out', '262', 'Office Charge 100 Tk For Emran Membership ID Card.', 'active', '2020-03-18 06:40:01', '2020-03-18 06:40:01', NULL),
(226, '1', '244', 400.00, 'user', 'out', '1', 'You have transfer 400 Tk TopUp balance to amit .', 'active', '2020-03-18 10:07:49', '2020-03-18 10:07:49', NULL),
(227, '244', '1', 400.00, 'user', 'in', '1', 'You have received 400 Tk TopUp balance From admin .', 'active', '2020-03-18 10:07:49', '2020-03-18 10:07:49', NULL),
(228, '244', '244', 2500.00, 'user', 'out', '244', 'You have purchase 26 with 2500 Tk TopUp balance.', 'active', '2020-03-18 10:08:57', '2020-03-18 10:08:57', NULL),
(229, '248', '103', 4550.00, 'user', 'in', '103', 'You have received 4550.00 Tk TopUp balance for delivered 24 order to standard03', 'active', '2020-03-18 10:11:42', '2020-03-18 10:11:42', NULL),
(230, '248', '104', 4550.00, 'user', 'in', '104', 'You have received 4550.00 Tk TopUp balance for delivered 25 order to standard04', 'active', '2020-03-18 10:11:55', '2020-03-18 10:11:55', NULL),
(231, '248', '244', 2500.00, 'user', 'in', '244', 'You have received 2500.00 Tk TopUp balance for delivered 26 order to Amit', 'active', '2020-03-18 10:12:12', '2020-03-18 10:12:12', NULL),
(232, '248', '248', 2040.00, 'user', 'out', '248', 'You have purchase 27 with 2040 Tk TopUp balance.', 'active', '2020-03-18 10:13:15', '2020-03-18 10:13:15', NULL),
(233, '1', '248', 2040.00, 'user', 'in', '248', 'You have received 2040.00 Tk TopUp balance for delivered 27 order to standard', 'active', '2020-03-18 10:14:34', '2020-03-18 10:14:34', NULL),
(234, '200', '287', 100.00, 'user', 'out', '200', 'Office Charge 100 Tk For Jisan Membership ID Card.', 'active', '2020-03-18 22:47:28', '2020-03-18 22:47:28', NULL),
(235, '265', '288', 100.00, 'user', 'out', '265', 'Office Charge 100 Tk For Dreamtuch Membership ID Card.', 'active', '2020-03-19 21:35:13', '2020-03-19 21:35:13', NULL),
(236, '200', '282', 2500.00, 'user', 'out', '200', 'You have transfer 2500 Tk TopUp balance to Sania .', 'active', '2020-03-20 00:17:07', '2020-03-20 00:17:07', NULL),
(237, '282', '200', 2500.00, 'user', 'in', '200', 'You have received 2500 Tk TopUp balance From foyez .', 'active', '2020-03-20 00:17:07', '2020-03-20 00:17:07', NULL),
(238, '200', '282', 2500.00, 'user', 'out', '200', 'You have transfer 2500 Tk TopUp balance to Sania .', 'active', '2020-03-20 00:17:07', '2020-03-20 00:17:07', NULL),
(239, '282', '200', 2500.00, 'user', 'in', '200', 'You have received 2500 Tk TopUp balance From foyez .', 'active', '2020-03-20 00:17:08', '2020-03-20 00:17:08', NULL),
(240, '282', '282', 2500.00, 'user', 'out', '282', 'You have purchase 28 with 2500 Tk TopUp balance.', 'active', '2020-03-20 00:31:22', '2020-03-20 00:31:22', NULL),
(241, '282', '200', 2500.00, 'user', 'out', '282', 'You have transfer 2500 Tk TopUp balance to foyez .', 'active', '2020-03-20 00:33:27', '2020-03-20 00:33:27', NULL),
(242, '200', '282', 2500.00, 'user', 'in', '282', 'You have received 2500 Tk TopUp balance From Sania .', 'active', '2020-03-20 00:33:27', '2020-03-20 00:33:27', NULL),
(243, '200', '284', 480.00, 'user', 'out', '200', 'You have transfer 480 Tk TopUp balance to Harun .', 'active', '2020-03-20 00:58:52', '2020-03-20 00:58:52', NULL),
(244, '284', '200', 480.00, 'user', 'in', '200', 'You have received 480 Tk TopUp balance From foyez .', 'active', '2020-03-20 00:58:52', '2020-03-20 00:58:52', NULL),
(245, '284', '284', 480.00, 'user', 'out', '284', 'You have purchase 29 with 480 Tk TopUp balance.', 'active', '2020-03-20 01:06:55', '2020-03-20 01:06:55', NULL),
(246, '247', '247', 376.64, 'withdrawal', 'in', '247', 'You have received 376.64 Tk TopUp from withdrawal 6', 'active', '2020-03-20 01:20:47', '2020-03-20 01:20:47', NULL),
(247, '247', '261', 390.00, 'user', 'out', '247', 'You have transfer 390 Tk TopUp balance to Mehedi1 .', 'active', '2020-03-20 01:25:04', '2020-03-20 01:25:04', NULL),
(248, '261', '247', 390.00, 'user', 'in', '247', 'You have received 390 Tk TopUp balance From mehedi .', 'active', '2020-03-20 01:25:04', '2020-03-20 01:25:04', NULL),
(249, '261', '261', 390.00, 'user', 'out', '261', 'You have purchase 30 with 390 Tk TopUp balance.', 'active', '2020-03-20 01:30:36', '2020-03-20 01:30:36', NULL),
(250, '248', '261', 390.00, 'user', 'in', '261', 'You have received 390.00 Tk TopUp balance for delivered 30 order to Mehedi1', 'active', '2020-03-20 01:53:12', '2020-03-20 01:53:12', NULL),
(251, '248', '284', 480.00, 'user', 'in', '284', 'You have received 480.00 Tk TopUp balance for delivered 29 order to Harun', 'active', '2020-03-20 01:53:48', '2020-03-20 01:53:48', NULL),
(252, '248', '282', 2500.00, 'user', 'in', '282', 'You have received 2500.00 Tk TopUp balance for delivered 28 order to Sania', 'active', '2020-03-20 01:54:21', '2020-03-20 01:54:21', NULL),
(253, '200', '289', 100.00, 'user', 'out', '200', 'Office Charge 100 Tk For Sahalam Membership ID Card.', 'active', '2020-03-20 06:28:20', '2020-03-20 06:28:20', NULL),
(254, '1', '290', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For Ataur Membership ID Card.', 'active', '2020-03-20 07:04:31', '2020-03-20 07:04:31', NULL),
(255, '200', '291', 100.00, 'user', 'out', '200', 'Office Charge 100 Tk For Salam Membership ID Card.', 'active', '2020-03-20 23:11:33', '2020-03-20 23:11:33', NULL),
(256, '200', '292', 100.00, 'user', 'out', '200', 'Office Charge 100 Tk For Siam Membership ID Card.', 'active', '2020-03-20 23:19:56', '2020-03-20 23:19:56', NULL),
(257, '200', '243', 1000.00, 'user', 'out', '200', 'You have transfer 1000 Tk TopUp balance to rabbi .', 'active', '2020-03-20 23:30:44', '2020-03-20 23:30:44', NULL),
(258, '243', '200', 1000.00, 'user', 'in', '200', 'You have received 1000 Tk TopUp balance From foyez .', 'active', '2020-03-20 23:30:44', '2020-03-20 23:30:44', NULL),
(259, '247', '284', 100.00, 'user', 'out', '247', 'You have transfer 100 Tk TopUp balance to Harun .', 'active', '2020-03-21 00:40:24', '2020-03-21 00:40:24', NULL),
(260, '284', '247', 100.00, 'user', 'in', '247', 'You have received 100 Tk TopUp balance From mehedi .', 'active', '2020-03-21 00:40:24', '2020-03-21 00:40:24', NULL),
(261, '247', '247', 88.00, 'withdrawal', 'in', '247', 'You have received 88 Tk TopUp from withdrawal 7', 'active', '2020-03-21 01:35:08', '2020-03-21 01:35:08', NULL),
(262, '247', '200', 100.00, 'user', 'out', '247', 'You have transfer 100 Tk TopUp balance to Foyez .', 'active', '2020-03-21 01:38:25', '2020-03-21 01:38:25', NULL),
(263, '200', '247', 100.00, 'user', 'in', '247', 'You have received 100 Tk TopUp balance From mehedi .', 'active', '2020-03-21 01:38:25', '2020-03-21 01:38:25', NULL),
(264, '200', '243', 500.00, 'user', 'out', '200', 'You have transfer 500 Tk TopUp balance to rabbi .', 'active', '2020-03-21 01:40:08', '2020-03-21 01:40:08', NULL),
(265, '243', '200', 500.00, 'user', 'in', '200', 'You have received 500 Tk TopUp balance From foyez .', 'active', '2020-03-21 01:40:08', '2020-03-21 01:40:08', NULL),
(266, '243', '243', 2500.00, 'user', 'out', '243', 'You have purchase 31 with 2500 Tk TopUp balance.', 'active', '2020-03-21 01:42:19', '2020-03-21 01:42:19', NULL),
(267, '284', '284', 76.00, 'user', 'out', '284', 'You have purchase 32 with 76 Tk TopUp balance.', 'active', '2020-03-21 01:46:45', '2020-03-21 01:46:45', NULL),
(268, '1', '293', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For fatema01 Membership ID Card.', 'active', '2020-03-21 23:33:53', '2020-03-21 23:33:53', NULL),
(269, '1', '294', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For rojina Membership ID Card.', 'active', '2020-03-21 23:36:27', '2020-03-21 23:36:27', NULL),
(270, '248', '243', 2500.00, 'user', 'in', '243', 'You have received 2500.00 Tk TopUp balance for delivered 31 order to Rabbi', 'active', '2020-03-22 01:00:54', '2020-03-22 01:00:54', NULL),
(271, '248', '284', 76.00, 'user', 'in', '284', 'You have received 76.00 Tk TopUp balance for delivered 32 order to Harun', 'active', '2020-03-22 01:01:57', '2020-03-22 01:01:57', NULL),
(272, '248', '248', 4500.00, 'user', 'out', '248', 'You have purchase 33 with 4500 Tk TopUp balance.', 'active', '2020-03-22 01:08:56', '2020-03-22 01:08:56', NULL),
(273, '1', '248', 4500.00, 'user', 'in', '248', 'You have received 4500.00 Tk TopUp balance for delivered 33 order to standard', 'active', '2020-03-22 01:09:38', '2020-03-22 01:09:38', NULL),
(274, '200', '295', 100.00, 'user', 'out', '200', 'Office Charge 100 Tk For Rafi Khan Membership ID Card.', 'active', '2020-03-22 01:09:58', '2020-03-22 01:09:58', NULL),
(275, '200', '296', 100.00, 'user', 'out', '200', 'Office Charge 100 Tk For Saiful Islam Membership ID Card.', 'active', '2020-03-22 05:54:05', '2020-03-22 05:54:05', NULL),
(276, '1', '210', 1000.00, 'user', 'out', '1', 'You have transfer 1000 Tk TopUp balance to mdkarim .', 'active', '2020-03-22 08:28:50', '2020-03-22 08:28:50', NULL),
(277, '210', '1', 1000.00, 'user', 'in', '1', 'You have received 1000 Tk TopUp balance From admin .', 'active', '2020-03-22 08:28:50', '2020-03-22 08:28:50', NULL),
(278, '210', '297', 100.00, 'user', 'out', '210', 'Office Charge 100 Tk For Julectg Membership ID Card.', 'active', '2020-03-22 22:07:59', '2020-03-22 22:07:59', NULL),
(279, '210', '298', 100.00, 'user', 'out', '210', 'Office Charge 100 Tk For Sukkurctg Membership ID Card.', 'active', '2020-03-22 22:11:29', '2020-03-22 22:11:29', NULL),
(280, '210', '299', 100.00, 'user', 'out', '210', 'Office Charge 100 Tk For SultanaCtg Membership ID Card.', 'active', '2020-03-24 00:11:35', '2020-03-24 00:11:35', NULL),
(281, '248', '1', 200000.00, 'admin', 'in', '1', 'You Received 200000 Tk TopUp Balance From System Administrator', 'active', '2020-03-24 04:35:27', '2020-03-24 04:35:27', NULL),
(282, '248', '248', 214100.00, 'user', 'out', '248', 'You have purchase 34 with 214100 Tk TopUp balance.', 'active', '2020-03-24 04:37:32', '2020-03-24 04:37:32', NULL),
(283, '1', '248', 214100.00, 'user', 'in', '248', 'You have received 214100.00 Tk TopUp balance for delivered 34 order to standard', 'active', '2020-03-24 04:38:06', '2020-03-24 04:38:06', NULL),
(284, '210', '300', 100.00, 'user', 'out', '210', 'Office Charge 100 Tk For AnwarCtg Membership ID Card.', 'active', '2020-03-25 04:40:53', '2020-03-25 04:40:53', NULL),
(285, '210', '301', 100.00, 'user', 'out', '210', 'Office Charge 100 Tk For RasedaCtg Membership ID Card.', 'active', '2020-03-25 04:43:56', '2020-03-25 04:43:56', NULL),
(286, '210', '302', 100.00, 'user', 'out', '210', 'Office Charge 100 Tk For NargisCtg Membership ID Card.', 'active', '2020-03-25 04:46:53', '2020-03-25 04:46:53', NULL),
(287, '210', '303', 100.00, 'user', 'out', '210', 'Office Charge 100 Tk For SamiraDk Membership ID Card.', 'active', '2020-03-25 04:53:38', '2020-03-25 04:53:38', NULL),
(288, '210', '304', 100.00, 'user', 'out', '210', 'Office Charge 100 Tk For JainalCtg Membership ID Card.', 'active', '2020-03-26 04:27:11', '2020-03-26 04:27:11', NULL),
(289, '210', '305', 100.00, 'user', 'out', '210', 'Office Charge 100 Tk For RakibCtg Membership ID Card.', 'active', '2020-03-26 04:30:18', '2020-03-26 04:30:18', NULL),
(290, '210', '306', 100.00, 'user', 'out', '210', 'Office Charge 100 Tk For RomaCtg Membership ID Card.', 'active', '2020-03-26 04:33:07', '2020-03-26 04:33:07', NULL),
(291, '1', '210', 1000.00, 'user', 'out', '1', 'You have transfer 1000 Tk TopUp balance to mdkarim .', 'active', '2020-03-26 04:48:20', '2020-03-26 04:48:20', NULL),
(292, '210', '1', 1000.00, 'user', 'in', '1', 'You have received 1000 Tk TopUp balance From admin .', 'active', '2020-03-26 04:48:20', '2020-03-26 04:48:20', NULL),
(293, '210', '307', 100.00, 'user', 'out', '210', 'Office Charge 100 Tk For SeemaCtg Membership ID Card.', 'active', '2020-03-26 05:39:18', '2020-03-26 05:39:18', NULL),
(294, '210', '308', 100.00, 'user', 'out', '210', 'Office Charge 100 Tk For SeemaCtg Membership ID Card.', 'active', '2020-03-29 04:12:06', '2020-03-29 04:12:06', NULL),
(295, '210', '309', 100.00, 'user', 'out', '210', 'Office Charge 100 Tk For ShiruCtg Membership ID Card.', 'active', '2020-03-29 04:15:15', '2020-03-29 04:15:15', NULL),
(296, '210', '310', 100.00, 'user', 'out', '210', 'Office Charge 100 Tk For SonyaCtg Membership ID Card.', 'active', '2020-03-29 05:04:33', '2020-03-29 05:04:33', NULL),
(297, '210', '311', 100.00, 'user', 'out', '210', 'Office Charge 100 Tk For LipyCtg Membership ID Card.', 'active', '2020-03-29 05:08:04', '2020-03-29 05:08:04', NULL);
INSERT INTO `topup_balances` (`id`, `user_id`, `from_user_id`, `topup_amount`, `topup_type`, `topup_flow`, `topup_generate_by`, `topup_details`, `topup_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(298, '210', '312', 100.00, 'user', 'out', '210', 'Office Charge 100 Tk For ManikCtg Membership ID Card.', 'active', '2020-04-03 01:04:44', '2020-04-03 01:04:44', NULL),
(299, '248', '248', 38.00, 'user', 'out', '248', 'You have purchase 35 with 38 Tk TopUp balance.', 'active', '2020-04-03 07:10:42', '2020-04-03 07:10:42', NULL),
(300, '1', '242', 100.00, 'user', 'out', '1', 'You have transfer 100 Tk TopUp balance to test1 .', 'active', '2020-04-22 05:37:11', '2020-04-22 05:37:11', NULL),
(301, '242', '1', 100.00, 'user', 'in', '1', 'You have received 100 Tk TopUp balance From admin .', 'active', '2020-04-22 05:37:11', '2020-04-22 05:37:11', NULL),
(302, '242', '348', 100.00, 'user', 'out', '242', 'Office Charge 100 Tk For test2 Membership ID Card.', 'active', '2020-04-22 05:42:37', '2020-04-22 05:42:37', NULL),
(303, '200', '284', 90.00, 'user', 'out', '200', 'You have transfer 90 Tk TopUp balance to harun .', 'active', '2020-05-03 23:29:28', '2020-05-03 23:29:28', NULL),
(304, '284', '200', 90.00, 'user', 'in', '200', 'You have received 90 Tk TopUp balance From foyez .', 'active', '2020-05-03 23:29:28', '2020-05-03 23:29:28', NULL),
(305, '284', '284', 90.00, 'user', 'out', '284', 'You have purchase 36 with 90 Tk TopUp balance.', 'active', '2020-05-03 23:36:22', '2020-05-03 23:36:22', NULL),
(306, '200', '281', 135.00, 'user', 'out', '200', 'You have transfer 135 Tk TopUp balance to afroza .', 'active', '2020-05-07 21:29:21', '2020-05-07 21:29:21', NULL),
(307, '281', '200', 135.00, 'user', 'in', '200', 'You have received 135 Tk TopUp balance From foyez .', 'active', '2020-05-07 21:29:21', '2020-05-07 21:29:21', NULL),
(308, '281', '281', 90.00, 'user', 'out', '281', 'You have purchase 37 with 90 Tk TopUp balance.', 'active', '2020-05-07 21:33:02', '2020-05-07 21:33:02', NULL),
(309, '200', '284', 210.00, 'user', 'out', '200', 'You have transfer 210 Tk TopUp balance to Harun .', 'active', '2020-05-08 00:51:06', '2020-05-08 00:51:06', NULL),
(310, '284', '200', 210.00, 'user', 'in', '200', 'You have received 210 Tk TopUp balance From foyez .', 'active', '2020-05-08 00:51:07', '2020-05-08 00:51:07', NULL),
(311, '200', '264', 90.00, 'user', 'out', '200', 'You have transfer 90 Tk TopUp balance to sowrove .', 'active', '2020-05-09 01:11:22', '2020-05-09 01:11:22', NULL),
(312, '264', '200', 90.00, 'user', 'in', '200', 'You have received 90 Tk TopUp balance From foyez .', 'active', '2020-05-09 01:11:22', '2020-05-09 01:11:22', NULL),
(313, '264', '264', 90.00, 'user', 'out', '264', 'You have purchase 38 with 90 Tk TopUp balance.', 'active', '2020-05-09 01:16:08', '2020-05-09 01:16:08', NULL),
(314, '248', '281', 90.00, 'user', 'in', '281', 'You have received 90.00 Tk TopUp balance for delivered 37 order to Afroza', 'active', '2020-05-09 01:29:31', '2020-05-09 01:29:31', NULL),
(315, '248', '264', 90.00, 'user', 'in', '264', 'You have received 90.00 Tk TopUp balance for delivered 38 order to sowrove', 'active', '2020-05-09 01:29:57', '2020-05-09 01:29:57', NULL),
(316, '1', '248', 20000.00, 'user', 'out', '1', 'You have transfer 20000 Tk TopUp balance to standard .', 'active', '2020-05-09 01:34:38', '2020-05-09 01:34:38', NULL),
(317, '248', '1', 20000.00, 'user', 'in', '1', 'You have received 20000 Tk TopUp balance From admin .', 'active', '2020-05-09 01:34:39', '2020-05-09 01:34:39', NULL),
(318, '248', '248', 13026.00, 'user', 'out', '248', 'You have purchase 39 with 13026 Tk TopUp balance.', 'active', '2020-05-09 01:45:54', '2020-05-09 01:45:54', NULL),
(319, '200', '259', 220.00, 'user', 'out', '200', 'You have transfer 220 Tk TopUp balance to dolon .', 'active', '2020-05-09 22:45:04', '2020-05-09 22:45:04', NULL),
(320, '259', '200', 220.00, 'user', 'in', '200', 'You have received 220 Tk TopUp balance From foyez .', 'active', '2020-05-09 22:45:04', '2020-05-09 22:45:04', NULL),
(321, '259', '352', 100.00, 'user', 'out', '259', 'Office Charge 100 Tk For Lia Membership ID Card.', 'active', '2020-05-09 22:49:38', '2020-05-09 22:49:38', NULL),
(322, '259', '353', 100.00, 'user', 'out', '259', 'Office Charge 100 Tk For Nishita Membership ID Card.', 'active', '2020-05-09 22:51:49', '2020-05-09 22:51:49', NULL),
(323, '200', '247', 100.00, 'user', 'out', '200', 'You have transfer 100 Tk TopUp balance to mehedi .', 'active', '2020-05-09 23:28:14', '2020-05-09 23:28:14', NULL),
(324, '247', '200', 100.00, 'user', 'in', '200', 'You have received 100 Tk TopUp balance From foyez .', 'active', '2020-05-09 23:28:14', '2020-05-09 23:28:14', NULL),
(325, '200', '259', 100.00, 'user', 'out', '200', 'You have transfer 100 Tk TopUp balance to dolon .', 'active', '2020-05-09 23:41:56', '2020-05-09 23:41:56', NULL),
(326, '259', '200', 100.00, 'user', 'in', '200', 'You have received 100 Tk TopUp balance From foyez .', 'active', '2020-05-09 23:41:56', '2020-05-09 23:41:56', NULL),
(327, '247', '354', 100.00, 'user', 'out', '247', 'Office Charge 100 Tk For Firoj malot Membership ID Card.', 'active', '2020-05-09 23:44:21', '2020-05-09 23:44:21', NULL),
(328, '259', '355', 100.00, 'user', 'out', '259', 'Office Charge 100 Tk For Rajon Membership ID Card.', 'active', '2020-05-09 23:53:04', '2020-05-09 23:53:04', NULL),
(329, '200', '284', 2100.00, 'user', 'out', '200', 'You have transfer 2100 Tk TopUp balance to harun .', 'active', '2020-05-10 23:00:16', '2020-05-10 23:00:16', NULL),
(330, '284', '200', 2100.00, 'user', 'in', '200', 'You have received 2100 Tk TopUp balance From foyez .', 'active', '2020-05-10 23:00:16', '2020-05-10 23:00:16', NULL),
(331, '284', '284', 2100.00, 'user', 'out', '284', 'You have purchase 40 with 2100 Tk TopUp balance.', 'active', '2020-05-10 23:02:35', '2020-05-10 23:02:35', NULL),
(332, '1', '248', 13026.00, 'user', 'in', '248', 'You have received 13026.00 Tk TopUp balance for delivered 39 order to standard', 'active', '2020-05-10 23:09:17', '2020-05-10 23:09:17', NULL),
(333, '248', '284', 2100.00, 'user', 'in', '284', 'You have received 2100.00 Tk TopUp balance for delivered 40 order to Harun', 'active', '2020-05-10 23:09:27', '2020-05-10 23:09:27', NULL),
(334, '284', '284', 180.00, 'user', 'out', '284', 'You have purchase 41 with 180 Tk TopUp balance.', 'active', '2020-05-10 23:15:27', '2020-05-10 23:15:27', NULL),
(335, '200', '259', 100.00, 'user', 'out', '200', 'You have transfer 100 Tk TopUp balance to dolon .', 'active', '2020-05-10 23:27:08', '2020-05-10 23:27:08', NULL),
(336, '259', '200', 100.00, 'user', 'in', '200', 'You have received 100 Tk TopUp balance From foyez .', 'active', '2020-05-10 23:27:08', '2020-05-10 23:27:08', NULL),
(337, '200', '354', 2750.00, 'user', 'out', '200', 'You have transfer 2750 Tk TopUp balance to firoj malot .', 'active', '2020-05-11 00:00:16', '2020-05-11 00:00:16', NULL),
(338, '354', '200', 2750.00, 'user', 'in', '200', 'You have received 2750 Tk TopUp balance From foyez .', 'active', '2020-05-11 00:00:16', '2020-05-11 00:00:16', NULL),
(339, '354', '354', 2750.00, 'user', 'out', '354', 'You have purchase 42 with 2750 Tk TopUp balance.', 'active', '2020-05-11 00:21:07', '2020-05-11 00:21:07', NULL),
(340, '1', '248', 328.00, 'user', 'out', '1', 'You have transfer 328 Tk TopUp balance to standard .', 'active', '2020-05-11 00:22:21', '2020-05-11 00:22:21', NULL),
(341, '248', '1', 328.00, 'user', 'in', '1', 'You have received 328 Tk TopUp balance From admin .', 'active', '2020-05-11 00:22:21', '2020-05-11 00:22:21', NULL),
(342, '248', '248', 11000.00, 'user', 'out', '248', 'You have purchase 43 with 11000 Tk TopUp balance.', 'active', '2020-05-11 00:23:07', '2020-05-11 00:23:07', NULL),
(343, '1', '248', 11000.00, 'user', 'in', '248', 'You have received 11000.00 Tk TopUp balance for delivered 43 order to standard', 'active', '2020-05-11 00:23:59', '2020-05-11 00:23:59', NULL),
(344, '248', '354', 2750.00, 'user', 'in', '354', 'You have received 2750.00 Tk TopUp balance for delivered 42 order to Firoj malot', 'active', '2020-05-11 00:24:13', '2020-05-11 00:24:13', NULL),
(345, '248', '284', 180.00, 'user', 'in', '284', 'You have received 180.00 Tk TopUp balance for delivered 41 order to Harun', 'active', '2020-05-11 00:24:25', '2020-05-11 00:24:25', NULL),
(346, '200', '354', 100.00, 'user', 'out', '200', 'You have transfer 100 Tk TopUp balance to firoj malot .', 'active', '2020-05-11 00:30:41', '2020-05-11 00:30:41', NULL),
(347, '354', '200', 100.00, 'user', 'in', '200', 'You have received 100 Tk TopUp balance From foyez .', 'active', '2020-05-11 00:30:41', '2020-05-11 00:30:41', NULL),
(348, '354', '354', 76.00, 'user', 'out', '354', 'You have purchase 44 with 76 Tk TopUp balance.', 'active', '2020-05-11 00:33:29', '2020-05-11 00:33:29', NULL),
(349, '200', '282', 300.00, 'user', 'out', '200', 'You have transfer 300 Tk TopUp balance to sania .', 'active', '2020-05-11 22:33:40', '2020-05-11 22:33:40', NULL),
(350, '282', '200', 300.00, 'user', 'in', '200', 'You have received 300 Tk TopUp balance From foyez .', 'active', '2020-05-11 22:33:40', '2020-05-11 22:33:40', NULL),
(351, '200', '247', 300.00, 'user', 'out', '200', 'You have transfer 300 Tk TopUp balance to mehedi .', 'active', '2020-05-11 22:34:08', '2020-05-11 22:34:08', NULL),
(352, '247', '200', 300.00, 'user', 'in', '200', 'You have received 300 Tk TopUp balance From foyez .', 'active', '2020-05-11 22:34:08', '2020-05-11 22:34:08', NULL),
(353, '200', '282', 50.00, 'user', 'out', '200', 'You have transfer 50 Tk TopUp balance to sania .', 'active', '2020-05-12 00:11:26', '2020-05-12 00:11:26', NULL),
(354, '282', '200', 50.00, 'user', 'in', '200', 'You have received 50 Tk TopUp balance From foyez .', 'active', '2020-05-12 00:11:26', '2020-05-12 00:11:26', NULL),
(355, '282', '282', 38.00, 'user', 'out', '282', 'You have purchase 45 with 38 Tk TopUp balance.', 'active', '2020-05-12 00:20:06', '2020-05-12 00:20:06', NULL),
(356, '259', '356', 100.00, 'user', 'out', '259', 'Office Charge 100 Tk For Ismail Sarder Membership ID Card.', 'active', '2020-05-12 01:21:06', '2020-05-12 01:21:06', NULL),
(357, '248', '354', 76.00, 'user', 'in', '354', 'You have received 76.00 Tk TopUp balance for delivered 44 order to Firoj malot', 'active', '2020-05-12 02:52:41', '2020-05-12 02:52:41', NULL),
(358, '248', '282', 38.00, 'user', 'in', '282', 'You have received 38.00 Tk TopUp balance for delivered 45 order to Sania', 'active', '2020-05-12 02:52:54', '2020-05-12 02:52:54', NULL),
(359, '247', '200', 300.00, 'user', 'out', '247', 'You have transfer 300 Tk TopUp balance to Foyez .', 'active', '2020-05-12 23:44:34', '2020-05-12 23:44:34', NULL),
(360, '200', '247', 300.00, 'user', 'in', '247', 'You have received 300 Tk TopUp balance From mehedi .', 'active', '2020-05-12 23:44:34', '2020-05-12 23:44:34', NULL),
(361, '247', '247', 285.00, 'withdrawal', 'in', '247', 'You have received 285 Tk TopUp from withdrawal 12', 'active', '2020-05-12 23:55:04', '2020-05-12 23:55:04', NULL),
(362, '247', '200', 300.00, 'user', 'out', '247', 'You have transfer 300 Tk TopUp balance to Foyez .', 'active', '2020-05-12 23:57:51', '2020-05-12 23:57:51', NULL),
(363, '200', '247', 300.00, 'user', 'in', '247', 'You have received 300 Tk TopUp balance From mehedi .', 'active', '2020-05-12 23:57:51', '2020-05-12 23:57:51', NULL),
(364, '247', '247', 50.00, 'user', 'out', '247', 'You have transfer 50 Tk TopUp balance to Mehedi .', 'active', '2020-05-13 00:12:44', '2020-05-13 00:12:44', NULL),
(365, '247', '247', 50.00, 'user', 'in', '247', 'You have received 50 Tk TopUp balance From mehedi .', 'active', '2020-05-13 00:12:44', '2020-05-13 00:12:44', NULL),
(366, '247', '247', 76.00, 'withdrawal', 'in', '247', 'You have received 76 Tk TopUp from withdrawal 14', 'active', '2020-05-13 00:14:29', '2020-05-13 00:14:29', NULL),
(367, '247', '259', 100.00, 'user', 'out', '247', 'You have transfer 100 Tk TopUp balance to dolon .', 'active', '2020-05-13 00:16:13', '2020-05-13 00:16:13', NULL),
(368, '259', '247', 100.00, 'user', 'in', '247', 'You have received 100 Tk TopUp balance From mehedi .', 'active', '2020-05-13 00:16:13', '2020-05-13 00:16:13', NULL),
(369, '200', '259', 800.00, 'user', 'out', '200', 'You have transfer 800 Tk TopUp balance to Dolon .', 'active', '2020-05-13 00:48:22', '2020-05-13 00:48:22', NULL),
(370, '259', '200', 800.00, 'user', 'in', '200', 'You have received 800 Tk TopUp balance From foyez .', 'active', '2020-05-13 00:48:22', '2020-05-13 00:48:22', NULL),
(371, '248', '248', 2400.00, 'user', 'out', '248', 'You have purchase 46 with 2400 Tk TopUp balance.', 'active', '2020-05-13 05:28:34', '2020-05-13 05:28:34', NULL),
(372, '1', '248', 2400.00, 'user', 'in', '248', 'You have received 2400.00 Tk TopUp balance for delivered 46 order to standard', 'active', '2020-05-13 05:30:08', '2020-05-13 05:30:08', NULL),
(373, '200', '259', 350.00, 'user', 'out', '200', 'You have transfer 350 Tk TopUp balance to Dolon .', 'active', '2020-05-13 21:56:41', '2020-05-13 21:56:41', NULL),
(374, '259', '200', 350.00, 'user', 'in', '200', 'You have received 350 Tk TopUp balance From foyez .', 'active', '2020-05-13 21:56:41', '2020-05-13 21:56:41', NULL),
(375, '200', '357', 100.00, 'user', 'out', '200', 'Office Charge 100 Tk For Arif Mahmud Membership ID Card.', 'active', '2020-05-14 00:53:20', '2020-05-14 00:53:20', NULL),
(376, '243', '243', 380.00, 'withdrawal', 'in', '243', 'You have received 380 Tk TopUp from withdrawal 15', 'active', '2020-05-14 00:56:04', '2020-05-14 00:56:04', NULL),
(377, '243', '200', 380.00, 'user', 'out', '243', 'You have transfer 380 Tk TopUp balance to Foyez .', 'active', '2020-05-14 00:59:44', '2020-05-14 00:59:44', NULL),
(378, '200', '243', 380.00, 'user', 'in', '243', 'You have received 380 Tk TopUp balance From Rabbi .', 'active', '2020-05-14 00:59:44', '2020-05-14 00:59:44', NULL),
(379, '200', '259', 400.00, 'user', 'out', '200', 'You have transfer 400 Tk TopUp balance to dolon .', 'active', '2020-05-14 22:32:11', '2020-05-14 22:32:11', NULL),
(380, '259', '200', 400.00, 'user', 'in', '200', 'You have received 400 Tk TopUp balance From foyez .', 'active', '2020-05-14 22:32:11', '2020-05-14 22:32:11', NULL),
(381, '259', '200', 900.00, 'user', 'out', '259', 'You have transfer 900 Tk TopUp balance to foyez .', 'active', '2020-05-16 23:51:27', '2020-05-16 23:51:27', NULL),
(382, '200', '259', 900.00, 'user', 'in', '259', 'You have received 900 Tk TopUp balance From dolon .', 'active', '2020-05-16 23:51:27', '2020-05-16 23:51:27', NULL),
(383, '259', '281', 370.00, 'user', 'out', '259', 'You have transfer 370 Tk TopUp balance to afroza .', 'active', '2020-05-16 23:57:59', '2020-05-16 23:57:59', NULL),
(384, '281', '259', 370.00, 'user', 'in', '259', 'You have received 370 Tk TopUp balance From dolon .', 'active', '2020-05-16 23:57:59', '2020-05-16 23:57:59', NULL),
(385, '259', '200', 400.00, 'user', 'out', '259', 'You have transfer 400 Tk TopUp balance to foyez .', 'active', '2020-05-17 00:03:44', '2020-05-17 00:03:44', NULL),
(386, '200', '259', 400.00, 'user', 'in', '259', 'You have received 400 Tk TopUp balance From dolon .', 'active', '2020-05-17 00:03:44', '2020-05-17 00:03:44', NULL),
(387, '210', '359', 100.00, 'user', 'out', '210', 'Office Charge 100 Tk For SourovBp Membership ID Card.', 'active', '2020-05-29 21:28:51', '2020-05-29 21:28:51', NULL),
(388, '210', '360', 100.00, 'user', 'out', '210', 'Office Charge 100 Tk For RinaBp Membership ID Card.', 'active', '2020-05-29 21:32:57', '2020-05-29 21:32:57', NULL),
(389, '249', '1', 100000.00, 'user', 'out', '249', 'You have transfer 100000 Tk TopUp balance to admin .', 'active', '2020-06-02 00:18:11', '2020-06-02 00:18:11', NULL),
(390, '1', '249', 100000.00, 'user', 'in', '249', 'You have received 100000 Tk TopUp balance From eshop.com .', 'active', '2020-06-02 00:18:11', '2020-06-02 00:18:11', NULL),
(391, '1', '249', 30000.00, 'user', 'out', '1', 'You have transfer 30000 Tk TopUp balance to eshop.com .', 'active', '2020-06-02 00:21:12', '2020-06-02 00:21:12', NULL),
(392, '249', '1', 30000.00, 'user', 'in', '1', 'You have received 30000 Tk TopUp balance From admin .', 'active', '2020-06-02 00:21:12', '2020-06-02 00:21:12', NULL),
(393, '1', '248', 250000.00, 'user', 'out', '1', 'You have transfer 250000 Tk TopUp balance to standard .', 'active', '2020-06-02 00:24:45', '2020-06-02 00:24:45', NULL),
(394, '248', '1', 250000.00, 'user', 'in', '1', 'You have received 250000 Tk TopUp balance From admin .', 'active', '2020-06-02 00:24:45', '2020-06-02 00:24:45', NULL),
(395, '248', '248', 250000.00, 'user', 'out', '248', 'You have purchase 47 with 250000 Tk TopUp balance.', 'active', '2020-06-02 00:27:00', '2020-06-02 00:27:00', NULL),
(396, '1', '248', 250000.00, 'user', 'in', '248', 'You have received 250000.00 Tk TopUp balance for delivered 47 order to standard', 'active', '2020-06-02 00:27:48', '2020-06-02 00:27:48', NULL),
(397, '249', '249', 25000.00, 'user', 'out', '249', 'You have purchase 48 with 25000 Tk TopUp balance.', 'active', '2020-06-02 00:29:27', '2020-06-02 00:29:27', NULL),
(398, '248', '249', 25000.00, 'user', 'in', '249', 'You have received 25000.00 Tk TopUp balance for delivered 48 order to eshop.com', 'active', '2020-06-02 00:36:46', '2020-06-02 00:36:46', NULL),
(399, '200', '247', 100.00, 'user', 'out', '200', 'You have transfer 100 Tk TopUp balance to Mehedi .', 'active', '2020-06-02 01:45:36', '2020-06-02 01:45:36', NULL),
(400, '247', '200', 100.00, 'user', 'in', '200', 'You have received 100 Tk TopUp balance From foyez .', 'active', '2020-06-02 01:45:36', '2020-06-02 01:45:36', NULL),
(401, '247', '361', 100.00, 'user', 'out', '247', 'Office Charge 100 Tk For Nasir Membership ID Card.', 'active', '2020-06-02 01:50:17', '2020-06-02 01:50:17', NULL),
(402, '200', '281', 45.00, 'user', 'out', '200', 'You have transfer 45 Tk TopUp balance to Afroza .', 'active', '2020-06-02 23:23:16', '2020-06-02 23:23:16', NULL),
(403, '281', '200', 45.00, 'user', 'in', '200', 'You have received 45 Tk TopUp balance From foyez .', 'active', '2020-06-02 23:23:16', '2020-06-02 23:23:16', NULL),
(404, '281', '281', 180.00, 'user', 'out', '281', 'You have purchase 49 with 180 Tk TopUp balance.', 'active', '2020-06-02 23:28:37', '2020-06-02 23:28:37', NULL),
(405, '281', '281', 190.00, 'user', 'out', '281', 'You have purchase 50 with 190 Tk TopUp balance.', 'active', '2020-06-02 23:31:32', '2020-06-02 23:31:32', NULL),
(406, '281', '281', 90.00, 'user', 'out', '281', 'You have purchase 51 with 90 Tk TopUp balance.', 'active', '2020-06-02 23:34:20', '2020-06-02 23:34:20', NULL),
(407, '1', '249', 20000.00, 'user', 'out', '1', 'You have transfer 20000 Tk TopUp balance to eshop.com .', 'active', '2020-06-03 11:13:54', '2020-06-03 11:13:54', NULL),
(408, '249', '1', 20000.00, 'user', 'in', '1', 'You have received 20000 Tk TopUp balance From admin .', 'active', '2020-06-03 11:13:54', '2020-06-03 11:13:54', NULL),
(409, '1', '248', 50000.00, 'user', 'out', '1', 'You have transfer 50000 Tk TopUp balance to standard .', 'active', '2020-06-03 11:30:39', '2020-06-03 11:30:39', NULL),
(410, '248', '1', 50000.00, 'user', 'in', '1', 'You have received 50000 Tk TopUp balance From admin .', 'active', '2020-06-03 11:30:39', '2020-06-03 11:30:39', NULL),
(411, '248', '248', 54420.00, 'user', 'out', '248', 'You have purchase 52 with 54420 Tk TopUp balance.', 'active', '2020-06-03 11:32:53', '2020-06-03 11:32:53', NULL),
(412, '248', '281', 180.00, 'user', 'in', '281', 'You have received 180.00 Tk TopUp balance for delivered 49 order to Afroza', 'active', '2020-06-03 11:34:21', '2020-06-03 11:34:21', NULL),
(413, '248', '281', 190.00, 'user', 'in', '281', 'You have received 190.00 Tk TopUp balance for delivered 50 order to Afroza', 'active', '2020-06-03 11:35:04', '2020-06-03 11:35:04', NULL),
(414, '248', '281', 90.00, 'user', 'in', '281', 'You have received 90.00 Tk TopUp balance for delivered 51 order to Afroza', 'active', '2020-06-03 11:35:51', '2020-06-03 11:35:51', NULL),
(415, '1', '248', 54420.00, 'user', 'in', '248', 'You have received 54420.00 Tk TopUp balance for delivered 52 order to standard', 'active', '2020-06-03 11:36:14', '2020-06-03 11:36:14', NULL),
(416, '249', '249', 16100.00, 'user', 'out', '249', 'You have purchase 53 with 16100 Tk TopUp balance.', 'active', '2020-06-03 11:42:17', '2020-06-03 11:42:17', NULL),
(417, '248', '249', 16100.00, 'user', 'in', '249', 'You have received 16100.00 Tk TopUp balance for delivered 53 order to eshop.com', 'active', '2020-06-03 11:44:14', '2020-06-03 11:44:14', NULL),
(418, '1', '247', 300.00, 'user', 'out', '1', 'You have transfer 300 Tk TopUp balance to Mehedi .', 'active', '2020-06-05 05:48:51', '2020-06-05 05:48:51', NULL),
(419, '247', '1', 300.00, 'user', 'in', '1', 'You have received 300 Tk TopUp balance From admin .', 'active', '2020-06-05 05:48:51', '2020-06-05 05:48:51', NULL),
(420, '247', '363', 100.00, 'user', 'out', '247', 'Office Charge 100 Tk For Habib Membership ID Card.', 'active', '2020-06-05 05:57:11', '2020-06-05 05:57:11', NULL),
(421, '200', '361', 2750.00, 'user', 'out', '200', 'You have transfer 2750 Tk TopUp balance to nasir .', 'active', '2020-06-06 23:08:19', '2020-06-06 23:08:19', NULL),
(422, '361', '200', 2750.00, 'user', 'in', '200', 'You have received 2750 Tk TopUp balance From foyez .', 'active', '2020-06-06 23:08:19', '2020-06-06 23:08:19', NULL),
(423, '361', '361', 2750.00, 'user', 'out', '361', 'You have purchase 54 with 2750 Tk TopUp balance.', 'active', '2020-06-06 23:16:59', '2020-06-06 23:16:59', NULL),
(424, '200', '284', 300.00, 'user', 'out', '200', 'You have transfer 300 Tk TopUp balance to harun .', 'active', '2020-06-06 23:26:38', '2020-06-06 23:26:38', NULL),
(425, '284', '200', 300.00, 'user', 'in', '200', 'You have received 300 Tk TopUp balance From foyez .', 'active', '2020-06-06 23:26:38', '2020-06-06 23:26:38', NULL),
(426, '247', '364', 100.00, 'user', 'out', '247', 'Office Charge 100 Tk For Ikbal Membership ID Card.', 'active', '2020-06-06 23:40:19', '2020-06-06 23:40:19', NULL),
(427, '282', '200', 300.00, 'user', 'out', '282', 'You have transfer 300 Tk TopUp balance to foyez .', 'active', '2020-06-09 00:46:25', '2020-06-09 00:46:25', NULL),
(428, '200', '282', 300.00, 'user', 'in', '282', 'You have received 300 Tk TopUp balance From Sania .', 'active', '2020-06-09 00:46:25', '2020-06-09 00:46:25', NULL),
(429, '248', '361', 2750.00, 'user', 'in', '361', 'You have received 2750.00 Tk TopUp balance for delivered 54 order to Nasir', 'active', '2020-06-09 02:23:04', '2020-06-09 02:23:04', NULL),
(430, '200', '363', 2750.00, 'user', 'out', '200', 'You have transfer 2750 Tk TopUp balance to habib .', 'active', '2020-06-10 00:52:39', '2020-06-10 00:52:39', NULL),
(431, '363', '200', 2750.00, 'user', 'in', '200', 'You have received 2750 Tk TopUp balance From foyez .', 'active', '2020-06-10 00:52:39', '2020-06-10 00:52:39', NULL),
(432, '363', '363', 2750.00, 'user', 'out', '363', 'You have purchase 55 with 2750 Tk TopUp balance.', 'active', '2020-06-10 00:57:00', '2020-06-10 00:57:00', NULL),
(433, '1', '330', 2500.00, 'user', 'out', '1', 'You have transfer 2500 Tk TopUp balance to fazlu .', 'active', '2020-06-10 01:29:32', '2020-06-10 01:29:32', NULL),
(434, '330', '1', 2500.00, 'user', 'in', '1', 'You have received 2500 Tk TopUp balance From admin .', 'active', '2020-06-10 01:29:32', '2020-06-10 01:29:32', NULL),
(435, '1', '313', 2500.00, 'user', 'out', '1', 'You have transfer 2500 Tk TopUp balance to draziz .', 'active', '2020-06-10 01:29:59', '2020-06-10 01:29:59', NULL),
(436, '313', '1', 2500.00, 'user', 'in', '1', 'You have received 2500 Tk TopUp balance From admin .', 'active', '2020-06-10 01:29:59', '2020-06-10 01:29:59', NULL),
(437, '248', '363', 2750.00, 'user', 'in', '363', 'You have received 2750.00 Tk TopUp balance for delivered 55 order to Habib', 'active', '2020-06-10 03:53:54', '2020-06-10 03:53:54', NULL),
(438, '200', '361', 300.00, 'user', 'out', '200', 'You have transfer 300 Tk TopUp balance to nasir .', 'active', '2020-06-10 04:10:55', '2020-06-10 04:10:55', NULL),
(439, '361', '200', 300.00, 'user', 'in', '200', 'You have received 300 Tk TopUp balance From foyez .', 'active', '2020-06-10 04:10:55', '2020-06-10 04:10:55', NULL),
(440, '361', '365', 100.00, 'user', 'out', '361', 'Office Charge 100 Tk For Shahadat Membership ID Card.', 'active', '2020-06-10 04:16:20', '2020-06-10 04:16:20', NULL),
(441, '1', '335', 2500.00, 'user', 'out', '1', 'You have transfer 2500 Tk TopUp balance to moinuddin .', 'active', '2020-06-10 06:17:19', '2020-06-10 06:17:19', NULL),
(442, '335', '1', 2500.00, 'user', 'in', '1', 'You have received 2500 Tk TopUp balance From admin .', 'active', '2020-06-10 06:17:19', '2020-06-10 06:17:19', NULL),
(443, '335', '335', 2500.00, 'user', 'out', '335', 'You have purchase 56 with 2500 Tk TopUp balance.', 'active', '2020-06-10 06:20:33', '2020-06-10 06:20:33', NULL),
(444, '330', '330', 2500.00, 'user', 'out', '330', 'You have purchase 57 with 2500 Tk TopUp balance.', 'active', '2020-06-10 06:24:15', '2020-06-10 06:24:15', NULL),
(445, '313', '313', 2500.00, 'user', 'out', '313', 'You have purchase 58 with 2500 Tk TopUp balance.', 'active', '2020-06-10 06:27:12', '2020-06-10 06:27:12', NULL),
(446, '200', '365', 2750.00, 'user', 'out', '200', 'You have transfer 2750 Tk TopUp balance to shahadat .', 'active', '2020-06-10 21:31:01', '2020-06-10 21:31:01', NULL),
(447, '365', '200', 2750.00, 'user', 'in', '200', 'You have received 2750 Tk TopUp balance From foyez .', 'active', '2020-06-10 21:31:01', '2020-06-10 21:31:01', NULL),
(448, '365', '365', 2750.00, 'user', 'out', '365', 'You have purchase 59 with 2750 Tk TopUp balance.', 'active', '2020-06-10 21:33:31', '2020-06-10 21:33:31', NULL),
(449, '284', '200', 300.00, 'user', 'out', '284', 'You have transfer 300 Tk TopUp balance to Foyez .', 'active', '2020-06-10 22:57:22', '2020-06-10 22:57:22', NULL),
(450, '200', '284', 300.00, 'user', 'in', '284', 'You have received 300 Tk TopUp balance From Harun .', 'active', '2020-06-10 22:57:22', '2020-06-10 22:57:22', NULL),
(451, '200', '361', 300.00, 'user', 'out', '200', 'You have transfer 300 Tk TopUp balance to Nasir .', 'active', '2020-06-10 23:17:35', '2020-06-10 23:17:35', NULL),
(452, '361', '200', 300.00, 'user', 'in', '200', 'You have received 300 Tk TopUp balance From foyez .', 'active', '2020-06-10 23:17:35', '2020-06-10 23:17:35', NULL),
(453, '200', '354', 300.00, 'user', 'out', '200', 'You have transfer 300 Tk TopUp balance to firoj malot .', 'active', '2020-06-10 23:22:01', '2020-06-10 23:22:01', NULL),
(454, '354', '200', 300.00, 'user', 'in', '200', 'You have received 300 Tk TopUp balance From foyez .', 'active', '2020-06-10 23:22:01', '2020-06-10 23:22:01', NULL),
(455, '247', '368', 100.00, 'user', 'out', '247', 'Office Charge 100 Tk For Mdabdullah Membership ID Card.', 'active', '2020-06-10 23:49:15', '2020-06-10 23:49:15', NULL),
(456, '200', '284', 100.00, 'user', 'out', '200', 'You have transfer 100 Tk TopUp balance to harun .', 'active', '2020-06-11 01:34:21', '2020-06-11 01:34:21', NULL),
(457, '284', '200', 100.00, 'user', 'in', '200', 'You have received 100 Tk TopUp balance From foyez .', 'active', '2020-06-11 01:34:21', '2020-06-11 01:34:21', NULL),
(458, '284', '369', 100.00, 'user', 'out', '284', 'Office Charge 100 Tk For shahed ahamed Membership ID Card.', 'active', '2020-06-11 01:42:56', '2020-06-11 01:42:56', NULL),
(459, '248', '365', 2750.00, 'user', 'in', '365', 'You have received 2750.00 Tk TopUp balance for delivered 59 order to Shahadat', 'active', '2020-06-11 06:15:25', '2020-06-11 06:15:25', NULL),
(460, '200', '361', 2500.00, 'user', 'out', '200', 'You have transfer 2500 Tk TopUp balance to Nasir .', 'active', '2020-06-11 23:10:06', '2020-06-11 23:10:06', NULL),
(461, '361', '200', 2500.00, 'user', 'in', '200', 'You have received 2500 Tk TopUp balance From foyez .', 'active', '2020-06-11 23:10:06', '2020-06-11 23:10:06', NULL),
(462, '361', '377', 100.00, 'user', 'out', '361', 'Office Charge 100 Tk For Salma Membership ID Card.', 'active', '2020-06-11 23:18:57', '2020-06-11 23:18:57', NULL),
(463, '361', '378', 100.00, 'user', 'out', '361', 'Office Charge 100 Tk For Foysal Membership ID Card.', 'active', '2020-06-11 23:22:38', '2020-06-11 23:22:38', NULL),
(464, '361', '377', 2750.00, 'user', 'out', '361', 'You have transfer 2750 Tk TopUp balance to Salma .', 'active', '2020-06-11 23:24:19', '2020-06-11 23:24:19', NULL),
(465, '377', '361', 2750.00, 'user', 'in', '361', 'You have received 2750 Tk TopUp balance From Nasir .', 'active', '2020-06-11 23:24:19', '2020-06-11 23:24:19', NULL),
(466, '377', '377', 2750.00, 'user', 'out', '377', 'You have purchase 60 with 2750 Tk TopUp balance.', 'active', '2020-06-11 23:29:07', '2020-06-11 23:29:07', NULL),
(467, '200', '361', 300.00, 'user', 'out', '200', 'You have transfer 300 Tk TopUp balance to Nasir .', 'active', '2020-06-11 23:36:24', '2020-06-11 23:36:24', NULL),
(468, '361', '200', 300.00, 'user', 'in', '200', 'You have received 300 Tk TopUp balance From foyez .', 'active', '2020-06-11 23:36:24', '2020-06-11 23:36:24', NULL),
(469, '200', '260', 500.00, 'user', 'out', '200', 'You have transfer 500 Tk TopUp balance to monir .', 'active', '2020-06-12 00:05:26', '2020-06-12 00:05:26', NULL),
(470, '260', '200', 500.00, 'user', 'in', '200', 'You have received 500 Tk TopUp balance From foyez .', 'active', '2020-06-12 00:05:26', '2020-06-12 00:05:26', NULL),
(471, '200', '260', 1750.00, 'user', 'out', '200', 'You have transfer 1750 Tk TopUp balance to monir .', 'active', '2020-06-12 00:06:57', '2020-06-12 00:06:57', NULL),
(472, '260', '200', 1750.00, 'user', 'in', '200', 'You have received 1750 Tk TopUp balance From foyez .', 'active', '2020-06-12 00:06:57', '2020-06-12 00:06:57', NULL),
(473, '260', '260', 2750.00, 'user', 'out', '260', 'You have purchase 61 with 2750 Tk TopUp balance.', 'active', '2020-06-12 00:10:50', '2020-06-12 00:10:50', NULL),
(474, '200', '244', 50.00, 'user', 'out', '200', 'You have transfer 50 Tk TopUp balance to amit .', 'active', '2020-06-12 00:14:04', '2020-06-12 00:14:04', NULL),
(475, '244', '200', 50.00, 'user', 'in', '200', 'You have received 50 Tk TopUp balance From foyez .', 'active', '2020-06-12 00:14:05', '2020-06-12 00:14:05', NULL),
(476, '248', '260', 2750.00, 'user', 'in', '260', 'You have received 2750.00 Tk TopUp balance for delivered 61 order to monir', 'active', '2020-06-12 00:23:43', '2020-06-12 00:23:43', NULL),
(477, '248', '377', 2750.00, 'user', 'in', '377', 'You have received 2750.00 Tk TopUp balance for delivered 60 order to Salma', 'active', '2020-06-12 00:23:57', '2020-06-12 00:23:57', NULL),
(478, '200', '281', 200.00, 'user', 'out', '200', 'You have transfer 200 Tk TopUp balance to afroza .', 'active', '2020-06-12 02:20:34', '2020-06-12 02:20:34', NULL),
(479, '281', '200', 200.00, 'user', 'in', '200', 'You have received 200 Tk TopUp balance From foyez .', 'active', '2020-06-12 02:20:34', '2020-06-12 02:20:34', NULL),
(480, '281', '281', 180.00, 'user', 'out', '281', 'You have purchase 62 with 180 Tk TopUp balance.', 'active', '2020-06-12 02:30:05', '2020-06-12 02:30:05', NULL),
(481, '361', '361', 475.00, 'withdrawal', 'in', '361', 'You have received 475 Tk TopUp from withdrawal 16', 'active', '2020-06-13 01:05:56', '2020-06-13 01:05:56', NULL),
(482, '361', '200', 800.00, 'user', 'out', '361', 'You have transfer 800 Tk TopUp balance to foyez .', 'active', '2020-06-13 01:09:42', '2020-06-13 01:09:42', NULL),
(483, '200', '361', 800.00, 'user', 'in', '361', 'You have received 800 Tk TopUp balance From Nasir .', 'active', '2020-06-13 01:09:42', '2020-06-13 01:09:42', NULL),
(484, '200', '393', 100.00, 'user', 'out', '200', 'Office Charge 100 Tk For Nahid Membership ID Card.', 'active', '2020-06-13 02:11:21', '2020-06-13 02:11:21', NULL),
(485, '248', '281', 180.00, 'user', 'in', '281', 'You have received 180.00 Tk TopUp balance for delivered 62 order to Afroza', 'active', '2020-06-13 03:18:46', '2020-06-13 03:18:46', NULL),
(486, '282', '282', 190.00, 'withdrawal', 'in', '282', 'You have received 190 Tk TopUp from withdrawal 17', 'active', '2020-06-14 00:48:41', '2020-06-14 00:48:41', NULL),
(487, '282', '200', 200.00, 'user', 'out', '282', 'You have transfer 200 Tk TopUp balance to Foyez .', 'active', '2020-06-14 00:49:24', '2020-06-14 00:49:24', NULL),
(488, '200', '282', 200.00, 'user', 'in', '282', 'You have received 200 Tk TopUp balance From Sania .', 'active', '2020-06-14 00:49:24', '2020-06-14 00:49:24', NULL),
(489, '354', '354', 180.50, 'withdrawal', 'in', '354', 'You have received 180.5 Tk TopUp from withdrawal 18', 'active', '2020-06-14 02:21:09', '2020-06-14 02:21:09', NULL),
(490, '354', '200', 500.00, 'user', 'out', '354', 'You have transfer 500 Tk TopUp balance to Foyez .', 'active', '2020-06-14 02:22:24', '2020-06-14 02:22:24', NULL),
(491, '200', '354', 500.00, 'user', 'in', '354', 'You have received 500 Tk TopUp balance From Firoj malot .', 'active', '2020-06-14 02:22:24', '2020-06-14 02:22:24', NULL),
(492, '200', '369', 700.00, 'user', 'out', '200', 'You have transfer 700 Tk TopUp balance to Shahed Ahamed .', 'active', '2020-06-14 23:52:38', '2020-06-14 23:52:38', NULL),
(493, '369', '200', 700.00, 'user', 'in', '200', 'You have received 700 Tk TopUp balance From foyez .', 'active', '2020-06-14 23:52:38', '2020-06-14 23:52:38', NULL),
(494, '369', '369', 700.00, 'user', 'out', '369', 'You have purchase 63 with 700 Tk TopUp balance.', 'active', '2020-06-14 23:54:16', '2020-06-14 23:54:16', NULL),
(495, '200', '407', 100.00, 'user', 'out', '200', 'Office Charge 100 Tk For Sohan Membership ID Card.', 'active', '2020-06-15 00:19:25', '2020-06-15 00:19:25', NULL),
(496, '247', '247', 475.00, 'withdrawal', 'in', '247', 'You have received 475 Tk TopUp from withdrawal 19', 'active', '2020-06-15 01:12:14', '2020-06-15 01:12:14', NULL),
(497, '247', '247', 500.00, 'user', 'out', '247', 'You have transfer 500 Tk TopUp balance to Mehedi .', 'active', '2020-06-15 01:13:09', '2020-06-15 01:13:09', NULL),
(498, '247', '247', 500.00, 'user', 'in', '247', 'You have received 500 Tk TopUp balance From mehedi .', 'active', '2020-06-15 01:13:09', '2020-06-15 01:13:09', NULL),
(499, '247', '200', 500.00, 'user', 'out', '247', 'You have transfer 500 Tk TopUp balance to Foyez .', 'active', '2020-06-15 01:14:13', '2020-06-15 01:14:13', NULL),
(500, '200', '247', 500.00, 'user', 'in', '247', 'You have received 500 Tk TopUp balance From mehedi .', 'active', '2020-06-15 01:14:13', '2020-06-15 01:14:13', NULL),
(501, '248', '369', 700.00, 'user', 'in', '369', 'You have received 700.00 Tk TopUp balance for delivered 63 order to shahed ahamed', 'active', '2020-06-15 02:10:25', '2020-06-15 02:10:25', NULL),
(502, '1', '408', 100.00, 'user', 'out', '1', 'Office Charge 100 Tk For Testsg Membership ID Card.', 'active', '2020-06-15 02:47:21', '2020-06-15 02:47:21', NULL),
(503, '1', '410', 2500.00, 'user', 'out', '1', 'You have transfer 2500 Tk TopUp balance to e-Shopdhkhq .', 'active', '2020-06-15 03:35:50', '2020-06-15 03:35:50', NULL),
(504, '410', '1', 2500.00, 'user', 'in', '1', 'You have received 2500 Tk TopUp balance From admin .', 'active', '2020-06-15 03:35:50', '2020-06-15 03:35:50', NULL),
(505, '410', '410', 2500.00, 'user', 'out', '410', 'You have purchase 64 with 2500 Tk TopUp balance.', 'active', '2020-06-15 03:37:08', '2020-06-15 03:37:08', NULL),
(506, '1', '410', 2500.00, 'user', 'in', '410', 'You have received 2500.00 Tk TopUp balance for delivered 64 order to e-Shopdhkhq', 'active', '2020-06-15 03:38:15', '2020-06-15 03:38:15', NULL),
(507, '1', '1', 2500.00, 'user', 'out', '1', 'You have purchase 65 with 2500 Tk TopUp balance.', 'active', '2020-06-15 03:39:53', '2020-06-15 03:39:53', NULL),
(508, '248', '1', 2500.00, 'user', 'in', '1', 'You have received 2500.00 Tk TopUp balance for delivered 65 order to admin', 'active', '2020-06-15 04:02:54', '2020-06-15 04:02:54', NULL),
(509, '249', '249', 4065.00, 'user', 'out', '249', 'You have purchase 66 with 4065 Tk TopUp balance.', 'active', '2020-06-15 04:12:39', '2020-06-15 04:12:39', NULL),
(510, '248', '249', 4065.00, 'user', 'in', '249', 'You have received 4065.00 Tk TopUp balance for delivered 66 order to eshop.com', 'active', '2020-06-15 04:14:13', '2020-06-15 04:14:13', NULL),
(511, '248', '248', 1080.00, 'user', 'out', '248', 'You have purchase 67 with 1080 Tk TopUp balance.', 'active', '2020-06-15 22:55:26', '2020-06-15 22:55:26', NULL),
(512, '1', '248', 1080.00, 'user', 'in', '248', 'You have received 1080.00 Tk TopUp balance for delivered 67 order to standard', 'active', '2020-06-15 22:57:08', '2020-06-15 22:57:08', NULL),
(513, '200', '247', 200.00, 'user', 'out', '200', 'You have transfer 200 Tk TopUp balance to mehedi .', 'active', '2020-06-16 00:08:19', '2020-06-16 00:08:19', NULL),
(514, '247', '200', 200.00, 'user', 'in', '200', 'You have received 200 Tk TopUp balance From foyez .', 'active', '2020-06-16 00:08:19', '2020-06-16 00:08:19', NULL),
(515, '200', '414', 100.00, 'user', 'out', '200', 'Office Charge 100 Tk For Shamim Membership ID Card.', 'active', '2020-06-16 00:12:40', '2020-06-16 00:12:40', NULL),
(516, '247', '415', 100.00, 'user', 'out', '247', 'Office Charge 100 Tk For Ruma Membership ID Card.', 'active', '2020-06-16 00:16:15', '2020-06-16 00:16:15', NULL),
(517, '247', '416', 100.00, 'user', 'out', '247', 'Office Charge 100 Tk For Jesmin Membership ID Card.', 'active', '2020-06-16 00:31:10', '2020-06-16 00:31:10', NULL),
(518, '1', '220', 130.00, 'user', 'out', '1', 'You have transfer 130 Tk TopUp balance to akhifahim .', 'active', '2020-06-16 00:51:12', '2020-06-16 00:51:12', NULL),
(519, '220', '1', 130.00, 'user', 'in', '1', 'You have received 130 Tk TopUp balance From admin .', 'active', '2020-06-16 00:51:12', '2020-06-16 00:51:12', NULL),
(520, '220', '220', 128.00, 'user', 'out', '220', 'You have purchase 68 with 128 Tk TopUp balance.', 'active', '2020-06-16 00:53:33', '2020-06-16 00:53:33', NULL),
(521, '248', '220', 128.00, 'user', 'in', '220', 'You have received 128.00 Tk TopUp balance for delivered 68 order to akhifahim', 'active', '2020-06-16 01:02:34', '2020-06-16 01:02:34', NULL),
(522, '1', '378', 2750.00, 'user', 'out', '1', 'You have transfer 2750 Tk TopUp balance to Foysal .', 'active', '2020-06-16 05:06:16', '2020-06-16 05:06:16', NULL),
(523, '378', '1', 2750.00, 'user', 'in', '1', 'You have received 2750 Tk TopUp balance From admin .', 'active', '2020-06-16 05:06:16', '2020-06-16 05:06:16', NULL),
(524, '248', '248', 55000.00, 'user', 'out', '248', 'You have purchase 69 with 55000 Tk TopUp balance.', 'active', '2020-06-16 05:59:36', '2020-06-16 05:59:36', NULL),
(525, '1', '248', 55000.00, 'user', 'in', '248', 'You have received 55000.00 Tk TopUp balance for delivered 69 order to standard', 'active', '2020-06-16 06:00:41', '2020-06-16 06:00:41', NULL),
(526, '378', '378', 2500.00, 'user', 'out', '378', 'You have purchase 70 with 2500 Tk TopUp balance.', 'active', '2020-06-16 06:03:45', '2020-06-16 06:03:45', NULL),
(527, '378', '1', 250.00, 'user', 'out', '378', 'You have transfer 250 Tk TopUp balance to admin .', 'active', '2020-06-16 06:04:31', '2020-06-16 06:04:31', NULL),
(528, '1', '378', 250.00, 'user', 'in', '378', 'You have received 250 Tk TopUp balance From Foysal .', 'active', '2020-06-16 06:04:31', '2020-06-16 06:04:31', NULL),
(529, '248', '378', 2500.00, 'user', 'in', '378', 'You have received 2500.00 Tk TopUp balance for delivered 70 order to Foysal', 'active', '2020-06-16 06:15:18', '2020-06-16 06:15:18', NULL),
(530, '249', '249', 1080.00, 'user', 'out', '249', 'You have purchase 71 with 1080 Tk TopUp balance.', 'active', '2020-06-17 00:32:11', '2020-06-17 00:32:11', NULL),
(531, '248', '249', 1080.00, 'user', 'in', '249', 'You have received 1080.00 Tk TopUp balance for delivered 71 order to eshop.com', 'active', '2020-06-17 00:34:01', '2020-06-17 00:34:01', NULL);

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
(1, 1, 'gm', 'gm', 'Active', '2019-12-21 13:33:02', '2020-03-01 06:50:13', NULL),
(2, 1, 'pc', 'pc', 'Active', '2019-12-21 13:33:21', '2020-03-01 06:50:07', NULL),
(3, 1, 'ml', '1', 'Active', '2019-12-21 13:33:30', '2020-03-01 06:49:58', NULL);

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
  `company_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
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
  `package_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `users` (`id`, `name`, `username`, `company_name`, `phone`, `address`, `email`, `position`, `city`, `state`, `country`, `post_code`, `txn_pin`, `national_id`, `father_name`, `mother_name`, `nomine_name`, `profile_picture`, `user_type`, `is_signup_without_payment`, `is_premium`, `package_id`, `is_banned`, `register_by`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Super Admin', 'admin', NULL, NULL, 'Shakhipur, Shariotpur, Bangladesh.', NULL, NULL, '15', '3', '18', NULL, 'foisal', NULL, NULL, NULL, NULL, 'admin.jpg', 'admin', NULL, '2020-01-01', NULL, NULL, NULL, NULL, '$2y$10$rU.Du3JNzCO9UsP22Rnj5.OmZ/QonlmPAayoEYWr/xXIK8n99ltiW', NULL, '2020-01-01 02:13:55', '2020-06-14 12:01:37', NULL),
(2, 'Standard Global Private Ltd', 'standard1', NULL, 's0000001', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891001', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$TlirfFod3oznowQ4fJjEw.tyS8RaQ1hCF3gFixxZT5fKfkR71OgEq', NULL, '2020-01-05 18:56:34', '2020-01-05 18:56:34', NULL),
(3, 'Standard Global Private Ltd', 'standard2', NULL, 's0000002', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891002', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$8FU/fULTUpfW0tM2NQh.reuReCUSYb2Dfskg0uBD1RLhoaXi86HZK', NULL, '2020-01-05 18:56:34', '2020-01-05 18:56:34', NULL),
(4, 'Standard Global Private Ltd', 'standard3', NULL, 's0000003', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891003', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$Zskd/5qejX2NXYVfbaed2uTJeFjiMDWfwUrXGMx9ytv1DvzJiLOl.', NULL, '2020-01-05 18:56:34', '2020-01-05 18:56:34', NULL),
(5, 'Standard Global Private Ltd', 'standard4', NULL, 's0000004', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891004', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$QTSIcb6kxDmgTeYutQFRceWYuu6fvEXqaXjl5vpoMW4DAMT6XEjZ2', NULL, '2020-01-05 18:56:34', '2020-01-05 18:56:34', NULL),
(6, 'Standard Global Private Ltd', 'standard5', NULL, 's0000005', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891005', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$Sfg44Lf8lH42l0ylP5jkzeh02bNYonPvyRaslj3Bj4Ldyr0uuCmw.', NULL, '2020-01-05 18:56:34', '2020-01-05 18:56:34', NULL),
(7, 'Standard Global Private Ltd', 'standard6', NULL, 's0000006', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891006', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$vwHPtmjQjwHXZf/noGsT.uh5nztlt1huYuSY6Go3IsQuGIsNwcflK', NULL, '2020-01-05 18:56:35', '2020-01-05 18:56:35', NULL),
(8, 'Standard Global Private Ltd', 'standard7', NULL, 's0000007', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891007', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$9dqNrmP.i1JtTvtLQfTTJ.dQEsef276YX1QyzDgIu7fKxghE8Jmb6', NULL, '2020-01-05 18:56:35', '2020-01-05 18:56:35', NULL),
(9, 'Standard Global Private Ltd', 'standard8', NULL, 's0000008', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891008', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$d/uc.NZZfwUPB6jgfiZNFuy6MwVHOVif9anSWV9GtWHXUAWmp.ate', NULL, '2020-01-05 18:56:35', '2020-01-05 18:56:35', NULL),
(10, 'Standard Global Private Ltd', 'standard9', NULL, 's0000009', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891009', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$42xNKZguEyeEQpQb5QJsi.jXDwXA0wz5vOhW1XNOZQdUNHxrhQyR.', NULL, '2020-01-05 18:56:35', '2020-01-05 18:56:35', NULL),
(11, 'Standard Global Private Ltd', 'standard10', NULL, 's00000010', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910010', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$0KH3coeaQ/ijQFUSg2g0ROUK5FUpb3abP4tl6a2YAZ2xKlKak/7I6', NULL, '2020-01-05 18:56:35', '2020-01-05 18:56:35', NULL),
(12, 'Standard Global Private Ltd', 'standard11', NULL, 's00000011', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910011', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$ubqgKQo4OHBPU1DnXHaTnub9bA/u6CIspxC.SGATqXi.FbztRcFoO', NULL, '2020-01-05 18:56:36', '2020-01-05 18:56:36', NULL),
(13, 'Standard Global Private Ltd', 'standard12', NULL, 's00000012', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910012', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$H9OV8FgOCr0KstxpVcWMjeNaV9GSBLLZg1a.Bz7Ua42kj9SiOcStq', NULL, '2020-01-05 18:56:36', '2020-01-05 18:56:36', NULL),
(14, 'Standard Global Private Ltd', 'standard13', NULL, 's00000013', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910013', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$byxBxT.OtTKZIkNSNoMQDuRExPb.90bZgi/pQLiDcM2o.dW7VJsei', NULL, '2020-01-05 18:56:36', '2020-01-05 18:56:36', NULL),
(15, 'Standard Global Private Ltd', 'standard14', NULL, 's00000014', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910014', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$2nGaW6QTVc8.clChEjIlE.EDwkSCfkSr/a2BcwcRp9RFzg5624RZS', NULL, '2020-01-05 18:56:36', '2020-01-05 18:56:36', NULL),
(16, 'Standard Global Private Ltd', 'standard15', NULL, 's00000015', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910015', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$GpKuGtjsNsQTxGcCcwJ38.0zGiirzHN/4c8gen6xDM4buaTlBxKR6', NULL, '2020-01-05 18:56:36', '2020-01-05 18:56:36', NULL),
(17, 'Standard Global Private Ltd', 'standard16', NULL, 's00000016', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910016', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$BsbzECiIYZJPuY7aUO0h2OS3M9gLTfLacB8.LCNSQMKbHIMgQVFpK', NULL, '2020-01-05 18:56:37', '2020-01-05 18:56:37', NULL),
(18, 'Standard Global Private Ltd', 'standard17', NULL, 's00000017', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910017', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$GeERYiVkYos4v6CgPz6aIuCMuBIWJNN5gHYKoCjiuYisCzZSWyyo2', NULL, '2020-01-05 18:56:37', '2020-01-05 18:56:37', NULL),
(19, 'Standard Global Private Ltd', 'standard18', NULL, 's00000018', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910018', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$BUhUZzfFo09mWrTPhZVjWeP6AOYOb75Ri..535BECSj41Jd1HWGIK', NULL, '2020-01-05 18:56:37', '2020-01-05 18:56:37', NULL),
(20, 'Standard Global Private Ltd', 'standard19', NULL, 's00000019', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910019', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$Ogvks34JpNxniB34y1Id8OkU8IUOnuiQJMKJt6CQyR44biwdUMMwS', NULL, '2020-01-05 18:56:37', '2020-01-05 18:56:37', NULL),
(21, 'Standard Global Private Ltd', 'standard20', NULL, 's00000020', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910020', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$I8r5nzGX5/qQvpEVpiXftO.zRGwnlOLMbjIqJTa0xP5KwUornl2XO', NULL, '2020-01-05 18:56:37', '2020-01-05 18:56:37', NULL),
(22, 'Standard Global Private Ltd', 'standard21', NULL, 's00000021', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910021', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$Yn7LBT8qS4hL2UmNddfrwe29dkOREj7BAJq3j5K38diwp4Db5S3eS', NULL, '2020-01-05 18:56:38', '2020-01-05 18:56:38', NULL),
(23, 'Standard Global Private Ltd', 'standard22', NULL, 's00000022', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910022', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$yBMiKEEvjT2eyqptvgiS8.t7z/2ezZm9f3jaqElBgd/U5fhpECmym', NULL, '2020-01-05 18:56:38', '2020-01-05 18:56:38', NULL),
(24, 'Standard Global Private Ltd', 'standard23', NULL, 's00000023', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910023', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$/EVR6IuQ4NRzujQBvt3vpue9pBc7rxtHiG/Uzf/4SncwJDEzmu43a', NULL, '2020-01-05 18:56:38', '2020-01-05 18:56:38', NULL),
(25, 'Standard Global Private Ltd', 'standard24', NULL, 's00000024', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910024', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$tED9VMjyNIWzPZSlgauEHuD8CV2kgAD2V6L3Ez.HdB8O1.ylkYOg6', NULL, '2020-01-05 18:56:38', '2020-01-05 18:56:38', NULL),
(26, 'Standard Global Private Ltd', 'standard25', NULL, 's00000025', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910025', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$cDIBE9/3RurjO.6Wu8o88O6Yx2v/TA3.pynQZ6zpNnBAdKoGACtAq', NULL, '2020-01-05 18:56:38', '2020-01-05 18:56:38', NULL),
(27, 'Standard Global Private Ltd', 'standard26', NULL, 's00000026', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910026', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$2b6tL3oKZneDO3MDLGxwoOSvKqsfWuOJxCGAudV2x0nEl9.dgLIya', NULL, '2020-01-05 18:56:39', '2020-01-05 18:56:39', NULL),
(28, 'Standard Global Private Ltd', 'standard27', NULL, 's00000027', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910027', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$/D2sXrtJ8u1hhL4DQFVtvOaf5lHC/.8Z2Tyw7RIRSE6YSmU9norZ6', NULL, '2020-01-05 18:56:39', '2020-01-05 18:56:39', NULL),
(29, 'Standard Global Private Ltd', 'standard28', NULL, 's00000028', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910028', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$cw96SRa7ecr4Xpi9BpxjveaTGADVZ2gYN5IaJ8S7bQ9QkDhBc9FrK', NULL, '2020-01-05 18:56:39', '2020-01-05 18:56:39', NULL),
(30, 'Standard Global Private Ltd', 'standard29', NULL, 's00000029', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910029', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$0p8xxkrAlLNlgOxuvHIxo.7X4Lub5vLGh5hvkVj3oS/kcqLvhAokS', NULL, '2020-01-05 18:56:39', '2020-01-05 18:56:39', NULL),
(31, 'Standard Global Private Ltd', 'standard30', NULL, 's00000030', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910030', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$9Tuc9XHtezcM4RqklG2ZJOR4JoW4omYSW4upTQnjHtHnvb.GPAybS', NULL, '2020-01-05 18:56:39', '2020-01-05 18:56:39', NULL),
(32, 'Standard Global Private Ltd', 'standard31', NULL, 's00000031', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910031', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$LhDcVsoukwxaL0wiptTSm.Q2Q7LnbLLOHv3nUSuz6S.5ngcWjou3S', NULL, '2020-01-05 18:56:39', '2020-01-05 18:56:39', NULL),
(33, 'Standard Global Private Ltd', 'standard32', NULL, 's00000032', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910032', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$uvr0dxPuaOOCGoMasSY.r.tj.uiHi7kjetptyPb0pZ0AAbcit/ZNS', NULL, '2020-01-05 18:56:39', '2020-01-05 18:56:39', NULL),
(34, 'Standard Global Private Ltd', 'standard33', NULL, 's00000033', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910033', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$ldtLtLrhAbdVZZXc8m0gBeHNWcKj0K/sk2ZlqBkRrd46vhVWAVb0y', NULL, '2020-01-05 18:56:40', '2020-01-05 18:56:40', NULL),
(35, 'Standard Global Private Ltd', 'standard34', NULL, 's00000034', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910034', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$zVYYmkcod2cC/50sbYO6Be9Bk57NLt4GWI4Br0EY6m4xHDpFYBQju', NULL, '2020-01-05 18:56:40', '2020-01-05 18:56:40', NULL),
(36, 'Standard Global Private Ltd', 'standard35', NULL, 's00000035', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910035', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$jIh2/lULZQbShFKHcswfmOLau14e5bb8JNf4mLj.d8Z7N278KyXLu', NULL, '2020-01-05 18:56:40', '2020-01-05 18:56:40', NULL),
(37, 'Standard Global Private Ltd', 'standard36', NULL, 's00000036', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910036', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$VfDn2OpDnFiKIm..N/.5fem/FZg4iauNQWETiBjEgpEuoxSoVy.Q2', NULL, '2020-01-05 18:56:40', '2020-01-05 18:56:40', NULL),
(38, 'Standard Global Private Ltd', 'standard37', NULL, 's00000037', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910037', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$fVt2J1D6z.xdv3qrrjznM.SHu7OIljX4E50LD5nKYczkIqtZMkFu.', NULL, '2020-01-05 18:56:40', '2020-01-05 18:56:40', NULL),
(39, 'Standard Global Private Ltd', 'standard38', NULL, 's00000038', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910038', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$UCSV2wdeoe4TbHNk80Lcl.7VAzSUqyPQf4cok69fPOHy863toIfiS', NULL, '2020-01-05 18:56:40', '2020-01-05 18:56:40', NULL),
(40, 'Standard Global Private Ltd', 'standard39', NULL, 's00000039', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910039', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$exLynSmQj3R2jaW4/jNaau.lK5Lol2gx/Br55enRPifyXz2tY6Owi', NULL, '2020-01-05 18:56:40', '2020-01-05 18:56:40', NULL),
(41, 'Standard Global Private Ltd', 'standard40', NULL, 's00000040', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910040', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$FmOgrhGEqMVyn489I6kWXOc41EQN5C4KdrO5tAbh7hdZ7ibcUGAk2', NULL, '2020-01-05 18:56:40', '2020-01-05 18:56:40', NULL),
(42, 'Standard Global Private Ltd', 'standard41', NULL, 's00000041', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910041', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$hv07zrr6C4OhlJq4TGG/euzHhHKHBAPajLkenrBgS4rl9vtGw4YX6', NULL, '2020-01-05 18:56:41', '2020-01-05 18:56:41', NULL),
(43, 'Standard Global Private Ltd', 'standard42', NULL, 's00000042', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910042', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$o2KwQp9SMxxwGWZd1ZuesO8YKesnMwpCgf3Q4vO9tBvh3DXq3..Y2', NULL, '2020-01-05 18:56:41', '2020-01-05 18:56:41', NULL),
(44, 'Standard Global Private Ltd', 'standard43', NULL, 's00000043', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910043', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$J02B1USbofV98FGQdCki4uR0CWBBiQCmJ/OpAHVcFvJYjTqxlCaPu', NULL, '2020-01-05 18:56:41', '2020-01-05 18:56:41', NULL),
(45, 'Standard Global Private Ltd', 'standard44', NULL, 's00000044', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910044', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$cQCo6jO0TEMTazvAmZtRgu4QXZI5a5mSbYMub51TWHEg9WG638KEK', NULL, '2020-01-05 18:56:41', '2020-01-05 18:56:41', NULL),
(46, 'Standard Global Private Ltd', 'standard45', NULL, 's00000045', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910045', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$pIrr73f96OAmeoT2uIH.N.tYmH2ccQdbC1OTHymu2YBy44lwlSQ1O', NULL, '2020-01-05 18:56:41', '2020-01-05 18:56:41', NULL),
(47, 'Standard Global Private Ltd', 'standard46', NULL, 's00000046', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910046', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$r2hUwa0Hl11PdpBRz2yg1OfelVU9hW9VenkvjUqHFWS7skrYGKiQy', NULL, '2020-01-05 18:56:41', '2020-01-05 18:56:41', NULL),
(48, 'Standard Global Private Ltd', 'standard47', NULL, 's00000047', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910047', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$Qfnk.FBP3QOLT44yRIWqHu0RhhpxQpu1MsfG.jA0g3gO6HFgXSIh2', NULL, '2020-01-05 18:56:42', '2020-01-05 18:56:42', NULL),
(49, 'Standard Global Private Ltd', 'standard48', NULL, 's00000048', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910048', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$4b0wyUCNvqLQ.OW9D2pMd.v3DD0fApAdXLdZeW/wRsxnqhbrG8iym', NULL, '2020-01-05 18:56:42', '2020-01-05 18:56:42', NULL),
(50, 'Standard Global Private Ltd', 'standard49', NULL, 's00000049', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910049', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$00w6cczK4bMhOCV1CptLiufa5oSuHVsDdv6zmQzaVB3brkalncsci', NULL, '2020-01-05 18:56:42', '2020-01-05 18:56:42', NULL),
(51, 'Standard Global Private Ltd', 'standard50', NULL, 's00000050', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910050', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$jaLXQF3IhqT1ChaGereqE./p7i2XSmX5h14UCkSXBDhVNTGmSrCne', NULL, '2020-01-05 18:56:42', '2020-01-05 18:56:42', NULL),
(52, 'Standard Global Private Ltd', 'standard51', NULL, 's00000051', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910051', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$h2hTSVpfVB2j0jvkuEVEB.KU0LXATqOSGA5Ar5N9qgmHOEKf0AJlC', NULL, '2020-01-05 18:56:42', '2020-01-05 18:56:42', NULL),
(53, 'Standard Global Private Ltd', 'standard52', NULL, 's00000052', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910052', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$9AjF76.BaikCfZ8KDSMPyuPzrD7fRqD7v2JMpofTFZel9ei6oV9C.', NULL, '2020-01-05 18:56:42', '2020-01-05 18:56:42', NULL),
(54, 'Standard Global Private Ltd', 'standard53', NULL, 's00000053', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910053', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$eOARKrYzC7Bc5/X1Q2W13.teYsaXOWX3u6PP3u.eotDR31VvAjhxW', NULL, '2020-01-05 18:56:43', '2020-01-05 18:56:43', NULL),
(55, 'Standard Global Private Ltd', 'standard54', NULL, 's00000054', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910054', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$2D9RLHjZaTuwjprhmwDM2ea1K1hMGPJCFjipHgw4glyULRLKaGNJ2', NULL, '2020-01-05 18:56:43', '2020-01-05 18:56:43', NULL),
(56, 'Standard Global Private Ltd', 'standard55', NULL, 's00000055', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910055', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$FiWIFmaMtNs.CRLyhdTAG.U3i8Y9QkQw7KU1RCKsCl6kgbFbXzHgW', NULL, '2020-01-05 18:56:43', '2020-01-05 18:56:43', NULL),
(57, 'Standard Global Private Ltd', 'standard56', NULL, 's00000056', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910056', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$DL019Pa1u8ehE6kvoRO10uG1dcMhr.xKAD5X90N9O7GtBeuuAfxhu', NULL, '2020-01-05 18:56:43', '2020-01-05 18:56:43', NULL),
(58, 'Standard Global Private Ltd', 'standard57', NULL, 's00000057', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910057', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$O8Y1S1bHezfx3ufjBWI9auRO5A2kxsnPnNr.9GbSx6y3Jw30qJpoC', NULL, '2020-01-05 18:56:43', '2020-01-05 18:56:43', NULL),
(59, 'Standard Global Private Ltd', 'standard58', NULL, 's00000058', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910058', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$tSuXLWFb/wvpKSGKkLE14eTBQ0.K4uQacsy3TXk8oNARPOmBBIM3e', NULL, '2020-01-05 18:56:43', '2020-01-05 18:56:43', NULL),
(60, 'Standard Global Private Ltd', 'standard59', NULL, 's00000059', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910059', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$wdUVk50qDnacQQ4uwzbkDuw8DoG5642fAq//7sUOoJFmjIn/jY3Ne', NULL, '2020-01-05 18:56:44', '2020-01-05 18:56:44', NULL),
(61, 'Standard Global Private Ltd', 'standard60', NULL, 's00000060', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910060', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$H5IeQofwYxpUEvG11Nvh5.zZI9yrjpiAKwYpZFYvN3acW4FChn3CW', NULL, '2020-01-05 18:56:44', '2020-01-05 18:56:44', NULL),
(62, 'Standard Global Private Ltd', 'standard61', NULL, 's00000061', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910061', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$Nm3QmEwDYeS/y.T4WbLvKeEYA4erLNAv4kkaT7ie9vglDLLwwQHCG', NULL, '2020-01-05 18:56:44', '2020-01-05 18:56:44', NULL),
(63, 'Standard Global Private Ltd', 'standard62', NULL, 's00000062', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910062', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$U7tv3BmbWqjTv2fmWzdoHujkESklAFhSew8bExYEeesHaDT/EQ56K', NULL, '2020-01-05 18:56:44', '2020-01-05 18:56:44', NULL),
(64, 'Standard Global Private Ltd', 'standard63', NULL, 's00000063', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910063', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$rUaxJbG1G6EkjlJDVIux4.QN7xYRvvnmHaZVztA5.dl4fOq/N.tp6', NULL, '2020-01-05 18:56:44', '2020-01-05 18:56:44', NULL),
(65, 'Standard Global Private Ltd', 'standard64', NULL, 's00000064', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910064', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$/hM6/S2L7MmCkPns6SRBjubQeMHPiMZdTQvR.7u1jOhPDgxWXaY02', NULL, '2020-01-05 18:56:44', '2020-01-05 18:56:44', NULL),
(66, 'Standard Global Private Ltd', 'standard65', NULL, 's00000065', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910065', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$Pn0jOj9gcK/wsVqUeXAWf.YeFtHE5OudMa73m8mEgdEGNZaZ9Q97.', NULL, '2020-01-05 18:56:44', '2020-01-05 18:56:44', NULL),
(67, 'Standard Global Private Ltd', 'standard66', NULL, 's00000066', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910066', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$tbd/XwmuteX5qHMJQbIgEOsxr7T0IoPdroTIHRKDi3qi2024d1vs2', NULL, '2020-01-05 18:56:44', '2020-01-05 18:56:44', NULL),
(68, 'Standard Global Private Ltd', 'standard67', NULL, 's00000067', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910067', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$3YmC8DwkABwoQNbvBPJG.OW45LDNXbN/8l.OYmdJF2mYsw4ATo0u.', NULL, '2020-01-05 18:56:45', '2020-01-05 18:56:45', NULL),
(69, 'Standard Global Private Ltd', 'standard68', NULL, 's00000068', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910068', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$QetvH5B99mpRPwJ3nTHmnOQ2Kr9zLt9wsNYalk1.iEBFjMkZ5adyC', NULL, '2020-01-05 18:56:45', '2020-01-05 18:56:45', NULL),
(70, 'Standard Global Private Ltd', 'standard69', NULL, 's00000069', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910069', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$NXHeayhW.EFcMOnaSxQFwOGHRniSQkb3m1gpG/hTGjkAM27GaC6D2', NULL, '2020-01-05 18:56:45', '2020-01-05 18:56:45', NULL),
(71, 'Standard Global Private Ltd', 'standard70', NULL, 's00000070', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910070', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$Pw5aKOZ3Rh5bu/BvAocvveWL098HVJa8GWHKxvfTfS/zBwR1BKWSi', NULL, '2020-01-05 18:56:45', '2020-01-05 18:56:45', NULL),
(72, 'Standard Global Private Ltd', 'standard71', NULL, 's00000071', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910071', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$aKyxEUgC9cSZPsotULafWOpac3qTqWqDEtaSCFLFu/fGVR0s3Y5cy', NULL, '2020-01-05 18:56:45', '2020-01-05 18:56:45', NULL),
(73, 'Standard Global Private Ltd', 'standard72', NULL, 's00000072', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910072', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$P9CPNSLqMKeP9Idea.iud.qixhwXXKPhSYSIjdlNYnOOdSdxfrEGe', NULL, '2020-01-05 18:56:45', '2020-01-05 18:56:45', NULL),
(74, 'Standard Global Private Ltd', 'standard73', NULL, 's00000073', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910073', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$PsMT4RCZ2Ntxl3oVrTJfq.263HaP4YOFNifwiaug7vxdpT/OglFna', NULL, '2020-01-05 18:56:46', '2020-01-05 18:56:46', NULL),
(75, 'Standard Global Private Ltd', 'standard74', NULL, 's00000074', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910074', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$BC2lgfQreEecauuAh5Tnie2ml0MaXI7j.h0rJiNZAkOZrCPQeIsdi', NULL, '2020-01-05 18:56:46', '2020-01-05 18:56:46', NULL),
(76, 'Standard Global Private Ltd', 'standard75', NULL, 's00000075', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910075', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$N68BZWwN4wBY.mwO9xZ/N.cu.C7y84DljkdAe/SM8CRzaTIEKBPl6', NULL, '2020-01-05 18:56:46', '2020-01-05 18:56:46', NULL),
(77, 'Standard Global Private Ltd', 'standard76', NULL, 's00000076', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910076', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$hTb5qDUG1KmRiDfoMVvL7O/mhtqeR525eRJPmC7YkDqpYTa2RICOi', NULL, '2020-01-05 18:56:46', '2020-01-05 18:56:46', NULL),
(78, 'Standard Global Private Ltd', 'standard77', NULL, 's00000077', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910077', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$aV5wSUnQmBGJrFrYnrW1hOx5169.WBmnKK2WEZItNHQDurp3YunOG', NULL, '2020-01-05 18:56:46', '2020-01-05 18:56:46', NULL),
(79, 'Standard Global Private Ltd', 'standard78', NULL, 's00000078', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910078', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$qtTWlJGHX7v4zIt/lRkcFuZuIpBImy4KdTCfC5cmvQ8/nqYaVNkWi', NULL, '2020-01-05 18:56:47', '2020-01-05 18:56:47', NULL),
(80, 'Standard Global Private Ltd', 'standard79', NULL, 's00000079', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910079', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$/Kstu.a8DAD3VO1xFLDIWOCUIYSfazx32yCqYUnu7wjj0XrOzyudy', NULL, '2020-01-05 18:56:47', '2020-01-05 18:56:47', NULL),
(81, 'Standard Global Private Ltd', 'standard80', NULL, 's00000080', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910080', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$.p6mvpbULHLip1VO90km6e0Sy7W7Diqqc8diH3tqNny.QO3xPMxSK', NULL, '2020-01-05 18:56:47', '2020-01-05 18:56:47', NULL),
(82, 'Standard Global Private Ltd', 'standard81', NULL, 's00000081', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910081', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$Ygu8CQiAQadp8CIzuMDy0eN09HrwekEmtxEB689g.FXHB9Hk7kTB6', NULL, '2020-01-05 18:56:47', '2020-01-05 18:56:47', NULL),
(83, 'Standard Global Private Ltd', 'standard82', NULL, 's00000082', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910082', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$p5HczhAvq7Hwukp5RfNAKuTdfBTAlWhAll3Ev41EZnFhgQm0PgnhK', NULL, '2020-01-05 18:56:47', '2020-01-05 18:56:47', NULL),
(84, 'Standard Global Private Ltd', 'standard83', NULL, 's00000083', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910083', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$K5b35VFo/k1WyqfmMwuTi.QYLDF3RV/ekgIFb0lZ09zeh14y14fmG', NULL, '2020-01-05 18:56:47', '2020-01-05 18:56:47', NULL),
(85, 'Standard Global Private Ltd', 'standard84', NULL, 's00000084', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910084', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$9I3ErIMSIzYYAPhP3V9Je.n73EcE.DcZUGcuvEbsAH70BCsd5KV4K', NULL, '2020-01-05 18:56:47', '2020-01-05 18:56:47', NULL),
(86, 'Standard Global Private Ltd', 'standard85', NULL, 's00000085', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910085', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$VgRfFEsiYXJhueiE2grzK.SoOVLxF8VsUIYgQSyhs8o0QUXMVwO1e', NULL, '2020-01-05 18:56:47', '2020-01-05 18:56:47', NULL),
(87, 'Standard Global Private Ltd', 'standard86', NULL, 's00000086', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910086', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$0RqKI1MERXQFvHGXG/3kNuuVENSq9hnCi8LzfsKWTsFbkOKleAkfS', NULL, '2020-01-05 18:56:48', '2020-01-05 18:56:48', NULL),
(88, 'Standard Global Private Ltd', 'standard87', NULL, 's00000087', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910087', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$UdABdZLIXc0up4Sfriv.du6axyjraKTIADNuk4iFuP78cNsSIhCbq', NULL, '2020-01-05 18:56:48', '2020-01-05 18:56:48', NULL),
(89, 'Standard Global Private Ltd', 'standard88', NULL, 's00000088', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910088', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$QUhEIrEbb2w3V6684/HdmO6Xz47WgtfUhzbxjRM4rI6hHB1JUPxKC', NULL, '2020-01-05 18:56:48', '2020-01-05 18:56:48', NULL),
(90, 'Standard Global Private Ltd', 'standard89', NULL, 's00000089', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910089', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$oh9yaKjX.2x2Z7kKOAdHeeAxukwjF4bTQBHpt6UmmppF9RiH.78Fe', NULL, '2020-01-05 18:56:48', '2020-01-05 18:56:48', NULL),
(91, 'Standard Global Private Ltd', 'standard90', NULL, 's00000090', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910090', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$jQd1ft0rqHoJJiayU2jm6uEENUgf6vH0sTTt3KFC8J/JUK88lIHLC', NULL, '2020-01-05 18:56:49', '2020-01-05 18:56:49', NULL),
(92, 'Standard Global Private Ltd', 'standard91', NULL, 's00000091', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910091', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$bJ5goduV2o4rxg2NnMPQzO7CDYvimf4vj6nXSc/h7M277lV51VCp6', NULL, '2020-01-05 18:56:49', '2020-01-05 18:56:49', NULL),
(93, 'Standard Global Private Ltd', 'standard92', NULL, 's00000092', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910092', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$iJcRRyt0bZ6Ud6a7fuu36uEvQoyENPKk1b52aDilMaiJ8znvmA5aK', NULL, '2020-01-05 18:56:49', '2020-01-05 18:56:49', NULL),
(94, 'Standard Global Private Ltd', 'standard93', NULL, 's00000093', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910093', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$jc4784NG97I49.nlX7PhpeGnxpKx2FcEjDAzdwu6PkrHF6YhWsGiO', NULL, '2020-01-05 18:56:49', '2020-01-05 18:56:49', NULL),
(95, 'Standard Global Private Ltd', 'standard94', NULL, 's00000094', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910094', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$Dkd8cBrO6d9xtG/RosIwLe7l1CGFCwhkqt/Vlp7su8z7PGs9LNoQO', NULL, '2020-01-05 18:56:49', '2020-01-05 18:56:49', NULL),
(96, 'Standard Global Private Ltd', 'standard95', NULL, 's00000095', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910095', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$phAhchDA5u1AfFRwmDhC2ebBRoHMBh82SQnufDPyqrniHIDi43T32', NULL, '2020-01-05 18:56:49', '2020-01-05 18:56:49', NULL),
(97, 'Standard Global Private Ltd', 'standard96', NULL, 's00000096', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910096', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$mIoy/UT878bLqL02pcZv4Oq.SXLLHiZqiv9K4gLEXJ4FagDLrluOe', NULL, '2020-01-05 18:56:49', '2020-01-05 18:56:49', NULL),
(98, 'Standard Global Private Ltd', 'standard97', NULL, 's00000097', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '12345678910097', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$0/NnvacCGXyRQm3mZO5zxehpL4B6yiKdW.U.m8UjfmYc3s.1Eyc06', NULL, '2020-01-05 18:56:50', '2020-01-05 18:56:50', NULL),
(99, 'STANDARD GLOBAL', 'stdglobal', NULL, '01611227515', 'Shariatpur, Bangladesh', 'standardglobal.info20@gmail.com', NULL, '24', '5', '18', '6000', '123456', '12345678910098', NULL, NULL, NULL, 'stdglobal.jpg', 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$VfaQB8E0HzjRRy/46o5JgeVoTp7HDhmnd/Ecpoptzx2txc8/Vuhyq', NULL, '2020-01-05 18:56:50', '2020-03-27 04:45:35', NULL),
(100, 'STANDARD GLOBAL', 'stdglobal01', NULL, '01611227515', 'Shariatpur, Bangladesh', 'standardglobal.info20@gmail.com', NULL, '24', '5', '18', '6000', '123456', '12345678910099', NULL, NULL, NULL, 'abdullah01.jpg', 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$RtG.s/p2BS21y0HWi6dkue/KQ88Hi.OI46e7f900zd1r8.S776sWa', NULL, '2020-01-05 18:56:50', '2020-03-27 04:46:45', NULL),
(101, 'Standard Global Private Ltd', 'standard01', NULL, '000000001', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '123456789101', NULL, NULL, NULL, 'standard01.jpg', 'user', NULL, '2020-03-15', '5', NULL, '1', NULL, '$2y$10$1PkMzEMR2cZ1jDgKLxJvIe.u8dMoxB3I74w2vSjdL8905NGh1tTQ.', NULL, '2020-01-05 18:57:54', '2020-03-15 06:21:24', NULL),
(102, 'Standard Global Private Ltd', 'standard02', NULL, '000000002', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '15', '3', '18', '6000', '123456', '123456789102', NULL, NULL, NULL, 'standard02.jpg', 'user', NULL, '2020-03-15', '5', NULL, '1', NULL, '$2y$10$k8EopEsMXvWtGh2wIviH0uKBaURoOilYvJhuDHcc1UuXPITgE/i3W', NULL, '2020-01-05 18:57:55', '2020-03-15 06:54:32', NULL),
(103, 'Standard Global Private Ltd', 'standard03', NULL, '000000003', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '123456789103', NULL, NULL, NULL, 'standard03.jpg', 'user', NULL, '2020-03-17', '5', NULL, '1', NULL, '$2y$10$gNpJfVKZwt3hjzj841i3SeYh9/J9arAQf3WuUyiziKUNw0eTZmJvC', NULL, '2020-01-05 18:57:55', '2020-03-16 22:28:04', NULL),
(104, 'Standard Global Private Ltd', 'standard04', NULL, '000000004', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '123456789104', NULL, NULL, NULL, 'standard04.jpg', 'user', NULL, '2020-03-17', '5', NULL, '1', NULL, '$2y$10$pwxJQlMTS/wJaDJpLAjnEuVO3yFIr2YpWlt1O8S4NqAz1l9ed81WK', NULL, '2020-01-05 18:57:55', '2020-03-16 22:31:05', NULL),
(105, 'Standard Global Private Ltd', 'standard05', NULL, '000000005', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '123456789105', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$3RRK08pUQlsr7cPLr8vFVeANuBvL.7KqRHtHpFalAaCvM/g7zHGcO', NULL, '2020-01-05 18:57:55', '2020-01-05 18:57:55', NULL),
(106, 'Standard Global Private Ltd', 'standard06', NULL, '000000006', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '123456789106', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$l/EAfa.WAIc2q8ocy54gwuIjc4FHV9klS/OqMyD9Mcu9S9foJyVBe', NULL, '2020-01-05 18:57:55', '2020-01-05 18:57:55', NULL),
(107, 'Standard Global Private Ltd', 'standard07', NULL, '000000007', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '123456789107', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$cA0uTBQ/HRnj7eWcbmlb.ew85PdAGVJYwWOlyBwvEZ.Scd6dVgnCa', NULL, '2020-01-05 18:57:56', '2020-01-05 18:57:56', NULL),
(108, 'Standard Global Private Ltd', 'standard08', NULL, '000000008', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '123456789108', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$88gQqfAvgfahZTITs9OcWuUZmpSMzk7mLYTNyxC2Y/XPGCQq6GQ2W', NULL, '2020-01-05 18:57:56', '2020-01-05 18:57:56', NULL),
(109, 'Standard Global Private Ltd', 'standard09', NULL, '000000009', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '123456789109', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$7Jqcy1xwz.AeExGcSXFKBeugTh04hqj96yZQkZefZNpJoCN2h6NNa', NULL, '2020-01-05 18:57:56', '2020-01-05 18:57:56', NULL),
(110, 'Standard Global Private Ltd', 'standard010', NULL, '0000000010', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891010', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$dXtQaBnTZZhsNpn.PFXAGe/WTihgvEBT71eB.7tTaOCWb/m23sX.2', NULL, '2020-01-05 18:57:56', '2020-01-05 18:57:56', NULL),
(111, 'Standard Global Private Ltd', 'standard011', NULL, '0000000011', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891011', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$zkewj4gkVRe/Iv32vBj1d.R3zpyDhRil89I6EJ8BCnAjJufN9opzC', NULL, '2020-01-05 18:57:56', '2020-01-05 18:57:56', NULL),
(112, 'Standard Global Private Ltd', 'standard012', NULL, '0000000012', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891012', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$i9A2wmQ10jbG5EyePHCiEO0BQfzzKPC2WQdM7g/.L59gmj5BwDeUq', NULL, '2020-01-05 18:57:56', '2020-01-05 18:57:56', NULL),
(113, 'Standard Global Private Ltd', 'standard013', NULL, '0000000013', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891013', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$XTGrrM4d4wI79Pv7jUOvnuTPLRJ0iZtj2CGl/QNfXQ2/DL5LRDoEG', NULL, '2020-01-05 18:57:56', '2020-01-05 18:57:56', NULL),
(114, 'Standard Global Private Ltd', 'standard014', NULL, '0000000014', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891014', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$KHLbdYb6Q4x5.qaZvsP/K.1GmAh1HTxO/T/60U9b..bvYmoHtVuDe', NULL, '2020-01-05 18:57:57', '2020-01-05 18:57:57', NULL),
(115, 'Standard Global Private Ltd', 'standard015', NULL, '0000000015', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891015', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$yuOQA73O4I0sZk48G56wt.yPGb0XYGQKa1pSAqVFB1k1oVOMXURDe', NULL, '2020-01-05 18:57:57', '2020-01-05 18:57:57', NULL),
(116, 'Standard Global Private Ltd', 'standard016', NULL, '0000000016', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891016', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$zvUFhGhFkWI1Q/ggwH5fLe27C.VMtETQU5zt.b.bTHbwZO.GTQUuO', NULL, '2020-01-05 18:57:57', '2020-01-05 18:57:57', NULL),
(117, 'Standard Global Private Ltd', 'standard017', NULL, '0000000017', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891017', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$fJ2w0xge8FtAJg8J0BraKu4O7EY5K5SQzDniRpML0EDqNINhDRFN2', NULL, '2020-01-05 18:57:57', '2020-01-05 18:57:57', NULL),
(118, 'Standard Global Private Ltd', 'standard018', NULL, '0000000018', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891018', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$8.YEKR1AM0bS3Drj9Gfhh.p.EtFx4Wk0pK0N7McQTJ1g3yQl24NW6', NULL, '2020-01-05 18:57:57', '2020-01-05 18:57:57', NULL),
(119, 'Standard Global Private Ltd', 'standard019', NULL, '0000000019', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891019', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$SbuJCdPLKloN5HkdFdPC1OHN4ADgFGIWb5lssfWLz629/Ivdcxrda', NULL, '2020-01-05 18:57:57', '2020-01-05 18:57:57', NULL),
(120, 'Standard Global Private Ltd', 'standard020', NULL, '0000000020', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891020', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$fCZgcGpRmZBfy3B1xAcar.x2yKS734HDashxNygFZZTRngiQ.uyY.', NULL, '2020-01-05 18:57:57', '2020-01-05 18:57:57', NULL),
(121, 'Standard Global Private Ltd', 'standard021', NULL, '0000000021', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891021', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$7uUWXM/zQXZnwS358zkUdOpwT8L.ZCgB5KvXgfr/24xJ5rXWuH74m', NULL, '2020-01-05 18:57:57', '2020-01-05 18:57:57', NULL),
(122, 'Standard Global Private Ltd', 'standard022', NULL, '0000000022', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891022', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$17w.55gyV6AJzEE39kv1gOacpHZv6NRdJPIYdepEbiEYvA7gwm4/e', NULL, '2020-01-05 18:57:58', '2020-01-05 18:57:58', NULL),
(123, 'Standard Global Private Ltd', 'standard023', NULL, '0000000023', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891023', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$WU5e9zfN958KIu/0L4VN7.mbAU7tzZihuTZmNK/feK2.Bf6xLhOVe', NULL, '2020-01-05 18:57:58', '2020-01-05 18:57:58', NULL),
(124, 'Standard Global Private Ltd', 'standard024', NULL, '0000000024', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891024', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$d5D1iR5lwdClPSevAQwlg.0yLCKBRFm1jl5K3by.s236qM6GPZMGu', NULL, '2020-01-05 18:57:58', '2020-01-05 18:57:58', NULL),
(125, 'Standard Global Private Ltd', 'standard025', NULL, '0000000025', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891025', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$humyCz/n61Fej11P8.4Gier0XSSQrBS5SbQ6xHuvY8WSZiJ3Q7iWu', NULL, '2020-01-05 18:57:58', '2020-01-05 18:57:58', NULL),
(126, 'Standard Global Private Ltd', 'standard026', NULL, '0000000026', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891026', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$Yv6mBalXDJOOk.BbNUYu4u5RtD7rd4NfLUkQ23sBq5n3hgTiyzboG', NULL, '2020-01-05 18:57:58', '2020-01-05 18:57:58', NULL),
(127, 'Standard Global Private Ltd', 'standard027', NULL, '0000000027', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891027', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$mVAJcVDjWv9p1iXKCHOk7.N0d5a38Kf/W3EqAkKXtQuqELlWNOYr.', NULL, '2020-01-05 18:57:58', '2020-01-05 18:57:58', NULL),
(128, 'Standard Global Private Ltd', 'standard028', NULL, '0000000028', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891028', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$3BYrYovBcDMkZfi4Ko8Yg.b99HogSyt1XK.X2hjJNEN9p5h4lSoKq', NULL, '2020-01-05 18:57:58', '2020-01-05 18:57:58', NULL),
(129, 'Standard Global Private Ltd', 'standard029', NULL, '0000000029', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891029', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$EreqjGbAw5uAfMjICzQ1LOlOmONQ/XpQqXM9nk57XcLn2WYF2AT1u', NULL, '2020-01-05 18:57:59', '2020-01-05 18:57:59', NULL),
(130, 'Standard Global Private Ltd', 'standard030', NULL, '0000000030', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891030', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$bUof5JuNjPwJoTY6P9ZL2eIAyCpUSe4/jW2U5RNUihK9oCM/FNTSO', NULL, '2020-01-05 18:57:59', '2020-01-05 18:57:59', NULL),
(131, 'Standard Global Private Ltd', 'standard031', NULL, '0000000031', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891031', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$AzRmRHAa/37YZ1mnzgyI3.CUyrwbjQUH3.UIGXVAHNAFjuB.KcbeK', NULL, '2020-01-05 18:57:59', '2020-01-05 18:57:59', NULL);
INSERT INTO `users` (`id`, `name`, `username`, `company_name`, `phone`, `address`, `email`, `position`, `city`, `state`, `country`, `post_code`, `txn_pin`, `national_id`, `father_name`, `mother_name`, `nomine_name`, `profile_picture`, `user_type`, `is_signup_without_payment`, `is_premium`, `package_id`, `is_banned`, `register_by`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(132, 'Standard Global Private Ltd', 'standard032', NULL, '0000000032', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891032', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$ojEspys3AAjwt8iIBI9xbeV10D63mCHrc8hCEWN.j9EYhc38If94a', NULL, '2020-01-05 18:57:59', '2020-01-05 18:57:59', NULL),
(133, 'Standard Global Private Ltd', 'standard033', NULL, '0000000033', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891033', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$1MF5AoC16iNkSk4D2jcEeugGMQZX8Ea5otVyV6OF8HZn26B/bwWQi', NULL, '2020-01-05 18:57:59', '2020-01-05 18:57:59', NULL),
(134, 'Standard Global Private Ltd', 'standard034', NULL, '0000000034', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891034', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$6SCt3FJBRm6PhGBOeFHpDu.3lLi92ds7gsXjnsCJmoXmON3gaBQQy', NULL, '2020-01-05 18:58:00', '2020-01-05 18:58:00', NULL),
(135, 'Standard Global Private Ltd', 'standard035', NULL, '0000000035', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891035', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$UT5wrI4X6ElfBoalCW0pbeqPDf9jS5fAr7rsJxwdAYPQiAs.EzBtq', NULL, '2020-01-05 18:58:00', '2020-01-05 18:58:00', NULL),
(136, 'Standard Global Private Ltd', 'standard036', NULL, '0000000036', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891036', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$hcX.9iG34xwH3MCzq1DiYud0vTDHpb98fO8wiLJGX8w/94DONEGQ2', NULL, '2020-01-05 18:58:00', '2020-01-05 18:58:00', NULL),
(137, 'Standard Global Private Ltd', 'standard037', NULL, '0000000037', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891037', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$xw.Tw4Wb1Vu9e9HqOHZctuMFoU86zn3RIvczXYpb1zIwIn5oPUl1C', NULL, '2020-01-05 18:58:00', '2020-01-05 18:58:00', NULL),
(138, 'Standard Global Private Ltd', 'standard038', NULL, '0000000038', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891038', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$yXBOcnnvuvf3fyy39PIGBufvz0E1Sq4LxwR7iu2Wq4hRqzuhY6Nf.', NULL, '2020-01-05 18:58:00', '2020-01-05 18:58:00', NULL),
(139, 'Standard Global Private Ltd', 'standard039', NULL, '0000000039', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891039', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$RbtV8slTE0Ft0o92P9puO.Ignsptud/ZGf4wbqIUk7IDIBYPWesSi', NULL, '2020-01-05 18:58:01', '2020-01-05 18:58:01', NULL),
(140, 'Standard Global Private Ltd', 'standard040', NULL, '0000000040', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891040', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$TulJTWjj2h30xCWYJTU8ReH097o1HePGhMxvWQ4U7a1Dhyiw8YxZG', NULL, '2020-01-05 18:58:01', '2020-01-05 18:58:01', NULL),
(141, 'Standard Global Private Ltd', 'standard041', NULL, '0000000041', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891041', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$w6QZlnJ2utIHeFIRd09FaOq0NBsOXp8fOW3er6w0G0l/g7azZnT6u', NULL, '2020-01-05 18:58:01', '2020-01-05 18:58:01', NULL),
(142, 'Standard Global Private Ltd', 'standard042', NULL, '0000000042', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891042', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$KDVjGR8F/N5f.6jVIDQiRuFcOulK4ma1klagxnZS8itVptvIjS4uy', NULL, '2020-01-05 18:58:01', '2020-01-05 18:58:01', NULL),
(143, 'Standard Global Private Ltd', 'standard043', NULL, '0000000043', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891043', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$BHwyGviHpeWai3D0Pr2nD.t13jFs2wzCPJZyJGd/ct8Wwwm2J5tWm', NULL, '2020-01-05 18:58:01', '2020-01-05 18:58:01', NULL),
(144, 'Standard Global Private Ltd', 'standard044', NULL, '0000000044', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891044', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$gO6FC4yvmM/ooDI01xShUOBYnZkoxcpKHt.4.tIE4pMR0F1/xn2ty', NULL, '2020-01-05 18:58:01', '2020-01-05 18:58:01', NULL),
(145, 'Standard Global Private Ltd', 'standard045', NULL, '0000000045', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891045', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$ag3D81GjX/lqs3AugSsCV.ChiTfvA2roJ.APBfvsrjx3GtSG8Nvb.', NULL, '2020-01-05 18:58:01', '2020-01-05 18:58:01', NULL),
(146, 'Standard Global Private Ltd', 'standard046', NULL, '0000000046', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891046', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$PSEixNEmo8iw5N7boVhbl.T0VAcDn2xoTESK5QnVLknGcXt9uDGlW', NULL, '2020-01-05 18:58:02', '2020-01-05 18:58:02', NULL),
(147, 'Standard Global Private Ltd', 'standard047', NULL, '0000000047', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891047', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$coawUgob9FhSSNNezFuDgun7dzIYN8vUNA8ErRv8DBrwVk5xqwfI6', NULL, '2020-01-05 18:58:02', '2020-01-05 18:58:02', NULL),
(148, 'Standard Global Private Ltd', 'standard048', NULL, '0000000048', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891048', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$t01Cjin.IzR/TenqErRczubiFe3/ELSk1f2xBCsTQJBdJkZhU8dTG', NULL, '2020-01-05 18:58:02', '2020-01-05 18:58:02', NULL),
(149, 'Standard Global Private Ltd', 'standard049', NULL, '0000000049', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891049', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$QbPWkSiNVFIa136W/u9Wcex4u/d0SIVF4Vm8SI7MLGFQztGP2cc3y', NULL, '2020-01-05 18:58:02', '2020-01-05 18:58:02', NULL),
(150, 'Standard Global Private Ltd', 'standard050', NULL, '0000000050', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891050', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$eBocE7zfahfcPfNY8SjXjeZIJckhYlAgARdFfK/Cp1UnyYhTgiNjq', NULL, '2020-01-05 18:58:02', '2020-01-05 18:58:02', NULL),
(151, 'Standard Global Private Ltd', 'standard051', NULL, '0000000051', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891051', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$E7Gk92AxzPmt.4FV5p/Gy.8.BrGHwAT2uTYDsKEKCvKHyo9ZyzJ2K', NULL, '2020-01-05 18:58:02', '2020-01-05 18:58:02', NULL),
(152, 'Standard Global Private Ltd', 'standard052', NULL, '0000000052', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891052', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$2nWRUYOGCew.hviJXPr8c.E5s0B7XFOl94zuDrjVmjczScOI85t3.', NULL, '2020-01-05 18:58:03', '2020-01-05 18:58:03', NULL),
(153, 'Standard Global Private Ltd', 'standard053', NULL, '0000000053', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891053', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$Bf.u3gLUtwQcYjfSLwBNyubZaGm16wZxcjUEPlh3brdlgbIyD8vvW', NULL, '2020-01-05 18:58:03', '2020-01-05 18:58:03', NULL),
(154, 'Standard Global Private Ltd', 'standard054', NULL, '0000000054', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891054', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$ZlsMDQfEQhgxUFkQI98ESee.sHl4tizvRE9P9IKWBWQXCdADmQ5OO', NULL, '2020-01-05 18:58:03', '2020-01-05 18:58:03', NULL),
(155, 'Standard Global Private Ltd', 'standard055', NULL, '0000000055', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891055', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$xlLACjynd4RJG.DLPGxtCOqjyg5PRpUSfyfsEF8Lr4IsmHPV2J3Tm', NULL, '2020-01-05 18:58:03', '2020-01-05 18:58:03', NULL),
(156, 'Standard Global Private Ltd', 'standard056', NULL, '0000000056', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891056', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$2VcLlo0eVH889I7ZySswP.YFadxhyFaM7m/szdXll1l9bqdvaahuO', NULL, '2020-01-05 18:58:03', '2020-01-05 18:58:03', NULL),
(157, 'Standard Global Private Ltd', 'standard057', NULL, '0000000057', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891057', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$M3gAXf/z76Zo1kGmh8GKruxWYNzVBSEHy2AZifXaiarGh16WLnLaO', NULL, '2020-01-05 18:58:04', '2020-01-05 18:58:04', NULL),
(158, 'Standard Global Private Ltd', 'standard058', NULL, '0000000058', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891058', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$BDvyTbURDv8M1mIA/2EPGuMAJHqOrkUgZT.zLw8OuLRhcpNPavv1K', NULL, '2020-01-05 18:58:04', '2020-01-05 18:58:04', NULL),
(159, 'Standard Global Private Ltd', 'standard059', NULL, '0000000059', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891059', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$eQzJ395vcpac5wUaZLRGpeLNazq8QWzIH9ggVIaGCL6zwYC/UmH2a', NULL, '2020-01-05 18:58:04', '2020-01-05 18:58:04', NULL),
(160, 'Standard Global Private Ltd', 'standard060', NULL, '0000000060', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891060', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$hzyfuKCtdWRrTvu5iMVUd.4/NIB1cLhaAz6RY8icitxEArS2o7ePy', NULL, '2020-01-05 18:58:04', '2020-01-05 18:58:04', NULL),
(161, 'Standard Global Private Ltd', 'standard061', NULL, '0000000061', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891061', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$gPPz0a8h7BBPCV13bebddeD4HXnson4MiU9t6iC5e2cRo6e1OxlP.', NULL, '2020-01-05 18:58:04', '2020-01-05 18:58:04', NULL),
(162, 'Standard Global Private Ltd', 'standard062', NULL, '0000000062', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891062', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$PPyn8qcOWhfR4BB3hE4gU.8Vxkp5Pizgz0RTFrg81XbzVUv7HLOk6', NULL, '2020-01-05 18:58:05', '2020-01-05 18:58:05', NULL),
(163, 'Standard Global Private Ltd', 'standard063', NULL, '0000000063', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891063', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$44YAzKov52jh1NfEzX/CpevUtPwxusytMvMF9ppV0XHmExuD1KkU2', NULL, '2020-01-05 18:58:05', '2020-01-05 18:58:05', NULL),
(164, 'Standard Global Private Ltd', 'standard064', NULL, '0000000064', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891064', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$6x9DNn5rKXtY2DZYMg7LmugL1wdU7kvj/xJCEm38Txxur5KO6QESC', NULL, '2020-01-05 18:58:05', '2020-01-05 18:58:05', NULL),
(165, 'Standard Global Private Ltd', 'standard065', NULL, '0000000065', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891065', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$WbWI1xG.s1BqMstoX9fEzOfhkkrp0i//3gMYaFbIZmE3YUJvXYykC', NULL, '2020-01-05 18:58:05', '2020-01-05 18:58:05', NULL),
(166, 'Standard Global Private Ltd', 'standard066', NULL, '0000000066', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891066', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$tfSjn/mHLVAF1Q5e9Gq8zezd0/P2n6HnsmpqdOb5H8MhIqxErcHoK', NULL, '2020-01-05 18:58:05', '2020-01-05 18:58:05', NULL),
(167, 'Standard Global Private Ltd', 'standard067', NULL, '0000000067', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891067', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$WuA0h151ZKZEfSxE.W.2yuLwix.8I0iShNduuLs72Xfw3UmAv3vH2', NULL, '2020-01-05 18:58:05', '2020-01-05 18:58:05', NULL),
(168, 'Standard Global Private Ltd', 'standard068', NULL, '0000000068', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891068', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$C/oTbp16WJDVR/lXL3yHGu4k4Geqz2E3TnDEycDzPieIzt9FW/cFm', NULL, '2020-01-05 18:58:05', '2020-01-05 18:58:05', NULL),
(169, 'Standard Global Private Ltd', 'standard069', NULL, '0000000069', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891069', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$sTMPLjrXp376r1/PunQIbO6tjehaUIUnK5Hth3kgd5lXmHCpt4dWm', NULL, '2020-01-05 18:58:05', '2020-01-05 18:58:05', NULL),
(170, 'Standard Global Private Ltd', 'standard070', NULL, '0000000070', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891070', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$OFI13bTgc.p74JMXJAcDQuUaBsF6L3pptk6fds0g4ruHG89OCmszi', NULL, '2020-01-05 18:58:06', '2020-01-05 18:58:06', NULL),
(171, 'Standard Global Private Ltd', 'standard071', NULL, '0000000071', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891071', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$LZNc9Tw1GQMVTe8GcNFHPOmzR1jaEoVnOg5vCzOe.3pSoMRZr.Cyy', NULL, '2020-01-05 18:58:06', '2020-01-05 18:58:06', NULL),
(172, 'Standard Global Private Ltd', 'standard072', NULL, '0000000072', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891072', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$eQcTdRTXdp18QW5TiDibwuIGwpQkRVFasYLEgxSz7jXzkXhX89Bn6', NULL, '2020-01-05 18:58:06', '2020-01-05 18:58:06', NULL),
(173, 'Standard Global Private Ltd', 'standard073', NULL, '0000000073', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891073', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$7VF9DB6UNzX34ftpozlrU.BaUDzrL48osLyiLsX29VYN.LIeSGWl2', NULL, '2020-01-05 18:58:06', '2020-01-05 18:58:06', NULL),
(174, 'Standard Global Private Ltd', 'standard074', NULL, '0000000074', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891074', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$Cp5yWQiU3oh7cMTw3SzNde5wZPbGhCP1NJ9DAI4EABNJrhxkwnMcK', NULL, '2020-01-05 18:58:06', '2020-01-05 18:58:06', NULL),
(175, 'Standard Global Private Ltd', 'standard075', NULL, '0000000075', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891075', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$.OnPX/XEVZ8W9D2fzow2EehKaAQUkUPC7ZZTbAcz8atRi4AiTdX5i', NULL, '2020-01-05 18:58:06', '2020-01-05 18:58:06', NULL),
(176, 'Standard Global Private Ltd', 'standard076', NULL, '0000000076', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891076', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$gVqd0P03lH/.4ZWa2vyfv.l38V8J0y7UcKIec7ERfEpDoIm87H9l6', NULL, '2020-01-05 18:58:07', '2020-01-05 18:58:07', NULL),
(177, 'Standard Global Private Ltd', 'standard077', NULL, '0000000077', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891077', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$n0rp5j5ESW1YcXut.Aneg.7XfJM3P/Q/Rm7y/LdNKqmJHpacDPnrK', NULL, '2020-01-05 18:58:07', '2020-01-05 18:58:07', NULL),
(178, 'Standard Global Private Ltd', 'standard078', NULL, '0000000078', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891078', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$q8ma2eL5IVTVAuCB1rl7c.qJCiu8hz9VpbnOe3fkmzXoFiBah5JHS', NULL, '2020-01-05 18:58:07', '2020-01-05 18:58:07', NULL),
(179, 'Standard Global Private Ltd', 'standard079', NULL, '0000000079', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891079', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$8xDnAFuKrW50ebTSrN.MC.dtqoouRolL/Ata3lHVcrz4GV8cVbQSO', NULL, '2020-01-05 18:58:07', '2020-01-05 18:58:07', NULL),
(180, 'Standard Global Private Ltd', 'standard080', NULL, '0000000080', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891080', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$JdnZT2yzzC4tMeD/JXL7EuiEknFiFfUKKOmHu3r5dU8trSjZaVwk.', NULL, '2020-01-05 18:58:07', '2020-01-05 18:58:07', NULL),
(181, 'Standard Global Private Ltd', 'standard081', NULL, '0000000081', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891081', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$lsMWYSX2suTeWMFpuZDbxOv7fsrvKBNpjPmVJyL8Of9nciBajUoZG', NULL, '2020-01-05 18:58:07', '2020-01-05 18:58:07', NULL),
(182, 'Standard Global Private Ltd', 'standard082', NULL, '0000000082', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891082', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$lrp.1FJAzYP3h3TZx.MXT.y.Wy97vpU4f.H0uL80tfG72DEUABsqq', NULL, '2020-01-05 18:58:07', '2020-01-05 18:58:07', NULL),
(183, 'Standard Global Private Ltd', 'standard083', NULL, '0000000083', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891083', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$8X9ndPXwBAI5JVM8HFY7Re6.Lbd7xd6qybGoRlncGjMDXWfQw9lEe', NULL, '2020-01-05 18:58:08', '2020-01-05 18:58:08', NULL),
(184, 'Standard Global Private Ltd', 'standard084', NULL, '0000000084', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891084', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$CSMJQLgAbxovAogqbRVFhu9gbQ5EsbnJtZLG3q7Gq/Ktff8l2nV2e', NULL, '2020-01-05 18:58:08', '2020-01-05 18:58:08', NULL),
(185, 'Standard Global Private Ltd', 'standard085', NULL, '0000000085', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891085', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$Ukvt8i1RCSuAqF01x6ZyPu3CDzA2dkkbn9axNFeKs6uXW1pnSHkK.', NULL, '2020-01-05 18:58:08', '2020-01-05 18:58:08', NULL),
(186, 'Standard Global Private Ltd', 'standard086', NULL, '0000000086', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891086', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$6sq9i9x5bfZjT4.Pu4KyRu8LMcGv9jxteNMWDb5VRbB6U5xLdanyq', NULL, '2020-01-05 18:58:08', '2020-01-05 18:58:08', NULL),
(187, 'Standard Global Private Ltd', 'standard087', NULL, '0000000087', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891087', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$2s/Ulk3316.I0mH2RKWEAuvEpnz82eCVsFrm0kdX6gUlaQHSmTpMK', NULL, '2020-01-05 18:58:08', '2020-01-05 18:58:08', NULL),
(188, 'Standard Global Private Ltd', 'standard088', NULL, '0000000088', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891088', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$693s4wr0Kk6p0kyXmDfdxu43VncHQbM8cFyVmAmpEyYlF8eegHkxu', NULL, '2020-01-05 18:58:08', '2020-01-05 18:58:08', NULL),
(189, 'Standard Global Private Ltd', 'standard089', NULL, '0000000089', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891089', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$t8sShJdrotBehu0AOzYyxuTUFsCly0st8FBvc.Bf6AJrJPHVJxvRu', NULL, '2020-01-05 18:58:08', '2020-01-05 18:58:08', NULL),
(190, 'Standard Global Private Ltd', 'standard090', NULL, '0000000090', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891090', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$G/ISrhIP.DDtRbJ1nYJSF.QRbLj1GiLaRBFDEMKCF1bRuIEQ/3B2O', NULL, '2020-01-05 18:58:08', '2020-01-05 18:58:08', NULL),
(191, 'Standard Global Private Ltd', 'standard091', NULL, '0000000091', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891091', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$UhxegSlqm1X9JmTkswiEC.BpxQesg4tmkddlPs1/RufANiD2nDWai', NULL, '2020-01-05 18:58:08', '2020-01-05 18:58:08', NULL),
(192, 'Standard Global Private Ltd', 'standard092', NULL, '0000000092', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891092', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$tRaDgdqkdR2RQoslmOJohuTXSH3XN0FqEYD.MrguQrpamtzh2c0Wu', NULL, '2020-01-05 18:58:09', '2020-01-05 18:58:09', NULL),
(193, 'Standard Global Private Ltd', 'standard093', NULL, '0000000093', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891093', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$ObdixPGDIKmmsmABPcqILOOdeg0wl.SZJ3LSMrbzFGBBUzEDFP0FG', NULL, '2020-01-05 18:58:09', '2020-01-05 18:58:09', NULL),
(194, 'Standard Global Private Ltd', 'standard094', NULL, '0000000094', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891094', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$/kSQtHLVT9Ksq9U0/lZPVu4a3qApkpTDLTc2rUPeZBsO7kPmao/6m', NULL, '2020-01-05 18:58:09', '2020-01-05 18:58:09', NULL),
(195, 'Standard Global Private Ltd', 'standard095', NULL, '0000000095', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891095', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$JKp3UGzSV0ypQcH/co63mubZIeL5XwgmN0pxAgUc7mMRkNGKUzyIe', NULL, '2020-01-05 18:58:09', '2020-01-05 18:58:09', NULL),
(196, 'Standard Global Private Ltd', 'standard096', NULL, '0000000096', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891096', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$dJBKRTF3TPhhdWQhFE12guTD9sOSuEYN3AVCjSbKwL760tbZzjXl2', NULL, '2020-01-05 18:58:09', '2020-01-05 18:58:09', NULL),
(197, 'Standard Global Private Ltd', 'standard097', NULL, '0000000097', 'Shariatpur, Bangladesh', 'info@Standard Global Private Ltd', NULL, '24', '5', '18', '6000', '123456', '1234567891097', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$NSALfaYbTdiG6DQhxmW1EuFOzX7f4/...Bi2BRJr2cJoOdoYyD5uq', NULL, '2020-01-05 18:58:09', '2020-01-05 18:58:09', NULL),
(198, 'STANDARD GLOBAL', 'standardg', NULL, '01611227515', 'Shariatpur, Bangladesh', 'standardglobal.info20@gmail.com', NULL, '38', '1', '18', '6000', '123456', '111111111111111111111111', NULL, NULL, NULL, 'rashel2001.png', 'user', '10', '2020-01-29', NULL, NULL, '1', NULL, '$2y$10$WecMujU1uIaTNqJsmoMoa.67Y46uLjyY79zVv/1VRqNAQPn2TdScK', NULL, '2020-01-05 18:58:09', '2020-06-15 02:15:08', NULL),
(199, 'STANDARD GLOBAL', 'standardg1', NULL, '01611227515', 'Shariatpur, Bangladesh', 'standardglobal.info20@gmail.com', NULL, '24', '5', '18', '6000', '123456', '0000000000000000', NULL, NULL, NULL, 'rashel2002.png', 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$f6paZ/fV9AzKnVkIQiSKluxP3ztQOwgeyn8Migw13LGiOtVfIib7a', NULL, '2020-01-05 18:58:09', '2020-06-15 02:25:30', NULL),
(200, 'Foyez Mia', 'foyez', NULL, '01865519870', 'dhaka', 'foyez.sgapl2020@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '657867878', NULL, NULL, NULL, 'foyez.jpg', 'user', NULL, '2020-01-30', NULL, NULL, '1', NULL, '$2y$10$PEJaSHQKJpol8g/6iVHlJexfFBoF7Y11ydvkL6AxbGVuZGfRRjpAu', NULL, '2020-01-06 03:23:19', '2020-06-02 23:21:09', NULL),
(201, 'foyez mia', 'foyez1', NULL, '01865519870', NULL, 'foyez.sgapl2020@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '657867878780', NULL, NULL, NULL, 'foyez1.jpg', 'user', NULL, '2020-03-04', NULL, NULL, '200', NULL, '$2y$10$WoO8SsXoVi1Czee0nbpSY.SPB7Dd8TJSReEVJBydwx9WIAo.7eXHC', NULL, '2020-01-06 03:51:21', '2020-03-03 23:11:20', NULL),
(202, 'foyez mia', 'foyez2', NULL, '01865519870', NULL, 'foyez.sgapl2020@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '657867878781', NULL, NULL, NULL, 'foyez2.jpg', 'user', NULL, NULL, NULL, NULL, '200', NULL, '$2y$10$yiSP1tD0Ivq/M6Gy.lkv6ueHb0cIlA4SFB2jENbJ9N2kxqj/qI8c.', NULL, '2020-01-06 03:52:05', '2020-01-29 10:58:09', NULL),
(203, 'foyez mia', 'foyez3', NULL, '01865519870', NULL, 'foyez.sgapl2020@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '657867087878', NULL, NULL, NULL, 'foisal.jpg', 'user', NULL, NULL, NULL, NULL, '200', NULL, '$2y$10$Kf2CLQIGN1J3HT1y4Sz1.ubthw1ADzBizHyUiAlbbWoJYtZoMQnia', NULL, '2020-01-06 03:52:52', '2020-01-29 11:01:52', NULL),
(204, 'foisal mia', 'foyez4', NULL, '01865519872', NULL, 'foyez.sgapl2020@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '657860787878', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '200', NULL, '$2y$10$hRVUF4RdKL9dHDRQpYiy7O2o7xYK021f7mqDqy..3lMdwxRRtsK.K', NULL, '2020-01-06 03:53:35', '2020-01-06 03:53:35', NULL),
(205, 'foisal mia', 'foyez5', NULL, '01865519873', NULL, 'foyez.sgapl2020@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '657867870878', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '200', NULL, '$2y$10$eTi4AOuXbumx3/z7g/l2xui1cOPB8EHcDeYkJe.Ne22kAMli/p28q', NULL, '2020-01-06 03:54:19', '2020-01-06 03:54:19', NULL),
(206, 'AZIZUL ISLAM', 'abdullah', NULL, '01619827849', 'RADICAL HEALTH CARE 76/1 SKY VIEW K.BOX TOWER ,MANIKNAGAR,MUGHDA,DHAKA 1203', 'radicalhomoeo@gmail.com', NULL, '1', '3', '18', NULL, '123456', '6578787878', NULL, NULL, NULL, 'foyez6.jpg', 'user', '67', '2020-04-01', NULL, '2020-06-13', '200', NULL, '$2y$10$.7CzmfVpPHr7kfnxKtFqVetHtS0BlmjAGjIIr9SaoLgpldXjoh.ae', NULL, '2020-01-06 03:54:55', '2020-06-15 04:52:01', NULL),
(207, 'Rashedul Hasan Rashel', 'rashel2001', NULL, '01924168220', NULL, 'eng.rashel2001@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '6726819616208', NULL, NULL, NULL, 'rashel2001.jpg', 'user', NULL, '2020-06-15', NULL, NULL, '200', NULL, '$2y$10$kWkihMkAlutDALVu074q..2ziC4wKlN7Jxknkx9YwCPerya26npkG', NULL, '2020-01-06 03:55:33', '2020-06-15 02:21:40', NULL),
(208, 'STANDARD GLOBAL', 'standardglobal2', NULL, '01865519877', NULL, 'foyez.sgapl2020@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '6570887878', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '200', NULL, '$2y$10$ym2ooPhBNQ1.MLjrJf/Yh.wOdPPOLlKRr2w.niLL4397G0OW/xe66', NULL, '2020-01-06 03:56:25', '2020-04-01 07:52:10', NULL),
(209, 'STANDARD GLOBAL', 'standardglobal3', NULL, '01865519878', NULL, 'foyez.sgapl2020@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '6578602787878', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '200', NULL, '$2y$10$Fs1zZqI5Ngwq569tOGEmTen6ybxazOjfwVd5Acf7GO6DSNHAP5tPy', NULL, '2020-01-06 03:57:09', '2020-04-01 07:52:38', NULL),
(210, 'MD. ABDUL KARIM', 'mdkarim', NULL, '01825366364', NULL, 'standardglobal.info@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '7339415072', NULL, NULL, NULL, 'mdkarim.jpg', 'user', NULL, '2020-03-25', NULL, NULL, '200', NULL, '$2y$10$dpVn9XtQ3R.wOnyhF2p3Feac6jvui2chGhptQKlaLxLKDwyA86rQe', NULL, '2020-01-06 03:57:55', '2020-03-25 06:18:55', NULL),
(211, 'foyez mia', 'foyez01', NULL, '01865519870', NULL, 'foyez.sgapl2020@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '6578678427878', NULL, NULL, NULL, 'foyez01.jpg', 'user', NULL, NULL, NULL, NULL, '200', NULL, '$2y$10$xxFafWnu1SnllYGTYH2rQe0OHAhrNxo6ycJSe6P797jsS5W2/l7o.', NULL, '2020-01-06 03:59:38', '2020-02-09 13:08:29', NULL),
(212, 'foyez mia', 'foyez02', NULL, '018655198774', NULL, 'foyez.sgapl2020@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '65700787878', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '200', NULL, '$2y$10$GlK1bVP40lE0mwwBuuC3QuM1YRu38xDh9mfuzZKtr0cS.y0g9L1AG', NULL, '2020-01-06 04:00:28', '2020-01-06 04:00:28', NULL),
(213, 'foyez mia', 'foyez03', NULL, '01865519810', NULL, 'foyez.sgapl2020@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '614786787878', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '200', NULL, '$2y$10$q1AhKMfi0s/wZR.ESnc3s.ZjfS45ewZ8/W3mCnqqqWCxD.DVeVLDi', NULL, '2020-01-06 04:01:28', '2020-01-06 04:01:28', NULL),
(214, 'foyez mia', 'foyez04', NULL, '01865519801', NULL, 'foyez.sgapl2020@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '65786787845', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '200', NULL, '$2y$10$av9yKEBKDpmUllJcQymhDuWjYnIpXJOGlHSFPAvxMteSPsxb5OGoi', NULL, '2020-01-06 04:02:06', '2020-01-06 04:02:06', NULL),
(215, 'foyez mia', 'foyez05', NULL, '018655198750', NULL, 'foyez.sgapl2020@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '65781787878', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '200', NULL, '$2y$10$/H5Y2hfuse/BLcjg8rybke7m7t9xai7zt/07qhe8WHkcJplGlKgv6', NULL, '2020-01-06 04:02:48', '2020-01-06 04:02:48', NULL),
(216, 'foyez mia', 'foyez06', NULL, '018655198701', NULL, 'foyez.sgapl2020@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '65706787878', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '200', NULL, '$2y$10$DVVnVULfZ7sYPVkiOjD2..VXcskUrPavRMueWbGeKfonwdz/gCXN6', NULL, '2020-01-06 04:03:53', '2020-01-06 04:03:53', NULL),
(217, 'foyez mia', 'foyez07', NULL, '01865519811', NULL, 'foyez.sgapl2020@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '65786787802', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '200', NULL, '$2y$10$4nUqZ.iZowEr6pis9yOti.YWnCUePmJ.0C/9cbUDGXI7OU1LK/4qe', NULL, '2020-01-06 04:05:26', '2020-01-06 04:05:26', NULL),
(218, 'foyez mia', 'foyez08', NULL, '018655198702', NULL, 'foyez.sgapl2020@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '65786287878', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '200', NULL, '$2y$10$EjtOMFObtkCbhNXfcaQO8uwYzTUbfrmSWMYtGcixMK/Rd52ty/ILG', NULL, '2020-01-06 04:06:02', '2020-01-06 04:06:02', NULL),
(219, 'foyez mia', 'foyez09', NULL, '01865519802', NULL, 'foyez.sgapl2020@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '65786087878', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '200', NULL, '$2y$10$SmJI7NCQ16dEl5oVsTL9ZuEFrbezu.D4/BcBQXenTfzULZqyYub4W', NULL, '2020-01-06 04:06:46', '2020-01-06 04:06:46', NULL),
(220, 'FARZANA', 'akhifahim', NULL, '01785298104', NULL, 'standardglobal.info20@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '19948611443000202', NULL, NULL, NULL, 'foyez010.jpg', 'user', NULL, NULL, NULL, NULL, '200', NULL, '$2y$10$Myn6l8gwxtyAXd/0C6jdT.sS4L034bP8IalKge/rprFQFvwra8znS', NULL, '2020-01-06 04:07:35', '2020-06-16 00:48:38', NULL),
(221, 'ABU SHALEH MUSA ROCKY', 'rocky', NULL, '01629506365', NULL, 'asmrocky1996@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '20018611443102691', NULL, NULL, NULL, 'rocky.jpg', 'user', NULL, '2020-01-30', NULL, NULL, '1', NULL, '$2y$10$81TUycJ9M2K4IvybEnJs3urvdETqS1dvBX21VItdwOz/HN2qv2GPa', NULL, '2020-01-06 05:05:40', '2020-01-30 15:11:40', NULL),
(222, 'Mohammad Golam Mustafa', 'mgmustafa', NULL, '01671718384', NULL, 'anex.mgm@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '2695435973670', NULL, NULL, NULL, 'mgmustafa.jpg', 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$sikBaTj7cvs13NQj7gLCl.KA9MxavNdk7ezIaKWGHRXwvKGEFHZWu', NULL, '2020-01-06 06:04:51', '2020-01-06 06:05:35', NULL),
(223, 'KHAN HOQUE', 'khanh', NULL, '01920320973', NULL, 'khanhoquebd1971@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '65786787878', NULL, NULL, NULL, 'khanh.jpg', 'user', NULL, '2020-01-30', NULL, NULL, '1', NULL, '$2y$10$.Rug8XMEiRSB8RSbIoR6dOWeIonWjpC6DYJX0MBWC5c2P9bAhmj1u', NULL, '2020-01-06 06:14:43', '2020-01-30 15:13:19', NULL),
(224, 'KHAN HOQUE', 'khanh1', NULL, '019203209731', NULL, 'khanhoquebd1971@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '657787878', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$nJuWHzJ8bPY2IzoaPe8XHOBqe0BaWlRCOuLGKzuwC/Z2poA1HlBIO', NULL, '2020-01-06 06:16:46', '2020-01-06 06:16:46', NULL),
(225, 'KHAN HOQUE', 'khanh2', NULL, '019203209732', NULL, 'khanhoquebd1971@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '686787878', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$hNwsf5DHWWhnpX0qImYMGOlKVv.TQ5nLJVRNbZLY3CQ3FPjJwwkDm', NULL, '2020-01-06 06:17:34', '2020-01-06 06:17:34', NULL),
(226, 'MD MOSHIN KHAN', 'moshin', NULL, '01968268886', NULL, 'standardagrofood19@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '657887878', NULL, NULL, NULL, 'moshin.jpg', 'user', NULL, '2020-01-30', NULL, NULL, '1', NULL, '$2y$10$2Tujuvw093LhfyLn0gZlY.w4qkiQCJolCxsuV9zARHZfXm3TKArsq', NULL, '2020-01-06 06:19:22', '2020-01-30 15:15:40', NULL),
(227, 'AKHI AKTER', 'akhi', NULL, '01961397575', NULL, 'standardagrofood19@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '657860787', NULL, NULL, NULL, 'akhi.jpg', 'user', NULL, '2020-01-30', NULL, NULL, '1', NULL, '$2y$10$qpT7aywbCCx1mUokmc2vQOaRkwf3DwC5sDtt2pci11.5k6A2IzHNa', NULL, '2020-01-06 06:21:38', '2020-01-30 15:13:33', NULL),
(229, 'MD JAHIDUL HASAN', 'mjhasan', NULL, '01794918131', NULL, 'jahidhassan8131@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '65186787878', NULL, NULL, NULL, 'mjhasan.jpg', 'user', NULL, '2020-01-30', NULL, NULL, '227', NULL, '$2y$10$1BGWI.cDxj7MvsVMwwZ6FOyJkGBlrT.AsVBlJsyhpj9DfD7hFasLe', NULL, '2020-01-06 06:26:28', '2020-01-30 15:15:11', NULL),
(230, 'MD IQBAL MAHMUD', 'mimahmud', NULL, '01920104891', NULL, 'iqbal.mahmud1361@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '7328678573', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$wJfqXwBrQEQ9/EIV5McU6uLwG5ck.G6EVYZSgB5pVq3Mn9aohqZ7.', NULL, '2020-01-06 06:51:23', '2020-01-06 06:51:23', NULL),
(231, 'MUHAMMAD DALOWAR HOSSAIN', 'dalowarh', NULL, '01640495741', NULL, 'dalowarh88@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '657867800878', NULL, NULL, NULL, 'dalowarh.jpg', 'user', NULL, '2020-01-30', NULL, NULL, '223', NULL, '$2y$10$7BBk193DhCRNg38Ly0/RoerSwV39xkaG/FdOEBHIl6o.fhHCx.gku', NULL, '2020-01-06 06:58:16', '2020-01-30 15:16:45', NULL),
(232, 'MD JAHANGIR HOSSAIN', 'jahangirh', NULL, '01912955258', NULL, 'mdjahangir3112@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '2699040721769', NULL, NULL, NULL, NULL, 'user', NULL, '2020-01-30', NULL, NULL, '223', NULL, '$2y$10$/1HsKZxtsqiTO0kr1RpPsu.LK2NiQ/IBMeSOxf9mdvrefni4GKBwC', NULL, '2020-01-06 07:04:28', '2020-01-30 15:14:52', NULL),
(233, 'MIZANUR RAHMAN', 'mizanur', NULL, '01883847912', NULL, 'standardagrofood19@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '7357896815', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '223', NULL, '$2y$10$ukkni4kR5Mnb0IY2bWmPTO9m4vLIOEf/UfZV010kD1eQj9.hNduGe', NULL, '2020-01-06 07:06:18', '2020-01-06 07:06:18', NULL),
(234, 'MD MASUD KHAN', 'mmkhan', NULL, '01861725840', NULL, 'masud.khandpsc@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '2398284279', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '223', NULL, '$2y$10$usMVEneQF6i80z/wKJbAYe2NesQyDZeYfT3LZNnvJ1MqLS/0h8/EC', NULL, '2020-01-06 07:08:21', '2020-01-06 07:08:21', NULL),
(235, 'STANDARD GLOBAL', 'winner', NULL, '01924713232', NULL, 'standardglobal.info20@gmail.com', NULL, '15', '3', '18', NULL, '123456', '012254555', NULL, NULL, NULL, 'winner.jpg', 'user', NULL, '2020-03-08', NULL, NULL, '1', NULL, '$2y$10$oyRitlicwoLTC4gax2TR5.n1KysZwS9P4E4Kpd3D44W8BXT1b8C/y', NULL, '2020-01-06 07:22:26', '2020-05-13 01:34:11', NULL),
(236, 'MD BADRUL HOHEN', 'badrul', NULL, '01797002748', NULL, 'mdbadrulhosen@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '20010616983108059', NULL, NULL, NULL, 'badrul.jpg', 'user', NULL, '2020-01-30', NULL, NULL, '1', NULL, '$2y$10$hO0YJOPsLBsCE2j1i8rfNODDgi0qokTWRP1GlxaKNjwLxDH3jnJZu', NULL, '2020-01-06 07:25:29', '2020-01-30 15:14:31', NULL),
(237, 'ROMAN AHMED', 'roman', NULL, '01645646442', NULL, 'standardagrofood19@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '12012020', NULL, NULL, NULL, 'roman.jpg', 'user', NULL, '2020-01-30', NULL, NULL, '200', NULL, '$2y$10$fNOdFYsyD/0VIR2r/UR50eXwzBJG1IXjLSX9qGnm.E5ZiSh9g1Y3K', NULL, '2020-01-12 12:11:57', '2020-01-30 15:12:23', NULL),
(238, 'MD. SUZAN MIA', 'suzan', NULL, '01922580681', NULL, 'meherbniloy@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '215647896', NULL, NULL, NULL, 'suzan.jpg', 'user', NULL, '2020-01-30', NULL, NULL, '1', NULL, '$2y$10$GCjQcFrsSILC6L3DELKNaObmoau2SpMVDdTOLTVFF1Nk5HwNO9.Iy', NULL, '2020-01-25 06:30:02', '2020-01-30 15:16:11', NULL),
(239, 'MD. HABIBUR RAHMAN', 'habibur1', NULL, '01676297708', NULL, 'standardagrofood19@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '01.01.1988', NULL, NULL, NULL, 'habibur.jpg', 'user', NULL, '2020-01-30', NULL, '2020-03-03', '1', NULL, '$2y$10$YRkb/3hh4hkCfTuFPptsGuuPcnH0tODAohZSF5a4dwOC.PwQASxxm', NULL, '2020-01-25 06:32:16', '2020-03-03 11:12:35', NULL),
(240, 'MD. FAHADUL ISLAM', 'fahadul1', NULL, '0', NULL, 'standardagrofood19@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '19986725509030883', NULL, NULL, NULL, 'fahadul.jpg', 'user', NULL, NULL, NULL, NULL, '239', NULL, '$2y$10$KWO0pRhCkOUQl8.MkhbgkO3UMjfR8JUr8yUJ45DHMURRl3gJ/gmoO', NULL, '2020-01-25 06:35:44', '2020-03-03 09:56:43', NULL),
(241, 'Mst. FATEMA AKTER', 'fatema1', NULL, '02', NULL, 'standardagrofood19@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '2828225140', NULL, NULL, NULL, 'fatema.jpg', 'user', NULL, NULL, NULL, NULL, '239', NULL, '$2y$10$.B4TdC.1fA1SLMH9Rk0B6OEK4DJPDtw93h7vzRgQEbfrUEY7v2MMi', NULL, '2020-01-25 06:40:45', '2020-03-03 09:57:27', NULL),
(242, 'test1', 'test1', NULL, '01611227515', NULL, 'standardagrofood19@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '0213255888', NULL, NULL, NULL, NULL, 'user', '4', NULL, NULL, NULL, '1', NULL, '$2y$10$BQ9dHCPiIx/a6eKBpWygr.rZZg4FW0nYeiD1UqFGvDn6.VQ1dpgMO', NULL, '2020-01-28 16:39:36', '2020-04-22 06:17:41', NULL),
(243, 'Fazle Rabbi', 'Rabbi', NULL, '01904845171', NULL, 'fazle474@gmail.com', NULL, '15', 'opt1', '18', NULL, '123456', '4567886543', NULL, NULL, NULL, 'Rabbi.jpg', 'user', NULL, '2020-03-21', '6', NULL, '1', NULL, '$2y$10$yaE6q53VKbkY8ZM1lTZ0p.MQbrzf8reUX1lJlZZAwL0XCL0mMlTwa', NULL, '2020-02-03 06:34:20', '2020-03-21 01:42:48', NULL),
(244, 'Amit Ahmed Tirtho', 'Amit', NULL, '01959965633', 'Sakhipur', 'amitahmed453@gmail.com', NULL, '15', '3', '18', NULL, '123456', '456788654', NULL, NULL, NULL, 'Amit.jpg', 'user', NULL, '2020-03-18', '6', NULL, '1', NULL, '$2y$10$TdFOg9tXlZG1G7QtSGGI5OovDE0ArxiTtJDd16a2bWGKPgzpGt0/y', NULL, '2020-02-03 06:38:24', '2020-03-18 10:09:24', NULL),
(245, 'Rafiqul Sarkar', 'Rafiqul', NULL, '01794183345', NULL, 'standardglobal.info20@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '0231546987', NULL, NULL, NULL, 'Rafiqul.jpg', 'user', NULL, '2020-02-18', NULL, NULL, '1', NULL, '$2y$10$MqxxUscGhFImWJzB8ZkgvuweWB0cj6WhTEM3Cekn5H8W1SFs2mZSq', NULL, '2020-02-18 16:35:03', '2020-02-18 16:38:43', NULL),
(246, 'Md. Arif', 'Arif', NULL, '01920583723', NULL, 'standardglobal.info20@gmail.com', NULL, '15', '3', '18', NULL, '123456', '6678888888', NULL, NULL, NULL, 'Arif.jpg', 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$Kn9s1PrYCbiUEA0OJl.Uh.Mt8Bg1YIcZPwd.I4TRIkMEg2bftqdqe', NULL, '2020-02-20 05:12:36', '2020-02-20 12:47:32', NULL),
(247, 'Mehedi Hasan Sardar', 'mehedi', NULL, '01798206496', 'Char shakhipur', 'standardglobal.info20@gmail.com', NULL, '15', '3', '18', NULL, '123456', '25091998', NULL, NULL, NULL, 'mehedi.png', 'user', NULL, '2020-03-06', '6', NULL, '1', NULL, '$2y$10$Y8uAhWA1MkH6YuS.4UjBO.7719..QPPCP7E.qKiZNR9QDdeSSoGLe', NULL, '2020-02-20 06:34:59', '2020-06-16 22:50:41', NULL),
(248, 'Standard Global AgroCos & Toiletries', 'standard', 'Standard e-Shop (dhk01)', '01924713232', 'Dhaka Office: 74/3/1 Atish Dipankar Road, Sabujbagh, Basabo,Dhaka-1214.                             Email:standardglobal.info20@gmail.com website:www.standardpltd.com                                                                                                               Branch Office: Shakhipur Bazar Molla Market, Rafiqule Islam Tower, (4th Floor) Shakhipur Shariatpur.', 'standardglobal.info20@gmail.com', NULL, '1', '3', '18', '1214', 'foisal', '8611443496932', NULL, NULL, NULL, 'standard.png', 'dealer', NULL, '2020-02-20', NULL, NULL, '8611443496932', NULL, '$2y$10$N7HOQR9LWxlJxTDiOVUbuez3b8WZ77/lpalP9WXKqmaRDuo4sZvGG', NULL, '2020-02-20 11:13:20', '2020-06-15 04:02:27', NULL),
(249, 'MD. ABDUL KARIM', 'eshop.com', 'Karim eShop (ctg)', '01825366364', 'Shomser Sowdegor Bari, Ghomannordon, Hathazari, Chottogram-4330', 'Karimmd07@gmail.com', NULL, '43', '2', '18', '4330', '123456', '7339415072', NULL, NULL, NULL, 'eshop.com.png', 'dealer', NULL, '2020-02-21', NULL, NULL, '7339415072', NULL, '$2y$10$SROef5jrQBKxVOdQ2/7jZulCN7DyzoPhhykZczQtLmbsTos98a.wS', NULL, '2020-02-21 16:42:59', '2020-06-02 00:17:08', NULL),
(250, 'Standard E-Shop.com2', 'standardeshop.com2', NULL, '01629506365', 'DM KHALI BAZAR, Shakhipur, Shariatpur, Bangladesh-8030', 'asmrocky1996@gmail.com', NULL, '15', '3', '18', '8030', '123456', '20018611443102691', NULL, NULL, NULL, 'upload/user/standardeshop.com2.jpg', 'dealer', NULL, '2020-02-21', NULL, NULL, '1', NULL, '$2y$10$D00rQJBkM1R9zLesYO6c3eaUEQ8h8FupJkI.tS9cx5TpMxAXYKIcy', NULL, '2020-02-21 16:58:01', '2020-02-21 16:58:01', NULL),
(251, 'MD. HABIBUR RAHMAN', 'chhall', 'CHAPAI HOMEO HALL', '01676297708', 'Jalkuri koroetola, Siddirganj, Narayanganj-1430', 'standardglobal.info20@gmail.com', NULL, '11', '3', '18', '1430', '12345678', '01011988', NULL, NULL, NULL, 'upload/user/chhall.jpg', 'dealer', NULL, '2020-02-22', NULL, NULL, '01011988', NULL, '$2y$10$ovlVM7EIRS4rDST0lLh5He0zfPJfbNDbWHzBv/u.H.4ecRdk.6xG.', NULL, '2020-02-22 13:28:28', '2020-03-15 06:47:01', NULL),
(252, 'NIROB HOSSAIN', 'nirob', NULL, '01909867765', NULL, 'standardglobal.info20@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '44744447', NULL, NULL, NULL, 'nirob.jpg', 'user', NULL, '2020-03-07', '6', NULL, '1', NULL, '$2y$10$BSCGLbP390naT.smQEH1Je9pdwgvcSn9hz3KEHFH8.yVyD/VAw/ry', NULL, '2020-02-28 05:41:23', '2020-03-07 10:34:10', NULL),
(253, 'Azharul Hoque', 'azharul', NULL, '01872163286', NULL, 'standardglobal.info20@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '546565454', NULL, NULL, NULL, 'azharul.jpg', 'user', NULL, '2020-03-06', '6', NULL, '1', NULL, '$2y$10$PG8dCqt1MvNDVodXGKQrA.nV5HXKTXMQyYJ1tH.YTdmcBnkyCS61.', NULL, '2020-02-28 05:49:24', '2020-03-09 10:53:23', NULL),
(254, 'Atikur Rahman Sakib', 'sakib', NULL, '01887796587', NULL, 'standardglobal.info20@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '6565548545', NULL, NULL, NULL, 'sakib.jpg', 'user', NULL, '2020-03-07', '6', NULL, '1', NULL, '$2y$10$lAN3OT/0sIG3ujKmZwBiLOoa/GPOFMxOVyxy/Vb514q1eso3yM4t2', NULL, '2020-02-28 05:54:12', '2020-03-12 23:40:00', NULL),
(255, 'Md. Habibur Rahman', 'habibur', NULL, '01676297708', NULL, 'standardglobal.info20@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '01.01.1988', NULL, NULL, NULL, 'habibur.jpg', 'user', NULL, '2020-03-03', NULL, NULL, '1', NULL, '$2y$10$7jbFrmLZUW7I8UE4h.AGW.q/fSU1QkNesctSlh9b0ylgcjLfAAwgK', NULL, '2020-03-03 09:52:02', '2020-03-03 11:13:05', NULL),
(256, 'MD. FAHADUL ISLAM', 'fahadul', NULL, '01980983438', NULL, 'standardglobal.info20@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '19986725509030883', NULL, NULL, NULL, 'fahadul.jpg', 'user', NULL, '2020-03-03', '6', NULL, '1', NULL, '$2y$10$3YG.ndc5J2edgeEzqu7T2ua2L7w0wi/nAMig4Z6bL.VY7VeJamoNm', NULL, '2020-03-03 09:56:49', '2020-03-03 11:14:42', NULL),
(257, 'Mst. FATEMA AKTER', 'fatema', NULL, '01999255880', NULL, 'standardglobal.info20@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '2828225140', NULL, NULL, NULL, 'fatema.jpg', 'user', NULL, '2020-03-03', '6', NULL, '1', NULL, '$2y$10$yAjYgjRfmMp6hAq2eSznSem592P.lnBtuYuyR5.ISg925l2sRFvP2', NULL, '2020-03-03 09:58:56', '2020-03-03 11:15:57', NULL),
(258, 'Robin', 'robin', NULL, '01814958471', NULL, 'mdrobiulislam01814@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '25.10.2000', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$mhtu.zzt.FB9pxyTLM6MieSMngVj/Drc5z5/H3eeFG0MCoME1WFFK', NULL, '2020-03-05 23:49:14', '2020-03-05 23:49:14', NULL),
(259, 'DOLON', 'dolon', NULL, '01997332862', NULL, 'standardglobal.info20@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '66666555666', NULL, NULL, NULL, 'dolon.jpg', 'user', NULL, '2020-03-13', '6', NULL, '1', NULL, '$2y$10$JazAeVQG8NCBbzk2xGvDQ.HF8iIUHPW7k/ekeIRCvzsrOS6RQbuoS', NULL, '2020-03-06 21:45:10', '2020-05-13 00:22:32', NULL),
(260, 'MONIR', 'monir', NULL, '01924713232', NULL, 'standardglobal.info20@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '20-03-1999', NULL, NULL, NULL, 'monir.jpg', 'user', NULL, '2020-06-12', '6', NULL, '1', NULL, '$2y$10$uxL1cjEWpOFqIShMAtmD5OmlFqHJSJ.i0sQm9FRHX68WzGzWhVJDu', NULL, '2020-03-06 21:50:11', '2020-06-12 00:12:07', NULL),
(261, 'Mehedi Hasan sardar', 'Mehedi1', NULL, '01798206496', NULL, 'Dreamlife22@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '25/9/95', NULL, NULL, NULL, 'Mehedi1.png', 'user', NULL, NULL, NULL, NULL, '247', NULL, '$2y$10$Jad6PVfzptEDEDSnaSV5DOlpq7G49qLO831IHdVBj728fBUXtcBOq', NULL, '2020-03-06 22:24:58', '2020-05-29 23:06:40', NULL),
(262, 'SOJIB KHAN', 'sojib', NULL, '01732214106', NULL, 'standardglobal.info20@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '46549878', NULL, NULL, NULL, 'sojib.jpg', 'user', NULL, '2020-03-16', '6', NULL, '1', NULL, '$2y$10$lwI9iCzEF1gFRBb0DuKBZu/m1rcIsQkysrt7Fqm6c8.Wu1dY2bXTq', NULL, '2020-03-09 03:39:27', '2020-03-16 06:43:05', NULL),
(263, 'SUJON', 'sujon', NULL, '01756077163', NULL, 'standardglobal.info20@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '656445425', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$CRD1VpSujJ3AS6m1FZSYv.LklGygufpeco5RKNJv2yIsGsSClhJLu', NULL, '2020-03-09 03:40:45', '2020-03-09 03:40:45', NULL),
(264, 'SOWROVE', 'sowrove', NULL, '01743567119', 'Shakipur', 'standardglobal.info20@gmail.com', NULL, '15', '3', '18', NULL, '123456', '6564545', NULL, NULL, NULL, 'sowrove.jpg', 'user', NULL, '2020-03-13', '6', NULL, '1', NULL, '$2y$10$maqjTqb3DBdys06x51cVFupe0bvmgNgkcekB8xpxM/ViqKcKsfCXy', NULL, '2020-03-09 03:42:16', '2020-05-30 02:09:32', NULL),
(265, 'MD:ABDUL KARIM', 'Karim', NULL, '01825366364', NULL, 'Karimmd07@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '17-09-1994', NULL, NULL, NULL, 'Karim.jpg', 'user', NULL, '2020-03-11', NULL, NULL, '210', NULL, '$2y$10$5NRsKPbexeTJaDns1mCQvOfjaxjRyzNYs4EqNZ7ib1OQmLdeCGkvG', NULL, '2020-03-11 01:55:19', '2020-03-21 08:12:59', NULL);
INSERT INTO `users` (`id`, `name`, `username`, `company_name`, `phone`, `address`, `email`, `position`, `city`, `state`, `country`, `post_code`, `txn_pin`, `national_id`, `father_name`, `mother_name`, `nomine_name`, `profile_picture`, `user_type`, `is_signup_without_payment`, `is_premium`, `package_id`, `is_banned`, `register_by`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(266, 'MD:ABDUL KARIM', 'Dreamster', NULL, '01818104017', NULL, 'Karimmd07@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '199419', '7339415072', NULL, NULL, NULL, 'Dreamster.jpg', 'user', NULL, '2020-05-30', NULL, NULL, '265', NULL, '$2y$10$C2jCHYZ6JHblhBvto3c2VeqRsvKxkvlpEJQ3JYsau9XsYnrmFmkZ6', NULL, '2020-03-11 08:58:47', '2020-05-30 02:20:58', NULL),
(267, 'MD RUBEL', 'rubel', NULL, '01309576940', NULL, 'standardglobal.info20@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '56655555555', NULL, NULL, NULL, 'rubel.jpg', 'user', NULL, '2020-03-14', '6', NULL, '1', NULL, '$2y$10$ksiLlc.k6jZO5Bc7FOHXIuR0mhZgkXYs1KNxWPKNHg8ocoXCuylh.', NULL, '2020-03-12 23:26:43', '2020-03-14 10:32:46', NULL),
(268, 'MAHIR ABDULLAH', 'Mahir', NULL, '01312047519', NULL, 'standardglobal.info20@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '665567755566', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$9LJqx9mM1.2js1TCjC/d0ePW4BMfq2VgZa1ODHqmw.86iJCQHf.Hu', NULL, '2020-03-12 23:29:25', '2020-03-12 23:29:25', NULL),
(269, 'MD: MAINUDDIN', 'mainuddin', NULL, '01729174477', NULL, 'standardglobal.info20@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '2509199899', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$3YfWGIqsMi0Q5DB9iYNevOY6Zr4dvYorklPPjypbxuFzxBKiyIfMe', NULL, '2020-03-12 23:38:49', '2020-03-12 23:38:49', NULL),
(270, 'TUHIN MOLLIK', 'tuhin', NULL, '01315308118', NULL, 'standardglobal.info20@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '2509199877', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$13Woc5ZXLvsVl.v0j5eyPuoZUeNYvXBf4M.47JZ30C890qOGELfI6', NULL, '2020-03-12 23:40:40', '2020-03-12 23:40:40', NULL),
(271, 'RAYHAN', 'rayhan', NULL, '01318695055', NULL, 'standardglobal.info20@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '2509199844', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$qDJunAWoJIxGpR59lxqh7uHeDX1hcafzvQPqDfa5rlxHDhy4rE9sO', NULL, '2020-03-12 23:44:08', '2020-03-12 23:44:08', NULL),
(272, 'OMORSHANY', 'omor', NULL, '01778757223', NULL, 'b.m.exclusivesanny223@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '6775677777', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$6VqsN878GC6U2lZha/BBqepQPpsFGkHuHMLt4vZp0ukb.lNT3zI9O', NULL, '2020-03-13 07:27:20', '2020-03-13 07:27:20', NULL),
(273, 'Md:Hossen', 'HossenCtg', NULL, '01840142528', NULL, 'Karimmd07@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '2007153319002092', NULL, NULL, NULL, NULL, 'user', NULL, '2020-05-30', NULL, NULL, '265', NULL, '$2y$10$RzB0UiO/3A5J26reSDX4Au3li9JjoRIkvdBJpyDR00IJGAw2.Oqui', NULL, '2020-03-14 00:52:47', '2020-05-30 02:13:57', NULL),
(274, 'MD:Imran', 'ImranCtg', NULL, '01878147953', NULL, 'Karimmd07@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '20021513319103968', NULL, NULL, NULL, 'ImranCtg.jpg', 'user', NULL, '2020-05-30', NULL, NULL, '265', NULL, '$2y$10$15iR3Ot5iPwui8lv/kLNKOFTTD6VMGk3RjZYRjh9HMkfui5UAzFAG', NULL, '2020-03-14 00:59:12', '2020-05-30 02:14:12', NULL),
(275, 'Afroja Akter', 'AfrojaCtg', NULL, '01798773104', NULL, 'Karimmd07@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '1954159263', NULL, NULL, NULL, 'AfrojaCtg.jpg', 'user', NULL, '2020-05-30', NULL, NULL, '265', NULL, '$2y$10$Irzxgr8fU0lVHpCwpF18HOlKEurUswg2s5IVHG.aoWJOjZFxekvZK', NULL, '2020-03-14 01:14:30', '2020-05-30 02:14:48', NULL),
(276, 'Sabrina Akter', 'SabrinaCtg', NULL, '01812766360', NULL, 'Karimmd07@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '20031517412011981', NULL, NULL, NULL, 'SabrinaCtg.jpg', 'user', NULL, '2020-05-30', NULL, NULL, '265', NULL, '$2y$10$g7S12hbJNYIlkpIaMQRLNONtFH148rRdcybwxoEnScSBA.2yWdZ9u', NULL, '2020-03-14 01:19:34', '2020-05-30 02:15:50', NULL),
(277, 'Asma Akter Afrin', 'AsmaCtg', NULL, '01882108973', NULL, 'Karimmd07@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '20021513338100064', NULL, NULL, NULL, 'AsmaCtg.jpg', 'user', NULL, '2020-05-30', NULL, NULL, '265', NULL, '$2y$10$/2dfJ62K/erpPeAJwp94m.YH4MF9urMMB6HjZ2eWK5oUuBEYRKCZG', NULL, '2020-03-14 01:25:17', '2020-05-30 02:16:07', NULL),
(278, 'MD. ISHAQUE MIAH', 'ishaque', NULL, '01736078020', NULL, 'standardglobal.info20@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '1590698696454', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$s/QOID4M1RXfVc7gIcoA5.DLXG5H0h0hT28w5UXyLiaRR6WaJOhqK', NULL, '2020-03-15 06:10:27', '2020-03-15 06:10:27', NULL),
(279, 'SAYAD NAIM', 'naim', NULL, '017360780200', NULL, 'standardglobal.info20@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '4207916612', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$VsaLwD0ewD5zGEUW/a6SBOABDOFcIPI.J.z7szKfMVzNRDi61y.xm', NULL, '2020-03-15 06:12:59', '2020-03-15 06:12:59', NULL),
(280, 'STANDARD GLOBAL', 'standardglobal', NULL, '019247132323', NULL, 'standardglobal.info20@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '0215469', NULL, NULL, NULL, 'standardglobal.jpg', 'user', NULL, '2020-03-15', '5', NULL, '1', NULL, '$2y$10$i8ue535hi/Igtr108u47jesWx09soIcpU91QV9M02Edag9l1O0dTu', NULL, '2020-03-15 06:42:29', '2020-03-15 06:56:23', NULL),
(281, 'afroza', 'Afroza', NULL, '01997332862', NULL, 'radicalhealthcareservices@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '26-08-2002', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '259', NULL, '$2y$10$g3DkOtHHhl42nBVyOSlZ7uHkDCF4a2zonNYMpceMdiXsnYxicCb5u', NULL, '2020-03-17 22:06:24', '2020-03-17 22:06:24', NULL),
(282, 'sania', 'Sania', NULL, '01718785587', NULL, 'Dreamlife22@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '01-05-2002', NULL, NULL, NULL, 'Sania.png', 'user', NULL, '2020-03-20', '6', NULL, '247', NULL, '$2y$10$lX/lfdo6QLl2.i690zS7cewoxIPXMt9k7d9x1AhlqxHUi562VDcsK', NULL, '2020-03-18 06:05:29', '2020-06-11 22:56:20', NULL),
(284, 'Harun', 'Harun', NULL, '01405612349', 'Char shkhipur', 'Dreamlife22@gmail.com', NULL, '15', 'opt1', '18', NULL, '123456', '20-03-1991', NULL, NULL, NULL, 'Harun.jpg', 'user', NULL, '2020-05-11', '6', NULL, '247', NULL, '$2y$10$zHWK2sH0BFYC0ysiqprJsOMMqNiNh3Y4CHK46Cz8bDnqhfIMFtplu', NULL, '2020-03-18 06:09:27', '2020-06-07 23:34:57', NULL),
(285, 'sajeeb', 'Sajeeb Khan', NULL, '01732214106', NULL, 'apurboosajeeb@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '04-04-2004', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '262', NULL, '$2y$10$BQP6IxWqJXzFx6quIminCuWjJVkwAMntI/PbffDYovdQRVzUX3PwO', NULL, '2020-03-18 06:27:05', '2020-03-18 06:27:05', NULL),
(286, 'Emran', 'Emran', NULL, '01306013750', NULL, 'apurboosajeeb@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '01-01-2002', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '262', NULL, '$2y$10$CWFAk1pg3f4Vb6p61Zq4N./DB6EIegMr/Z6VDYIn7TcyhoZky9/pG', NULL, '2020-03-18 06:40:01', '2020-03-18 06:40:01', NULL),
(287, 'Jisan', 'Jisan', NULL, '01767431290', NULL, 'radicalhealthcareservices@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '04-02-2003', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '200', NULL, '$2y$10$0JOyrOEnpcGP6tOAjsqTau3w/JHcHxQEtaQbZgcXJYPvXJiDxrt/2', NULL, '2020-03-18 22:47:28', '2020-03-18 22:47:28', NULL),
(288, 'MD:ABDUL KARIM', 'Dreamtuch', NULL, '01821937434', NULL, 'Karimmd07@gmail.com', NULL, '43', '2', '18', NULL, '123456', '7339415072', NULL, NULL, NULL, 'Dreamtuch.jpg', 'user', NULL, '2020-05-30', NULL, NULL, '265', NULL, '$2y$10$9YopAWUrexB3sOHLYCUyM.PHCX1/L42I3D9qfyP4RrXid1QTRiWha', NULL, '2020-03-19 21:35:13', '2020-05-30 02:21:16', NULL),
(289, 'Sahalam', 'Sahalam', NULL, '01400021041', NULL, 'radicalhealthcareservices@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '02-03-2002', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '200', NULL, '$2y$10$cE2qzggjNQKvLiKSIvKZ6.VG6krw/eJOFVyzqzWCC9iVqsq2u9n82', NULL, '2020-03-20 06:28:20', '2020-03-20 06:28:20', NULL),
(290, 'Ataur Rahman Shopon', 'Ataur', NULL, '01313817484', NULL, 'standardglobal.info20@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '76547654', NULL, NULL, NULL, 'Ataur.jpg', 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$DtLdWQ7pPFH.7HFrGXkZ8uE/YBGfZoeldm7F3LsYh/amCUufhwzQm', NULL, '2020-03-20 07:04:31', '2020-03-20 07:15:09', NULL),
(291, 'Salam', 'Salam', NULL, '01780092658', NULL, 'radicalhealthcareservices@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '02-25-2002', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '200', NULL, '$2y$10$ePALn9zUJaYELOX1Njx4b.TbXs1CM.edcIGd9V9CEN/pE74ImI9hW', NULL, '2020-03-20 23:11:33', '2020-03-20 23:11:33', NULL),
(292, 'Siam', 'Siam', NULL, '01301065342', NULL, 'radicalhealthcareservices@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '11-03-2002', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '200', NULL, '$2y$10$qnybxiwbSiqxHkoaUL14q.KQ588cCAvRSTaWuTlE2NHAHcsLPfqxi', NULL, '2020-03-20 23:19:55', '2020-03-20 23:19:55', NULL),
(293, 'MST. FATEMA AKTER', 'fatema01', NULL, '01936685995', NULL, 'standardglobal.info20@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '6445874564', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$sukVDNbgri7CsyenLfk2peMNLq2yet/20sdkHEzFtUPhdX/7tNIHO', NULL, '2020-03-21 23:33:53', '2020-03-21 23:33:53', NULL),
(294, 'ROJINA AKTER', 'rojina', NULL, '01960215517', NULL, 'standardglobal.info20@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '74864563456', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$8kJ2KVup6M2IEVzaOjQlAO6YsiIrhTtLmzDJzw1FTYRk3uPNhkPf6', NULL, '2020-03-21 23:36:27', '2020-03-21 23:36:27', NULL),
(295, 'Rafi Khan', 'Rafi Khan', NULL, '01305705177', NULL, 'radicalhealthcareservices@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '22-03-2000', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '200', NULL, '$2y$10$JjcE9CaTR9FJvvAgaZ/NE.6iLJsMkyyFTwZ9YOV/TsemLcFTz/EdW', NULL, '2020-03-22 01:09:58', '2020-03-22 01:09:58', NULL),
(296, 'Saiful', 'Saiful Islam', NULL, '01781167391', NULL, 'radicalhealthcareservices@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '01-09-2003', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '200', NULL, '$2y$10$KMHEjCvRnKhjniURht5Z7uKXVhGg4qz3iAJylYWvSziRPeBsodyOa', NULL, '2020-03-22 05:54:05', '2020-03-22 05:54:05', NULL),
(297, 'Jule Akter', 'Julectg', NULL, '01839676624', NULL, 'Karimmd07@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '20021523701052073', NULL, NULL, NULL, NULL, 'user', NULL, '2020-05-30', NULL, NULL, '210', NULL, '$2y$10$5nk9M7sDn/7VNo13k0BntOkPAxvbCZ7.vkIH/GpiUzbhKOEo3NUhy', NULL, '2020-03-22 22:07:59', '2020-05-30 02:17:04', NULL),
(298, 'Md.Abdul Sukkur', 'Sukkurctg', NULL, '01832413886', NULL, 'Karimmd07@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '5554047588', NULL, NULL, NULL, NULL, 'user', NULL, '2020-05-30', NULL, NULL, '210', NULL, '$2y$10$RQeFjp2GOJd4jtJwqASuLeROoVls2Ot1ciCWLuoD.MZSm192RSa82', NULL, '2020-03-22 22:11:29', '2020-05-30 02:17:54', NULL),
(299, 'Jakariya Sultana', 'SultanaCtg', NULL, '01888618135', NULL, 'Karimmd07@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '07-05-1999', NULL, NULL, NULL, NULL, 'user', NULL, '2020-05-30', NULL, NULL, '210', NULL, '$2y$10$vHcvZUJQZ80RjaeA2Mw/delkLKoFD.RbgRAsWD/xFLoz2ndx7nBny', NULL, '2020-03-24 00:11:35', '2020-05-30 02:16:45', NULL),
(300, 'Md.Anwar Hossain', 'AnwarCtg', NULL, '01869396566', NULL, 'Karimmd07@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '20001513315013271', NULL, NULL, NULL, NULL, 'user', NULL, '2020-05-30', NULL, NULL, '210', NULL, '$2y$10$fSdjXEweORoloZC8389FR.6pUwfoOEUDS4CR89ORoA9ZKv4jfH9bO', NULL, '2020-03-25 04:40:53', '2020-05-30 02:13:02', NULL),
(301, 'Raseda Akter', 'RasedaCtg', NULL, '01812577522', NULL, 'Karimmd07@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '2401944620', NULL, NULL, NULL, NULL, 'user', NULL, '2020-05-30', NULL, NULL, '210', NULL, '$2y$10$4aDGuKDV.QEBLQPGSJuy4ewk57GzxG4D1x9OG7rzf0xzx65yXEm2m', NULL, '2020-03-25 04:43:56', '2020-05-30 02:14:30', NULL),
(302, 'Nargis Akter', 'NargisCtg', NULL, '01868086397', NULL, 'Karimmd07@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '13-09-2001', NULL, NULL, NULL, NULL, 'user', NULL, '2020-05-30', NULL, NULL, '210', NULL, '$2y$10$LkWQz813PvZFWi3zl1wXyOqCHKAZPcevBZE3bZBWtMQHXqZP2gG1a', NULL, '2020-03-25 04:46:53', '2020-05-30 02:17:37', NULL),
(303, 'Ommy Hany Samira', 'SamiraDk', NULL, '01979228003', NULL, 'Karimmd07@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '20034413340992383', NULL, NULL, NULL, 'SamiraDk.jpg', 'user', NULL, '2020-05-30', NULL, NULL, '210', NULL, '$2y$10$ERvbySXBM4lnsmcF9JALAubnihrGqMK.1P4WMrczwFmQNruRhVSOO', NULL, '2020-03-25 04:53:38', '2020-05-30 02:15:33', NULL),
(304, 'Md.Jainal', 'JainalCtg', NULL, '01860352960', NULL, 'Karimmd07@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '5558243472', NULL, NULL, NULL, NULL, 'user', NULL, '2020-05-30', NULL, NULL, '210', NULL, '$2y$10$7hgTsURsMy9slEREdWc84OGtjXAr3Gs2Kwyrc1eKZYRghImeNSzRu', NULL, '2020-03-26 04:27:11', '2020-05-30 02:15:14', NULL),
(305, 'Md.Rakib', 'RakibCtg', NULL, '01840137302', NULL, 'Karimmd07@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '19991513735107794', NULL, NULL, NULL, 'RakibCtg.jpg', 'user', NULL, '2020-05-30', NULL, NULL, '210', NULL, '$2y$10$lAdIOdJJfHZR/te5JWnvnuEl9QhtBDBJcQtNbIUl3QwrJP8snqS26', NULL, '2020-03-26 04:30:18', '2020-05-30 02:16:26', NULL),
(306, 'Roma Akter', 'RomaCtg', NULL, '01684881764', NULL, 'Karimmd07@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '08-12-1987', NULL, NULL, NULL, NULL, 'user', NULL, '2020-05-30', NULL, NULL, '210', NULL, '$2y$10$AgENO0JpaIW.3vo9fzFhOefmHhAtmDiwQWxVM82TysyErsl6rRCEG', NULL, '2020-03-26 04:33:07', '2020-05-30 02:17:20', NULL),
(307, 'MD. HASAN', 'HasanCtg', NULL, '01825881661', NULL, 'Karimmd07@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '19977513619000246', NULL, NULL, NULL, NULL, 'user', NULL, '2020-05-30', NULL, NULL, '210', NULL, '$2y$10$ZqgNB.1AbW.obmBdYYexZOqtJcNKK/yMHRAhpYUDPI.eBse513bwe', NULL, '2020-03-26 05:39:18', '2020-05-30 02:18:31', NULL),
(308, 'Seema Rudro', 'SeemaCtg', NULL, '01645082970', NULL, 'Karimmd07@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '1994151471800165', NULL, NULL, NULL, NULL, 'user', NULL, '2020-05-30', NULL, NULL, '210', NULL, '$2y$10$yPxjJrYlXjXAXaqSOtuZnuwAzfVN8bG3e6Oneyhhyz0M3hlyUKOIO', NULL, '2020-03-29 04:12:06', '2020-05-30 02:18:11', NULL),
(309, 'Shiru Akter', 'ShiruCtg', NULL, '01865700719', NULL, 'Karimmd07@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '20001513319033362', NULL, NULL, NULL, NULL, 'user', NULL, '2020-05-30', NULL, NULL, '210', NULL, '$2y$10$sidNrbYAwyHD6/sHMj/zsumPM8wWxAbGC/FYSD.kvEZJpOWZ6VI2C', NULL, '2020-03-29 04:15:14', '2020-05-30 02:18:48', NULL),
(310, 'Sonya', 'SonyaCtg', NULL, '01844815047', NULL, 'Karimmd07@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '19981591607115363', NULL, NULL, NULL, NULL, 'user', NULL, '2020-05-30', NULL, NULL, '210', NULL, '$2y$10$VkUGdWkyxR71NB.b36TMjOPuafTvUcTjQY3jTJW5ymmr/ptI84U.q', NULL, '2020-03-29 05:04:33', '2020-05-30 02:19:05', NULL),
(311, 'Lipy Akter', 'LipyCtg', NULL, '01864364080', NULL, 'Karimmd07@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '2008191812081538', NULL, NULL, NULL, NULL, 'user', NULL, '2020-05-30', NULL, NULL, '210', NULL, '$2y$10$RddRJ.EybanHgCTV5ISta.EeQkk5vu8jB1wacdWdsuhMz7/g5Qfnq', NULL, '2020-03-29 05:08:04', '2020-05-30 02:19:22', NULL),
(312, 'Md.Abdullah All Amin', 'ManikCtg', NULL, '01861625500', NULL, 'Karimmd07@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '20011513395028370', NULL, NULL, NULL, NULL, 'user', NULL, '2020-05-30', NULL, NULL, '210', NULL, '$2y$10$2mKVeIwJ8H6/lpaAnWMe1e1Lfcrj/mWAyxBMXslewm7ILxwGCwcXa', NULL, '2020-04-03 01:04:44', '2020-05-30 02:19:50', NULL),
(313, 'DR.AZIZUL ISLAM', 'draziz', NULL, '01819827849', NULL, 'radicalhomoeo@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '1315831408522', NULL, NULL, NULL, NULL, 'user', NULL, '2020-06-10', '6', NULL, '206', NULL, '$2y$10$MZ116bmRmzHc0Oz5m7V0l.DZPKXUX.2elW5ImtaLytOnSi0j09pYK', NULL, '2020-04-03 09:35:09', '2020-06-10 06:27:58', NULL),
(314, 'MAHBOBA AKTAR', 'mahboba', NULL, '01762136775', NULL, 'eshopradical@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '1912779955307', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$Pq1D1UF9Gqw3hBSd//8A2u6hR/a2igNUQeCjuaC/qjC7iE3.poSRO', NULL, '2020-04-03 22:41:01', '2020-04-03 22:41:01', NULL),
(315, 'MD.ABDULLAH', 'abdullah1', NULL, '01729968435', NULL, 'eshopradical@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '20141315831108570', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$kIDEXarQuYGKMnAKDZVc3ONm6ki9XNJJHxrsSbkdPfePzmawTLAGu', NULL, '2020-04-03 22:53:51', '2020-04-03 22:53:51', NULL),
(316, 'MD.ASADULLAH', 'asadullah', NULL, '001788086181', NULL, 'eshopradical@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '20161315831108569', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$MPqpTQg9TjEHfi7Gjw/wW.inMu3yFrvbhi26X.sVLhDDozkR18sCe', NULL, '2020-04-03 22:58:09', '2020-04-03 22:58:09', NULL),
(317, 'ABDUL KHALAC', 'drkhalac', NULL, '01711703419', NULL, 'eshopradical@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '1315831408611', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$AY/hi3J6NEuVoAvUhBj.Der06YibbuVIdyNSJo3.iltzPbMMLGfge', NULL, '2020-04-04 05:17:44', '2020-04-04 05:17:44', NULL),
(318, 'RABIA KHATUN', 'rabia', NULL, '01813197710', NULL, 'eshopradical@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '1315831408515', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$Yn/5tLaZEANyqjQtwYjLYusJPK/7SRVEkH.Wwv9N7w9Xszt17mzhG', NULL, '2020-04-04 05:21:26', '2020-04-04 05:21:26', NULL),
(319, 'HASMUN NAHAR', 'hasmun', NULL, '01746742767', NULL, 'eshopradical@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '1315831408521', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$K64kQuIjakUvKXSj4xyw7OSCidPrTEyUmOWYNWg4xGa4ekf9DMpC.', NULL, '2020-04-04 05:24:17', '2020-04-04 05:24:17', NULL),
(320, 'MD MUKHTAR AHAMMED', 'mukhtar', NULL, '01778207410', NULL, 'eshopradical@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '1912779955305', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$fVi0VdHCBeLbXD6CGyB41.BWxDjm1JMTHhUdzSSWDtOFkhzuho0L6', NULL, '2020-04-04 05:41:17', '2020-04-04 05:41:17', NULL),
(321, 'MOSA.FAHIMA AKTER', 'fahima', NULL, '01610650550', NULL, 'eshopradical@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '3751626627', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$weN8Og5xBYvY98a7iR5LSeq6If9Kfib0L0UIcFreydihIOGdMeqEq', NULL, '2020-04-04 05:45:39', '2020-04-04 05:45:39', NULL),
(322, 'MAFUZUL ISLAM', 'mafiz', NULL, '01831181742', NULL, 'eshopradical@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '1315831408512', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$TgCc6owPlwCeMalZy2kAPuz76Yg7yJPyu8loUPFFKQ2KqPpnctM9K', NULL, '2020-04-04 05:56:46', '2020-04-04 05:56:46', NULL),
(323, 'MD.KHAIRUL ISLAM', 'khairul', NULL, '01818197710', NULL, 'eshopradical@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '1315831408510', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$mDppOhtEjtH5tbzsmRtrGe6PFh3219eoBbIvArDcioKSVuLESFXdC', NULL, '2020-04-04 06:08:01', '2020-04-04 06:08:01', NULL),
(324, 'MD.SAIDUL ISLAM', 'saidul', NULL, '01748941465', NULL, 'said88@yahoo.com', NULL, NULL, NULL, NULL, NULL, '654321', '1315831408541', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$Vbb3wQTMfBiwnRzRZw0NKuH6KPf50MNYfIpn.A.y5i5RqKbx/8Any', NULL, '2020-04-04 06:16:16', '2020-04-04 06:16:16', NULL),
(325, 'NIMUL ISLAM', 'nimul', NULL, '01811657424', NULL, 'eshopradical@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '1315831408516', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$eEMl50ezgFNspu8xK.dj1u.LjY4N4qdmzlXjxFQnYN16CH40/TRNm', NULL, '2020-04-04 06:18:37', '2020-04-04 06:18:37', NULL),
(326, 'MD.NAZMUL ISLAM', 'nazmul', NULL, '01829615271', NULL, 'ndnazmul@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '1315831408667', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$.7Wtl47B85MMuXB.NwWrpuUjrsWNxIh3bGqt/5uZvkJLHnPNjo2qa', NULL, '2020-04-04 06:23:01', '2020-04-04 06:23:01', NULL),
(327, 'DR.AKTAR AHMED CHOWDHURY RANA', 'draktar', NULL, '016211202861', NULL, 'eshopradical@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', 'P.P NO-Q 0645521', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$iprvcpv/i6p0.1uZGcwWve4Xb1pNJ5o3wHNsE5GSrlnBppTIM1kX2', NULL, '2020-04-04 06:39:10', '2020-04-04 06:39:10', NULL),
(328, 'MD.KAMRUL HASAN', 'kamrul', NULL, '01916776924', NULL, 'khpalash09#yahoo.com', NULL, NULL, NULL, NULL, NULL, '654321', '19782690421990049', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$B4tCiBgK5TVYMyJB7QxpK.clyQvyZqz0WNRP90jRldi7idcI1gRBK', NULL, '2020-04-04 06:51:02', '2020-04-04 06:51:02', NULL),
(329, 'FATEMA BEGUM', 'fatemabegum', NULL, '01849427740', NULL, 'eshopradical@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '2692930915677', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$NPEVUcJy.qhipBAAM6szWea8kdxjeKd6FRkqAKwRsUCPorft6i8EW', NULL, '2020-04-04 22:25:17', '2020-04-04 22:25:17', NULL),
(330, 'MD.FAZLUR RAHMAN', 'fazlu', NULL, '01833707508', NULL, 'eshopradical@gmail.com', NULL, '17', '3', '18', NULL, '654321', '1456047495', NULL, NULL, NULL, NULL, 'user', NULL, '2020-06-10', '6', NULL, '206', NULL, '$2y$10$Q0yeujbJC6giBCRvnDn7B.TP7xFfTFOxUgmr6EscK9te3TvifHsfe', NULL, '2020-04-04 22:31:00', '2020-06-10 06:24:45', NULL),
(331, 'MD.KAMRUL HASAN', 'kamrul1', NULL, '01716377928', NULL, 'khpalash09#yahoo.com', NULL, NULL, NULL, NULL, NULL, '654321', '19782690421990049', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$sDSKLZcVCLF.JngHqG1aHu5Q9RnPEA6UkFYOe180QR7g3E1jzfKdS', NULL, '2020-04-04 22:45:27', '2020-04-04 22:45:27', NULL),
(332, 'MD.EMRAN HOSSEN ROKY', 'roky', NULL, '01627034434', NULL, 'eshopradical@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '20035114313004907', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$ojfmjg5N/CemcCqRSa/FYevmCsPQBHZpnXbQ9a36I7PewLxNEeiYq', NULL, '2020-04-04 23:02:16', '2020-04-04 23:02:16', NULL),
(333, 'S M MASUD RANA', 'toart3', NULL, '01406096107', NULL, 'toart30@yahoo.com', NULL, NULL, NULL, NULL, NULL, '654321', 'PP-BY0978796', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$zK87O6cM9Av1ToQVBQZTleKrbNPtjmSTm7lGQxLsDww4cwQx89yN.', NULL, '2020-04-05 01:02:42', '2020-04-05 01:02:42', NULL),
(334, 'ROKANNUZZAMAN', 'madanihomoeohall', NULL, '01923287272', NULL, 'muftirokanuzzaman@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '19882693623780101', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$ozlzWnf/uXt.skd0JKoOpO.1IXjeXE7R4Xlw3iczqHoNoOmIX9PXu', NULL, '2020-04-05 01:08:05', '2020-04-05 01:08:05', NULL),
(335, 'MOHAMMED MOIN UDDIN', 'moinuddin', NULL, '01821161059', 'VILLAGE-CHORPARBOTI,P.O-CHOWDHURYHAT,P.S-COMPANIGONJ,DIST-NOAKHALI', 'eshopradical@gmail.com', NULL, '49', '2', '18', NULL, '654321', '3019447486814', NULL, NULL, NULL, NULL, 'user', NULL, '2020-06-10', '6', NULL, '206', NULL, '$2y$10$lDQiY5uUpHcfbImum.JcYOabqms4Z3UwzPnSYKCili2M4OaTxduei', NULL, '2020-04-05 01:12:07', '2020-06-10 06:21:25', NULL),
(336, 'NAYAN CHANDRO SARKER', 'nayanbabu', NULL, '01723734938', NULL, 'dncs1807@gamil.com', NULL, NULL, NULL, NULL, NULL, '123456', '8514963543607', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$NAd1dvYGNjyT5s5H3QGKHOFUOXuvX2lCYnKw25mrSy/I3HWNxreLm', NULL, '2020-04-05 08:12:32', '2020-04-05 08:26:57', NULL),
(337, 'NAZRUL ISLAM', 'nazrul', NULL, '01818249327', NULL, 'eshopradical@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '1315831405931', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$F8Ef5l05cSRPLNZAb7CdHeSIVOWlFzawD77TWK5q2ObO0DJIxxCbG', NULL, '2020-04-09 01:33:23', '2020-04-09 01:33:23', NULL),
(338, 'MD.SHAFIQUL ISLAM PATWARY', 'shafiq', NULL, '01715317775', NULL, 'eshopradical@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '2699238598445', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$vzMIm2TnJB4vs6eKUFgw2.VtdFNFSP3LE1yp6xTDjAe.U.Ycg9Z/O', NULL, '2020-04-09 01:36:12', '2020-04-09 01:36:12', NULL),
(339, 'MD.AKLASS MATUBBER', 'aklass', NULL, '01714394522', NULL, 'eshopradical@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '5415471267183', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$XRkIWOWvQIgmEtzGx0x.ZuHarRRSvYk0y5Df/zqCd1g5D7RR31QCO', NULL, '2020-04-09 01:38:23', '2020-04-09 01:38:23', NULL),
(340, 'MD.EMDADUL HOSSAIN', 'emdad', NULL, '01714210864', NULL, 'eshopradical@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '2695431002933', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$rZHyzrQBkppnxazhE208rO46x6kvmMbknF7FjewNJs5usiReuBxEe', NULL, '2020-04-09 01:42:03', '2020-04-09 01:42:03', NULL),
(341, 'KHANDAKAR MOHAMMAD NURUL ISLAM', 'nurulislam', NULL, '01865102999', NULL, 'eshopradical@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '6726807644105', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$jbseaeJkWnb9BkLZ1sPzje/K7OlbysUvvV7hVwOWPSVNx19./53ZO', NULL, '2020-04-09 01:48:54', '2020-04-09 01:48:54', NULL),
(343, 'MD.JASHIM UDDIN', 'jashim', NULL, '01715962413', NULL, 'juddin447@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '194255558', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$vpb4lQZU2WkpXIJaYZ2Nl.GiSZISNQ5JFi/a06JGP/x0NSIviaQsu', NULL, '2020-04-12 01:45:16', '2020-04-12 01:45:16', NULL),
(344, 'MST.NAZMA AKTER', 'nazma', NULL, '01959248599', NULL, 'eshopradical@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '19706727709006705', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$unmV3MiUbpp2kq2LTWzIiOg1QD0xvIEfHIA5CpvE6XhBX0iFF4HgK', NULL, '2020-04-12 03:03:16', '2020-04-12 03:03:16', NULL),
(345, 'MD.ABU BAKAR SIDDIQUE BADSHA', 'badsha', NULL, '01719332920', NULL, 'eshopradical@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '19922619072003695', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$M5o1KJDMdkFfHQW8sJIzCOhlNdLp7ze46TDl0XodRLHL3MtQ3m87u', NULL, '2020-04-12 03:10:32', '2020-06-12 04:43:32', NULL),
(346, 'MD.RANA PROMANIK', 'rana', NULL, '01675206889', 'house no-20,road no - 5 palashpur,donia,kadamtali', 'mdrana6889@gmail.com', NULL, '1', '3', '18', NULL, '654321', '8690691251', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$VHH6Q3IURKnpOY8GkPBZHeXF/0DZasrvexHk4cxOA31ZniwsHu7v6', NULL, '2020-04-13 01:00:14', '2020-06-13 07:29:37', NULL),
(347, 'DR.KHAGENDRO NATH BARMON', 'drshipu', NULL, '01917323777', NULL, 'dr.shipu@yahoo.com', NULL, NULL, NULL, NULL, NULL, '654321', '695431009868', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$TaZneAw7oOzV5Cs2B5r6oeifn3x3gWclEh9KL4Dfx9cVCRGhijCvK', NULL, '2020-04-15 05:46:18', '2020-04-15 05:46:18', NULL),
(348, 'test', 'test2', NULL, '019247132321', NULL, 'standardglobal.info20@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '1234587888', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '242', NULL, '$2y$10$uD68I7nGuAmC7It/kkDpZeZ/8xOFz0ch2jILRiOunUmyYDnJeI0qu', NULL, '2020-04-22 05:42:36', '2020-04-22 05:42:36', NULL),
(349, 'test', 'test3', NULL, '019247132320', NULL, 'standardglobal.info20@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '023154777777', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '242', NULL, '$2y$10$cAiKyCX31BVUy/K7Dpsb7eVa79l20fBuGjPlzsZzLCzSU4/B74RoO', NULL, '2020-04-22 06:17:40', '2020-04-22 06:17:40', NULL),
(350, 'HABIBUR RAHMAN', 'manik', NULL, '01919395634', NULL, 'eshopradical@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '6816029801741', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$MQPTNElsPI/uanHlh46hmuDT0vTZAwDbmiAuba3ifG6GZSTHFDkSq', NULL, '2020-04-24 00:38:26', '2020-04-24 00:38:26', NULL),
(351, 'MD.DALIM DEWAN', 'dalim', NULL, '01556338415', NULL, 'eshopradical@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '5915657338809', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$DIJT1bMqmP8B.1YCEqCB0eSGi6pBMy92xlQ676n/U2LZxZJ0./IQ2', NULL, '2020-04-24 01:04:52', '2020-04-24 01:04:52', NULL),
(352, 'Jannat Ara Lia', 'Lia', NULL, '01950269660', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123456', '15-11-2002', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '259', NULL, '$2y$10$cac/8N4skiMEMKsOxugsfOtUm38RsPAXO5FirLnNmnlXz5LlaXtvm', NULL, '2020-05-09 22:49:37', '2020-05-09 22:49:37', NULL),
(353, 'Nishita', 'Nishita', NULL, '01778890181', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123456', '8-4-2003', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '259', NULL, '$2y$10$fdUSSaSXjLdS5.MufdXpo.1AktX8d63LMUNAzTubl6BFzNHPtu9fi', NULL, '2020-05-09 22:51:49', '2020-05-09 22:51:49', NULL),
(354, 'Firoj malot', 'Firoj malot', NULL, '01644777483', 'Shariatpur', 'mh472806@gmail.com', NULL, '15', '3', '18', NULL, '123456', NULL, NULL, NULL, NULL, 'Firoj malot.jpg', 'user', NULL, '2020-05-11', '6', NULL, '247', NULL, '$2y$10$MjHusVI5bOwdp1C5K9uF7eLXDHLwcgdttQ1YbuaO2iiZLTUUtUdEm', NULL, '2020-05-09 23:44:21', '2020-06-10 01:22:25', NULL),
(355, 'Rajon', 'Rajon', NULL, '01863990011', NULL, 'radicalhealthcareservices@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', NULL, NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '259', NULL, '$2y$10$.3tt6Knl9YBHBYzL5CnxeeIQNE4.1OPQ28/frXrfVAbh/B4nXox4e', NULL, '2020-05-09 23:53:04', '2020-05-09 23:53:04', NULL),
(356, 'Ismail Sarkar', 'Ismail', NULL, '01863296299', NULL, 'radicalhealthcareservices@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '02-25-2002', NULL, NULL, NULL, 'Ismail.jpg', 'user', NULL, NULL, NULL, NULL, '259', NULL, '$2y$10$R7VazNcJbXhnAVAgg8KgQeRN7Jf7iMfDpjJcX3xQxY1pSaQiZW7he', NULL, '2020-05-12 01:21:05', '2020-05-19 10:04:57', NULL),
(357, 'Arif Mahmud', 'Arif Mahmud', NULL, '01747756699', NULL, 'mdarifmahamud10@yahoo.com', NULL, NULL, NULL, NULL, NULL, '123455', '02-25-2002', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '200', NULL, '$2y$10$sO3q2D44pNu2pxEYBAWiR.dYrAAvVJdragB9PX6/hKVzybfvH/KO2', NULL, '2020-05-14 00:53:20', '2020-05-14 00:53:20', NULL),
(358, 'MD RAKIBUL ISLAM', 'RAKIB', NULL, '01761262433', NULL, 'alhasanrakib.679@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '5966872839', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$izGEkwsrFQwnRw3HWZlY2uO53RCgADMaK.scKYlWPruqYuDe7d3qq', NULL, '2020-05-16 02:37:08', '2020-05-16 02:37:08', NULL),
(359, 'Md.Sourov Ali', 'SourovBp', NULL, '01881615788', NULL, 'Karimmd07@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '2007153319001032', NULL, NULL, NULL, NULL, 'user', NULL, '2020-05-30', NULL, NULL, '210', NULL, '$2y$10$z8kvsUpoPbeuf7FBXbk5SOTGG/o4aa1DOaMu9cHqLIxVtgKjSMwpm', NULL, '2020-05-29 21:28:51', '2020-05-30 02:20:09', NULL),
(360, 'Rina Akter', 'RinaBp', NULL, '01860608827', NULL, 'Karimmd07@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '20011513342109708', NULL, NULL, NULL, NULL, 'user', NULL, '2020-05-30', NULL, NULL, '210', NULL, '$2y$10$lOO.PE4cEEZFny7p1XXciO1AEpWH0tp/pHEmZdtpYMyQmtkwbnLE6', NULL, '2020-05-29 21:32:57', '2020-05-30 02:20:27', NULL),
(361, 'Nasir kazi', 'Nasir', NULL, '01714140969', NULL, 'Dreamlife71@gmil.com', NULL, NULL, NULL, NULL, NULL, '123456', NULL, NULL, NULL, NULL, NULL, 'user', NULL, '2020-06-07', '6', NULL, '247', NULL, '$2y$10$mkamjxXACTgs3pV.24HH2ePhGx3RUuPVPfkolf/jaAR60F.H8OEXq', NULL, '2020-06-02 01:50:16', '2020-06-06 23:19:43', NULL),
(362, 'MD.RIPON ALLY', 'abdurrahim', NULL, '01726986904', NULL, 'radicalhealthcare602@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '19902613860000385', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$y6bNcTZup3uF.V3a3hRp3eEv5lSwvN3ce5AbIT4rAlGGBQqw1lcgG', NULL, '2020-06-02 21:43:03', '2020-06-02 21:43:03', NULL),
(363, 'Habib', 'Habib', NULL, '01930076521', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123456', NULL, NULL, NULL, NULL, 'Habib.jpg', 'user', NULL, '2020-06-10', '6', NULL, '247', NULL, '$2y$10$daDoYPRDHfdNTNK.3I9K3Oq6Zyt.fePyvV2BVsCTTOQ3MaPrWHlGy', NULL, '2020-06-05 05:57:11', '2020-06-11 07:01:58', NULL),
(364, 'Ikbal', 'Ikbal', NULL, '01911249035', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123456', NULL, NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '247', NULL, '$2y$10$3etmgDIlirYReNPLk/EHi.oEY0bil9RlxccyBTrI6g8nnaXOq9W7.', NULL, '2020-06-06 23:40:19', '2020-06-06 23:40:19', NULL),
(365, 'Md Shahadat Kazi', 'Shahadat', NULL, '01867810495', NULL, 'radicalhealthcareservices@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '01-02-2002', NULL, NULL, NULL, NULL, 'user', NULL, '2020-06-11', '6', NULL, '361', NULL, '$2y$10$KKS.ZJIl5wzDvXI4bL96vOVrGzKX0ohriSsar.BzOKGtCOLIyfwRa', NULL, '2020-06-10 04:16:20', '2020-06-10 21:34:15', NULL),
(366, 'AKRAMUL HOSSAIN', 'csbbangla', NULL, '01916152265', NULL, 'csbbangla25@gmail.com', NULL, NULL, NULL, NULL, NULL, '152265', '1490890003', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$1ifKDDBXoAsMA.vyPYnovunbA/z6gdDOs0g3wGQQ/HrNJqa7gwIxy', NULL, '2020-06-10 04:21:44', '2020-06-10 04:21:44', NULL),
(367, 'SAMIA ISLAM', 'samia', NULL, '01624969484', NULL, 'eshopradical@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '123', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$cw6ac/uRwY0WTbVoPBLR0.fQBtZcAL.HtkF9vIwGlsvYLlx8bJ0bW', NULL, '2020-06-10 22:47:56', '2020-06-10 22:47:56', NULL),
(368, 'Mdabdullah', 'Mdabdullah', NULL, '01997825941', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123456', NULL, NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '247', NULL, '$2y$10$cXLKN.cGMaI.iAh9X/UAae7msMeWOPOYNmILFXj5lOhQjPrLwOXdG', NULL, '2020-06-10 23:49:15', '2020-06-10 23:49:15', NULL),
(369, 'shahed ahmed', 'shahed ahamed', NULL, '01760058593', NULL, 'dreamlife@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '12-1-1999', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '284', NULL, '$2y$10$rkKm3a7QPC6zTd78kPRdBOkZ2Ec5gkZgQs.gwoZ08OviuDmbpTP/6', NULL, '2020-06-11 01:42:55', '2020-06-11 01:42:55', NULL),
(371, 'FAHMIDA AKTER', 'fahmida', NULL, '01975439600', NULL, 'rahman.fazlu.tl@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '123', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$QvTWxHzaiKnaoLl3X9lfy.UGZE/FgfzPzs8zzy2rJLRH9BJ4Cd5rG', NULL, '2020-06-11 07:33:31', '2020-06-11 07:33:31', NULL),
(372, 'LUTFUR RAHMAN MAHFUZ', 'lutfur', NULL, '01955439600', NULL, 'rahman.fazlu.tl@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '123', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$dB1x5x317H2U6spGW4YEW.w1AbPPMpb4Z.n83c32sM4nHfYsns7qu', NULL, '2020-06-11 07:35:34', '2020-06-11 07:35:34', NULL),
(373, 'MD.SHAH JAHAN', 'shahjahan', NULL, '01931504135', NULL, 'rahman.fazlu.tl@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '9329509267438', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$76LgJ7/HDrHujVadk7Pl/erP0AjoJCirW7Bxh.I0UyapsZfuZH4JS', NULL, '2020-06-11 07:40:41', '2020-06-11 07:40:41', NULL),
(374, 'OMAR ELECTRIC AND SANITARY', 'omarelectric', NULL, '01303122450', NULL, 'rahman.fazlu.tl@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '123', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$7CwlonRBsJYjYleIoWIly.D7bUxML127/xndEXQ.PkQ1fz/nkleRO', NULL, '2020-06-11 07:43:24', '2020-06-11 07:43:24', NULL),
(375, 'MARIA BEGUM', 'maria', NULL, '01732583286', NULL, 'maria-efaz@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '2694069112367', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$7km/ID1y/XMz.tsA7p.OyeJq4cI8aNy.4yVMjbkXf247Mvgj9M4ey', NULL, '2020-06-11 07:59:52', '2020-06-11 07:59:52', NULL),
(376, 'MST.FATEMA BEGUM', 'fatema71', NULL, '01792359871', NULL, 'rahman.fazlu.tl@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '123', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$GGEVQPL7IkTvx8p3Bg.VMuO6CJq6QIB/B6iuJDh7gZdrPyEWFLHRa', NULL, '2020-06-11 08:03:33', '2020-06-11 08:03:33', NULL),
(377, 'Salma', 'Salma', NULL, '01921088709', NULL, 'radicalhealthcareservices@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '07-09-1997', NULL, NULL, NULL, NULL, 'user', NULL, '2020-06-12', '6', NULL, '361', NULL, '$2y$10$yZaUm2tAShQ9PYDtSmMDru2IlKfmarLAyajTeDALaNI43MSzYplYm', NULL, '2020-06-11 23:18:57', '2020-06-11 23:29:45', NULL),
(378, 'Md Foysal Kabir', 'Foysal', NULL, '01729886749', NULL, 'radicalhealthcareservices@gmail.com', NULL, 'opt1', 'opt1', 'Select Country', NULL, '123456', '01-4-1998', NULL, NULL, NULL, 'Foysal.png', 'user', NULL, '2020-06-16', '6', NULL, '361', NULL, '$2y$10$hCfQSbV.LIBUgo61okDSWuu3Fgn3uP6F9sMmEhin.C5TN6gymkfXm', NULL, '2020-06-11 23:22:38', '2020-06-16 06:17:49', NULL),
(379, 'AL MADINA DOOR AND FURNITURE', 'almadinafurniture', NULL, '01622555686', NULL, 'absbadshah1@gmail.com', NULL, NULL, NULL, NULL, NULL, '225566', '123', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$MB.FNT.oDIAmQxUEXTgciuJvueDjSqFS0cOvH3etnOBy4SOCtOmJi', NULL, '2020-06-12 04:13:27', '2020-06-12 04:13:27', NULL),
(380, 'REZAUL KARIM', 'rezaul', NULL, '01916333342', NULL, 'absbadshah1@gmail.com', NULL, NULL, NULL, NULL, NULL, '225566', '123', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$jQDMxiiQOObTCN4Ihkaruu753GYPSlkdePCyUD0FjIvX5t4JhaXSW', NULL, '2020-06-12 04:15:30', '2020-06-12 04:15:30', NULL),
(381, 'SHAMRAT AKBAR SHAHJAHAN', 'shamrat', NULL, '0161633342', NULL, 'absbadshah1@gmail.com', NULL, NULL, NULL, NULL, NULL, '225566', '123', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$vLrgjtmcrsnFneqL0MyzAulgmuEPpx3J83.Vm4ocHIO9iY2OwcUGG', NULL, '2020-06-12 04:29:49', '2020-06-12 04:29:49', NULL),
(382, 'HALIMA  BEGUM', 'halima', NULL, '01910889376', NULL, 'absbadshah1@gmail.com', NULL, NULL, NULL, NULL, NULL, '225566', '123', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$eSymAhoPmLvf1bWJ2QQePOQwjTCJ7d9kBy8LLs7711rDY7Wt0k1LO', NULL, '2020-06-12 04:33:02', '2020-06-12 04:33:02', NULL),
(383, 'SUMAIYA AKTER LUCKY', 'sumaiya', NULL, '01643027247', NULL, 'absbadshah1@gmail.com', NULL, NULL, NULL, NULL, NULL, '225566', '123', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$6U5gBEQLqIPfD6n1mZhIceCMYyMYqGgDQF1DEhD3MYB8QYY2ZHryK', NULL, '2020-06-12 04:38:31', '2020-06-12 04:38:31', NULL),
(384, 'MARZIA RAHMAN', 'marzia', NULL, '01622555702', NULL, 'absbadshah1@gmail.com', NULL, NULL, NULL, NULL, NULL, '225566', NULL, NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$bqK7jG2859tIQqYGzErt8.lMxR6UpV8cYrcPWnkCpTy9RdIhBwbOC', NULL, '2020-06-12 04:41:07', '2020-06-12 04:41:07', NULL),
(385, 'ROKEYA AKTER', 'rokeya', NULL, '01890131294', NULL, 'moin777m@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '6440459292', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$dE2rYcY.w7khSG1L9tWJ4eDakPO1aZYHarQ.g4.WNq5eRLRn9U2ti', NULL, '2020-06-13 01:40:05', '2020-06-13 01:40:05', NULL),
(386, 'MOINUDDIN', 'moin', NULL, '01731779639', NULL, 'moinuddin77@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '123', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$x4XqCMwJKkJKrcqxf4OVsuF/68F/0QsyXKlFHJ658OxAhpJkShSEC', NULL, '2020-06-13 01:45:07', '2020-06-13 01:45:07', NULL),
(388, 'MAHMUDA AKTER MALIHA', 'maliha', NULL, '01737954683', NULL, 'moin777m@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '123', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$Al4lYQJL7uray3j79kFelOE9xHwyU1.Dz0MlUbNj5zMat2uVJc61e', NULL, '2020-06-13 01:47:06', '2020-06-13 01:47:06', NULL),
(389, 'MOHONA AKTER MITHILA', 'mithila', NULL, '01931142581', NULL, 'moin777m@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '123', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$PzDFpdkXukS0e3i5/xL3hepBsYqzCii7jctsHi9yJANhdNkukLWbO', NULL, '2020-06-13 01:50:25', '2020-06-13 01:50:25', NULL),
(390, 'MD.NAYEEM', 'nayeem', NULL, '01817617016', NULL, 'moin777m@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '123', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$pF482oxpI4ujTDJLnhwLve5Zlb//kJDvOTpITvsRhMsGHCrOD1rSK', NULL, '2020-06-13 01:51:46', '2020-06-13 01:51:46', NULL),
(391, 'ALEYA BEGUM', 'aleya', NULL, '01863142430', NULL, 'moin777m@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '123', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$by29oAksZPnIj2I/dKj36OoBEMgGpCYKAmH70Kf97NqZ4QLT9HrJm', NULL, '2020-06-13 01:53:40', '2020-06-13 01:53:40', NULL),
(393, 'Md Nahid', 'Nahid', NULL, '01746277738', NULL, 'radicalhealthcareservices@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '15-07-2002', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '200', NULL, '$2y$10$Dyme47lAUt41WYdMcWfruOtAhzPt165jnIi0aGcYE8tOJLpq5OZbi', NULL, '2020-06-13 02:11:21', '2020-06-13 02:11:21', NULL),
(394, 'BANITA AKTER', 'banita', NULL, '01615743737', NULL, 'mdrana6889@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '123', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$q3h9vqaY.uGhAhUD.OYCHOws3uFGiPWsI4wk23HDvhiwCGpxb7/ey', NULL, '2020-06-13 07:17:45', '2020-06-13 07:17:45', NULL),
(396, 'AYESHA SIDDIQUI HUMAYARA', 'ayesha', NULL, '01303436652', NULL, 'mdrana6889@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '123', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$peN50Tfn/K.9cm/fewmOW.7vNJqNyw0eJxVfiaRwybkpqGS3o9VjW', NULL, '2020-06-13 07:20:03', '2020-06-13 07:20:03', NULL),
(397, 'BAZLU MONDAL', 'bazlu', NULL, '01400137463', NULL, 'mdrana6889@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '3', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$CfA3.D7qnZBB9JOrgGDLTur6k2xqa4UQK.nFaTw4w2LebzoDSsX7e', NULL, '2020-06-13 07:22:06', '2020-06-13 07:22:06', NULL),
(398, 'ANOWARA MONDAL', 'anowara', NULL, '01636066712', NULL, 'mdrana6889@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '4', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$j4oXIaAuCbWsMwwcOia01.wGlG4jOBalFjYhyfmD9GRkX9pa39KHe', NULL, '2020-06-13 07:23:47', '2020-06-13 07:23:47', NULL),
(399, 'NASIR PROMANIK', 'nasir1', NULL, '01615301540', NULL, 'mdrana6889@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '0', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$lRN4P9evoYCX8UF72b6mm.5ComNr1VbQ8.QOV/oz3lt0yIPgOVOkm', NULL, '2020-06-13 07:26:04', '2020-06-13 07:26:04', NULL),
(400, 'SHAHANARA', 'shahanara', NULL, '01836254438', NULL, 'mdrana6889@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '0', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$7XGt9Qo31G6r.U5eRMJ5OeqqXIjXdpv.NkE36lYbKHF99gcAwmX/.', NULL, '2020-06-13 07:28:03', '2020-06-13 07:28:03', NULL),
(401, 'DIPA RANI SARKER', 'shathy', NULL, '01714558342', NULL, 'dncs1807@gamil.com', NULL, NULL, NULL, NULL, NULL, 'sarker', '123', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$qAb9yJo5wDQ2EKHTHakKsuXqyTs49T0ZFKg.s5I1K5mWo9aiEhRs.', NULL, '2020-06-14 07:17:33', '2020-06-14 07:17:33', NULL),
(402, 'LILAMOYEE SARKER', 'niyoti', NULL, '01823309933', NULL, 'dncs1807@gamil.com', NULL, NULL, NULL, NULL, NULL, 'sarker', '123', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$tl7MKHVPFkstJapNZmOMBeXIg35ZgQn9R9j1N0tQxRaQmeoJYB9ta', NULL, '2020-06-14 07:20:04', '2020-06-14 07:20:04', NULL),
(403, 'NARAYON CHANDRO SARKER', 'narayon', NULL, '01719463057', NULL, 'dncs1807@gamil.com', NULL, NULL, NULL, NULL, NULL, 'sarker', '123', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$5OdjqLchp3uhU25Y4OI6mucuP5/OiQG1/V816CuuYWT6l5pfKYcGu', NULL, '2020-06-14 07:22:45', '2020-06-14 07:22:45', NULL),
(405, 'KHOKON CHANDRO SARKER', 'khokon', NULL, '01719129720', NULL, 'dncs1807@gamil.com', NULL, NULL, NULL, NULL, NULL, 'sarker', '123', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$Qd3cwkgO/yzpxjMZ.wsIVu1j7md68w6NwkVVZNQMkQXFGwZVRQOZa', NULL, '2020-06-14 07:24:38', '2020-06-14 07:24:38', NULL),
(406, 'SWAPON CHANDRO SARKER', 'swapon', NULL, '01719463074', NULL, 'dncs1807@gamil.com', NULL, NULL, NULL, NULL, NULL, 'sarker', '123', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$EZjJv7XzYU6uxnXzPeskKuT5H5x9q4LyKkGNuXni6faxisvpt8eqK', NULL, '2020-06-14 07:28:24', '2020-06-14 07:28:24', NULL),
(407, 'Sohanur Rahman Sohan', 'Sohan', NULL, '01811639729', NULL, 'radicalhealthcareservices@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '21-01-2002', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '200', NULL, '$2y$10$BeCGqVNAYWYrkyiR.3P36ur5CGGjmR0.8nszjnZ.8lMeIaPJ9tlfu', NULL, '2020-06-15 00:19:25', '2020-06-15 00:19:25', NULL),
(408, 'Standard Global', 'Testsg', NULL, '01609259092', NULL, 'standardglobal.info20@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '021222222222222', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '1', NULL, '$2y$10$Q7R3p/4O0hTUnJCVS3tRW.FDJaCpIjHZac6qknzU5nwzoKCtWkDMy', NULL, '2020-06-15 02:47:21', '2020-06-15 02:47:21', NULL),
(409, 'Standard Global AgroCos & Toiletries', 'standardglobaldhkhq', 'Standard Global e-SHOP(01)', '01741562233', 'Dhaka Office: 74/3/1 Atish Dipankar Road, Sabujbagh, Basabo,Dhaka-1214.                             Email:standardglobal.info20@gmail.com website:www.standardpltd.com', 'standardglobal.info20@gmail.com', NULL, '1', '3', '18', NULL, 'foisal', '8611443496932', NULL, NULL, NULL, 'upload/user/standardglobaldhkhq.png', 'dealer', NULL, '2020-06-15', NULL, NULL, '1', NULL, '$2y$10$ii/hVYLSny6H25ZDGO83auQqd7JtjT7ySdM5u9FtwDdFA67zRbBlK', NULL, '2020-06-15 03:22:44', '2020-06-15 03:22:44', NULL),
(410, 'Standard Global AgroCos & Toiletries', 'e-Shopdhkhq', 'Standard e-SHOP(skp02)', '01795838954', 'Dhaka Office: 74/3/1 Atish Dipankar Road, Sabujbagh, Basabo,Dhaka-1214.                             Email:standardglobal.info20@gmail.com website:www.standardpltd.com                                                                                                               Branch Office: Shakhipur Bazar Molla Market, Rafiqule Islam Tower, (4th Floor) Shakhipur Shariatpur.', 'standardglobal.info20@gmail.com', NULL, '15', '3', '18', '8030', 'foisal', '8611443496932', NULL, NULL, NULL, 'e-Shopdhkhq.png', 'dealer', NULL, '2020-06-15', NULL, NULL, '8611443496932', NULL, '$2y$10$dbhkxF6Ka55yQnF7SPyCRu7z.9IWRetNnMBqHKhT.YON7X8bArfQe', NULL, '2020-06-15 03:23:49', '2020-06-15 03:53:53', NULL),
(411, 'RADICAL HOMOEO HEALTH CARE', 'radicalhomoeo', NULL, '01552373209', NULL, 'eshopradical@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '123', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$Z5edZxF2DhUU7qyDTPBFteDhzbiizAvNS87yzrFUJbhJeCp5zuwrO', NULL, '2020-06-15 04:49:26', '2020-06-15 04:49:26', NULL),
(413, 'MAHBOBA AKTAR PAYERA', 'mahboba1', NULL, '01877698781', NULL, 'eshopradical@gmail.com', NULL, NULL, NULL, NULL, NULL, '654321', '123', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '206', NULL, '$2y$10$iBk8jFHrWe/mDIWZFCKrtO9Y5yT8JyejjPUaaaey63mrQuNU/i7.q', NULL, '2020-06-15 04:52:00', '2020-06-15 04:52:00', NULL),
(414, 'Shamim', 'Shamim', NULL, '01815766460', NULL, 'radicalhealthcareservices@gmail.com', NULL, NULL, NULL, NULL, NULL, '123456', '10-05-1994', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '200', NULL, '$2y$10$NSrCKqtbAZdYGoXKnxI1/O6TfuFEid4ilCaaFTh7I6qMNXw90HQQm', NULL, '2020-06-16 00:12:39', '2020-06-16 00:12:39', NULL),
(415, 'Ruma', 'Ruma', NULL, '01725747309', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123456', NULL, NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '247', NULL, '$2y$10$YZF64paW/RrAaK3txinMUOPP.zrMgo82GtbovT5DXaPxwb.RZa9iK', NULL, '2020-06-16 00:16:15', '2020-06-16 00:16:15', NULL),
(416, 'Jesmin', 'Jesmin', NULL, '01300257840', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123456', NULL, NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, '247', NULL, '$2y$10$fOP/Sf1zXPEIcHq3vqVUy.LiovFJVGOwAWoU5YDMneuXlk8npJq5W', NULL, '2020-06-16 00:31:10', '2020-06-16 00:31:10', NULL);

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
(4, 'App\\User', 245),
(4, 'App\\User', 246),
(4, 'App\\User', 247),
(1, 'App\\User', 248),
(6, 'App\\User', 248),
(6, 'App\\User', 249),
(6, 'App\\User', 250),
(6, 'App\\User', 251),
(4, 'App\\User', 252),
(4, 'App\\User', 253),
(4, 'App\\User', 254),
(4, 'App\\User', 255),
(4, 'App\\User', 256),
(4, 'App\\User', 257),
(4, 'App\\User', 258),
(4, 'App\\User', 259),
(4, 'App\\User', 260),
(4, 'App\\User', 261),
(4, 'App\\User', 262),
(4, 'App\\User', 263),
(4, 'App\\User', 264),
(4, 'App\\User', 265),
(4, 'App\\User', 266),
(4, 'App\\User', 267),
(4, 'App\\User', 268),
(4, 'App\\User', 269),
(4, 'App\\User', 270),
(4, 'App\\User', 271),
(4, 'App\\User', 272),
(4, 'App\\User', 273),
(4, 'App\\User', 274),
(4, 'App\\User', 275),
(4, 'App\\User', 276),
(4, 'App\\User', 277),
(4, 'App\\User', 278),
(4, 'App\\User', 279),
(4, 'App\\User', 280),
(4, 'App\\User', 281),
(4, 'App\\User', 282),
(4, 'App\\User', 284),
(4, 'App\\User', 285),
(4, 'App\\User', 286),
(4, 'App\\User', 287),
(4, 'App\\User', 288),
(4, 'App\\User', 289),
(4, 'App\\User', 290),
(4, 'App\\User', 291),
(4, 'App\\User', 292),
(4, 'App\\User', 293),
(4, 'App\\User', 294),
(4, 'App\\User', 295),
(4, 'App\\User', 296),
(4, 'App\\User', 297),
(4, 'App\\User', 298),
(4, 'App\\User', 299),
(4, 'App\\User', 300),
(4, 'App\\User', 301),
(4, 'App\\User', 302),
(4, 'App\\User', 303),
(4, 'App\\User', 304),
(4, 'App\\User', 305),
(4, 'App\\User', 306),
(4, 'App\\User', 307),
(4, 'App\\User', 308),
(4, 'App\\User', 309),
(4, 'App\\User', 310),
(4, 'App\\User', 311),
(4, 'App\\User', 312),
(4, 'App\\User', 313),
(4, 'App\\User', 314),
(4, 'App\\User', 315),
(4, 'App\\User', 316),
(4, 'App\\User', 317),
(4, 'App\\User', 318),
(4, 'App\\User', 319),
(4, 'App\\User', 320),
(4, 'App\\User', 321),
(4, 'App\\User', 322),
(4, 'App\\User', 323),
(4, 'App\\User', 324),
(4, 'App\\User', 325),
(4, 'App\\User', 326),
(4, 'App\\User', 327),
(4, 'App\\User', 328),
(4, 'App\\User', 329),
(4, 'App\\User', 330),
(4, 'App\\User', 331),
(4, 'App\\User', 332),
(4, 'App\\User', 333),
(4, 'App\\User', 334),
(4, 'App\\User', 335),
(4, 'App\\User', 336),
(4, 'App\\User', 337),
(4, 'App\\User', 338),
(4, 'App\\User', 339),
(4, 'App\\User', 340),
(4, 'App\\User', 341),
(4, 'App\\User', 343),
(4, 'App\\User', 344),
(4, 'App\\User', 345),
(4, 'App\\User', 346),
(4, 'App\\User', 347),
(4, 'App\\User', 348),
(4, 'App\\User', 349),
(4, 'App\\User', 350),
(4, 'App\\User', 351),
(4, 'App\\User', 352),
(4, 'App\\User', 353),
(4, 'App\\User', 354),
(4, 'App\\User', 355),
(4, 'App\\User', 356),
(4, 'App\\User', 357),
(4, 'App\\User', 358),
(4, 'App\\User', 359),
(4, 'App\\User', 360),
(4, 'App\\User', 361),
(4, 'App\\User', 362),
(4, 'App\\User', 363),
(4, 'App\\User', 364),
(4, 'App\\User', 365),
(4, 'App\\User', 366),
(4, 'App\\User', 367),
(4, 'App\\User', 368),
(4, 'App\\User', 369),
(4, 'App\\User', 371),
(4, 'App\\User', 372),
(4, 'App\\User', 373),
(4, 'App\\User', 374),
(4, 'App\\User', 375),
(4, 'App\\User', 376),
(4, 'App\\User', 377),
(4, 'App\\User', 378),
(4, 'App\\User', 379),
(4, 'App\\User', 380),
(4, 'App\\User', 381),
(4, 'App\\User', 382),
(4, 'App\\User', 383),
(4, 'App\\User', 384),
(4, 'App\\User', 385),
(4, 'App\\User', 386),
(4, 'App\\User', 388),
(4, 'App\\User', 389),
(4, 'App\\User', 390),
(4, 'App\\User', 391),
(4, 'App\\User', 393),
(4, 'App\\User', 394),
(4, 'App\\User', 396),
(4, 'App\\User', 397),
(4, 'App\\User', 398),
(4, 'App\\User', 399),
(4, 'App\\User', 400),
(4, 'App\\User', 401),
(4, 'App\\User', 402),
(4, 'App\\User', 403),
(4, 'App\\User', 405),
(4, 'App\\User', 406),
(4, 'App\\User', 407),
(4, 'App\\User', 408),
(1, 'App\\User', 409),
(6, 'App\\User', 409),
(1, 'App\\User', 410),
(6, 'App\\User', 410),
(4, 'App\\User', 411),
(4, 'App\\User', 413),
(4, 'App\\User', 414),
(4, 'App\\User', 415),
(4, 'App\\User', 416);

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
  `insurance_amount` decimal(20,2) DEFAULT NULL,
  `total_withdrawal_amount` decimal(20,2) DEFAULT NULL,
  `withdrawal_details` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `withdrawal_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdrawals`
--

INSERT INTO `withdrawals` (`id`, `user_id`, `pay_by_user_id`, `withdrawal_amount`, `payment_method`, `payment_method_details`, `withdrawal_charge`, `vat_amount`, `insurance_amount`, `total_withdrawal_amount`, `withdrawal_details`, `withdrawal_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '200', NULL, 200.00, NULL, NULL, 0.00, NULL, NULL, 200.00, NULL, 'paid', '2020-03-01 06:24:41', '2020-03-01 06:24:41', NULL),
(2, '200', NULL, 80.00, 'office', NULL, 0.00, NULL, NULL, 80.00, 'ok', 'paid', '2020-03-01 06:26:37', '2020-03-01 06:28:07', NULL),
(3, '1', NULL, 100.00, NULL, NULL, 12.00, 10.00, 2.00, 88.00, 'Taka', 'paid', '2020-03-08 01:50:59', '2020-03-08 01:50:59', NULL),
(4, '1', NULL, 100.00, 'office', NULL, 12.00, 10.00, 2.00, 88.00, 'Taka cash', 'paid', '2020-03-08 01:51:25', '2020-03-08 01:53:02', NULL),
(5, '253', NULL, 400.00, 'office', NULL, 48.00, 40.00, 8.00, 352.00, 'Cash', 'paid', '2020-03-13 00:37:28', '2020-03-14 23:54:38', NULL),
(6, '247', NULL, 428.00, NULL, NULL, 51.36, 42.80, 8.56, 376.64, 'Topup', 'paid', '2020-03-20 01:20:47', '2020-03-20 01:20:47', NULL),
(7, '247', NULL, 100.00, NULL, NULL, 12.00, 10.00, 2.00, 88.00, 'Topup', 'paid', '2020-03-21 01:35:08', '2020-03-21 01:35:08', NULL),
(8, '1', NULL, 2000.00, 'office', NULL, 240.00, 200.00, 40.00, 1760.00, 'cash', 'paid', '2020-04-06 07:18:18', '2020-04-06 07:18:52', NULL),
(9, '1', NULL, 100.00, 'office', NULL, 12.00, 10.00, 2.00, 88.00, 'cash', 'paid', '2020-05-11 12:27:29', '2020-05-11 12:28:20', NULL),
(10, '200', NULL, 10.00, 'office', NULL, 1.20, 1.00, 0.20, 8.80, 'cash', 'paid', '2020-05-12 00:06:48', '2020-05-13 00:27:49', NULL),
(11, '247', NULL, 100.00, 'office', NULL, 12.00, 10.00, 2.00, 88.00, 'Mehedi1', 'paid', '2020-05-12 04:25:15', '2020-05-13 00:00:45', NULL),
(12, '247', NULL, 300.00, NULL, NULL, 15.00, NULL, NULL, 285.00, 'Sakhipur', 'paid', '2020-05-12 23:55:04', '2020-05-12 23:55:04', NULL),
(13, '1', NULL, 1000.00, 'office', NULL, 50.00, NULL, NULL, 950.00, 'cash', 'paid', '2020-05-12 23:58:14', '2020-05-12 23:59:46', NULL),
(14, '247', NULL, 80.00, NULL, NULL, 4.00, NULL, NULL, 76.00, NULL, 'paid', '2020-05-13 00:14:29', '2020-05-13 00:14:29', NULL),
(15, '243', NULL, 400.00, NULL, NULL, 20.00, NULL, NULL, 380.00, NULL, 'paid', '2020-05-14 00:56:04', '2020-05-14 00:56:04', NULL),
(16, '361', NULL, 500.00, NULL, NULL, 25.00, NULL, NULL, 475.00, NULL, 'paid', '2020-06-13 01:05:56', '2020-06-13 01:05:56', NULL),
(17, '282', NULL, 200.00, NULL, NULL, 10.00, NULL, NULL, 190.00, NULL, 'paid', '2020-06-14 00:48:41', '2020-06-14 00:48:41', NULL),
(18, '354', NULL, 190.00, NULL, NULL, 9.50, NULL, NULL, 180.50, NULL, 'paid', '2020-06-14 02:21:09', '2020-06-14 02:21:09', NULL),
(19, '247', NULL, 500.00, NULL, NULL, 25.00, NULL, NULL, 475.00, NULL, 'paid', '2020-06-15 01:12:14', '2020-06-15 01:12:14', NULL);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dealer_bonuses`
--
ALTER TABLE `dealer_bonuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `member_trees`
--
ALTER TABLE `member_trees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=408;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `points`
--
ALTER TABLE `points`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stock_managers`
--
ALTER TABLE `stock_managers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `topup_balances`
--
ALTER TABLE `topup_balances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=532;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=417;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
