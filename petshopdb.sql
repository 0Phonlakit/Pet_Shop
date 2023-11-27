-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2023 at 07:34 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petshopdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add หมวดหมูสินค้า', 7, 'add_category'),
(26, 'Can change หมวดหมูสินค้า', 7, 'change_category'),
(27, 'Can delete หมวดหมูสินค้า', 7, 'delete_category'),
(28, 'Can view หมวดหมูสินค้า', 7, 'view_category'),
(29, 'Can add สินค้า', 8, 'add_product'),
(30, 'Can change สินค้า', 8, 'change_product'),
(31, 'Can delete สินค้า', 8, 'delete_product'),
(32, 'Can view สินค้า', 8, 'view_product'),
(33, 'Can add cart item', 9, 'add_cartitem'),
(34, 'Can change cart item', 9, 'change_cartitem'),
(35, 'Can delete cart item', 9, 'delete_cartitem'),
(36, 'Can view cart item', 9, 'view_cartitem'),
(37, 'Can add cart', 10, 'add_cart'),
(38, 'Can change cart', 10, 'change_cart'),
(39, 'Can delete cart', 10, 'delete_cart'),
(40, 'Can view cart', 10, 'view_cart'),
(41, 'Can add order', 11, 'add_order'),
(42, 'Can change order', 11, 'change_order'),
(43, 'Can delete order', 11, 'delete_order'),
(44, 'Can view order', 11, 'view_order'),
(45, 'Can add order item', 12, 'add_orderitem'),
(46, 'Can change order item', 12, 'change_orderitem'),
(47, 'Can delete order item', 12, 'delete_orderitem'),
(48, 'Can view order item', 12, 'view_orderitem');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$mVgQteNxwpM8Fz0pXz1lth$i2iRHbrDbSgeqllEqWSuAiFf3Th56E7jAzHHFZ7DbhI=', '2023-11-23 10:29:48.554092', 1, 'Addmin', '', '', 'phunyapat@gmail.com', 1, 1, '2023-11-20 10:55:06.565950'),
(3, 'pbkdf2_sha256$600000$2DyEsikW08MazzOkQiLHa3$27OofEWnl59TTMbs/Zffu0/QPv9zYvdlR+bdAqGIvIY=', '2023-11-23 10:34:34.885956', 0, 'winter', 'Karina', 'aespa', 'winter@gmail.com', 0, 1, '2023-11-21 21:41:41.965294'),
(4, 'pbkdf2_sha256$600000$nzvzHtIRfLprnnz3yrQe08$v4ZaswEKdBdtOetaouNaXHRi/5/uaquQWzxExE+xBxI=', '2023-11-23 10:26:12.142722', 0, 'uzumaki_888', 'sazuke', 'hokage', 'bigza@gmail.com', 0, 1, '2023-11-23 10:23:46.620312');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 3, 1),
(2, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL,
  `cart_id` varchar(255) NOT NULL,
  `date_added` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `cart_id`, `date_added`) VALUES
(1, 'f9w8u8f4wzuwi5armn6lphhbegf7lto4', '2023-11-21 17:12:42.903569'),
(2, 'd67lui5k5ok9dsr9112l925otrv4d6f6', '2023-11-22 09:57:45.947283'),
(3, '0tutoyyku4zehyk7w0e0ajsxu2qe2nqb', '2023-11-22 10:46:35.537501'),
(4, 'fjjs7ks8d1229w6ra0riik52oy6s7d32', '2023-11-22 11:41:32.298508'),
(5, 'svsnrlqsmycs7obs93znlmp4ezub47or', '2023-11-22 12:37:27.719491'),
(6, '9zfjefxm4v94tptz7pjyfsyfh8lbq1gg', '2023-11-22 12:40:05.652925'),
(7, 'etao8stjawa49irjosi3kq9wpdfp8ql5', '2023-11-22 20:32:11.606026'),
(9, 'dxptxg4rk4ct133oidq1x31uwhyr3htl', '2023-11-23 10:16:41.625439'),
(10, '2ljr3wcrhq77g7nb32ry8ks1b97n4q7w', '2023-11-23 10:17:17.026714'),
(11, 'op8bvatju23snveqrwt5ib44jhug2ovq', '2023-11-23 10:26:25.438965'),
(12, '18uksa40zirs5vxlfcbcynki731d13by', '2023-11-23 10:34:40.068557');

-- --------------------------------------------------------

--
-- Table structure for table `cartitem`
--

CREATE TABLE `cartitem` (
  `id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `cart_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cartitem`
--

INSERT INTO `cartitem` (`id`, `quantity`, `active`, `cart_id`, `product_id`) VALUES
(10, 1, 1, 3, 7),
(11, 1, 1, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-11-20 11:08:31.732618', '1', 'อาหารสุนัข', 1, '[{\"added\": {}}]', 7, 1),
(2, '2023-11-20 11:08:47.933058', '2', 'อาหารแมว', 1, '[{\"added\": {}}]', 7, 1),
(3, '2023-11-20 11:12:23.414177', '1', 'Pedigree เพดดีกรี อาหารเม็ด สำหรับลูกสุนัข รสไก่และไข่ 1.3 kg', 1, '[{\"added\": {}}]', 8, 1),
(4, '2023-11-20 11:14:20.348467', '2', 'Smart Heart สมาร์ทฮาร์ท อาหารเม็ด สำหรับสุนัขโต รสเนื้ออบ 1.5 kg', 1, '[{\"added\": {}}]', 8, 1),
(5, '2023-11-20 11:15:20.228155', '3', 'Orijen โอริเจน อาหารเม็ด สำหรับสุนัขสูงวัย 2 kg', 1, '[{\"added\": {}}]', 8, 1),
(6, '2023-11-20 11:16:13.851900', '4', 'Marvo มาร์โว่ อาหารเปียก แบบถาด สำหรับลูกสุนัขทุกสายพันธุ์ สูตรไก่และนม 85 g', 1, '[{\"added\": {}}]', 8, 1),
(7, '2023-11-20 11:17:06.264069', '5', 'Me-O Gold อาหารเม็ด สำหรับลููกแมว 400 g', 1, '[{\"added\": {}}]', 8, 1),
(8, '2023-11-20 11:18:12.080786', '6', 'Royal Canin โรยัล คานิน อาหารเม็ด สำหรับแม่แมวตั้งท้องและลูกแมวทุกสายพันธุ์', 1, '[{\"added\": {}}]', 8, 1),
(9, '2023-11-20 11:19:12.599527', '7', 'Friskies ฟริสกี้ส์ อาหารเม็ด สำหรับแมว สูตรรวมมิตรปลาทะเล 1.2 kg', 1, '[{\"added\": {}}]', 8, 1),
(10, '2023-11-20 11:40:47.878992', '8', 'Hill\'s ฮิลส์ อาหารเม็ด สำหรับแมวโต สูตรควบคุมน้ำหนัก 1.36 kg', 1, '[{\"added\": {}}]', 8, 1),
(11, '2023-11-21 19:17:09.725153', '1', 'Customer', 1, '[{\"added\": {}}]', 3, 1),
(12, '2023-11-22 21:42:21.416494', '8', '001', 1, '[{\"added\": {}}]', 10, 1),
(13, '2023-11-22 21:45:17.120693', '8', '001', 3, '', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(10, 'store', 'cart'),
(9, 'store', 'cartitem'),
(7, 'store', 'category'),
(11, 'store', 'order'),
(12, 'store', 'orderitem'),
(8, 'store', 'product');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-11-20 10:38:30.918714'),
(2, 'auth', '0001_initial', '2023-11-20 10:38:31.236405'),
(3, 'admin', '0001_initial', '2023-11-20 10:38:31.331672'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-11-20 10:38:31.339651'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-11-20 10:38:31.350622'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-11-20 10:38:31.409998'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-11-20 10:38:31.443901'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-11-20 10:38:31.490781'),
(9, 'auth', '0004_alter_user_username_opts', '2023-11-20 10:38:31.508255'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-11-20 10:38:31.554133'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-11-20 10:38:31.558124'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-11-20 10:38:31.567099'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-11-20 10:38:31.589043'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-11-20 10:38:31.608506'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-11-20 10:38:31.656377'),
(16, 'auth', '0011_update_proxy_permissions', '2023-11-20 10:38:31.663360'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-11-20 10:38:31.681311'),
(18, 'sessions', '0001_initial', '2023-11-20 10:38:31.717741'),
(19, 'store', '0001_initial', '2023-11-20 10:38:31.821982'),
(20, 'store', '0002_cart_cartitem', '2023-11-21 16:45:43.295786'),
(21, 'store', '0003_order_alter_cart_options_alter_cartitem_options_and_more', '2023-11-22 11:36:37.990390'),
(22, 'store', '0004_alter_order_options_alter_orderitem_options', '2023-11-22 12:50:43.080288'),
(23, 'store', '0005_order_created_order_updated_orderitem_created_and_more', '2023-11-22 13:10:41.994121');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('djqaowrrdteqg9a3wpr1hy8ys7s78qyx', 'e30:1r67hq:yzCgY1WEVHxM2YoWq-5uCvTkkZX0fPJaVUpISt3TPfQ', '2023-12-07 11:17:14.896531'),
('wb1e2ioxr9kk98kvccwl5t6hhd8wr60q', '.eJxVjEEOwiAQRe_C2hCmDlBcuu8ZyDAMUjVtUtqV8e7apAvd_vfef6lI21rj1mSJY1YXBer0uyXih0w7yHeabrPmeVqXMeld0QdtepizPK-H-3dQqdVvXRx1iBK857N0Vow4g1kCm4IEwiwQHAIQYG86S5AEKPTZF4eWwan3B-dqN8g:1r5inE:CyhfgJGYqWk8Q-mtbGIDRBg-KiMHDR0yNhnzMgxaVp0', '2023-12-06 08:41:08.193245');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `postcode` varchar(255) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `email` varchar(250) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `name`, `address`, `city`, `postcode`, `total`, `email`, `token`, `created`, `updated`) VALUES
(1, 'Karina aespa', 'คลองเตย', 'คลองถม', '5000', 2056.00, 'winter@gmail.com', 'tok_1OFFVVI7loQ0BKmC6hqFhG2q', '2023-11-22 13:10:41.926852', '2023-11-22 13:10:41.945541'),
(2, 'Karina aespa', 'คลองเตย', 'คลองถม', '5000', 193.00, 'winter@gmail.com', 'tok_1OFFgtI7loQ0BKmCKoXUNlJo', '2023-11-22 13:10:41.926852', '2023-11-22 13:10:41.945541'),
(3, 'Karina aespa', 'คลองเตย', 'คลองถม', '5000', 264.00, 'winter@gmail.com', 'tok_1OFFjNI7loQ0BKmC2gBTQrN5', '2023-11-22 13:10:41.926852', '2023-11-22 13:10:41.945541'),
(4, 'Karina aespa', 'ประชาอุทิศ', 'กรุงเทพ', '1111', 515.00, 'winter@gmail.com', 'tok_1OFN6yI7loQ0BKmCQ9qeje6d', '2023-11-22 20:33:31.899612', '2023-11-22 20:33:31.899612'),
(5, 'Karina aespa', 'ข้าวสาร', 'กรุงเทพ', '2222', 1290.00, 'winter@gmail.com', 'tok_1OFNJBI7loQ0BKmC9trJF5MM', '2023-11-22 20:46:09.392535', '2023-11-22 20:46:09.392535'),
(6, 'Karina aespa', 'ข้าวสาร', 'กรุงเทพ', '2222', 1306.00, 'winter@gmail.com', 'tok_1OFNLKI7loQ0BKmCgeJdHf2i', '2023-11-22 20:48:22.361977', '2023-11-22 20:48:22.361977'),
(7, 'Karina aespa', 'ข้าวสาร', 'กรุงเทพ', '2222', 1900.00, 'winter@gmail.com', 'tok_1OFNOnI7loQ0BKmCan0RUqrJ', '2023-11-22 20:51:57.203874', '2023-11-22 20:51:57.203874'),
(8, 'Karina aespa', 'ข้าวสาร', 'กรุงเทพ', '2222', 1290.00, 'winter@gmail.com', 'tok_1OFZygI7loQ0BKmCPZWIZIEY', '2023-11-23 10:17:50.524473', '2023-11-23 10:17:50.524473'),
(9, 'sazuke hokage', 'ประชาอุทิศ', 'กรุงเทพ', '1111', 175.00, 'bigza@gmail.com', 'tok_1OFa7dI7loQ0BKmCxDFYN3RJ', '2023-11-23 10:27:05.933753', '2023-11-23 10:27:05.933753'),
(10, 'Karina aespa', '16/9 ประชาอุทิศ ถนนประชาอุทิศ90 ตำบลคลองสวน', 'สมุทรปราการ', '1111', 385.00, 'winter@gmail.com', 'tok_1OFaGzI7loQ0BKmC15WCwY3v', '2023-11-23 10:36:46.166076', '2023-11-23 10:36:46.166076');

-- --------------------------------------------------------

--
-- Table structure for table `orderitem`
--

CREATE TABLE `orderitem` (
  `id` bigint(20) NOT NULL,
  `product` varchar(250) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orderitem`
--

INSERT INTO `orderitem` (`id`, `product`, `quantity`, `price`, `order_id`, `created`, `updated`) VALUES
(1, 'Orijen โอริเจน อาหารเม็ด สำหรับสุนัขสูงวัย 2 kg', 1, 1150.00, 1, '2023-11-22 13:10:41.967550', '2023-11-22 13:10:41.981545'),
(2, 'Hill\'s ฮิลส์ อาหารเม็ด สำหรับแมวโต สูตรควบคุมน้ำหนัก 1.36 kg', 1, 750.00, 1, '2023-11-22 13:10:41.967550', '2023-11-22 13:10:41.981545'),
(3, 'Pedigree เพดดีกรี อาหารเม็ด สำหรับลูกสุนัข รสไก่และไข่ 1.3 kg', 1, 156.00, 1, '2023-11-22 13:10:41.967550', '2023-11-22 13:10:41.981545'),
(4, 'Pedigree เพดดีกรี อาหารเม็ด สำหรับลูกสุนัข รสไก่และไข่ 1.3 kg', 1, 156.00, 2, '2023-11-22 13:10:41.967550', '2023-11-22 13:10:41.981545'),
(5, 'Marvo มาร์โว่ อาหารเปียก แบบถาด สำหรับลูกสุนัขทุกสายพันธุ์ สูตรไก่และนม 85 g', 1, 37.00, 2, '2023-11-22 13:10:41.967550', '2023-11-22 13:10:41.981545'),
(6, 'Me-O Gold อาหารเม็ด สำหรับลููกแมว 400 g', 1, 89.00, 3, '2023-11-22 13:10:41.967550', '2023-11-22 13:10:41.981545'),
(7, 'Smart Heart สมาร์ทฮาร์ท อาหารเม็ด สำหรับสุนัขโต รสเนื้ออบ 1.5 kg', 1, 175.00, 3, '2023-11-22 13:10:41.967550', '2023-11-22 13:10:41.981545'),
(8, 'Pedigree เพดดีกรี อาหารเม็ด สำหรับลูกสุนัข รสไก่และไข่ 1.3 kg', 1, 156.00, 4, '2023-11-22 20:33:31.900609', '2023-11-22 20:33:31.900609'),
(9, 'Royal Canin โรยัล คานิน อาหารเม็ด สำหรับแม่แมวตั้งท้องและลูกแมวทุกสายพันธุ์', 1, 219.00, 4, '2023-11-22 20:33:31.904598', '2023-11-22 20:33:31.904598'),
(10, 'Friskies ฟริสกี้ส์ อาหารเม็ด สำหรับแมว สูตรรวมมิตรปลาทะเล 1.2 kg', 1, 140.00, 4, '2023-11-22 20:33:31.907591', '2023-11-22 20:33:31.907591'),
(11, 'Orijen โอริเจน อาหารเม็ด สำหรับสุนัขสูงวัย 2 kg', 1, 1150.00, 5, '2023-11-22 20:46:09.394497', '2023-11-22 20:46:09.394497'),
(12, 'Friskies ฟริสกี้ส์ อาหารเม็ด สำหรับแมว สูตรรวมมิตรปลาทะเล 1.2 kg', 1, 140.00, 5, '2023-11-22 20:46:09.398302', '2023-11-22 20:46:09.398302'),
(13, 'Orijen โอริเจน อาหารเม็ด สำหรับสุนัขสูงวัย 2 kg', 1, 1150.00, 6, '2023-11-22 20:48:22.363970', '2023-11-22 20:48:22.363970'),
(14, 'Pedigree เพดดีกรี อาหารเม็ด สำหรับลูกสุนัข รสไก่และไข่ 1.3 kg', 1, 156.00, 6, '2023-11-22 20:48:22.367960', '2023-11-22 20:48:22.367960'),
(15, 'Hill\'s ฮิลส์ อาหารเม็ด สำหรับแมวโต สูตรควบคุมน้ำหนัก 1.36 kg', 1, 750.00, 7, '2023-11-22 20:51:57.205838', '2023-11-22 20:51:57.205838'),
(16, 'Orijen โอริเจน อาหารเม็ด สำหรับสุนัขสูงวัย 2 kg', 1, 1150.00, 7, '2023-11-22 20:51:57.209828', '2023-11-22 20:51:57.209828'),
(17, 'Friskies ฟริสกี้ส์ อาหารเม็ด สำหรับแมว สูตรรวมมิตรปลาทะเล 1.2 kg', 1, 140.00, 8, '2023-11-23 10:17:50.530457', '2023-11-23 10:17:50.530457'),
(18, 'Orijen โอริเจน อาหารเม็ด สำหรับสุนัขสูงวัย 2 kg', 1, 1150.00, 8, '2023-11-23 10:17:50.534995', '2023-11-23 10:17:50.534995'),
(19, 'Smart Heart สมาร์ทฮาร์ท อาหารเม็ด สำหรับสุนัขโต รสเนื้ออบ 1.5 kg', 1, 175.00, 9, '2023-11-23 10:27:05.935747', '2023-11-23 10:27:05.935747'),
(20, 'Friskies ฟริสกี้ส์ อาหารเม็ด สำหรับแมว สูตรรวมมิตรปลาทะเล 1.2 kg', 1, 140.00, 10, '2023-11-23 10:36:46.167073', '2023-11-23 10:36:46.167073'),
(21, 'Pedigree เพดดีกรี อาหารเม็ด สำหรับลูกสุนัข รสไก่และไข่ 1.3 kg', 1, 156.00, 10, '2023-11-23 10:36:46.172100', '2023-11-23 10:36:46.172100'),
(22, 'Me-O Gold อาหารเม็ด สำหรับลููกแมว 400 g', 1, 89.00, 10, '2023-11-23 10:36:46.175551', '2023-11-23 10:36:46.175551');

-- --------------------------------------------------------

--
-- Table structure for table `store_category`
--

CREATE TABLE `store_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `store_category`
--

INSERT INTO `store_category` (`id`, `name`, `slug`) VALUES
(1, 'อาหารสุนัข', 'dog'),
(2, 'อาหารแมว', 'cat');

-- --------------------------------------------------------

--
-- Table structure for table `store_product`
--

CREATE TABLE `store_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int(11) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `store_product`
--

INSERT INTO `store_product` (`id`, `name`, `slug`, `description`, `price`, `image`, `stock`, `available`, `created`, `updated`, `category_id`) VALUES
(1, 'Pedigree เพดดีกรี อาหารเม็ด สำหรับลูกสุนัข รสไก่และไข่ 1.3 kg', 'pedigree', 'เพดดิกรี® สูตร 2 ลูกสุนัขทุกสายพันธุ์ (3-18 เดือน)\r\nมีสังกะสีและวิตามินเอ ช่วยเสริมสร้างระบบภูมิคุ้มกัน\r\nแคลเซียมและฟอสฟอรัสให้กระดูกและฟันแข็งแรง\r\nเพิ่มความกรอบ อร่อย', 156.00, 'product/petdigree.png', 5, 1, '2023-11-20 11:12:23.413181', '2023-11-20 11:12:23.413181', 1),
(2, 'Smart Heart สมาร์ทฮาร์ท อาหารเม็ด สำหรับสุนัขโต รสเนื้ออบ 1.5 kg', 'smart-heart', 'สุนัขอายุมากกว่า 1 ปีขึ้นไปหรือสุนัขโตเต็มวัย ต้องการสารอาหารจำเป็นที่เหมาะสมกับช่วงอายุ\r\nอาหารสุนัขโตสมาร์ทฮาร์ท® ได้คัดสรรโปรตีนจากเนื้อสัตว์ ที่มีคุณภาพ พร้อมธัญพืช เกลือแร่ และวิตามิน\r\nพร้อมด้วยคุณค่าจากน้ำมันปลาทะเลที่มีดีเอชเอ (DHA) และโอเมก้า 3 (Omega-3) และเลซิทิน (Lecithin) ที่มีโคลีน (Choline) ช่วยพัฒนาความจำที่ดี และเสริมพัฒนาการทางสมองและสร้างความแข็งแรงให้หัวใจ', 175.00, 'product/Smart-Heart.png', 8, 1, '2023-11-20 11:14:20.345473', '2023-11-20 11:14:20.345473', 1),
(3, 'Orijen โอริเจน อาหารเม็ด สำหรับสุนัขสูงวัย 2 kg', 'orijen', 'บริษัทChampion Petfood ผู้ผลิตอาหารสัตว์ ที่ได้รับรางวัลชนะเลิศ ภายใต้แบรนด์ ORIJEN / ACANA ด้วยชื่อเสียงที่มีมายาวนานกว่า 25 ปี\r\nอาหารเกรด Biologically Appropriate ที่ไม่เหมือนใคร ซึ่งได้รับการยอมรับว่า เป็นอาหารเกรดที่ดีที่สุด โดยโครงสร้างทางชีวภาพ ของสุนัขและแมวเป็นสัตว์กินเนื้อ\r\nอุดมไปด้วยเนื้อสัตว์ มีปริมาณของเนื้อสัตว์ที่สูง ปริมาณของเนื้อสัตว์แบบสด มีความหลากหลายของประเภทเนื้อสัตว์ และแหล่งที่มาของเนื้อสัตว์จากฟาร์มที่เลี้ยงแบบธรรมชาติ', 1150.00, 'product/orijen.png', 5, 1, '2023-11-20 11:15:20.227157', '2023-11-20 11:15:20.227157', 1),
(4, 'Marvo มาร์โว่ อาหารเปียก แบบถาด สำหรับลูกสุนัขทุกสายพันธุ์ สูตรไก่และนม 85 g', 'marvo', 'เพราะว่าสุนัขโตกับลูกสุนัขต้องการสารอาหารที่แตกต่างกัน มาร์โว่ จึงขอนำเสนอเมนูสำหรับลูกสุนัขโดยเฉพาะ มาร์โว่ ลูกสุนัข เนื้อไก่ผสมนม\r\nคัดสรรวัตถุดิบคุณภาพ\r\nมีคุณค่าสารอาหารครบถ้วน เหมาะกับการเจริญเติบโตของสุนัข\r\nผ่านการปรุงอย่างพิถีพิถันได้รสชาติที่ถูกใจสุนัข\r\nปราศจากวัตถุกันเสีย', 37.00, 'product/marvo.png', 9, 1, '2023-11-20 11:16:13.850902', '2023-11-20 11:16:13.850902', 1),
(5, 'Me-O Gold อาหารเม็ด สำหรับลููกแมว 400 g', 'me-o-gold', 'สำหรับลูกแมว อายุ 1-12 เดือน ทุกสายพันธุ์\r\nโปรตีนคุณภาพสูงจากไก่\r\nระบบทางเดินอาหารสุขภาพดี ด้วยพรีไบโอติก (GOS) ซึ่งพบได้ในน้ำนมแม่ และบีทพัลพ์\r\nช่วยเสริมสร้างพัฒนาการสมอง ด้วย DHA จากน้ำมันปลาทะเล\r\nผิวหนังสุขภาพดีและขนสวยเงางาม ด้วยโอเมก้า 3 โอเมก้า 6 สังกะสีอินทรีย์ และไบโอติน\r\nช่วยเสริมสร้างกระดูกและฟันให้แข็งแรง ด้วยแคลเซียม ฟอสฟอรัส และวิตามินดี\r\nช่วยบำรุงสายตา เพิ่มประสิทธิภาพในการมองเห็น ด้วยทอรีน ซึ่งเป็นกรดอะมิโนที่จำเป็นต่อลูกแมว', 89.00, 'product/me-o-gold.png', 8, 1, '2023-11-20 11:17:06.263072', '2023-11-20 11:17:06.263072', 2),
(6, 'Royal Canin โรยัล คานิน อาหารเม็ด สำหรับแม่แมวตั้งท้องและลูกแมวทุกสายพันธุ์', 'royal-canin', 'อาหารแมวเหมาะสำหรับแม่แมวตั้งท้อง และลูกแมวช่วงหย่านม อายุ 1- 4 เดือน ระยะแม่แมวให้นมลูก\r\nเนื้ออาหารนุ่มเนียนพิเศษ ทานง่าย เคี้ยวง่ายเหมาะสำหรับลูกแมวที่หัดกินอาหาร\r\nมีส่วนผสมของ ไก่ ตับ หมู แป้ง โปรตีนข้าว น้ำมันปลา\r\nโภชนาการครบถ้วน', 219.00, 'product/royal.png', 9, 1, '2023-11-20 11:18:12.079786', '2023-11-20 11:18:12.079786', 2),
(7, 'Friskies ฟริสกี้ส์ อาหารเม็ด สำหรับแมว สูตรรวมมิตรปลาทะเล 1.2 kg', 'friskies', 'โปรตีนสูงช่วยให้มีกล้ามเนื้อที่แข็งแรง\r\nมีกรดไขมันจำเป็นพร้อมด้วย โอเมก้า 3 และ6 เพื่อผิวและขนที่มีสุขภาพดี\r\nมีสารแอนตี้ออกซิแอนท์ที่ช่วยสนับสนุนระบบภูมิคุ้มกันที่แข็งแรง\r\nมีวิตามินเอและทอรีนช่วยส่งเสริมระบบการมองเห็นให้มีสุขภาพดี\r\nมีแคลเซียมและวิตามินดี ช่วยส่งเสริมพัฒนาการของกระดูกและฟัน', 140.00, 'product/friskies.png', 6, 1, '2023-11-20 11:19:12.598530', '2023-11-20 11:19:12.598530', 2),
(8, 'Hill\'s ฮิลส์ อาหารเม็ด สำหรับแมวโต สูตรควบคุมน้ำหนัก 1.36 kg', 'hills', 'อาหารแมว Hill\'s® Science Diet® Perfect Weight มอบรสชาติแสนอร่อย และโภชนาการทางเทคโนโลยีที่ล้ำสมัยในการควบคุมน้ำหนักที่ได้ผ่านการรับรองทางการแพทย์แล้ว\r\nลดน้ำหนักอย่างได้ผลและปลอดภัย เห็นผลลัพธ์ภายใน 10 สัปดาห์\r\nควบคุมน้ำหนักให้มีสุขภาพที่ดีและคงน้ำหนักตัว\r\nเสริมสร้างกล้ามเนื้อ', 750.00, 'product/hills.png', 8, 1, '2023-11-20 11:40:47.877995', '2023-11-20 11:40:47.877995', 2);

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
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cartitem`
--
ALTER TABLE `cartitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cartItem_cart_id_ee9df702_fk_cart_id` (`cart_id`),
  ADD KEY `cartItem_product_id_c2bec730_fk_store_product_id` (`product_id`);

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
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `OrderItem_order_id_d1e3f0fb_fk_Order_id` (`order_id`);

--
-- Indexes for table `store_category`
--
ALTER TABLE `store_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `store_product`
--
ALTER TABLE `store_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `store_product_category_id_574bae65_fk_store_category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cartitem`
--
ALTER TABLE `cartitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orderitem`
--
ALTER TABLE `orderitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `store_category`
--
ALTER TABLE `store_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `store_product`
--
ALTER TABLE `store_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
-- Constraints for table `cartitem`
--
ALTER TABLE `cartitem`
  ADD CONSTRAINT `cartItem_cart_id_ee9df702_fk_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`),
  ADD CONSTRAINT `cartItem_product_id_c2bec730_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD CONSTRAINT `OrderItem_order_id_d1e3f0fb_fk_Order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`);

--
-- Constraints for table `store_product`
--
ALTER TABLE `store_product`
  ADD CONSTRAINT `store_product_category_id_574bae65_fk_store_category_id` FOREIGN KEY (`category_id`) REFERENCES `store_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
