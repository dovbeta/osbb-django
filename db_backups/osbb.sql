-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 17, 2017 at 03:03 PM
-- Server version: 5.7.18-0ubuntu0.16.04.1
-- PHP Version: 7.0.18-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `osbb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add group', 4, 'add_group'),
(11, 'Can change group', 4, 'change_group'),
(12, 'Can delete group', 4, 'delete_group'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add apartment type', 7, 'add_apartmenttype'),
(20, 'Can change apartment type', 7, 'change_apartmenttype'),
(21, 'Can delete apartment type', 7, 'delete_apartmenttype'),
(22, 'Can add meter', 8, 'add_meter'),
(23, 'Can change meter', 8, 'change_meter'),
(24, 'Can delete meter', 8, 'delete_meter'),
(25, 'Can add apartment', 9, 'add_apartment'),
(26, 'Can change apartment', 9, 'change_apartment'),
(27, 'Can delete apartment', 9, 'delete_apartment'),
(28, 'Can add measurement', 10, 'add_measurement'),
(29, 'Can change measurement', 10, 'change_measurement'),
(30, 'Can delete measurement', 10, 'delete_measurement'),
(31, 'Can add meter type', 11, 'add_metertype'),
(32, 'Can change meter type', 11, 'change_metertype'),
(33, 'Can delete meter type', 11, 'delete_metertype');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$36000$qqQXS7gG8jR3$dQf/xmezdL493CnoG9hXhqRULl1/uc/315+XTbL27ao=', '2017-07-17 10:00:27.318079', 1, 'dovbeta', '', '', 'dovbeta@gmail.com', 1, 1, '2017-07-17 09:59:59.046528');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2017-07-17 10:01:45.784077', '1', 'ApartmentType object', 1, '[{"added": {}}]', 7, 1),
(2, '2017-07-17 10:02:08.655788', '2', 'ApartmentType object', 1, '[{"added": {}}]', 7, 1),
(3, '2017-07-17 10:02:20.323238', '3', 'ApartmentType object', 1, '[{"added": {}}]', 7, 1),
(4, '2017-07-17 10:02:47.673661', '4', 'ApartmentType object', 1, '[{"added": {}}]', 7, 1),
(5, '2017-07-17 10:02:57.404494', '5', 'ApartmentType object', 1, '[{"added": {}}]', 7, 1),
(6, '2017-07-17 11:46:40.217037', '1', 'Тепловий (МВт)', 1, '[{"added": {}}]', 11, 1),
(7, '2017-07-17 11:47:03.861949', '2', 'Тепловий (Гкал)', 1, '[{"added": {}}]', 11, 1),
(8, '2017-07-17 11:47:43.125709', '3', 'Електричний', 1, '[{"added": {}}]', 11, 1),
(9, '2017-07-17 11:47:55.256353', '4', 'Газовий', 1, '[{"added": {}}]', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(4, 'auth', 'group'),
(2, 'auth', 'permission'),
(3, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'osbb', 'apartment'),
(7, 'osbb', 'apartmenttype'),
(10, 'osbb', 'measurement'),
(8, 'osbb', 'meter'),
(11, 'osbb', 'metertype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2017-07-17 09:40:16.364713'),
(2, 'auth', '0001_initial', '2017-07-17 09:40:16.466285'),
(3, 'admin', '0001_initial', '2017-07-17 09:40:16.498605'),
(4, 'admin', '0002_logentry_remove_auto_add', '2017-07-17 09:40:16.511574'),
(5, 'contenttypes', '0002_remove_content_type_name', '2017-07-17 09:40:16.544032'),
(6, 'auth', '0002_alter_permission_name_max_length', '2017-07-17 09:40:16.556376'),
(7, 'auth', '0003_alter_user_email_max_length', '2017-07-17 09:40:16.566941'),
(8, 'auth', '0004_alter_user_username_opts', '2017-07-17 09:40:16.577885'),
(9, 'auth', '0005_alter_user_last_login_null', '2017-07-17 09:40:16.595635'),
(10, 'auth', '0006_require_contenttypes_0002', '2017-07-17 09:40:16.596816'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2017-07-17 09:40:16.627096'),
(12, 'auth', '0008_alter_user_username_max_length', '2017-07-17 09:40:16.642107'),
(13, 'sessions', '0001_initial', '2017-07-17 09:40:16.653697'),
(14, 'osbb', '0001_initial', '2017-07-17 09:59:14.258568'),
(15, 'osbb', '0002_auto_20170717_1155', '2017-07-17 11:55:41.049303'),
(16, 'osbb', '0003_auto_20170717_1156', '2017-07-17 11:56:35.668955');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('15zbttdoooqz0bj3qy1hxswnscoit5u5', 'ZjdhMjI1OGJkNzk0MDZmNjU3MjdhYzg3NDQ5NDBmZDA3OTkwNGMwNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiODcwMmFlYzcwZDZmMjhhMWZmNjRhZTVmODVkNTc3ZjU5NTZlMmY2In0=', '2017-07-31 10:00:27.321082');

-- --------------------------------------------------------

--
-- Table structure for table `osbb_apartment`
--

CREATE TABLE `osbb_apartment` (
  `id` int(11) NOT NULL,
  `number` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entrance` int(11) NOT NULL,
  `floor` int(11) NOT NULL,
  `area` double NOT NULL,
  `rooms_number` int(11) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `osbb_apartment`
--

INSERT INTO `osbb_apartment` (`id`, `number`, `entrance`, `floor`, `area`, `rooms_number`, `type_id`) VALUES
(1, '1', 1, 2, 94.1, 3, 1),
(2, '2', 1, 2, 78.3, 2, 1),
(3, '3', 1, 2, 52, 1, 1),
(4, '4', 1, 3, 94.1, 3, 1),
(5, '5', 1, 3, 78.7, 2, 1),
(6, '6', 1, 3, 51.9, 1, 1),
(7, '7', 1, 4, 94.1, 3, 1),
(8, '8', 1, 4, 78.5, 2, 1),
(9, '9', 1, 4, 51.9, 1, 1),
(10, '10', 1, 5, 94.2, 3, 1),
(11, '11', 1, 5, 78.4, 2, 1),
(12, '12', 1, 5, 52.1, 1, 1),
(13, '13', 1, 6, 96.4, 3, 1),
(14, '14', 1, 6, 82.2, 2, 1),
(15, '15', 1, 6, 55.5, 1, 1),
(16, '16', 1, 7, 96.6, 3, 1),
(17, '17', 1, 7, 82.5, 2, 1),
(18, '18', 1, 7, 55, 1, 1),
(19, '19', 1, 8, 96.4, 3, 1),
(20, '20', 1, 8, 82.8, 2, 1),
(21, '21', 1, 8, 55.4, 1, 1),
(22, '22а', 1, 10, 91.4, 3, 1),
(23, '22', 1, 9, 95.6, 3, 1),
(24, '23а', 1, 10, 75.3, 2, 1),
(25, '23', 1, 9, 82.5, 2, 1),
(26, '24', 1, 9, 55.4, 1, 1),
(27, '24а', 1, 10, 48.3, 1, 1),
(28, '25', 2, 2, 68.9, 2, 1),
(29, '26', 2, 2, 50.2, 1, 1),
(30, '27', 2, 2, 69.4, 2, 1),
(31, '28', 2, 3, 69.3, 2, 1),
(32, '29', 2, 3, 50.2, 1, 1),
(33, '30', 2, 3, 69.6, 2, 1),
(34, '31', 2, 4, 73.7, 2, 1),
(35, '32', 2, 4, 49.9, 1, 1),
(36, '33', 2, 4, 69.6, 2, 1),
(37, '34', 2, 5, 69.3, 2, 1),
(38, '35', 2, 5, 50.2, 1, 1),
(39, '36', 2, 5, 69.7, 2, 1),
(40, '37', 2, 6, 71.3, 2, 1),
(41, '38', 2, 6, 52.2, 1, 1),
(42, '39', 2, 6, 71.6, 2, 1),
(43, '40', 2, 7, 71, 2, 1),
(44, '41', 2, 7, 51.9, 1, 1),
(45, '42', 2, 7, 71.5, 2, 1),
(46, '43', 2, 8, 71.1, 2, 1),
(47, '44', 2, 8, 52, 1, 1),
(48, '45', 2, 8, 71.6, 2, 1),
(49, '46а', 2, 10, 66.2, 2, 1),
(50, '46', 2, 9, 70.6, 2, 1),
(51, '47', 2, 9, 102, 3, 1),
(52, '48а', 2, 10, 67.5, 2, 1),
(53, '48', 2, 9, 71.5, 2, 1),
(54, '49', 3, 2, 69.1, 2, 1),
(55, '50', 3, 2, 50.1, 1, 1),
(56, '51', 3, 2, 69.1, 2, 1),
(57, '52', 3, 3, 69.2, 2, 1),
(58, '53', 3, 3, 50.1, 1, 1),
(59, '54', 3, 3, 69.1, 2, 1),
(60, '55', 3, 4, 69, 2, 1),
(61, '56', 3, 4, 50.1, 1, 1),
(62, '57', 3, 4, 69.1, 2, 1),
(63, '58', 3, 5, 69.2, 2, 1),
(64, '59', 3, 5, 50.4, 1, 1),
(65, '60', 3, 5, 69.4, 2, 1),
(66, '61', 3, 6, 71.2, 2, 1),
(67, '62', 3, 6, 52.1, 1, 1),
(68, '63', 3, 6, 71.4, 2, 1),
(69, '64', 3, 7, 71.3, 2, 1),
(70, '65', 3, 7, 52.2, 1, 1),
(71, '66', 3, 7, 71.3, 2, 1),
(72, '67', 3, 8, 71.1, 2, 1),
(73, '68', 3, 8, 52.2, 1, 1),
(74, '69', 3, 8, 71.2, 2, 1),
(75, '70', 3, 9, 144.9, 2, 1),
(76, '71', 3, 9, 51.9, 1, 1),
(77, '72', 3, 9, 99.3, 3, 1),
(78, '73', 4, 2, 67.6, 2, 1),
(79, '74', 4, 2, 91.2, 3, 1),
(80, '75', 4, 3, 67.7, 2, 1),
(81, '76', 4, 3, 91.8, 3, 1),
(82, '77', 4, 4, 68, 2, 1),
(83, '78', 4, 4, 91.9, 3, 1),
(84, '79', 4, 5, 67.8, 2, 1),
(85, '80', 4, 5, 92.2, 3, 1),
(86, '81', 4, 6, 70.9, 2, 1),
(87, '82', 4, 6, 95, 3, 1),
(88, '83', 4, 7, 71, 2, 1),
(89, '84', 4, 7, 95.1, 3, 1),
(90, '85', 4, 8, 70.8, 2, 1),
(91, '86', 4, 8, 95.3, 3, 1),
(92, '87', 4, 9, 145, 4, 1),
(93, '88', 4, 9, 94.9, 3, 1),
(94, '88а', 4, 10, 93.6, 2, 1),
(95, '89', 5, 2, 94.3, 3, 1),
(96, '90', 5, 2, 78.1, 2, 1),
(97, '91', 5, 2, 51.3, 1, 1),
(98, '92', 5, 3, 94.5, 3, 1),
(99, '93', 5, 3, 78.3, 2, 1),
(100, '94', 5, 3, 51.3, 1, 1),
(101, '95', 5, 4, 94.4, 3, 1),
(102, '96', 5, 4, 78.2, 2, 1),
(103, '97', 5, 4, 51.5, 1, 1),
(104, '98', 5, 5, 94.2, 3, 1),
(105, '99', 5, 5, 78.4, 2, 1),
(106, '100', 5, 5, 51.2, 1, 1),
(107, '101', 5, 6, 96.8, 3, 1),
(108, '102', 5, 6, 80.7, 2, 1),
(109, '103', 5, 6, 54.4, 1, 1),
(110, '104', 5, 7, 97.1, 3, 1),
(111, '105', 5, 7, 81.1, 2, 1),
(112, '106', 5, 7, 54.8, 1, 1),
(113, '107', 5, 8, 97, 3, 1),
(114, '108', 5, 8, 81.6, 2, 1),
(115, '109', 5, 8, 54.9, 1, 1),
(116, '110', 5, 9, 96.6, 3, 1),
(117, '110а', 5, 10, 92.6, 3, 1),
(118, '111а', 5, 10, 82, 2, 1),
(119, '111', 5, 9, 81.7, 2, 1),
(120, '112', 5, 9, 55.1, 1, 1),
(121, '112а', 5, 10, 48, 1, 1),
(122, '113', 6, 2, 68.8, 2, 1),
(123, '114', 6, 2, 49.7, 1, 1),
(124, '115', 6, 2, 69.1, 2, 1),
(125, '116', 6, 3, 68.8, 2, 1),
(126, '117', 6, 3, 50, 1, 1),
(127, '118', 6, 3, 69.1, 2, 1),
(128, '119', 6, 4, 68.8, 2, 1),
(129, '120', 6, 4, 49.9, 1, 1),
(130, '121', 6, 4, 68.8, 2, 1),
(131, '122', 6, 5, 69.4, 2, 1),
(132, '123', 6, 5, 50.3, 1, 1),
(133, '124', 6, 5, 68.7, 2, 1),
(134, '125', 6, 6, 71.2, 2, 1),
(135, '126', 6, 6, 51.7, 1, 1),
(136, '127', 6, 6, 71, 2, 1),
(137, '128', 6, 7, 71.2, 2, 1),
(138, '129', 6, 7, 51.7, 1, 1),
(139, '130', 6, 7, 71.1, 2, 1),
(140, '131', 6, 8, 71.2, 2, 1),
(141, '132', 6, 8, 51.6, 1, 1),
(142, '133', 6, 8, 71.2, 2, 1),
(143, '134', 6, 9, 71.1, 2, 1),
(144, '134а', 6, 10, 67.4, 2, 1),
(145, '135', 6, 9, 99.8, 2, 1),
(146, '136', 6, 9, 71.5, 2, 1),
(147, '136а', 6, 10, 68.5, 2, 1),
(148, '137', 7, 2, 69, 2, 1),
(149, '138', 7, 2, 50, 1, 1),
(150, '139', 7, 2, 69.4, 2, 1),
(151, '140', 7, 3, 69.2, 2, 1),
(152, '141', 7, 3, 49.9, 1, 1),
(153, '142', 7, 3, 69.2, 2, 1),
(154, '143', 7, 4, 69.1, 2, 1),
(155, '144', 7, 4, 49.6, 1, 1),
(156, '145', 7, 4, 69.4, 2, 1),
(157, '146', 7, 5, 69.2, 2, 1),
(158, '147', 7, 5, 49.9, 1, 1),
(159, '148', 7, 5, 69, 2, 1),
(160, '149', 7, 6, 71.3, 2, 1),
(161, '150', 7, 6, 51.8, 1, 1),
(162, '151', 7, 6, 71.3, 2, 1),
(163, '152', 7, 7, 71.4, 2, 1),
(164, '153', 7, 7, 51.7, 1, 1),
(165, '154', 7, 7, 71.4, 2, 1),
(166, '155', 7, 8, 71.2, 2, 1),
(167, '156', 7, 8, 51.6, 1, 1),
(168, '157', 7, 8, 71.5, 2, 1),
(169, '158', 7, 9, 70.9, 2, 1),
(170, '158а', 7, 10, 67.3, 2, 1),
(171, '159', 7, 9, 100.7, 2, 1),
(172, '160а', 7, 10, 68, 2, 1),
(173, '160', 7, 9, 71.8, 2, 1),
(174, '161', 8, 2, 51.4, 1, 1),
(175, '162', 8, 2, 78.3, 2, 1),
(176, '163', 8, 2, 94.2, 3, 1),
(177, '164', 8, 3, 51.4, 1, 1),
(178, '165', 8, 3, 78.4, 2, 1),
(179, '166', 8, 3, 94.2, 3, 1),
(180, '167', 8, 4, 51.2, 1, 1),
(181, '168', 8, 4, 78.6, 2, 1),
(182, '169', 8, 4, 94.4, 3, 1),
(183, '170', 8, 5, 51.5, 1, 1),
(184, '171', 8, 5, 78.7, 2, 1),
(185, '172', 8, 5, 94.7, 3, 1),
(186, '173', 8, 6, 54.7, 1, 1),
(187, '174', 8, 6, 81.8, 2, 1),
(188, '175', 8, 6, 97, 3, 1),
(189, '176', 8, 7, 54.7, 1, 1),
(190, '177', 8, 7, 82.2, 2, 1),
(191, '178', 8, 7, 96.9, 3, 1),
(192, '179', 8, 8, 54.9, 1, 1),
(193, '180', 8, 8, 82, 2, 1),
(194, '181', 8, 8, 97, 3, 1),
(195, '182', 8, 9, 54.9, 1, 1),
(196, '182а', 8, 10, 47.3, 1, 1),
(197, '183', 8, 9, 81.7, 2, 1),
(198, '183а', 8, 10, 81.3, 2, 1),
(199, '184', 8, 9, 96, 3, 1),
(200, '184а', 8, 10, 93.4, 3, 1),
(201, '185', 9, 2, 91.9, 3, 1),
(202, '186', 9, 2, 68.1, 2, 1),
(203, '187', 9, 3, 91.9, 3, 1),
(204, '188', 9, 3, 68.3, 2, 1),
(205, '189', 9, 4, 92.2, 3, 1),
(206, '190', 9, 4, 68.4, 2, 1),
(207, '191', 9, 5, 92.2, 3, 1),
(208, '192', 9, 5, 68.1, 2, 1),
(209, '193', 9, 6, 94.5, 3, 1),
(210, '194', 9, 6, 71.1, 2, 1),
(211, '195', 9, 7, 95, 3, 1),
(212, '196', 9, 7, 70.6, 2, 1),
(213, '197', 9, 8, 95.4, 3, 1),
(214, '198', 9, 8, 70.9, 2, 1),
(215, '199', 9, 9, 95.3, 3, 1),
(216, '199а', 9, 10, 92.5, 3, 1),
(217, '200', 9, 9, 146.8, 4, 1),
(218, '201', 10, 2, 69.4, 2, 1),
(219, '202', 10, 2, 49.7, 1, 1),
(220, '203', 10, 2, 70, 2, 1),
(221, '204', 10, 3, 69.5, 2, 1),
(222, '205', 10, 3, 49.8, 1, 1),
(223, '206', 10, 3, 69.4, 2, 1),
(224, '207', 10, 4, 69, 2, 1),
(225, '208', 10, 4, 50.3, 1, 1),
(226, '209', 10, 4, 69.5, 2, 1),
(227, '210', 10, 5, 69.1, 2, 1),
(228, '211', 10, 5, 50.1, 1, 1),
(229, '212', 10, 5, 69.5, 2, 1),
(230, '213', 10, 6, 71.4, 2, 1),
(231, '214', 10, 6, 51.8, 1, 1),
(232, '215', 10, 6, 71.4, 2, 1),
(233, '216', 10, 7, 71.6, 2, 1),
(234, '217', 10, 7, 51.9, 1, 1),
(235, '218', 10, 7, 71.7, 2, 1),
(236, '219', 10, 8, 71.8, 2, 1),
(237, '220', 10, 8, 51.3, 1, 1),
(238, '221', 10, 8, 72.1, 2, 1),
(239, '222', 10, 9, 145.8, 2, 1),
(240, '223', 10, 9, 51.8, 1, 1),
(241, '224', 10, 9, 101, 3, 1),
(242, '225', 11, 2, 69, 2, 1),
(243, '226', 11, 2, 49.6, 1, 1),
(244, '227', 11, 2, 69, 2, 1),
(245, '228', 11, 3, 68.9, 2, 1),
(246, '229', 11, 3, 49.6, 1, 1),
(247, '230', 11, 3, 69, 2, 1),
(248, '231', 11, 4, 69.1, 2, 1),
(249, '232', 11, 4, 49.8, 1, 1),
(250, '233', 11, 4, 69.1, 2, 1),
(251, '234', 11, 5, 69, 2, 1),
(252, '235', 11, 5, 49.7, 1, 1),
(253, '236', 11, 5, 69.1, 2, 1),
(254, '237', 11, 6, 71.1, 2, 1),
(255, '238', 11, 6, 51.5, 1, 1),
(256, '239', 11, 6, 71.1, 2, 1),
(257, '240', 11, 7, 71.2, 2, 1),
(258, '241', 11, 7, 51.9, 1, 1),
(259, '242', 11, 7, 71.2, 2, 1),
(260, '243', 11, 8, 71.5, 2, 1),
(261, '244', 11, 8, 51.4, 1, 1),
(262, '245', 11, 8, 71.4, 2, 1),
(263, '246', 11, 9, 71.4, 2, 1),
(264, '246а', 11, 10, 66.6, 2, 1),
(265, '247', 11, 9, 101.4, 3, 1),
(266, '248а', 11, 10, 67.5, 2, 1),
(267, '248', 11, 9, 71.3, 2, 1),
(268, '249', 12, 2, 69.3, 2, 1),
(269, '250', 12, 2, 49.7, 1, 1),
(270, '251', 12, 2, 69.3, 2, 1),
(271, '252', 12, 3, 69.2, 2, 1),
(272, '253', 12, 3, 50.1, 1, 1),
(273, '254', 12, 3, 69.6, 2, 1),
(274, '255', 12, 4, 69.2, 2, 1),
(275, '256', 12, 4, 49.8, 1, 1),
(276, '257', 12, 4, 69.5, 2, 1),
(277, '258', 12, 5, 69.3, 2, 1),
(278, '259', 12, 5, 49.9, 1, 1),
(279, '260', 12, 5, 69.6, 2, 1),
(280, '261', 12, 6, 71.4, 2, 1),
(281, '262', 12, 6, 51.6, 1, 1),
(282, '263', 12, 6, 71.6, 2, 1),
(283, '264', 12, 7, 71.5, 2, 1),
(284, '265', 12, 7, 51.8, 1, 1),
(285, '266', 12, 7, 71.6, 2, 1),
(286, '267', 12, 8, 71, 2, 1),
(287, '268', 12, 8, 51.4, 1, 1),
(288, '269', 12, 8, 71.6, 2, 1),
(289, '270а', 12, 10, 67.5, 2, 1),
(290, '270', 12, 9, 71.6, 2, 1),
(291, '271', 12, 9, 101.5, 3, 1),
(292, '272а', 12, 10, 68.6, 2, 1),
(293, '272', 12, 9, 71.5, 2, 1),
(294, '273', 13, 2, 51.4, 1, 1),
(295, '274', 13, 2, 78.4, 2, 1),
(296, '275', 13, 2, 94.6, 3, 1),
(297, '276', 13, 3, 51.4, 1, 1),
(298, '277', 13, 3, 78.6, 2, 1),
(299, '278', 13, 3, 94.6, 3, 1),
(300, '279', 13, 4, 51.6, 1, 1),
(301, '280', 13, 4, 78.6, 2, 1),
(302, '281', 13, 4, 94.7, 3, 1),
(303, '282', 13, 5, 52, 1, 1),
(304, '283', 13, 5, 78.6, 2, 1),
(305, '284', 13, 5, 94.2, 3, 1),
(306, '285', 13, 6, 55.1, 1, 1),
(307, '286', 13, 6, 82.6, 2, 1),
(308, '287', 13, 6, 97.2, 3, 1),
(309, '288', 13, 7, 55.2, 1, 1),
(310, '289', 13, 7, 82.4, 2, 1),
(311, '290', 13, 7, 97, 3, 1),
(312, '291', 13, 8, 55.6, 1, 1),
(313, '292', 13, 8, 82.8, 2, 1),
(314, '293', 13, 8, 97.4, 3, 1),
(315, '294', 13, 9, 54.9, 1, 1),
(316, '294а', 13, 10, 47.6, 1, 1),
(317, '295', 13, 9, 82.3, 2, 1),
(318, '295а', 13, 10, 76, 2, 1),
(319, '296а', 13, 10, 93, 3, 1),
(320, '296', 13, 9, 96.3, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `osbb_apartmenttype`
--

CREATE TABLE `osbb_apartmenttype` (
  `id` int(11) NOT NULL,
  `text` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `osbb_apartmenttype`
--

INSERT INTO `osbb_apartmenttype` (`id`, `text`) VALUES
(1, 'Квартира'),
(2, 'Офіс'),
(3, 'Підвал'),
(4, 'Сміттєкамера'),
(5, 'Кладовка');

-- --------------------------------------------------------

--
-- Table structure for table `osbb_measurement`
--

CREATE TABLE `osbb_measurement` (
  `id` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `meter_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `osbb_meter`
--

CREATE TABLE `osbb_meter` (
  `id` int(11) NOT NULL,
  `number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valid_date` date NOT NULL,
  `apartment_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `osbb_meter`
--

INSERT INTO `osbb_meter` (`id`, `number`, `valid_date`, `apartment_id`, `type_id`) VALUES
(1, '11 041 378', '2016-10-21', 1, 1),
(2, '11 041 085', '2016-11-03', 2, 1),
(3, '11 041 137', '2016-11-10', 3, 1),
(4, '13 141 609', '2016-11-15', 4, 1),
(5, '11 041 115', '2016-11-15', 5, 1),
(6, '13 141 600', '2016-11-15', 7, 1),
(7, '13 141 532', '2016-10-21', 10, 1),
(8, '13 141 528', '2015-04-06', 11, 1),
(9, '13 141 604', '2016-10-21', 12, 1),
(10, '13 141 607', '2016-10-21', 13, 1),
(11, '13 141 573', '2016-09-14', 14, 1),
(12, '13 141 570', '2016-10-21', 15, 1),
(13, '13 141 531', '2016-11-10', 16, 1),
(14, '13 141 601', '2016-10-21', 18, 1),
(15, '13 141 514', '2016-11-03', 19, 1),
(16, '13 141 575', '2016-10-21', 20, 1),
(17, '3 741 384', '2016-11-10', 25, 1),
(18, '3 941 668', '2016-11-10', 26, 1),
(19, '23 441 192', '2016-11-10', 22, 1),
(20, '23 340 079', '2016-10-21', 24, 1),
(21, '23 441 196', '2016-10-21', 27, 1),
(22, '13 141 523', '2016-10-21', 28, 1),
(23, '13 141 565', '2016-11-15', 29, 1),
(24, '1 576 852', '2017-04-01', 30, 1),
(25, '13 141 535', '2016-10-10', 31, 1),
(26, '13 141 602', '2016-11-15', 32, 1),
(27, '13 141 612', '2016-10-21', 33, 1),
(28, '13 141 511', '2016-10-21', 34, 1),
(29, '1 314 561', '2016-11-16', 37, 1),
(30, '13 141 549', '2016-11-15', 38, 1),
(31, '13 141 608', '2016-11-15', 39, 1),
(32, '13 141 548', '2016-10-10', 40, 1),
(33, '13 141 598', '2016-11-03', 41, 1),
(34, '13 141 553', '2016-11-03', 42, 1),
(35, '13 141 581', '2016-10-21', 43, 1),
(36, '13 141 541', '2016-10-21', 44, 1),
(37, '1 314 576', '2016-11-15', 45, 1),
(38, '13 141 529', '2016-10-21', 46, 1),
(39, '13 141 517', '2016-10-21', 47, 1),
(40, '13 141 563', '2016-10-19', 48, 1),
(41, '3 741 389', '2016-11-03', 50, 1),
(42, '3 941 667', '2016-10-21', 51, 1),
(43, '3 941 670', '2016-10-21', 53, 1),
(44, '23 340 066', '2016-10-21', 49, 1),
(45, '23 340 050', '2016-11-15', 52, 1),
(46, '13 141 610', '2016-06-29', 54, 1),
(47, '13 141 599', '2016-11-10', 55, 1),
(48, '13 141 574', '2015-10-13', 56, 1),
(49, '13 141 534', '2015-11-10', 57, 1),
(50, '13 141 618', '2016-11-03', 58, 1),
(51, '13 141 533', '2015-10-27', 60, 1),
(52, '13 141 508', '2016-09-14', 61, 1),
(53, '13 141 622', '2016-10-10', 63, 1),
(55, '13 141 516', '2016-09-14', 65, 1),
(57, '13 141 621', '2016-10-10', 67, 1),
(59, '13 141 564', '2016-11-15', 70, 1),
(60, '13 141 593', '2016-10-21', 71, 1),
(61, '13 141 620', '2016-11-03', 73, 1),
(62, '13 141 519', '2016-10-21', 74, 1),
(63, '3 840 465', '2016-10-21', 75, 1),
(64, '3 741 382', '2016-11-15', 77, 1),
(65, '11 041 379', '2016-11-03', 78, 1),
(66, '11 041 111', '2016-09-29', 79, 1),
(67, '11 041 141', '2016-11-03', 81, 1),
(68, '11 041 371', '2016-11-15', 82, 1),
(69, '11 041 376', '2016-10-10', 85, 1),
(70, '11 041 364', '2016-10-21', 86, 1),
(71, '11 041 361', '2016-10-21', 87, 1),
(72, '11 041 372', '2016-11-15', 88, 1),
(73, '11 041 377', '2016-11-03', 89, 1),
(74, '11 041 118', '2016-11-03', 90, 1),
(75, '11 041 134', '2016-10-21', 91, 1),
(76, '3 741 392', '2016-11-03', 92, 1),
(77, '3 840 791', '2016-10-21', 93, 1),
(78, '23 340 084', '2016-11-09', 94, 1),
(79, '13 640 062', '2016-12-06', 95, 1),
(80, '13 141 526', '2016-10-21', 97, 1),
(81, '13 141 590', '2016-11-10', 98, 1),
(82, '13 640 191', '2016-11-23', 99, 1),
(83, '13 640 050', '2016-11-15', 100, 1),
(84, '13 640 007', '2016-10-21', 101, 1),
(85, '13 640 190', '2016-10-10', 102, 1),
(86, '13 640 027', '2016-10-21', 103, 1),
(87, '13 640 192', '2016-10-21', 104, 1),
(88, '13 640 012', '2016-12-06', 105, 1),
(89, '13 640 026', '2016-10-21', 106, 1),
(90, '13 640 016', '2016-10-21', 107, 1),
(91, '13 640 057', '2016-10-21', 109, 1),
(92, '13 141 591', '2016-10-21', 110, 1),
(93, '13 640 005', '2016-10-21', 111, 1),
(94, '13 640 056', '2016-11-03', 112, 1),
(95, '13 640 069', '2016-10-21', 113, 1),
(96, '13 640 049', '2016-11-10', 115, 1),
(97, '12 240 831', '2016-11-03', 116, 1),
(98, '12 240 827', '2016-10-21', 119, 1),
(99, '12 240 923', '2016-10-21', 120, 1),
(100, '23 441 199', '2016-09-14', 117, 1),
(101, '233 450 100', '2016-09-19', 118, 1),
(102, '23 441 194', '2016-10-21', 121, 1),
(103, '13 640 017', '2016-11-16', 122, 1),
(104, '13 141 629', '2016-11-10', 123, 1),
(105, '13 640 073', '2016-10-21', 124, 1),
(106, '13 640 394', '2016-11-15', 125, 1),
(107, '13 141 537', '2016-10-21', 126, 1),
(108, '13 640 015', '2016-10-21', 127, 1),
(109, '13 640 181', '2016-11-15', 128, 1),
(110, '13 640 078', '2016-10-21', 129, 1),
(111, '13 640 074', '2016-11-03', 131, 1),
(112, '13 141 596', '2016-11-10', 132, 1),
(113, '13 640 101', '2016-10-21', 133, 1),
(114, '13 141 585', '2016-12-07', 135, 1),
(115, '13 141 560', '2016-10-21', 136, 1),
(116, '13 640 204', '2016-10-21', 137, 1),
(117, '13 640 123', '2016-10-21', 138, 1),
(118, '13 141 504', '2016-11-10', 139, 1),
(119, '13 141 614', '2016-10-10', 140, 1),
(120, '13 640 060', '2016-10-21', 141, 1),
(121, '13 141 605', '2016-10-21', 142, 1),
(122, '12 240 804', '2016-10-21', 143, 1),
(123, '12 240 806', '2016-11-10', 145, 1),
(124, '13 842 061', '2016-10-21', 146, 1),
(125, '23 441 204', '2016-10-21', 144, 1),
(126, '23 340 055', '2016-09-14', 147, 1),
(127, '23 722 412', '2016-11-10', 148, 1),
(128, '13 640 179', '2016-11-10', 149, 1),
(129, '13 640 119', '2016-11-10', 150, 1),
(130, '13 640 201', '2016-11-03', 151, 1),
(131, '13 640 173', '2016-11-15', 152, 1),
(132, '13 640 164', '2016-10-21', 154, 1),
(133, '13 640 148', '2016-10-21', 155, 1),
(134, '13 640 144', '2016-10-21', 156, 1),
(135, '13 640 165', '2016-09-14', 157, 1),
(136, '13 640 171', '2016-10-21', 158, 1),
(137, '13 640 183', '2016-10-21', 160, 1),
(138, '43 540 303', '2016-11-24', 161, 1),
(139, '13 640 132', '2016-11-03', 162, 1),
(140, '13 640 177', '2016-10-21', 163, 1),
(141, '13 141 547', '2016-10-21', 164, 1),
(142, '13 640 040', '2016-10-21', 165, 1),
(143, '23 441 273', '2016-11-10', 166, 1),
(144, '1 587 799', '2016-11-24', 167, 1),
(145, '13 640 014', '2016-11-03', 168, 1),
(146, '13 541 092', '2016-10-21', 169, 1),
(147, '13 541 084', '2016-10-21', 171, 1),
(148, '12 240 903', '2016-11-03', 173, 1),
(149, '23 340 056', '2016-11-10', 170, 1),
(150, '23 441 189', '2016-10-21', 172, 1),
(151, '13 640 068', '2016-10-21', 174, 1),
(152, '13 141 619', '2016-09-19', 175, 1),
(153, '13 141 584', '2016-09-29', 176, 1),
(154, '13 640 158', '2016-12-06', 177, 1),
(155, '13 141 617', '2016-11-03', 178, 1),
(156, '13 640 018', '2016-11-10', 179, 1),
(157, '13 141 805', '2016-11-10', 180, 1),
(158, '13 640 047', '2016-10-21', 182, 1),
(159, '13 640 051', '2016-11-15', 183, 1),
(160, '8 845 045 332', '2014-08-04', 184, 1),
(161, '13 640 090', '2016-11-15', 185, 1),
(162, '13 640 081', '2016-10-10', 187, 1),
(163, '13 141 624', '2016-09-14', 188, 1),
(164, '13 141 558', '2016-10-21', 189, 1),
(165, '131 411 626', '2016-10-10', 190, 1),
(166, '13 141 507', '2016-10-21', 191, 1),
(167, '13 640 067', '2016-11-11', 192, 1),
(168, '13 640 063', '2016-10-21', 193, 1),
(169, '13 640 046', '2016-11-10', 194, 1),
(170, '12 240 821', '2016-10-21', 197, 1),
(171, '12 280 805', '2016-10-21', 199, 1),
(172, '23 340 097', '2016-10-21', 196, 1),
(173, '23 340 108', '2016-11-15', 198, 1),
(174, '23 340 080', '2016-12-13', 200, 1),
(175, '13 141 509', '2016-10-21', 201, 1),
(176, '13 141 632', '2016-11-03', 202, 1),
(177, '13 141 512', '2016-10-10', 205, 1),
(178, '13 141 579', '2016-11-15', 206, 1),
(179, '23 441 218', '2016-12-06', 207, 1),
(180, '13 141 587', '2016-10-10', 208, 1),
(181, '13 141 586', '2016-11-03', 209, 1),
(182, '13 141 625', '2016-10-21', 210, 1),
(183, '13 141 623', '2016-11-15', 211, 1),
(184, '13 141 588', '2016-10-21', 212, 1),
(185, '13 640 044', '2016-10-21', 213, 1),
(186, '13 141 578', '2016-11-10', 214, 1),
(187, '13 541 083', '2016-10-21', 215, 1),
(188, '23 441 280', '2016-11-03', 216, 1),
(189, '12 240 814', '2016-10-21', 217, 1),
(190, '13 640 059', '2016-10-21', 218, 1),
(191, '23 441 274', '2016-10-21', 220, 1),
(192, '13 640 070', '2016-10-10', 221, 1),
(193, '13 640 095', '2016-10-21', 222, 1),
(194, '13 640 046', '2016-11-15', 223, 1),
(195, '13 640 091', '2016-11-03', 224, 1),
(196, '13 640 065', '2016-09-29', 225, 1),
(197, '13 640 196', '2016-09-07', 226, 1),
(198, '13 640 089', '2016-10-21', 227, 1),
(199, '13 640 038', '2016-10-21', 228, 1),
(200, '13 640 039', '2016-10-21', 229, 1),
(201, '13 640 055', '2016-10-21', 230, 1),
(202, '13 640 020', '2016-11-03', 231, 1),
(203, '13 640 030', '2016-09-14', 232, 1),
(204, '13 640 023', '2016-10-21', 233, 1),
(205, '13 640 034', '2016-10-12', 234, 1),
(206, '13 640 053', '2016-10-21', 235, 1),
(207, '13 640 036', '2016-10-21', 236, 1),
(208, '13 640 029', '2016-11-03', 237, 1),
(209, '13 640 043', '2016-10-21', 238, 1),
(210, '13 541 082', '2016-10-21', 239, 1),
(212, '13 640 082', '2016-10-21', 240, 1),
(213, '12 240 918', '2016-10-21', 241, 1),
(214, '13 141 582', '2016-10-21', 242, 1),
(215, '13 141 554', '2016-11-15', 243, 1),
(216, '23 441 286', '2016-11-15', 244, 1),
(217, '13 640 061', '2016-10-21', 245, 1),
(218, '13 640 041', '2016-11-10', 246, 1),
(219, '13 640 045', '2016-11-10', 247, 1),
(220, '13 141 551', '2016-10-21', 248, 1),
(221, '13 141 543', '2016-10-21', 249, 1),
(222, '13 640 162', '2016-11-03', 250, 1),
(223, '13 141 597', '2016-11-10', 251, 1),
(224, '13 541 978', '2016-10-21', 252, 1),
(225, '13 640 186', '2016-11-15', 253, 1),
(226, '13 141 583', '2016-11-15', 254, 1),
(227, '13 640 159', '2016-11-14', 256, 1),
(228, '13 141 503', '2016-11-15', 257, 1),
(229, '13 141 527', '2016-09-14', 258, 1),
(230, '13 141 530', '2016-10-21', 259, 1),
(231, '13 640 176', '2016-10-21', 261, 1),
(232, '13 640 161', '2016-11-10', 262, 1),
(233, '1 630 868', '2016-09-29', 263, 1),
(234, '12 240 822', '2016-11-10', 265, 1),
(235, '23 340 051', '2016-10-21', 264, 1),
(236, '3 741 387', '2016-11-10', 267, 1),
(237, '23 441 215', '2016-10-21', 266, 1),
(238, '13 640 149', '2016-10-21', 268, 1),
(239, '13 541 977', '2016-11-15', 269, 1),
(240, '13 141 539', '2016-11-10', 270, 1),
(241, '13 141 542', '2016-11-03', 272, 1),
(242, '13 141 567', '2016-11-15', 273, 1),
(243, '13 640 075', '2016-11-03', 275, 1),
(244, '13 640 064', '2016-11-10', 276, 1),
(245, '13 141 630', '2016-10-21', 277, 1),
(246, '13 640 100', '2016-11-24', 278, 1),
(247, '13 640 019', '2016-10-21', 279, 1),
(248, '13 141 545', '2016-10-21', 280, 1),
(249, '13 640 066', '2016-11-15', 281, 1),
(250, '13 141 538', '2016-10-21', 282, 1),
(251, '13 640 157', '2016-11-03', 283, 1),
(252, '13 640 092', '2016-11-15', 284, 1),
(253, '13 141 540', '2016-10-21', 285, 1),
(254, '13 640 139', '2016-10-21', 286, 1),
(255, '13 541 086', '2016-10-21', 287, 1),
(256, '13 141 559', '2016-10-21', 288, 1),
(257, '13 541 086', '2106-10-21', 290, 1),
(258, '12 240 919', '2016-09-29', 293, 1),
(259, '23 441 268', '2016-10-21', 289, 1),
(260, '23 340 074', '2016-10-10', 292, 1),
(261, '13 640 042', '2016-10-21', 294, 1),
(262, '13 640 085', '2016-10-21', 295, 1),
(263, '13 141 556', '2016-10-21', 296, 1),
(264, '13 640 003', '2016-11-10', 297, 1),
(265, '13 640 058', '2016-10-21', 298, 1),
(266, '13 640 088', '2016-10-21', 299, 1),
(267, '13 141 595', '2016-10-21', 300, 1),
(268, '13 640 174', '2016-11-03', 301, 1),
(269, '13 640 006', '2016-10-21', 302, 1),
(270, '13 141 615', '2016-11-15', 303, 1),
(271, '13 141 550', '2016-11-10', 304, 1),
(272, '13 640 079', '2016-10-21', 305, 1),
(273, '13 640 028', '2016-10-21', 306, 1),
(274, '13 640 032', '2016-11-03', 307, 1),
(275, '13 640 188', '2016-10-21', 308, 1),
(276, '13 141 506', '2016-10-21', 309, 1),
(277, '13 640 197', '2016-10-21', 310, 1),
(278, '13 640 199', '2016-10-21', 311, 1),
(279, '13 640 087', '2016-11-03', 312, 1),
(280, '4 404 091', '2015-03-02', 313, 1),
(281, '13 640 052', '2016-10-21', 314, 1),
(282, '12 240 794', '2016-10-21', 315, 1),
(283, '12 240 797', '2016-10-21', 317, 1),
(284, '22 440 552', '2016-11-10', 320, 1),
(285, '23 441 282', '2016-10-10', 316, 1),
(286, '23 441 209', '2013-08-01', 318, 1),
(287, '23 441 198', '2016-10-21', 319, 1);

-- --------------------------------------------------------

--
-- Table structure for table `osbb_metertype`
--

CREATE TABLE `osbb_metertype` (
  `id` int(11) NOT NULL,
  `text` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uom` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `osbb_metertype`
--

INSERT INTO `osbb_metertype` (`id`, `text`, `uom`) VALUES
(1, 'Тепловий (МВт)', 'МВт'),
(2, 'Тепловий (Гкал)', 'Гкал'),
(3, 'Електричний', 'КВт*год'),
(4, 'Газовий', 'м3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `osbb_apartment`
--
ALTER TABLE `osbb_apartment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `osbb_apartment_type_id_05052703_fk_osbb_apartmenttype_id` (`type_id`);

--
-- Indexes for table `osbb_apartmenttype`
--
ALTER TABLE `osbb_apartmenttype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `osbb_measurement`
--
ALTER TABLE `osbb_measurement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `osbb_measurement_meter_id_9b9cb4ae_fk_osbb_meter_id` (`meter_id`);

--
-- Indexes for table `osbb_meter`
--
ALTER TABLE `osbb_meter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `osbb_meter_type_id_d3de191b_fk_osbb_metertype_id` (`type_id`),
  ADD KEY `osbb_meter_apartment_id_e643c4d0_fk_osbb_apartment_id` (`apartment_id`);

--
-- Indexes for table `osbb_metertype`
--
ALTER TABLE `osbb_metertype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `osbb_apartment`
--
ALTER TABLE `osbb_apartment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;
--
-- AUTO_INCREMENT for table `osbb_apartmenttype`
--
ALTER TABLE `osbb_apartmenttype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `osbb_measurement`
--
ALTER TABLE `osbb_measurement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `osbb_meter`
--
ALTER TABLE `osbb_meter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;
--
-- AUTO_INCREMENT for table `osbb_metertype`
--
ALTER TABLE `osbb_metertype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `osbb_apartment`
--
ALTER TABLE `osbb_apartment`
  ADD CONSTRAINT `osbb_apartment_type_id_05052703_fk_osbb_apartmenttype_id` FOREIGN KEY (`type_id`) REFERENCES `osbb_apartmenttype` (`id`);

--
-- Constraints for table `osbb_measurement`
--
ALTER TABLE `osbb_measurement`
  ADD CONSTRAINT `osbb_measurement_meter_id_9b9cb4ae_fk_osbb_meter_id` FOREIGN KEY (`meter_id`) REFERENCES `osbb_meter` (`id`);

--
-- Constraints for table `osbb_meter`
--
ALTER TABLE `osbb_meter`
  ADD CONSTRAINT `osbb_meter_apartment_id_e643c4d0_fk_osbb_apartment_id` FOREIGN KEY (`apartment_id`) REFERENCES `osbb_apartment` (`id`),
  ADD CONSTRAINT `osbb_meter_type_id_d3de191b_fk_osbb_metertype_id` FOREIGN KEY (`type_id`) REFERENCES `osbb_metertype` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
