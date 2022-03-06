-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2022 at 03:53 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ration`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add login', 7, 'add_login'),
(26, 'Can change login', 7, 'change_login'),
(27, 'Can delete login', 7, 'delete_login'),
(28, 'Can view login', 7, 'view_login'),
(29, 'Can add order', 8, 'add_order'),
(30, 'Can change order', 8, 'change_order'),
(31, 'Can delete order', 8, 'delete_order'),
(32, 'Can view order', 8, 'view_order'),
(33, 'Can add register', 9, 'add_register'),
(34, 'Can change register', 9, 'change_register'),
(35, 'Can delete register', 9, 'delete_register'),
(36, 'Can view register', 9, 'view_register'),
(37, 'Can add catagory', 10, 'add_catagory'),
(38, 'Can change catagory', 10, 'change_catagory'),
(39, 'Can delete catagory', 10, 'delete_catagory'),
(40, 'Can view catagory', 10, 'view_catagory'),
(41, 'Can add product', 11, 'add_product'),
(42, 'Can change product', 11, 'change_product'),
(43, 'Can delete product', 11, 'delete_product'),
(44, 'Can view product', 11, 'view_product'),
(45, 'Can add customer', 12, 'add_customer'),
(46, 'Can change customer', 12, 'change_customer'),
(47, 'Can delete customer', 12, 'delete_customer'),
(48, 'Can view customer', 12, 'view_customer'),
(49, 'Can add payment', 13, 'add_payment'),
(50, 'Can change payment', 13, 'change_payment'),
(51, 'Can delete payment', 13, 'delete_payment'),
(52, 'Can view payment', 13, 'view_payment');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

CREATE TABLE `catagory` (
  `category_id` int(11) NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`category_id`, `category`) VALUES
(1, 'AAY(yellow)'),
(2, 'BPL(pink)'),
(3, 'APL(blue)'),
(4, 'NPNS(white)'),
(5, 'NPI(brown)'),
(7, 'bpl');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `rationcard_number` varchar(20) NOT NULL,
  `taluk` varchar(25) NOT NULL,
  `customer_name` varchar(25) NOT NULL,
  `punchayath` varchar(25) NOT NULL,
  `address` varchar(100) NOT NULL,
  `category` varchar(25) NOT NULL,
  `ward_number` int(11) NOT NULL,
  `members_count` int(11) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `registration_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `rationcard_number`, `taluk`, `customer_name`, `punchayath`, `address`, `category`, `ward_number`, `members_count`, `phone`, `email`, `password`, `registration_status`) VALUES
(4, '2145879865', 'Thamarassery', 'Bushra', 'kattipara', 'Valiayaparambil(H),\r\nKnnikulam(PO),\r\nkolikkal,\r\nKozhikode,Kerala\r\n673574', '1', 2, 5, '9745521551', 'bushra@gmail.com', 'bushra', 'approved'),
(5, '2145879865', 'Thamarassery', 'Bushra', 'kattipara', 'Valiayaparambil(H),\r\nKnnikulam(PO),\r\nkolikkal,\r\nKozhikode,Kerala\r\n673574', '1', 2, 5, '9745521551', 'bushra@gmail.com', 'bushi123', 'approved'),
(6, '3265987845', 'kozhikode', 'ninu', 'kattipara', 'illapppoyil(H),\r\nunnikulam(PO)\r\nkolikkal\r\nkozhikode,kerala\r\n673574\r\n', '2', 3, 5, '9544333819', 'ninu@gmail.com', 'ninu', 'approved'),
(7, '2154789845', 'balussery', 'shah', 'shahana', 'kolikkal,\r\nkattipara(panchayath),ward number-12\r\nkozhikode\r\nshahana', '2', 50000, 600, '9526454455', 'ninu1@gmail.com', 'ninu1', 'approved');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(10, 'category', 'catagory'),
(5, 'contenttypes', 'contenttype'),
(12, 'customer', 'customer'),
(7, 'login', 'login'),
(8, 'order', 'order'),
(13, 'payment', 'payment'),
(11, 'product', 'product'),
(9, 'rationshop', 'register'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-02-23 08:44:53.981778'),
(2, 'auth', '0001_initial', '2022-02-23 08:44:57.512929'),
(3, 'admin', '0001_initial', '2022-02-23 08:45:16.680965'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-02-23 08:45:20.962088'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-02-23 08:45:21.087082'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-02-23 08:45:22.868275'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-02-23 08:45:25.665076'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-02-23 08:45:26.133803'),
(9, 'auth', '0004_alter_user_username_opts', '2022-02-23 08:45:26.211931'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-02-23 08:45:27.602512'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-02-23 08:45:27.680656'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-02-23 08:45:27.774379'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-02-23 08:45:27.993147'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-02-23 08:45:28.414985'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-02-23 08:45:28.836846'),
(16, 'auth', '0011_update_proxy_permissions', '2022-02-23 08:45:28.946242'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-02-23 08:45:29.086891'),
(18, 'category', '0001_initial', '2022-02-23 08:45:29.774325'),
(19, 'customer', '0001_initial', '2022-02-23 08:45:30.602418'),
(20, 'login', '0001_initial', '2022-02-23 08:45:31.008661'),
(21, 'order', '0001_initial', '2022-02-23 08:45:31.821137'),
(22, 'payment', '0001_initial', '2022-02-23 08:45:32.149251'),
(23, 'product', '0001_initial', '2022-02-23 08:45:33.055473'),
(24, 'rationshop', '0001_initial', '2022-02-23 08:45:33.508584'),
(25, 'sessions', '0001_initial', '2022-02-23 08:45:34.789794');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('8ym004pogh1e7wfzx4yi3sjh9yoy8y42', 'eyJ1aWQiOjJ9:1nNw6a:NKfXk0RkOcQuDfX58DJvG0Ud7L9BJpljX6rVgJYFQa0', '2022-03-12 12:23:20.324033'),
('ec6lh3bvt7zoaivl1vomrt4wo2s4syj1', 'eyJ1aWQiOjJ9:1nPJjt:fTNpQVQoD8z4BoIgDlCOXQDAelQw_z0uCUSR5cViZoo', '2022-03-16 07:49:37.394195'),
('i6ak9nbgpau3drnta8i0lzkrjyj4anvp', 'eyJ1aWQiOjZ9:1nOC1P:F4qqlAfHTR6-ikEVrADS_-AepKCCgkXtk-2RlZ4JCgI', '2022-03-13 05:23:03.315745');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `type` varchar(25) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `username`, `password`, `type`, `user_id`) VALUES
(1, 'kolikkalration@gamil.com', 'koli123', 'rationshop', 1),
(2, 'ration@gmail.com', 'ration', 'rationshop', 2),
(3, 'bushra@gmail.com', 'bushi123', 'pending', 1),
(4, 'bushra@gmail.com', 'bushi', 'pending', 2),
(5, 'bushra@gmail.com', 'bushi', 'pending', 3),
(6, 'bushra@gmail.com', 'bushra', 'pending', 4),
(7, 'bushra@gmail.com', 'bushi123', 'customer', 5),
(8, 'ninu@gmail.com', 'ninu', 'customer', 6),
(9, 'ninu1@gmail.com', 'ninu1', 'customer', 7);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_status` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `customer_id`, `product_id`, `order_status`, `date`) VALUES
(1, 1, 6, 'Approved', '2022-02-28'),
(2, 1, 6, 'pending', '2022-02-28');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `total` varchar(50) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `payment_mod` varchar(25) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(25) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` decimal(5,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `price`, `quantity`, `total`, `stock`, `status`) VALUES
(1, 'Rice', '2.00', 6, '70.00', 96, ''),
(2, 'Wheat', '3.00', 5, '12.00', 50, ''),
(3, 'Sugar', '21.00', 2, '21.00', 20, ''),
(4, 'Flour', '6.00', 2, '6.00', 15, ''),
(5, 'Kerosene', '25.00', 3, '75.00', 40, ''),
(6, 'RIce', '4.00', 4, '16.00', 100, 'place order'),
(7, 'Wheat', '5.00', 4, '20.00', 50, ''),
(8, 'Sugar', '21.00', 1, '21.00', 20, ''),
(9, 'Flour', '6.00', 1, '6.00', 15, ''),
(10, 'Kerosene', '25.00', 2, '50.00', 40, ''),
(11, 'Rice', '4.00', 2, '8.00', 100, ''),
(12, 'Wheat', '6.00', 3, '18.00', 50, ''),
(13, 'Sugar', '8.00', 1, '8.00', 20, ''),
(14, 'Flour', '17.00', 2, '34.00', 15, ''),
(15, 'Kerosene', '25.00', 1, '25.00', 40, ''),
(16, 'Rice', '10.00', 7, '70.00', 100, ''),
(17, 'Wheat', '7.00', 5, '35.00', 50, ''),
(18, 'Sugar', '21.00', 1, '21.00', 20, ''),
(19, 'Flour', '17.00', 2, '34.00', 15, ''),
(20, 'Kerosene', '30.00', 1, '30.00', 40, ''),
(21, 'Rice', '10.00', 2, '20.00', 100, ''),
(22, 'Wheat', '20.00', 2, '40.00', 50, ''),
(23, 'Flour', '17.00', 2, '34.00', 15, ''),
(24, 'Sugar', '30.00', 1, '30.00', 20, '');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `rationshop_id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`rationshop_id`, `name`, `address`, `phone`, `email`, `password`) VALUES
(1, 'kolikkal Rationshop', 'kolikkal,\r\nkattipara(panchayath),ward number-12\r\nkozhikode\r\nkerala', '9526454455', 'kolikkalration@gamil.com', 'koli123'),
(2, 'kolikkal Rationshop', 'kolikkal,\r\nkattipara(panchayath),ward number-12\r\nkozhikode\r\nkerala', '9526454455', 'ration@gmail.com', 'ration');

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
-- Indexes for table `catagory`
--
ALTER TABLE `catagory`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

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
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`rationshop_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `catagory`
--
ALTER TABLE `catagory`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `rationshop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
