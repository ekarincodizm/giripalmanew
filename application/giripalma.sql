-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2016 at 08:28 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `giripalma`
--

-- --------------------------------------------------------

--
-- Table structure for table `ospos_app_config`
--

CREATE TABLE `ospos_app_config` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_app_config`
--

INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
('address', 'Tidar, Malang'),
('barcode_content', 'id'),
('barcode_first_row', 'category'),
('barcode_font', 'Arial'),
('barcode_font_size', '10'),
('barcode_generate_if_empty', '0'),
('barcode_height', '50'),
('barcode_num_in_row', '2'),
('barcode_page_cellspacing', '20'),
('barcode_page_width', '100'),
('barcode_quality', '100'),
('barcode_second_row', 'item_code'),
('barcode_third_row', 'unit_price'),
('barcode_type', 'Code39'),
('barcode_width', '250'),
('company', 'Giri Palma'),
('company_logo', ''),
('currency_side', '0'),
('currency_symbol', 'Rp '),
('custom10_name', ''),
('custom1_name', ''),
('custom2_name', ''),
('custom3_name', ''),
('custom4_name', ''),
('custom5_name', ''),
('custom6_name', ''),
('custom7_name', ''),
('custom8_name', ''),
('custom9_name', ''),
('dateformat', 'd/m/Y'),
('decimal_point', ','),
('default_sales_discount', '0'),
('default_tax_1_name', 'Pajak Penjualan1'),
('default_tax_1_rate', '10'),
('default_tax_2_name', 'Pajak Penjualan2'),
('default_tax_2_rate', ''),
('default_tax_rate', '8'),
('email', 'admin@giripalma.com'),
('fax', ''),
('invoice_default_comments', 'This is a default comment'),
('invoice_email_message', 'Dear $CU, In attachment the receipt for sale $INV'),
('language', 'id'),
('lines_per_page', '25'),
('phone', '0341-3222223'),
('print_bottom_margin', '0'),
('print_footer', '0'),
('print_header', '0'),
('print_left_margin', '0'),
('print_right_margin', '0'),
('print_silently', '1'),
('print_top_margin', '0'),
('receipt_show_taxes', '0'),
('receiving_calculate_average_price', '0'),
('recv_invoice_format', '$CO'),
('return_policy', 'Test'),
('sales_invoice_format', '$CO'),
('show_total_discount', '1'),
('tax_included', 'tax_included'),
('thousands_separator', '.'),
('timeformat', 'H:i:s'),
('timezone', 'Asia/Bangkok'),
('use_invoice_template', '1'),
('website', '');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_counter`
--

CREATE TABLE `ospos_counter` (
  `no` tinyint(1) NOT NULL,
  `counter` int(4) NOT NULL,
  `tanggal` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ospos_counter`
--

INSERT INTO `ospos_counter` (`no`, `counter`, `tanggal`) VALUES
(0, 1, 15);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_customers`
--

CREATE TABLE `ospos_customers` (
  `person_id` int(10) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `taxable` int(1) NOT NULL DEFAULT '1',
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_customers`
--

INSERT INTO `ospos_customers` (`person_id`, `company_name`, `account_number`, `taxable`, `deleted`) VALUES
(2, NULL, NULL, 1, 0),
(3, NULL, '34546246565', 1, 0),
(5, NULL, '12345', 0, 0),
(6, NULL, NULL, 1, 1),
(7, NULL, NULL, 1, 1),
(8, NULL, NULL, 0, 0),
(9, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_employees`
--

CREATE TABLE `ospos_employees` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `person_id` int(10) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_employees`
--

INSERT INTO `ospos_employees` (`username`, `password`, `person_id`, `deleted`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 1, 0),
('halo.ocky', '1059c5ae65326e7f02ba9a9552889c6a', 16, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_giftcards`
--

CREATE TABLE `ospos_giftcards` (
  `record_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `giftcard_id` int(11) NOT NULL,
  `giftcard_number` int(10) NOT NULL,
  `value` decimal(15,2) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `person_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_giftcards`
--

INSERT INTO `ospos_giftcards` (`record_time`, `giftcard_id`, `giftcard_number`, `value`, `deleted`, `person_id`) VALUES
('2016-02-16 09:39:24', 1, 1234553, '100000.00', 1, 2),
('2016-04-08 13:59:46', 2, 333333, '100000.00', 1, NULL),
('2016-04-08 14:01:22', 3, 1234554, '100000.00', 1, 2),
('2016-04-08 14:01:57', 5, 1234555, '100000.00', 1, 2),
('2016-04-08 14:04:20', 6, 1234556, '100000.00', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_grants`
--

CREATE TABLE `ospos_grants` (
  `permission_id` varchar(255) NOT NULL,
  `person_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_grants`
--

INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
('config', 1),
('customers', 1),
('customers', 16),
('employees', 1),
('giftcards', 1),
('giftcards', 16),
('items', 1),
('items', 16),
('items_BATOS - Lippo Plaza Batu', 1),
('items_BATOS - Lippo Plaza Batu', 16),
('items_GP1 - Pusat', 1),
('items_GP2 - Toko Utama', 1),
('items_GP3 - Gudang Panel', 1),
('items_GP4 - Gudang Produksi Sofa', 1),
('items_GP5 - Gudang Produksi HPL', 1),
('items_MOG2 - Stand Depan Giant', 1),
('items_MOG3 - Stand Depan Foodcourt', 1),
('items_MOGATR - Atrium MOG', 1),
('items_stock', 1),
('items_stock', 16),
('item_kits', 1),
('item_kits', 16),
('pembelian', 1),
('productions', 1),
('raw_materials', 1),
('raw_materials', 16),
('receivings', 1),
('receivings', 16),
('receivings_BATOS - Lippo Plaza Batu', 1),
('receivings_BATOS - Lippo Plaza Batu', 16),
('receivings_GP1 - Pusat', 1),
('receivings_GP2 - Toko Utama', 1),
('receivings_GP3 - Gudang Panel', 1),
('receivings_GP4 - Gudang Produksi Sofa', 1),
('receivings_GP5 - Gudang Produksi HPL', 1),
('receivings_MOG2 - Stand Depan Giant', 1),
('receivings_MOG3 - Stand Depan Foodcourt', 1),
('receivings_MOGATR - Atrium MOG', 1),
('receivings_stock', 1),
('receivings_stock', 16),
('reports', 1),
('reports_categories', 1),
('reports_customers', 1),
('reports_discounts', 1),
('reports_employees', 1),
('reports_inventory', 1),
('reports_items', 1),
('reports_payments', 1),
('reports_receivings', 1),
('reports_sales', 1),
('reports_suppliers', 1),
('reports_taxes', 1),
('sales', 1),
('sales', 16),
('sales_BATOS - Lippo Plaza Batu', 1),
('sales_BATOS - Lippo Plaza Batu', 16),
('sales_GP1 - Pusat', 1),
('sales_GP2 - Toko Utama', 1),
('sales_GP3 - Gudang Panel', 1),
('sales_GP4 - Gudang Produksi Sofa', 1),
('sales_GP5 - Gudang Produksi HPL', 1),
('sales_MOG2 - Stand Depan Giant', 1),
('sales_MOG3 - Stand Depan Foodcourt', 1),
('sales_MOGATR - Atrium MOG', 1),
('sales_stock', 1),
('sales_stock', 16),
('shippings', 1),
('suppliers', 1),
('suppliers', 16);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_inventory`
--

CREATE TABLE `ospos_inventory` (
  `trans_id` int(11) NOT NULL,
  `trans_items` int(11) NOT NULL DEFAULT '0',
  `trans_user` int(11) NOT NULL DEFAULT '0',
  `trans_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `trans_comment` text NOT NULL,
  `trans_location` int(11) NOT NULL,
  `trans_inventory` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_inventory`
--

INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
(1, 1, 1, '2016-01-25 16:01:23', 'Manual Edit of Quantity', 1, 10),
(2, 2, 1, '2016-01-26 19:07:46', 'Perubahan jumlah Stok secara manual', 9, 10),
(3, 2, 1, '2016-01-26 19:07:46', 'Perubahan jumlah Stok secara manual', 2, 5),
(4, 2, 1, '2016-01-26 19:07:46', 'Perubahan jumlah Stok secara manual', 3, 0),
(5, 2, 1, '2016-01-26 19:07:46', 'Perubahan jumlah Stok secara manual', 4, 0),
(6, 2, 1, '2016-01-26 19:07:46', 'Perubahan jumlah Stok secara manual', 5, 0),
(7, 2, 1, '2016-01-26 19:07:46', 'Perubahan jumlah Stok secara manual', 6, 0),
(8, 2, 1, '2016-01-26 19:07:46', 'Perubahan jumlah Stok secara manual', 7, 0),
(9, 2, 1, '2016-01-26 19:07:46', 'Perubahan jumlah Stok secara manual', 8, 0),
(10, 2, 1, '2016-01-26 19:07:46', 'Perubahan jumlah Stok secara manual', 10, 0),
(11, 2, 1, '2016-01-26 19:07:47', 'Perubahan jumlah Stok secara manual', 1, 20),
(12, 2, 1, '2016-01-26 19:09:38', 'Perubahan jumlah Stok secara manual', 4, 2),
(13, 2, 1, '2016-01-26 19:12:19', 'POS 1', 2, -1),
(14, 2, 1, '2016-01-27 15:32:53', 'POS 2', 9, -1),
(15, 2, 1, '2016-01-27 19:40:39', 'POS 3', 9, -1),
(16, 3, 1, '2016-01-28 16:21:28', 'Perubahan jumlah Stok secara manual', 9, 2),
(17, 3, 1, '2016-01-28 16:21:29', 'Perubahan jumlah Stok secara manual', 2, 2),
(18, 3, 1, '2016-01-28 16:21:29', 'Perubahan jumlah Stok secara manual', 3, 2),
(19, 3, 1, '2016-01-28 16:21:29', 'Perubahan jumlah Stok secara manual', 4, 2),
(20, 3, 1, '2016-01-28 16:21:29', 'Perubahan jumlah Stok secara manual', 5, 2),
(21, 3, 1, '2016-01-28 16:21:29', 'Perubahan jumlah Stok secara manual', 6, 2),
(22, 3, 1, '2016-01-28 16:21:29', 'Perubahan jumlah Stok secara manual', 7, 2),
(23, 3, 1, '2016-01-28 16:21:29', 'Perubahan jumlah Stok secara manual', 8, 2),
(24, 3, 1, '2016-01-28 16:21:29', 'Perubahan jumlah Stok secara manual', 10, 0),
(25, 3, 1, '2016-01-28 16:21:29', 'Perubahan jumlah Stok secara manual', 1, 14),
(26, 3, 1, '2016-01-31 18:01:04', 'POS 4', 9, -1),
(27, 4, 1, '2016-01-31 21:17:29', 'Perubahan jumlah Stok secara manual', 9, 10),
(28, 4, 1, '2016-01-31 21:17:29', 'Perubahan jumlah Stok secara manual', 2, 1),
(29, 4, 1, '2016-01-31 21:17:29', 'Perubahan jumlah Stok secara manual', 3, 1),
(30, 4, 1, '2016-01-31 21:17:29', 'Perubahan jumlah Stok secara manual', 4, 1),
(31, 4, 1, '2016-01-31 21:17:30', 'Perubahan jumlah Stok secara manual', 5, 1),
(32, 4, 1, '2016-01-31 21:17:30', 'Perubahan jumlah Stok secara manual', 6, 1),
(33, 4, 1, '2016-01-31 21:17:30', 'Perubahan jumlah Stok secara manual', 7, 1),
(34, 4, 1, '2016-01-31 21:17:30', 'Perubahan jumlah Stok secara manual', 8, 1),
(35, 4, 1, '2016-01-31 21:17:30', 'Perubahan jumlah Stok secara manual', 10, 1),
(36, 4, 1, '2016-01-31 21:17:30', 'Perubahan jumlah Stok secara manual', 1, 18),
(37, 4, 1, '2016-02-01 15:04:55', 'POS 5', 9, -1),
(38, 4, 1, '2016-02-02 19:43:01', 'POS 6', 1, -1),
(39, 4, 1, '2016-02-02 19:46:39', 'POS 7', 2, -1),
(40, 4, 1, '2016-02-04 18:14:21', 'POS 8', 3, -1),
(41, 4, 1, '2016-02-04 18:48:58', 'POS 9', 3, -1),
(42, 4, 1, '2016-02-10 13:19:47', 'POS 10', 1, -4),
(43, 4, 1, '2016-02-10 13:53:34', 'POS 11', 1, -1),
(44, 5, 1, '2016-02-13 22:23:49', 'Perubahan jumlah Stok secara manual', 9, 5),
(45, 5, 1, '2016-02-13 22:23:49', 'Perubahan jumlah Stok secara manual', 2, 5),
(46, 5, 1, '2016-02-13 22:23:49', 'Perubahan jumlah Stok secara manual', 3, 5),
(47, 5, 1, '2016-02-13 22:23:50', 'Perubahan jumlah Stok secara manual', 4, 5),
(48, 5, 1, '2016-02-13 22:23:50', 'Perubahan jumlah Stok secara manual', 5, 5),
(49, 5, 1, '2016-02-13 22:23:50', 'Perubahan jumlah Stok secara manual', 6, 5),
(50, 5, 1, '2016-02-13 22:23:50', 'Perubahan jumlah Stok secara manual', 7, 5),
(51, 5, 1, '2016-02-13 22:23:50', 'Perubahan jumlah Stok secara manual', 8, 5),
(52, 5, 1, '2016-02-13 22:23:50', 'Perubahan jumlah Stok secara manual', 10, 5),
(53, 5, 1, '2016-02-13 22:23:50', 'Perubahan jumlah Stok secara manual', 1, 60),
(54, 5, 1, '2016-02-13 22:25:54', 'POS 12', 2, -2),
(55, 5, 1, '2016-02-13 22:40:30', 'POS 13', 3, -1),
(56, 6, 1, '2016-02-15 12:12:14', 'Perubahan jumlah Stok secara manual', 9, 0),
(57, 6, 1, '2016-02-15 12:12:15', 'Perubahan jumlah Stok secara manual', 2, 10),
(58, 6, 1, '2016-02-15 12:12:15', 'Perubahan jumlah Stok secara manual', 3, 0),
(59, 6, 1, '2016-02-15 12:12:15', 'Perubahan jumlah Stok secara manual', 4, 0),
(60, 6, 1, '2016-02-15 12:12:15', 'Perubahan jumlah Stok secara manual', 5, 0),
(61, 6, 1, '2016-02-15 12:12:15', 'Perubahan jumlah Stok secara manual', 6, 0),
(62, 6, 1, '2016-02-15 12:12:15', 'Perubahan jumlah Stok secara manual', 7, 0),
(63, 6, 1, '2016-02-15 12:12:15', 'Perubahan jumlah Stok secara manual', 8, 0),
(64, 6, 1, '2016-02-15 12:12:15', 'Perubahan jumlah Stok secara manual', 10, 0),
(65, 6, 1, '2016-02-15 12:12:15', 'Perubahan jumlah Stok secara manual', 1, 0),
(66, 6, 1, '2016-02-15 13:29:21', 'RECV 1', 7, 40),
(67, 4, 1, '2016-02-16 07:24:54', 'POS 14', 8, -2),
(68, 5, 1, '2016-02-16 07:24:54', 'POS 14', 8, -1),
(69, 4, 1, '2016-02-16 07:34:00', 'RECV 2', 5, 1),
(70, 4, 1, '2016-02-16 07:34:00', 'RECV 2', 3, -1),
(71, 4, 1, '2016-02-22 07:45:36', 'POS 15', 9, -1),
(72, 3, 1, '2016-02-22 07:58:35', 'POS 16', 9, -1),
(73, 4, 1, '2016-02-22 09:11:50', 'POS 17', 9, -1),
(74, 4, 1, '2016-02-22 09:27:22', 'POS 18', 9, -1),
(75, 4, 1, '2016-02-22 09:29:31', 'POS 19', 9, -1),
(76, 4, 1, '2016-02-22 09:40:03', 'POS 20', 9, -1),
(77, 4, 1, '2016-02-23 04:09:43', 'POS 21', 9, -1),
(78, 4, 1, '2016-02-23 04:10:48', 'POS 22', 9, -1),
(79, 4, 1, '2016-02-25 05:00:38', 'POS 23', 9, -1),
(80, 4, 1, '2016-02-25 05:03:03', 'POS 24', 9, -1),
(81, 4, 1, '2016-02-25 05:03:46', 'POS 25', 9, -1),
(82, 3, 1, '2016-02-25 05:04:48', 'POS 26', 9, -1),
(83, 5, 1, '2016-02-25 05:05:48', 'POS 27', 9, -1),
(84, 4, 1, '2016-02-25 06:37:29', 'POS 28', 5, -1),
(85, 3, 1, '2016-02-25 11:18:26', 'POS 29', 5, -1),
(86, 4, 1, '2016-02-26 03:56:37', 'POS 30', 5, -1),
(87, 3, 1, '2016-02-26 03:57:55', 'POS 31', 5, -1),
(88, 4, 1, '2016-02-26 04:00:50', 'POS 32', 5, -1),
(89, 4, 1, '2016-02-26 04:03:38', 'POS 33', 5, -1),
(90, 4, 1, '2016-02-26 04:04:42', 'POS 34', 5, -2),
(91, 6, 1, '2016-02-26 04:10:43', 'POS 35', 5, -1),
(92, 7, 1, '2016-02-26 10:41:26', 'Perubahan jumlah Stok secara manual', 9, 10),
(93, 7, 1, '2016-02-26 10:41:26', 'Perubahan jumlah Stok secara manual', 2, 1),
(94, 7, 1, '2016-02-26 10:41:26', 'Perubahan jumlah Stok secara manual', 3, 1),
(95, 7, 1, '2016-02-26 10:41:27', 'Perubahan jumlah Stok secara manual', 4, 1),
(96, 7, 1, '2016-02-26 10:41:27', 'Perubahan jumlah Stok secara manual', 5, 1),
(97, 7, 1, '2016-02-26 10:41:27', 'Perubahan jumlah Stok secara manual', 6, 1),
(98, 7, 1, '2016-02-26 10:41:27', 'Perubahan jumlah Stok secara manual', 7, 1),
(99, 7, 1, '2016-02-26 10:41:27', 'Perubahan jumlah Stok secara manual', 8, 1),
(100, 7, 1, '2016-02-26 10:41:27', 'Perubahan jumlah Stok secara manual', 10, 1),
(101, 7, 1, '2016-02-26 10:41:27', 'Perubahan jumlah Stok secara manual', 1, 18),
(102, 8, 1, '2016-03-07 09:36:16', 'Perubahan jumlah Stok secara manual', 9, 0),
(103, 8, 1, '2016-03-07 09:36:16', 'Perubahan jumlah Stok secara manual', 2, 0),
(104, 8, 1, '2016-03-07 09:36:16', 'Perubahan jumlah Stok secara manual', 3, 0),
(105, 8, 1, '2016-03-07 09:36:16', 'Perubahan jumlah Stok secara manual', 4, 0),
(106, 8, 1, '2016-03-07 09:36:17', 'Perubahan jumlah Stok secara manual', 5, 0),
(107, 8, 1, '2016-03-07 09:36:17', 'Perubahan jumlah Stok secara manual', 6, 0),
(108, 8, 1, '2016-03-07 09:36:17', 'Perubahan jumlah Stok secara manual', 7, 0),
(109, 8, 1, '2016-03-07 09:36:17', 'Perubahan jumlah Stok secara manual', 8, 0),
(110, 8, 1, '2016-03-07 09:36:17', 'Perubahan jumlah Stok secara manual', 10, 0),
(111, 8, 1, '2016-03-07 09:36:17', 'Perubahan jumlah Stok secara manual', 1, 5),
(112, 9, 1, '2016-03-07 09:52:02', 'Perubahan jumlah Stok secara manual', 9, 0),
(113, 9, 1, '2016-03-07 09:52:02', 'Perubahan jumlah Stok secara manual', 2, 0),
(114, 9, 1, '2016-03-07 09:52:02', 'Perubahan jumlah Stok secara manual', 3, 0),
(115, 9, 1, '2016-03-07 09:52:02', 'Perubahan jumlah Stok secara manual', 4, 0),
(116, 9, 1, '2016-03-07 09:52:03', 'Perubahan jumlah Stok secara manual', 5, 0),
(117, 9, 1, '2016-03-07 09:52:03', 'Perubahan jumlah Stok secara manual', 6, 0),
(118, 9, 1, '2016-03-07 09:52:03', 'Perubahan jumlah Stok secara manual', 7, 0),
(119, 9, 1, '2016-03-07 09:52:03', 'Perubahan jumlah Stok secara manual', 8, 0),
(120, 9, 1, '2016-03-07 09:52:03', 'Perubahan jumlah Stok secara manual', 10, 0),
(121, 9, 1, '2016-03-07 09:52:03', 'Perubahan jumlah Stok secara manual', 1, 50),
(122, 5, 1, '2016-03-30 08:27:55', 'POS 36', 1, -1),
(123, 4, 1, '2016-03-30 08:27:55', 'POS 36', 1, -1),
(124, 4, 1, '2016-03-30 08:29:24', 'POS 37', 1, -1),
(125, 10, 1, '2016-03-30 22:42:29', 'Perubahan jumlah Stok secara manual', 9, 5),
(126, 10, 1, '2016-03-30 22:42:29', 'Perubahan jumlah Stok secara manual', 2, 0),
(127, 10, 1, '2016-03-30 22:42:29', 'Perubahan jumlah Stok secara manual', 3, 0),
(128, 10, 1, '2016-03-30 22:42:29', 'Perubahan jumlah Stok secara manual', 4, 0),
(129, 10, 1, '2016-03-30 22:42:29', 'Perubahan jumlah Stok secara manual', 5, 0),
(130, 10, 1, '2016-03-30 22:42:29', 'Perubahan jumlah Stok secara manual', 6, 0),
(131, 10, 1, '2016-03-30 22:42:29', 'Perubahan jumlah Stok secara manual', 7, 0),
(132, 10, 1, '2016-03-30 22:42:29', 'Perubahan jumlah Stok secara manual', 8, 0),
(133, 10, 1, '2016-03-30 22:42:29', 'Perubahan jumlah Stok secara manual', 10, 0),
(134, 10, 1, '2016-03-30 22:42:29', 'Perubahan jumlah Stok secara manual', 1, 0),
(135, 11, 1, '2016-03-31 00:55:17', 'Perubahan jumlah Stok secara manual', 9, 70),
(136, 11, 1, '2016-03-31 00:55:18', 'Perubahan jumlah Stok secara manual', 2, 0),
(137, 11, 1, '2016-03-31 00:55:18', 'Perubahan jumlah Stok secara manual', 3, 0),
(138, 11, 1, '2016-03-31 00:55:18', 'Perubahan jumlah Stok secara manual', 4, 0),
(139, 11, 1, '2016-03-31 00:55:18', 'Perubahan jumlah Stok secara manual', 5, 0),
(140, 11, 1, '2016-03-31 00:55:18', 'Perubahan jumlah Stok secara manual', 6, 0),
(141, 11, 1, '2016-03-31 00:55:18', 'Perubahan jumlah Stok secara manual', 7, 0),
(142, 11, 1, '2016-03-31 00:55:18', 'Perubahan jumlah Stok secara manual', 8, 0),
(143, 11, 1, '2016-03-31 00:55:18', 'Perubahan jumlah Stok secara manual', 10, 0),
(144, 11, 1, '2016-03-31 00:55:18', 'Perubahan jumlah Stok secara manual', 1, 0),
(145, 8, 1, '2016-03-31 03:53:14', 'Perubahan jumlah Stok secara manual', 1, -5),
(146, 9, 1, '2016-04-02 04:37:29', '', 9, 7),
(147, 10, 1, '2016-04-02 04:44:51', '0', 9, 0),
(148, 9, 1, '2016-04-02 04:46:33', '', 9, 1),
(149, 11, 1, '2016-04-02 05:32:05', '', 2, 65),
(151, 12, 1, '2016-04-04 16:57:38', 'Perubahan jumlah Stok secara manual', 9, 30),
(152, 12, 1, '2016-04-04 16:57:38', 'Perubahan jumlah Stok secara manual', 2, 0),
(153, 12, 1, '2016-04-04 16:57:39', 'Perubahan jumlah Stok secara manual', 3, 0),
(154, 12, 1, '2016-04-04 16:57:39', 'Perubahan jumlah Stok secara manual', 4, 0),
(155, 12, 1, '2016-04-04 16:57:39', 'Perubahan jumlah Stok secara manual', 5, 0),
(156, 12, 1, '2016-04-04 16:57:39', 'Perubahan jumlah Stok secara manual', 6, 0),
(157, 12, 1, '2016-04-04 16:57:39', 'Perubahan jumlah Stok secara manual', 7, 0),
(158, 12, 1, '2016-04-04 16:57:39', 'Perubahan jumlah Stok secara manual', 8, 0),
(159, 12, 1, '2016-04-04 16:57:39', 'Perubahan jumlah Stok secara manual', 10, 0),
(160, 12, 1, '2016-04-04 16:57:39', 'Perubahan jumlah Stok secara manual', 1, 0),
(161, 13, 1, '2016-04-04 17:03:07', 'Perubahan jumlah Stok secara manual', 9, 5),
(162, 13, 1, '2016-04-04 17:03:07', 'Perubahan jumlah Stok secara manual', 2, 0),
(163, 13, 1, '2016-04-04 17:03:07', 'Perubahan jumlah Stok secara manual', 3, 0),
(164, 13, 1, '2016-04-04 17:03:07', 'Perubahan jumlah Stok secara manual', 4, 0),
(165, 13, 1, '2016-04-04 17:03:07', 'Perubahan jumlah Stok secara manual', 5, 0),
(166, 13, 1, '2016-04-04 17:03:07', 'Perubahan jumlah Stok secara manual', 6, 0),
(167, 13, 1, '2016-04-04 17:03:07', 'Perubahan jumlah Stok secara manual', 7, 0),
(168, 13, 1, '2016-04-04 17:03:07', 'Perubahan jumlah Stok secara manual', 8, 0),
(169, 13, 1, '2016-04-04 17:03:08', 'Perubahan jumlah Stok secara manual', 10, 0),
(170, 13, 1, '2016-04-04 17:03:08', 'Perubahan jumlah Stok secara manual', 1, 0),
(171, 5, 1, '2016-04-05 15:33:02', 'POS 38', 1, -1),
(172, 4, 1, '2016-04-06 10:04:59', 'POS 39', 1, -1),
(173, 4, 1, '2016-04-06 16:27:28', 'Deleting sale 39', 1, 1),
(174, 4, 1, '2016-04-06 16:28:54', 'POS 40', 1, -1),
(175, 4, 1, '2016-04-06 16:29:37', 'Deleting sale 40', 1, 1),
(176, 4, 1, '2016-04-06 16:33:10', 'POS 41', 1, -1),
(177, 4, 1, '2016-04-06 16:33:54', 'Deleting sale 41', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_items`
--

CREATE TABLE `ospos_items` (
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `type_item` varchar(50) DEFAULT NULL,
  `item_number` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `dimension` varchar(255) NOT NULL,
  `cost_price` decimal(15,2) NOT NULL,
  `unit_price` decimal(15,2) NOT NULL,
  `reorder_level` decimal(15,2) NOT NULL DEFAULT '0.00',
  `receiving_quantity` int(11) NOT NULL DEFAULT '1',
  `item_id` int(10) NOT NULL,
  `pic_id` int(10) DEFAULT NULL,
  `allow_alt_description` tinyint(1) NOT NULL,
  `is_serialized` tinyint(1) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `custom1` varchar(25) NOT NULL,
  `custom2` varchar(25) NOT NULL,
  `custom3` varchar(25) NOT NULL,
  `custom4` varchar(25) NOT NULL,
  `custom5` varchar(25) NOT NULL,
  `custom6` varchar(25) NOT NULL,
  `custom7` varchar(25) NOT NULL,
  `custom8` varchar(25) NOT NULL,
  `custom9` varchar(25) NOT NULL,
  `custom10` varchar(25) NOT NULL,
  `satuan` varchar(30) NOT NULL DEFAULT 'kg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_items`
--

INSERT INTO `ospos_items` (`name`, `category`, `supplier_id`, `type_item`, `item_number`, `description`, `color`, `dimension`, `cost_price`, `unit_price`, `reorder_level`, `receiving_quantity`, `item_id`, `pic_id`, `allow_alt_description`, `is_serialized`, `deleted`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`, `satuan`) VALUES
('meja', 'kredit', NULL, NULL, NULL, '', '', '', '40000.00', '50000.00', '5.00', 0, 1, NULL, 0, 0, 1, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'kg'),
('Meja', 'Cash', NULL, NULL, 'M001', '', '', '', '20000.00', '30000.00', '1.00', 0, 2, NULL, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'kg'),
('Kursi', 'kursi', NULL, NULL, 'K001', '', '', '', '30000.00', '50000.00', '2.00', 0, 3, NULL, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'kg'),
('Kursi Syahrini', 'new', NULL, NULL, 'K002', '', 'merah', '20x25', '100000.00', '300000.00', '1.00', 0, 4, NULL, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'kg'),
('Kursi Tunggu', 'kursi', NULL, NULL, '56746774276356', '', 'Hitam', '45 x 200', '600000.00', '900000.00', '20.00', 60, 5, NULL, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'kg'),
('Komputer PC', 'Komputer', 4, 'Baik', 'PC2837849', '', 'Putih', '14"', '3000000.00', '4500000.00', '4.00', 10, 6, NULL, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'kg'),
('meja coba', 'apa ya', 4, 'service', 'kcoba1', '', 'hijau', '50 x 80', '200000.00', '200000.00', '0.00', 0, 7, NULL, 0, 0, 1, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'kg'),
('Kain 50meter', 'Kain', NULL, '0', '2222', '0', '0', '0', '0.00', '0.00', '0.00', 0, 8, NULL, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'kg'),
('56hhh', 'Kain', NULL, '0', '535365', '', 'Kuning', '', '150000.00', '230000.00', '20.00', 0, 9, NULL, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'kg'),
('Coba sih', 'Kain', NULL, 'Baik', '4gssss', '', '', '', '10000.00', '13000.00', '3.00', 5, 10, NULL, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'kg'),
('Itulah aku', 'kursi', NULL, 'Baik', 'huhuuh', '', 'hitam', '20x20', '12000.00', '15000.00', '35.00', 70, 11, NULL, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'kg'),
('Ngetes 1', 'kursi', NULL, 'Baik', 'gertyui', '', 'Merah', '20x20', '100000.00', '130000.00', '10.00', 30, 12, NULL, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'kg'),
('Ngetes 2', 'Meja', NULL, 'Baik', 'tyuqw', '', '', '', '100000.00', '130000.00', '1.00', 5, 13, NULL, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'kg');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_items_taxes`
--

CREATE TABLE `ospos_items_taxes` (
  `item_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_items_taxes`
--

INSERT INTO `ospos_items_taxes` (`item_id`, `name`, `percent`) VALUES
(5, 'Pajak Penjualan1', '10.00'),
(6, 'Pajak Penjualan1', '10.00'),
(7, 'Pajak Penjualan1', '10.00'),
(10, 'Pajak Penjualan1', '10.00'),
(13, 'Pajak Penjualan1', '10.00');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_item_kits`
--

CREATE TABLE `ospos_item_kits` (
  `item_kit_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_item_kits`
--

INSERT INTO `ospos_item_kits` (`item_kit_id`, `name`, `description`) VALUES
(1, 'paket 1', ''),
(2, 'Paket Coba 1', 'Coba coba 1'),
(3, 'Meja Kursi', ''),
(4, 'klambi', 'baju bajuan'),
(5, 'paket 1', 'tes paket 1');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_item_kit_items`
--

CREATE TABLE `ospos_item_kit_items` (
  `item_kit_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_item_kit_items`
--

INSERT INTO `ospos_item_kit_items` (`item_kit_id`, `item_id`, `quantity`) VALUES
(1, 2, '1.00'),
(1, 3, '1.00'),
(2, 4, '1.00'),
(2, 6, '2.00'),
(3, 2, '2.00'),
(3, 4, '1.00'),
(4, 8, '5.00'),
(5, 2, '3.00');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_item_quantities`
--

CREATE TABLE `ospos_item_quantities` (
  `item_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_item_quantities`
--

INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
(1, 1, 10),
(1, 2, 0),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0),
(1, 6, 0),
(1, 7, 0),
(1, 8, 0),
(1, 9, 0),
(1, 10, 0),
(2, 1, 20),
(2, 2, 4),
(2, 3, 0),
(2, 4, 2),
(2, 5, 0),
(2, 6, 0),
(2, 7, 0),
(2, 8, 0),
(2, 9, 8),
(2, 10, 0),
(3, 1, 14),
(3, 2, 2),
(3, 3, 2),
(3, 4, 2),
(3, 5, 1),
(3, 6, 2),
(3, 7, 2),
(3, 8, 2),
(3, 9, -1),
(3, 10, 0),
(4, 1, 15),
(4, 2, 0),
(4, 3, -2),
(4, 4, 1),
(4, 5, 2),
(4, 6, 1),
(4, 7, 1),
(4, 8, -1),
(4, 9, -1),
(4, 10, 1),
(5, 1, 60),
(5, 2, 3),
(5, 3, 4),
(5, 4, 5),
(5, 5, 5),
(5, 6, 5),
(5, 7, 5),
(5, 8, 4),
(5, 9, 4),
(5, 10, 5),
(6, 1, 0),
(6, 2, 10),
(6, 3, 0),
(6, 4, 0),
(6, 5, 0),
(6, 6, 0),
(6, 7, 40),
(6, 8, 0),
(6, 9, 0),
(6, 10, 0),
(7, 1, 18),
(7, 2, 1),
(7, 3, 1),
(7, 4, 1),
(7, 5, 1),
(7, 6, 1),
(7, 7, 1),
(7, 8, 1),
(7, 9, 10),
(7, 10, 1),
(8, 1, 0),
(8, 2, 0),
(8, 3, 0),
(8, 4, 0),
(8, 5, 0),
(8, 6, 0),
(8, 7, 0),
(8, 8, 0),
(8, 9, 0),
(8, 10, 0),
(9, 1, 50),
(9, 2, 0),
(9, 3, 0),
(9, 4, 0),
(9, 5, 0),
(9, 6, 0),
(9, 7, 0),
(9, 8, 0),
(9, 9, 8),
(9, 10, 0),
(10, 1, 0),
(10, 2, 0),
(10, 3, 0),
(10, 4, 0),
(10, 5, 0),
(10, 6, 0),
(10, 7, 0),
(10, 8, 0),
(10, 9, 5),
(10, 10, 0),
(11, 1, 0),
(11, 2, 65),
(11, 3, 0),
(11, 4, 0),
(11, 5, 0),
(11, 6, 0),
(11, 7, 0),
(11, 8, 0),
(11, 9, 70),
(11, 10, 0),
(12, 1, 0),
(12, 2, 0),
(12, 3, 0),
(12, 4, 0),
(12, 5, 0),
(12, 6, 0),
(12, 7, 0),
(12, 8, 0),
(12, 9, 30),
(12, 10, 0),
(13, 1, 0),
(13, 2, 0),
(13, 3, 0),
(13, 4, 0),
(13, 5, 0),
(13, 6, 0),
(13, 7, 0),
(13, 8, 0),
(13, 9, 5),
(13, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_menu`
--

CREATE TABLE `ospos_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `module_id` varchar(255) DEFAULT NULL,
  `depth_level` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL,
  `sort_number` int(11) DEFAULT NULL,
  `menu_identifier` varchar(100) DEFAULT NULL,
  `font_awesome_icon` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_menu`
--

INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
(1, 'Item', NULL, 0, 0, '#', 1, 'items', 'fa fa-hdd-o'),
(2, 'Pembelian', 'NULL', 0, 0, '#', 2, 'pembelian', 'fa fa-credit-card'),
(3, 'Penerimaan', 'receivings', 0, 0, 'receivings', 3, 'receivings', 'fa fa-truck'),
(4, 'Penjualan', NULL, 0, 0, '#', 4, 'sales', 'fa fa-shopping-cart'),
(5, 'Produksi', NULL, 0, 0, '#', 5, 'productions', 'fa fa-puzzle-piece'),
(6, 'Pemasok', 'suppliers', 0, 0, 'suppliers', 6, 'suppliers', 'fa fa-retweet'),
(7, 'Pelanggan', NULL, 0, 0, '#', 7, 'customers', 'fa fa-users'),
(8, 'Laporan', NULL, 0, 0, '#', 8, 'reports', 'fa fa-file-text-o'),
(9, 'Manajemen Pengguna', 'employees', 0, 0, 'employees', 9, 'employees', 'fa fa-users'),
(10, 'Konfigurasi', 'config', 0, 0, 'config', 10, 'config', 'fa fa-cogs'),
(11, 'Raw Material', 'raw_materials', 1, 1, 'raw_materials', 1, 'raw_materials', NULL),
(12, 'Item Jual', 'items', 1, 1, 'items', 2, 'items', NULL),
(13, 'Paket Item Jual', 'item_kits', 1, 1, 'item_kits', 3, 'item_kits', NULL),
(14, 'Surat Pesanan', 'sales', 1, 4, 'sales', 1, 'sales', NULL),
(15, 'Surat Jalan', 'sales', 1, 4, 'sales/shipping', 2, 'shipping', NULL),
(16, 'Input Paket Sofa', 'productions', 1, 5, 'productions/paket_sofa', 5, 'paket_sofa', NULL),
(17, 'Produksi Sofa', 'productions', 1, 5, 'productions/prod_sofa', 2, 'prod_sofa', NULL),
(18, 'Produksi HPL', 'productions', 1, 5, 'productions/prod_hpl', 3, 'prod_hpl', NULL),
(19, 'Produk Rekondisi', 'productions', 1, 5, 'productions/waste', 4, 'waste', NULL),
(20, 'Daftar Pesanan', 'productions', 1, 5, 'productions/supervise', 1, 'supervise', NULL),
(21, 'Data', 'customers', 1, 7, 'customers', 1, 'customers', NULL),
(22, 'Gift Card', 'customers', 1, 7, 'giftcards', 2, 'gift_cards', NULL),
(23, 'Laporan Grafik', 'reports', 1, 8, '#', 1, 'graphical_report', NULL),
(24, 'Ringkasan Laporan', 'reports', 1, 8, '#', 2, 'summary_report', NULL),
(25, 'Rincian Laporan', 'reports', 1, 8, '#', 3, 'detail_report', NULL),
(26, 'Laporan Persediaan', 'reports', 1, 8, '#', 4, 'stock_report', NULL),
(27, 'Penjualan', 'reports', 2, 21, 'reports/graphical_summary_sales', 1, 'graphical_summary_sales', NULL),
(28, 'Kategori', 'reports', 2, 21, 'reports/graphical_summary_categories', 2, 'graphical_summary_categories', NULL),
(29, 'Pelanggan', 'reports', 2, 21, 'reports/graphical_summary_customers', 3, 'graphical_summary_customers', NULL),
(30, 'Diskon', 'reports', 2, 21, 'reports/graphical_summary_discounts', 4, 'graphical_summary_discounts', NULL),
(31, 'Produk/Item', 'reports', 2, 21, 'reports/graphical_summary_items', 5, 'graphical_summary_items', NULL),
(32, 'Pembayaran', 'reports', 2, 21, 'reports/graphical_summary_payments', 6, 'graphical_summary_payments', NULL),
(33, 'Karyawan', 'reports', 2, 21, 'reports/graphical_summary_employees', 7, 'graphical_summary_employees', NULL),
(34, 'Pemasok', 'reports', 2, 21, 'reports/graphical_summary_suppliers', 8, 'graphical_summary_suppliers', NULL),
(35, 'Pajak', 'reports', 2, 21, 'reports/graphical_summary_taxes', 9, 'graphical_summary_taxes', NULL),
(36, 'Penjualan', 'reports', 2, 22, 'reports/summary_sales', 1, 'summary_sales', NULL),
(37, 'Kategori', 'reports', 2, 22, 'reports/summary_categories', 2, 'summary_categories', NULL),
(38, 'Pelanggan', 'reports', 2, 22, 'reports/summary_customers', 3, 'summary_customers', NULL),
(39, 'Diskon', 'reports', 2, 22, 'reports/summary_discounts', 4, 'summary_discounts', NULL),
(40, 'Produk/Item', 'reports', 2, 22, 'reports/summary_items', 5, 'summary_items', NULL),
(41, 'Pembayaran', 'reports', 2, 22, 'reports/summary_payments', 6, 'summary_payments', NULL),
(42, 'Karyawan', 'reports', 2, 22, 'reports/summary_employees', 7, 'summary_employees', NULL),
(43, 'Pemasok', 'reports', 2, 22, 'reports/summary_suppliers', 8, 'summary_suppliers', NULL),
(44, 'Pajak', 'reports', 2, 22, 'reports/summary_taxes', 9, 'summary_taxes', NULL),
(45, 'Penjualan', 'reports', 2, 23, 'reports/detailed_sales', 1, 'detailed_sales', NULL),
(46, 'Barang Masuk', 'reports', 2, 23, 'reports/detailed_receivings', 2, 'detailed_receivings', NULL),
(47, 'Pelanggan', 'reports', 2, 23, 'reports/specific_customer', 3, 'specific_customer', NULL),
(48, 'Diskon', 'reports', 2, 23, 'reports/specific_discount', 4, 'specific_discount', NULL),
(49, 'Karyawan', 'reports', 2, 23, 'reports/specific_employee', 5, 'specific_employee', NULL),
(50, 'Persediaan Rendah', 'reports', 2, 24, 'reports/inventory_low', 1, 'inventory_low', NULL),
(51, 'Ringkasan Persediaan', 'reports', 2, 24, 'reports/inventory_summary', 2, 'inventory_summary', NULL),
(52, 'Order Pembelian', 'pembelian', 1, 2, 'pembelian', 1, 'pembelian', NULL),
(53, 'Data Pembelian', 'pembelian', 1, 2, 'pembelian/data', 2, 'data', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_menu_copy`
--

CREATE TABLE `ospos_menu_copy` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL,
  `sort_number` int(11) DEFAULT NULL,
  `menu_identifier` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ospos_menu_copy`
--

INSERT INTO `ospos_menu_copy` (`id`, `name`, `module`, `parent_id`, `href`, `sort_number`, `menu_identifier`) VALUES
(1, 'Laporan Grafik', 'reports', NULL, '#', 1, 'graphical_report'),
(2, 'Ringkasan Laporan', 'reports', NULL, '#', 2, 'summary_report'),
(3, 'Rincian Laporan', 'reports', NULL, '#', 3, 'detail_report'),
(4, 'Laporan Persediaan', 'reports', NULL, '#', 4, 'stock_report'),
(5, 'Penjualan', NULL, 1, 'reports/graphical_summary_sales', 1, 'graphical_summary_sales'),
(6, 'Kategori', NULL, 1, 'reports/graphical_summary_categories', 2, 'graphical_summary_categories'),
(7, 'Pelanggan', NULL, 1, 'reports/graphical_summary_customers', 3, 'graphical_summary_customers'),
(8, 'Diskon', NULL, 1, 'reports/graphical_summary_discounts', 4, 'graphical_summary_discounts'),
(9, 'Produk/Item', NULL, 1, 'reports/graphical_summary_items', 5, 'graphical_summary_items'),
(10, 'Pembayaran', NULL, 1, 'reports/graphical_summary_payments', 6, 'graphical_summary_payments'),
(11, 'Karyawan', NULL, 1, 'reports/graphical_summary_employees', 7, 'graphical_summary_employees'),
(12, 'Pemasok', NULL, 1, 'reports/graphical_summary_suppliers', 8, 'graphical_summary_suppliers'),
(13, 'Pajak', NULL, 1, 'reports/graphical_summary_taxes', 9, 'graphical_summary_taxes'),
(14, 'Penjualan', NULL, 2, 'reports/summary_sales', 1, 'summary_sales'),
(15, 'Kategori', NULL, 2, 'reports/summary_categories', 2, 'summary_categories'),
(16, 'Pelanggan', NULL, 2, 'reports/summary_customers', 3, 'summary_customers'),
(17, 'Diskon', NULL, 2, 'reports/summary_discounts', 4, 'summary_discounts'),
(18, 'Produk/Item', NULL, 2, 'reports/summary_items', 5, 'summary_items'),
(19, 'Pembayaran', NULL, 2, 'reports/summary_payments', 6, 'summary_payments'),
(20, 'Karyawan', NULL, 2, 'reports/summary_employees', 7, 'summary_employees'),
(21, 'Pemasok', NULL, 2, 'reports/summary_suppliers', 8, 'summary_suppliers'),
(22, 'Pajak', NULL, 2, 'reports/summary_taxes', 9, 'summary_taxes'),
(29, 'Penjualan', NULL, 3, 'reports/detailed_sales', 1, 'detailed_sales'),
(30, 'Barang Masuk', NULL, 3, 'reports/detailed_receivings', 2, 'detailed_receivings'),
(31, 'Pelanggan', NULL, 3, 'reports/specific_customer', 3, 'specific_customer'),
(32, 'Diskon', NULL, 3, 'reports/specific_discount', 4, 'specific_discount'),
(33, 'Karyawan', NULL, 3, 'reports/specific_employee', 5, 'specific_employee'),
(34, 'Persediaan Rendah', NULL, 4, 'reports/inventory_low', 1, 'inventory_low'),
(35, 'Ringkasan Persediaan', NULL, 4, 'reports/inventory_summary', 2, 'inventory_summary'),
(36, 'Surat Pesanan', 'sales', NULL, 'sales', 1, 'sales_order'),
(37, 'Surat Jalan', 'sales', NULL, 'shipments', 2, 'shipment');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_modules`
--

CREATE TABLE `ospos_modules` (
  `name_lang_key` varchar(255) NOT NULL,
  `desc_lang_key` varchar(255) NOT NULL,
  `sort` int(10) NOT NULL,
  `module_id` varchar(255) NOT NULL,
  `font_awesome_icon` varchar(255) NOT NULL,
  `sort_number` int(11) NOT NULL,
  `href` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_modules`
--

INSERT INTO `ospos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`, `font_awesome_icon`, `sort_number`, `href`) VALUES
('module_config', 'module_config_desc', 100, 'config', 'fa fa-cogs', 10, 'config'),
('module_customers', 'module_customers_desc', 10, 'customers', 'fa fa-users', 3, 'customers'),
('module_employees', 'module_employees_desc', 80, 'employees', 'fa fa-users', 8, 'employees'),
('module_giftcards', 'module_giftcards_desc', 90, 'giftcards', 'fa fa-gift', 7, 'giftcards'),
('module_items', 'module_items_desc', 20, 'items', 'fa fa-hdd-o', 1, 'items'),
('module_item_kits', 'module_item_kits_desc', 30, 'item_kits', 'ion ion-cube', 2, 'item_kits'),
('module_pembelian', 'module_pembelian_desc', 140, 'pembelian', 'fa fa-credit-card', 14, 'pembelian'),
('module_productions', 'module_productions_desc', 130, 'productions', 'fa fa-puzzle', 13, 'productions'),
('module_raw_materials', 'module_raw_materials_desc', 110, 'raw_materials', 'fa fa-tint', 11, 'raw_materials'),
('module_receivings', 'module_receivings_desc', 60, 'receivings', 'fa fa-truck', 6, 'receivings'),
('module_reports', 'module_reports_desc', 50, 'reports', 'fa fa-file-text-o', 9, 'reports'),
('module_sales', 'module_sales_desc', 70, 'sales', 'fa fa-shopping-cart', 4, 'sales'),
('module_shippings', 'module_shippings_desc', 120, 'shippings', 'fa fa-truck fa-flip-horizontal', 12, 'shippings'),
('module_suppliers', 'module_suppliers_desc', 40, 'suppliers', 'fa fa-retweet', 5, 'suppliers');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_paket_sofa`
--

CREATE TABLE `ospos_paket_sofa` (
  `paket_id` int(7) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ospos_paket_sofa`
--

INSERT INTO `ospos_paket_sofa` (`paket_id`, `name`, `description`) VALUES
(1, 'paket 1', 'tes paket 1');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_paket_sofa_items`
--

CREATE TABLE `ospos_paket_sofa_items` (
  `paket_id` int(7) NOT NULL,
  `item_id` int(7) NOT NULL,
  `quantity` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_pembelian`
--

CREATE TABLE `ospos_pembelian` (
  `no` bigint(9) NOT NULL,
  `noFaktur` varchar(30) NOT NULL,
  `tglFaktur` date NOT NULL,
  `supplier` int(4) NOT NULL,
  `namaBrg` varchar(200) NOT NULL,
  `jenisBrg` varchar(200) NOT NULL,
  `quantity` int(9) NOT NULL,
  `hargaBeli` bigint(13) NOT NULL,
  `satuan` varchar(30) NOT NULL,
  `diskon` bigint(13) NOT NULL,
  `totalHarga` bigint(13) NOT NULL,
  `totalPembelian` bigint(13) NOT NULL,
  `keterangan` varchar(255) NOT NULL DEFAULT '-',
  `locked` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_people`
--

CREATE TABLE `ospos_people` (
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `id_number` varchar(255) NOT NULL,
  `gender` int(1) DEFAULT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  `person_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_people`
--

INSERT INTO `ospos_people` (`first_name`, `last_name`, `id_number`, `gender`, `phone_number`, `email`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `comments`, `person_id`) VALUES
('WM', 'Dev', '78347900', NULL, '555-555-5555', 'admin@pappastech.com', 'Address 1', '', '', '', '', '', '', 1),
('Dicky', 'Gimbobb', '', 1, '', '', '', '', '', '', '', '', '', 2),
('Iwap', 'Saputra', '', 1, '', '', '', '', '', '', '', '', '', 3),
('Ocky', 'Harliansyah', '', 1, '', '', '', '', '', '', '', '', '', 4),
('novand', 'Dwiki', '', 1, '085791390018', 'novand@gmail.com', 'surabaya', 'mojokerto', 'surabaya', 'jawa timur', '60243', 'indonesia', '', 5),
('', '', '', 0, '', '', '', '', '', '', '', '', '', 6),
('Bri', 'Oooo', '', 0, '', '', '', '', '', '', '', '', '', 7),
('Coba', 'Customer', '', 1, '', '', '', '', '', '', '', '', '', 8),
('Coba', 'Dwiki', '', 1, '', '', '', '', '', '', '', '', '', 9),
('Coba', 'Pasok 1', '', 1, '008888888', 'coba.pasok@gmail.com', 'Jl. Muruririririri', 'Burirkkkk', 'Surabaya', 'H', '232323232', 'Indonesia', 'gggeeeeg', 10),
('Coba', 'Pasok 2', '', 0, '', '', '', '', '', '', '', '', '', 11),
('Pasooo', 'Coba', '', 0, '', '', '', '', '', '', '', '', '', 12),
('aha', 'haha', '', 0, '', '', '', '', '', '', '', '', '', 13),
('ehehee', 'hahahaha', '', 0, '', '', '', '', '', '', '', '', '', 14),
('gjfhj', 'fhjfhjh', '', 0, '', '', '', '', '', '', '', '', '', 15),
('Halo', 'Ocky', '', 1, '', '', '', '', '', '', '', '', '', 16);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_permissions`
--

CREATE TABLE `ospos_permissions` (
  `permission_id` varchar(255) NOT NULL,
  `module_id` varchar(255) NOT NULL,
  `location_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_permissions`
--

INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
('config', 'config', NULL),
('customers', 'customers', NULL),
('employees', 'employees', NULL),
('giftcards', 'giftcards', NULL),
('items', 'items', NULL),
('items_BATOS - Lippo Plaza Batu', 'items', 9),
('items_GP1 - Pusat', 'items', 2),
('items_GP2 - Toko Utama', 'items', 3),
('items_GP3 - Gudang Panel', 'items', 4),
('items_GP4 - Gudang Produksi Sofa', 'items', 5),
('items_GP5 - Gudang Produksi HPL', 'items', 6),
('items_MOG2 - Stand Depan Giant', 'items', 7),
('items_MOG3 - Stand Depan Foodcourt', 'items', 8),
('items_MOGATR - Atrium MOG', 'items', 10),
('items_stock', 'items', 1),
('item_kits', 'item_kits', NULL),
('pembelian', 'pembelian', NULL),
('productions', 'productions', NULL),
('raw_materials', 'raw_materials', NULL),
('receivings', 'receivings', NULL),
('receivings_BATOS - Lippo Plaza Batu', 'receivings', 9),
('receivings_GP1 - Pusat', 'receivings', 2),
('receivings_GP2 - Toko Utama', 'receivings', 3),
('receivings_GP3 - Gudang Panel', 'receivings', 4),
('receivings_GP4 - Gudang Produksi Sofa', 'receivings', 5),
('receivings_GP5 - Gudang Produksi HPL', 'receivings', 6),
('receivings_MOG2 - Stand Depan Giant', 'receivings', 7),
('receivings_MOG3 - Stand Depan Foodcourt', 'receivings', 8),
('receivings_MOGATR - Atrium MOG', 'receivings', 10),
('receivings_stock', 'receivings', 1),
('reports', 'reports', NULL),
('reports_categories', 'reports', NULL),
('reports_customers', 'reports', NULL),
('reports_discounts', 'reports', NULL),
('reports_employees', 'reports', NULL),
('reports_inventory', 'reports', NULL),
('reports_items', 'reports', NULL),
('reports_payments', 'reports', NULL),
('reports_receivings', 'reports', NULL),
('reports_sales', 'reports', NULL),
('reports_suppliers', 'reports', NULL),
('reports_taxes', 'reports', NULL),
('sales', 'sales', NULL),
('sales_BATOS - Lippo Plaza Batu', 'sales', 9),
('sales_GP1 - Pusat', 'sales', 2),
('sales_GP2 - Toko Utama', 'sales', 3),
('sales_GP3 - Gudang Panel', 'sales', 4),
('sales_GP4 - Gudang Produksi Sofa', 'sales', 5),
('sales_GP5 - Gudang Produksi HPL', 'sales', 6),
('sales_MOG2 - Stand Depan Giant', 'sales', 7),
('sales_MOG3 - Stand Depan Foodcourt', 'sales', 8),
('sales_MOGATR - Atrium MOG', 'sales', 10),
('sales_stock', 'sales', 1),
('shippings', 'shippings', NULL),
('suppliers', 'suppliers', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_produksi`
--

CREATE TABLE `ospos_produksi` (
  `noSurat` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `gudang` int(7) NOT NULL,
  `btsWaktu` date NOT NULL,
  `status` int(3) NOT NULL DEFAULT '0' COMMENT '0=belum; 1=proses; 2=done;'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_raw_materials`
--

CREATE TABLE `ospos_raw_materials` (
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `type_item` varchar(50) DEFAULT NULL,
  `item_number` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `dimension` varchar(255) NOT NULL,
  `unit_metric` varchar(255) NOT NULL,
  `cost_price` decimal(15,2) NOT NULL,
  `unit_price` decimal(15,2) NOT NULL,
  `reorder_level` decimal(15,2) NOT NULL DEFAULT '0.00',
  `receiving_quantity` int(11) NOT NULL DEFAULT '1',
  `item_id` int(10) NOT NULL,
  `pic_id` int(10) DEFAULT NULL,
  `allow_alt_description` tinyint(1) NOT NULL,
  `is_serialized` tinyint(1) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `custom1` varchar(25) NOT NULL,
  `custom2` varchar(25) NOT NULL,
  `custom3` varchar(25) NOT NULL,
  `custom4` varchar(25) NOT NULL,
  `custom5` varchar(25) NOT NULL,
  `custom6` varchar(25) NOT NULL,
  `custom7` varchar(25) NOT NULL,
  `custom8` varchar(25) NOT NULL,
  `custom9` varchar(25) NOT NULL,
  `custom10` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ospos_raw_materials`
--

INSERT INTO `ospos_raw_materials` (`name`, `category`, `supplier_id`, `type_item`, `item_number`, `description`, `color`, `dimension`, `unit_metric`, `cost_price`, `unit_price`, `reorder_level`, `receiving_quantity`, `item_id`, `pic_id`, `allow_alt_description`, `is_serialized`, `deleted`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`) VALUES
('Kayu Jati', 'Kayu', NULL, '0', '6354749', '', '', '', '', '1000000.00', '2000000.00', '10.00', 0, 14, NULL, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('Coba', 'Kain', NULL, '0', '890', '', '', '', '', '10000.00', '20000.00', '4.00', 0, 15, NULL, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('Coba 2', 'Kayu', NULL, '0', '6474950', '', 'Manis', '', '', '90000.00', '100000.00', '2.00', 0, 16, NULL, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('Coba 3', 'Kayu', NULL, 'Baik', '878787', '', 'Merah', '', 'Kg', '20000.00', '0.00', '10.00', 0, 17, NULL, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('kondom', 'sextoys', 4, 'Baik', 'mondok-0001', '', 'pink', '', '', '50000.00', '0.00', '1.00', 0, 18, NULL, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_raw_material_quantities`
--

CREATE TABLE `ospos_raw_material_quantities` (
  `item_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ospos_raw_material_quantities`
--

INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
(14, 1, 20),
(14, 2, 0),
(14, 3, 0),
(14, 4, 0),
(14, 5, 0),
(14, 6, 50),
(14, 7, 0),
(14, 8, 0),
(14, 9, 0),
(14, 10, 0),
(15, 1, 10),
(15, 2, 0),
(15, 3, 0),
(15, 4, 0),
(15, 5, 0),
(15, 6, 0),
(15, 7, 0),
(15, 8, 0),
(15, 9, 3),
(15, 10, 0),
(16, 1, 10),
(16, 2, 0),
(16, 3, 0),
(16, 4, 0),
(16, 5, 0),
(16, 6, 0),
(16, 7, 0),
(16, 8, 0),
(16, 9, 0),
(16, 10, 0),
(17, 1, 0),
(17, 2, 0),
(17, 3, 0),
(17, 4, 0),
(17, 5, 0),
(17, 6, 0),
(17, 7, 0),
(17, 8, 0),
(17, 9, 0),
(17, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_receivings`
--

CREATE TABLE `ospos_receivings` (
  `receiving_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `supplier_id` int(10) DEFAULT NULL,
  `employee_id` int(10) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `receiving_id` int(10) NOT NULL,
  `payment_type` varchar(20) DEFAULT NULL,
  `invoice_number` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_receivings`
--

INSERT INTO `ospos_receivings` (`receiving_time`, `supplier_id`, `employee_id`, `comment`, `receiving_id`, `payment_type`, `invoice_number`) VALUES
('2016-02-15 13:29:21', 4, 1, '', 1, 'Tunai', '0'),
('2016-02-16 07:34:00', NULL, 1, '', 2, '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_receivings_items`
--

CREATE TABLE `ospos_receivings_items` (
  `receiving_id` int(10) NOT NULL DEFAULT '0',
  `item_id` int(10) NOT NULL DEFAULT '0',
  `description` varchar(30) DEFAULT NULL,
  `serialnumber` varchar(30) DEFAULT NULL,
  `line` int(3) NOT NULL,
  `quantity_purchased` decimal(15,2) NOT NULL DEFAULT '0.00',
  `item_cost_price` decimal(15,2) NOT NULL,
  `item_unit_price` decimal(15,2) NOT NULL,
  `discount_percent` decimal(15,2) NOT NULL DEFAULT '0.00',
  `item_location` int(11) NOT NULL,
  `receiving_quantity` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_receivings_items`
--

INSERT INTO `ospos_receivings_items` (`receiving_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`, `receiving_quantity`) VALUES
(1, 6, '', '0', 1, '4.00', '3000000.00', '3000000.00', '0.00', 7, 10),
(2, 4, '', '', 1, '1.00', '100000.00', '100000.00', '0.00', 5, 0),
(2, 4, '', '', 2, '-1.00', '100000.00', '100000.00', '0.00', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales`
--

CREATE TABLE `ospos_sales` (
  `sale_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int(10) DEFAULT NULL,
  `employee_id` int(10) NOT NULL DEFAULT '0',
  `sales_person_id` int(10) NOT NULL DEFAULT '1',
  `comment` text NOT NULL,
  `invoice_number` varchar(32) DEFAULT NULL,
  `sale_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sales`
--

INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
('2016-01-26 19:12:18', NULL, 1, 1, '', NULL, 1),
('2016-01-27 15:32:53', NULL, 1, 1, '', NULL, 2),
('2016-01-27 19:40:39', NULL, 1, 1, '', NULL, 3),
('2016-01-31 18:01:04', NULL, 1, 1, '', '0', 4),
('2016-02-01 15:04:55', NULL, 1, 1, '', '1', 5),
('2016-02-02 19:43:01', NULL, 1, 1, '', NULL, 6),
('2016-02-02 19:46:39', NULL, 1, 1, '', NULL, 7),
('2016-02-04 18:14:21', NULL, 1, 1, '', NULL, 8),
('2016-02-04 18:48:58', NULL, 1, 1, '', '2', 9),
('2016-02-10 13:19:47', 2, 1, 1, '', NULL, 10),
('2016-02-10 13:53:34', 2, 1, 1, '', NULL, 11),
('2016-02-13 22:25:54', 3, 1, 1, '', '3', 12),
('2016-02-13 22:40:30', NULL, 1, 1, '', '4', 13),
('2016-02-16 07:24:54', NULL, 1, 1, '', 'SP-0006', 14),
('2016-02-22 07:45:36', 5, 1, 1, '', NULL, 15),
('2016-02-22 07:58:35', NULL, 1, 1, '', NULL, 16),
('2016-02-22 09:11:50', NULL, 1, 1, '', NULL, 17),
('2016-02-22 09:27:22', NULL, 1, 1, '', '6', 18),
('2016-02-22 09:29:31', NULL, 1, 1, '', '7', 19),
('2016-02-22 09:40:03', NULL, 1, 1, '', '8', 20),
('2016-02-23 04:09:43', NULL, 1, 1, '', 'nota NO 1', 21),
('2016-02-23 04:10:48', NULL, 1, 1, '', NULL, 22),
('2016-02-25 05:00:38', NULL, 1, 1, '', NULL, 23),
('2016-02-25 05:03:03', NULL, 1, 1, '', NULL, 24),
('2016-02-25 05:03:46', NULL, 1, 1, '', NULL, 25),
('2016-02-25 05:04:48', NULL, 1, 1, '', '10', 26),
('2016-02-25 05:05:48', NULL, 1, 1, '', NULL, 27),
('2016-02-25 06:37:29', NULL, 1, 1, '', NULL, 28),
('2016-02-25 11:18:26', NULL, 1, 1, '', NULL, 29),
('2016-02-26 03:56:37', NULL, 1, 1, '', NULL, 30),
('2016-02-26 03:57:55', NULL, 1, 1, '', NULL, 31),
('2016-02-26 04:00:50', NULL, 1, 1, '', NULL, 32),
('2016-02-26 04:03:38', NULL, 1, 1, '', '12', 33),
('2016-02-26 04:04:42', NULL, 1, 1, '', '14', 34),
('2016-02-26 04:10:43', NULL, 1, 1, '', '15', 35),
('2016-03-30 08:27:55', 5, 1, 1, '', NULL, 36),
('2016-03-30 08:29:24', 2, 1, 1, '', 'SP-0004', 37),
('2016-04-05 15:33:02', NULL, 1, 1, '', 'SP-0005', 38);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_items`
--

CREATE TABLE `ospos_sales_items` (
  `sale_id` int(10) NOT NULL DEFAULT '0',
  `item_id` int(10) NOT NULL DEFAULT '0',
  `description` varchar(30) DEFAULT NULL,
  `serialnumber` varchar(30) DEFAULT NULL,
  `line` int(3) NOT NULL DEFAULT '0',
  `quantity_purchased` decimal(15,2) NOT NULL DEFAULT '0.00',
  `item_cost_price` decimal(15,2) NOT NULL,
  `item_unit_price` decimal(15,2) NOT NULL,
  `discount_percent` decimal(15,2) NOT NULL DEFAULT '0.00',
  `item_location` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sales_items`
--

INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
(1, 2, '', '', 1, '1.00', '20000.00', '30000.00', '0.00', 2),
(2, 2, '', '', 1, '1.00', '20000.00', '30000.00', '0.00', 9),
(3, 2, '', '', 1, '1.00', '20000.00', '30000.00', '0.00', 9),
(4, 3, '', '', 1, '1.00', '30000.00', '50000.00', '0.00', 9),
(5, 4, '', '', 1, '1.00', '100000.00', '300000.00', '0.00', 9),
(6, 4, '', '', 1, '1.00', '100000.00', '300000.00', '0.00', 1),
(7, 4, '', '', 1, '1.00', '100000.00', '300000.00', '0.00', 2),
(8, 4, '', '', 1, '1.00', '100000.00', '300000.00', '0.00', 3),
(9, 4, '', '', 1, '1.00', '100000.00', '300000.00', '0.00', 3),
(10, 4, '', '', 1, '4.00', '100000.00', '300000.00', '20.00', 1),
(11, 4, '', '', 1, '1.00', '100000.00', '300000.00', '0.00', 1),
(12, 5, '', '', 1, '2.00', '600000.00', '900000.00', '0.00', 2),
(13, 5, '', '', 1, '1.00', '600000.00', '900000.00', '0.00', 3),
(14, 4, '', '', 1, '2.00', '100000.00', '300000.00', '0.00', 8),
(14, 5, '', '', 2, '1.00', '600000.00', '900000.00', '0.00', 8),
(15, 4, '', '', 1, '1.00', '100000.00', '300000.00', '0.00', 9),
(16, 3, '', '', 1, '1.00', '30000.00', '50000.00', '0.00', 9),
(17, 4, '', '', 1, '1.00', '100000.00', '300000.00', '0.00', 9),
(18, 4, '', '', 1, '1.00', '100000.00', '300000.00', '0.00', 9),
(19, 4, '', '', 1, '1.00', '100000.00', '300000.00', '0.00', 9),
(20, 4, '', '', 1, '1.00', '100000.00', '300000.00', '0.00', 9),
(21, 4, '', '', 1, '1.00', '100000.00', '300000.00', '0.00', 9),
(22, 4, '', '', 1, '1.00', '100000.00', '300000.00', '0.00', 9),
(23, 4, '', '', 1, '1.00', '100000.00', '300000.00', '0.00', 9),
(24, 4, '', '', 1, '1.00', '100000.00', '300000.00', '0.00', 9),
(25, 4, '', '', 1, '1.00', '100000.00', '300000.00', '0.00', 9),
(26, 3, '', '', 1, '1.00', '30000.00', '50000.00', '0.00', 9),
(27, 5, '', '', 1, '1.00', '600000.00', '900000.00', '0.00', 9),
(28, 4, '', '', 1, '1.00', '100000.00', '300000.00', '0.00', 5),
(29, 3, '', '', 1, '1.00', '30000.00', '50000.00', '0.00', 5),
(30, 4, '', '', 1, '1.00', '100000.00', '300000.00', '0.00', 5),
(31, 3, '', '', 1, '1.00', '30000.00', '50000.00', '0.00', 5),
(32, 4, '', '', 1, '1.00', '100000.00', '300000.00', '0.00', 5),
(33, 4, '', '', 1, '1.00', '100000.00', '300000.00', '0.00', 5),
(34, 4, '', '', 1, '2.00', '100000.00', '300000.00', '0.00', 5),
(35, 6, '', '', 1, '1.00', '3000000.00', '4500000.00', '0.00', 5),
(36, 4, '', '', 2, '1.00', '100000.00', '300000.00', '0.00', 1),
(36, 5, '', '', 1, '1.00', '600000.00', '900000.00', '0.00', 1),
(37, 4, '', '', 1, '1.00', '100000.00', '300000.00', '0.00', 1),
(38, 5, '', '', 1, '1.00', '600000.00', '900000.00', '0.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_items_taxes`
--

CREATE TABLE `ospos_sales_items_taxes` (
  `sale_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `line` int(3) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sales_items_taxes`
--

INSERT INTO `ospos_sales_items_taxes` (`sale_id`, `item_id`, `line`, `name`, `percent`) VALUES
(12, 5, 1, 'Pajak Penjualan1', '10.00'),
(13, 5, 1, 'Pajak Penjualan1', '10.00'),
(14, 5, 2, 'Pajak Penjualan1', '10.00'),
(27, 5, 1, 'Pajak Penjualan1', '10.00'),
(35, 6, 1, 'Pajak Penjualan1', '10.00'),
(36, 5, 1, 'Pajak Penjualan1', '10.00'),
(38, 5, 1, 'Pajak Penjualan1', '10.00');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_payments`
--

CREATE TABLE `ospos_sales_payments` (
  `sale_id` int(10) NOT NULL,
  `payment_type` varchar(40) NOT NULL,
  `payment_leasing` varchar(40) NOT NULL,
  `payment_amount` decimal(15,2) NOT NULL,
  `card_number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sales_payments`
--

INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
(1, 'Tunai', '', '30000.00', ''),
(2, 'Tunai', '', '30000.00', ''),
(3, 'kredit rekanan', '', '30000.00', ''),
(4, 'cash', '', '20000.00', ''),
(4, 'kredit in house', '', '30000.00', ''),
(5, 'cash', '', '300000.00', ''),
(6, 'cash', '', '400000.00', ''),
(7, 'cash', '', '0.00', ''),
(7, 'kredit in house', '', '300000.00', ''),
(8, 'cash', '', '300000.00', ''),
(9, 'cash', '', '300000.00', ''),
(10, 'cash', '', '1000000.00', ''),
(11, 'cash', '', '300000.00', ''),
(12, 'cash kredit', '', '1800000.00', '557788883344'),
(13, 'cash', '', '900000.00', ''),
(14, 'kredit leasing', '', '1500000.00', '5676865697'),
(15, 'Tunai', '', '300000.00', '1234567'),
(16, 'Kartu Debit', '', '50000.00', '1234'),
(17, 'Tunai', '', '300000.00', '123456'),
(18, 'Tunai', '', '300000.00', ''),
(19, 'Tunai', 'Kredit Plus', '300000.00', ''),
(20, 'Tunai', 'FIF', '300000.00', ''),
(21, 'Kartu Debit', 'FIF', '300000.00', '123456'),
(22, 'Kartu Debit', 'FIF', '300000.00', '23456'),
(23, 'Tunai', '', '300000.00', ''),
(24, 'Tunai', '', '300000.00', ''),
(25, 'Tunai', '', '300000.00', ''),
(26, 'Tunai', '', '50000.00', ''),
(27, 'Tunai', '', '900000.00', ''),
(28, 'Tunai', '', '300000.00', ''),
(29, 'cash', '', '50000.00', ''),
(30, 'Tunai', '', '300000.00', ''),
(31, 'Tunai', '', '50000.00', ''),
(32, 'Tunai', '', '300000.00', ''),
(33, 'Tunai', '', '300000.00', ''),
(34, 'Tunai', '', '600000.00', ''),
(35, 'Tunai', '', '4500000.00', ''),
(36, 'Tunai', '', '1200000.00', ''),
(37, 'Tunai', '', '300000.00', ''),
(38, 'Tunai', '', '900000.00', '');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_suspended`
--

CREATE TABLE `ospos_sales_suspended` (
  `sale_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int(10) DEFAULT NULL,
  `employee_id` int(10) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `invoice_number` varchar(32) DEFAULT NULL,
  `sale_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_suspended_items`
--

CREATE TABLE `ospos_sales_suspended_items` (
  `sale_id` int(10) NOT NULL DEFAULT '0',
  `item_id` int(10) NOT NULL DEFAULT '0',
  `description` varchar(30) DEFAULT NULL,
  `serialnumber` varchar(30) DEFAULT NULL,
  `line` int(3) NOT NULL DEFAULT '0',
  `quantity_purchased` decimal(15,2) NOT NULL DEFAULT '0.00',
  `item_cost_price` decimal(15,2) NOT NULL,
  `item_unit_price` decimal(15,2) NOT NULL,
  `discount_percent` decimal(15,2) NOT NULL DEFAULT '0.00',
  `item_location` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_suspended_items_taxes`
--

CREATE TABLE `ospos_sales_suspended_items_taxes` (
  `sale_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `line` int(3) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_suspended_payments`
--

CREATE TABLE `ospos_sales_suspended_payments` (
  `sale_id` int(10) NOT NULL,
  `payment_type` varchar(40) NOT NULL,
  `payment_amount` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sessions`
--

CREATE TABLE `ospos_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sessions`
--

INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('0148a39435b34ebc75678e1cf9007048', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455095550, 'a:8:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:4:"cart";a:0:{}s:9:"sale_mode";s:4:"sale";s:13:"sale_location";s:1:"1";s:8:"customer";i:-1;s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:1:"3";}'),
('042334c18208ade07fe307fb06528ee5', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454402685, ''),
('05fdddda5316bc8d3cc86e208c55e6d2', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 1466649930, 'a:14:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:8:"cartRecv";a:0:{}s:9:"recv_mode";s:7:"receive";s:17:"recv_stock_source";s:1:"1";s:22:"recv_stock_destination";s:1:"1";s:8:"supplier";i:-1;s:19:"recv_invoice_number";s:1:"1";s:4:"cart";a:0:{}s:9:"sale_mode";s:4:"sale";s:13:"sale_location";s:1:"1";s:8:"customer";i:-1;s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:2:"16";}'),
('079175abb61e763762df79b9c4827209', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455796472, ''),
('0b5d1f7b96ecf62af0952ebc9deea166', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 1467262983, 'a:9:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:13:"item_location";s:1:"1";s:4:"cart";a:1:{i:1;a:16:{s:7:"item_id";s:1:"8";s:13:"item_location";s:1:"1";s:10:"stock_name";s:5:"stock";s:4:"line";i:1;s:4:"name";s:16:"S2FpbiA1MG1ldGVy";s:11:"item_number";s:4:"2222";s:11:"description";s:4:"MA==";s:12:"serialnumber";s:0:"";s:21:"allow_alt_description";s:1:"0";s:13:"is_serialized";s:1:"0";s:8:"quantity";i:1;s:8:"discount";s:1:"0";s:8:"in_stock";s:1:"0";s:5:"price";s:4:"0.00";s:5:"total";s:4:"0.00";s:16:"discounted_total";s:7:"0.00000";}}s:9:"sale_mode";s:4:"sale";s:13:"sale_location";s:1:"1";s:8:"customer";i:-1;s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:2:"16";}'),
('158ae1b70d57d7c9cc93831ef5c34e3d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0', 1455077777, ''),
('19112963f16bec54180c9e6862d6531d', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454402471, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('1936b89fd4c6e58ca1236bab292ee2e4', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454402519, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('1a0f512b7f383c6dd52f66b70942f79e', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454402754, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('1e1fa74028a9ee9a9ef48a3acdf7b30e', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1458029188, ''),
('200d0d6193a89ab368b0fedf35683189', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 1460387376, ''),
('20374eff3972a47e6ab12613972bfa3b', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454418265, 'a:8:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:4:"cart";a:0:{}s:9:"sale_mode";s:4:"sale";s:13:"sale_location";s:1:"2";s:8:"customer";i:-1;s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:1:"2";}'),
('22c8e20ea4055fc8b013781bdb5d6dfe', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455116410, 'a:3:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:13:"sale_location";s:1:"1";}'),
('22fb19517c4bc11c324392abd8f0486b', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 1466673022, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('231cdac1f881d7844fbebbaf268bbbc1', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 1467178260, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('2623b2ff8835b9195cbb880b22a37369', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 1460004090, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('27afe0353988e2d4f2151cab4fbf66f9', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', 1466397488, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('288950a102d1b9246fd90e2377253dea', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', 1466331867, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('2a976145064e7c01688d29cfe1f12df3', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455671545, ''),
('2efd6c11eafa41ebead039b6764cb3b7', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1458118471, ''),
('31324257550d3290190a69ce2532d828', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 1467135778, 'a:15:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:8:"cartRecv";a:0:{}s:9:"recv_mode";s:7:"receive";s:17:"recv_stock_source";s:1:"1";s:22:"recv_stock_destination";s:1:"1";s:8:"supplier";i:-1;s:19:"recv_invoice_number";s:1:"1";s:4:"cart";a:0:{}s:9:"sale_mode";s:4:"sale";s:13:"sale_location";s:1:"1";s:8:"customer";i:-1;s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:2:"16";s:13:"item_location";s:1:"1";}'),
('316077144bd572eec734882f7f3e73cd', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455403415, ''),
('322291649019683f88fbcb3c2d0ebd39', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 1459987869, 'a:9:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:13:"sale_location";s:1:"1";s:8:"cartRecv";a:0:{}s:9:"recv_mode";s:7:"receive";s:17:"recv_stock_source";s:1:"1";s:22:"recv_stock_destination";s:1:"1";s:8:"supplier";i:-1;s:19:"recv_invoice_number";s:1:"1";}'),
('32d9b8f1e5d94d226979807d55695c81', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 1467303888, 'a:3:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:9:"sale_mode";s:4:"sale";}'),
('39c9a89d75941617da42dfc035332091', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1456994889, 'a:3:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:13:"item_location";s:1:"1";}'),
('3bab4d39255b6effa92eff68c9875445', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 1466743012, 'a:3:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:13:"item_location";s:1:"1";}'),
('3d7a1d66cb71a2fa9ed17cd2321c3f3c', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 1459633689, ''),
('3edd3aeac717014ee9a2a27b12288d96', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 1466799590, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('40afe1a800dd545a084e7dfc08c7f851', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 1467258987, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('4134dd990883ef5b10f75a86cef04e86', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454402573, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('43d558b908656d17f7b9620ddf2827b9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36', 1453801341, 'a:9:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:13:"sale_location";s:1:"1";s:13:"item_location";s:1:"1";s:4:"cart";a:1:{i:1;a:16:{s:7:"item_id";s:1:"1";s:13:"item_location";s:1:"1";s:10:"stock_name";s:5:"stock";s:4:"line";i:1;s:4:"name";s:8:"bWVqYQ==";s:11:"item_number";N;s:11:"description";s:0:"";s:12:"serialnumber";s:0:"";s:21:"allow_alt_description";s:1:"0";s:13:"is_serialized";s:1:"0";s:8:"quantity";s:1:"2";s:8:"discount";s:1:"0";s:8:"in_stock";s:2:"10";s:5:"price";s:8:"50000.00";s:5:"total";s:9:"100000.00";s:16:"discounted_total";s:12:"100000.00000";}}s:9:"sale_mode";s:4:"sale";s:8:"customer";i:-1;s:8:"payments";a:2:{s:4:"Cash";a:2:{s:12:"payment_type";s:4:"Cash";s:14:"payment_amount";s:8:"50000.00";}s:5:"Tunai";a:2:{s:12:"payment_type";s:5:"Tunai";s:14:"payment_amount";s:12:"150000.00000";}}s:20:"sales_invoice_number";s:1:"0";}'),
('464168fbd4c091d509a9447fbafe416f', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 1466865278, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('50087bfc6ba346f3dc3ffff64e391f33', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 1459312799, ''),
('515270df63a524dd29693fca40f51890', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455180365, ''),
('520b0461065eecabf219f27bea2c4d63', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 1460272316, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('5394b30bd890f86d3f8e4f85fd8a687b', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 1467099948, 'a:8:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:8:"cartRecv";a:0:{}s:9:"recv_mode";s:7:"receive";s:17:"recv_stock_source";s:1:"1";s:22:"recv_stock_destination";s:1:"1";s:8:"supplier";i:-1;s:19:"recv_invoice_number";s:1:"1";}'),
('54ece90649a4011c10e70c362893f2c6', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454402425, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('561f9a48a20ddb32f87eb584e2e2a9e2', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 1460212760, ''),
('570d2cd2522e5e7d8d3e841a72dc7dec', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455528976, 'a:15:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:13:"item_location";s:1:"1";s:4:"cart";a:0:{}s:9:"sale_mode";s:4:"sale";s:13:"sale_location";s:1:"1";s:8:"customer";i:-1;s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:1:"5";s:8:"cartRecv";a:0:{}s:9:"recv_mode";s:6:"return";s:17:"recv_stock_source";s:1:"1";s:22:"recv_stock_destination";s:1:"1";s:8:"supplier";i:-1;s:19:"recv_invoice_number";s:1:"0";}'),
('5add28dabaae11de799d4bd7407f7ffa', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455180361, ''),
('5bd7c0d9cedd069dd1adfbd77fcd938f', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454484331, 'a:15:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:4:"cart";a:0:{}s:9:"sale_mode";s:4:"sale";s:13:"sale_location";s:1:"1";s:8:"customer";i:-1;s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:1:"2";s:13:"item_location";s:1:"1";s:8:"cartRecv";a:0:{}s:9:"recv_mode";s:7:"receive";s:17:"recv_stock_source";s:1:"1";s:22:"recv_stock_destination";s:1:"1";s:8:"supplier";i:-1;s:19:"recv_invoice_number";s:1:"0";}'),
('5e1c740ff72125cdff3379355594e1cf', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 1466311413, 'a:15:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:13:"item_location";s:1:"1";s:8:"cartRecv";a:0:{}s:9:"recv_mode";s:7:"receive";s:17:"recv_stock_source";s:1:"1";s:22:"recv_stock_destination";s:1:"1";s:8:"supplier";i:-1;s:19:"recv_invoice_number";s:1:"1";s:4:"cart";a:0:{}s:9:"sale_mode";s:4:"sale";s:13:"sale_location";s:1:"1";s:8:"customer";i:-1;s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:2:"16";}'),
('61415eb80921a1ace182bcdec229f9b5', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1457928595, ''),
('67eee1e84c35702fcfa7f7adff52f540', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 1459960445, ''),
('6871b4f5e5618431ecff5fce2a344968', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 1459852590, 'a:9:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:4:"cart";a:1:{i:1;a:16:{s:7:"item_id";s:2:"13";s:13:"item_location";s:1:"1";s:10:"stock_name";s:5:"stock";s:4:"line";i:1;s:4:"name";s:12:"TmdldGVzIDI=";s:11:"item_number";s:5:"tyuqw";s:11:"description";s:0:"";s:12:"serialnumber";s:0:"";s:21:"allow_alt_description";s:1:"0";s:13:"is_serialized";s:1:"0";s:8:"quantity";i:1;s:8:"discount";s:1:"0";s:8:"in_stock";s:1:"0";s:5:"price";s:9:"130000.00";s:5:"total";s:9:"130000.00";s:16:"discounted_total";s:12:"130000.00000";}}s:9:"sale_mode";s:4:"sale";s:13:"sale_location";s:1:"9";s:8:"customer";i:-1;s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:2:"15";s:13:"item_location";s:1:"1";}'),
('69eb7c0cdfef78ac5103a393ea0de3aa', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0', 1455085692, 'a:16:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:13:"sale_location";s:1:"3";s:22:"sales_print_after_sale";s:4:"true";s:28:"sales_invoice_number_enabled";s:4:"true";s:9:"sale_mode";s:4:"sale";s:4:"cart";a:1:{i:1;a:16:{s:7:"item_id";s:1:"4";s:13:"item_location";s:1:"3";s:10:"stock_name";s:16:"GP2 - Toko Utama";s:4:"line";i:1;s:4:"name";s:20:"S3Vyc2kgU3lhaHJpbmk=";s:11:"item_number";s:4:"K002";s:11:"description";s:0:"";s:12:"serialnumber";s:0:"";s:21:"allow_alt_description";s:1:"0";s:13:"is_serialized";s:1:"0";s:8:"quantity";i:1;s:8:"discount";s:1:"0";s:8:"in_stock";s:2:"-1";s:5:"price";s:9:"300000.00";s:5:"total";s:9:"300000.00";s:16:"discounted_total";s:12:"300000.00000";}}s:8:"customer";i:-1;s:8:"payments";a:1:{s:4:"cash";a:2:{s:12:"payment_type";s:4:"cash";s:14:"payment_amount";s:6:"400000";}}s:20:"sales_invoice_number";s:1:"3";s:8:"cartRecv";a:0:{}s:9:"recv_mode";s:7:"receive";s:17:"recv_stock_source";s:1:"1";s:22:"recv_stock_destination";s:1:"1";s:8:"supplier";i:-1;s:19:"recv_invoice_number";s:1:"0";}'),
('6a8fdebce7133d9e2012242a253eef77', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454400230, ''),
('6c4a8c0b7cf444f441ba2e033f272168', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455529829, ''),
('6e967e8e4d50178cf6483a217178b6e5', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 1468562265, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('715688ef40567bbad9ed0d697c560872', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 1466865279, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('772cc1c8a29384fd5eaf277876b270e2', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454393251, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('7d42e268fac6cfb5c4497e7bb5e0a2a2', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455106938, 'a:8:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:4:"cart";a:1:{i:1;a:16:{s:7:"item_id";s:1:"4";s:13:"item_location";s:1:"1";s:10:"stock_name";s:5:"stock";s:4:"line";i:1;s:4:"name";s:20:"S3Vyc2kgU3lhaHJpbmk=";s:11:"item_number";s:4:"K002";s:11:"description";s:0:"";s:12:"serialnumber";s:0:"";s:21:"allow_alt_description";s:1:"0";s:13:"is_serialized";s:1:"0";s:8:"quantity";s:1:"2";s:8:"discount";s:1:"0";s:8:"in_stock";s:2:"17";s:5:"price";s:9:"300000.00";s:5:"total";s:9:"600000.00";s:16:"discounted_total";s:12:"600000.00000";}}s:9:"sale_mode";s:4:"sale";s:13:"sale_location";s:1:"1";s:8:"customer";i:-1;s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:1:"3";}'),
('7d7a92b278cd8d92e66a79784c8a664e', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1458029826, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('85c1a706a61566aedc5c4681200b7eb6', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 1459761498, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('89d084f185fb9d7bf4df3f98301dadd4', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 1467219444, 'a:3:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:13:"item_location";s:1:"1";}'),
('8a44c43d58092fd06d31573a15c157b9', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455615952, 'a:15:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:8:"cartRecv";a:0:{}s:9:"recv_mode";s:7:"receive";s:17:"recv_stock_source";s:1:"1";s:22:"recv_stock_destination";s:1:"1";s:8:"supplier";i:-1;s:19:"recv_invoice_number";s:1:"1";s:13:"item_location";s:1:"1";s:4:"cart";a:2:{i:1;a:16:{s:7:"item_id";s:1:"2";s:13:"item_location";s:1:"1";s:10:"stock_name";s:5:"stock";s:4:"line";i:1;s:4:"name";s:8:"TWVqYQ==";s:11:"item_number";s:4:"M001";s:11:"description";s:0:"";s:12:"serialnumber";s:0:"";s:21:"allow_alt_description";s:1:"0";s:13:"is_serialized";s:1:"0";s:8:"quantity";s:4:"1.00";s:8:"discount";i:0;s:8:"in_stock";s:2:"20";s:5:"price";s:8:"30000.00";s:5:"total";s:10:"30000.0000";s:16:"discounted_total";s:11:"30000.00000";}i:3;a:16:{s:7:"item_id";s:1:"5";s:13:"item_location";s:1:"1";s:10:"stock_name";s:5:"stock";s:4:"line";i:3;s:4:"name";s:16:"S3Vyc2kgVHVuZ2d1";s:11:"item_number";s:14:"56746774276356";s:11:"description";s:0:"";s:12:"serialnumber";s:0:"";s:21:"allow_alt_description";s:1:"0";s:13:"is_serialized";s:1:"0";s:8:"quantity";i:1;s:8:"discount";s:1:"0";s:8:"in_stock";s:2:"60";s:5:"price";s:9:"900000.00";s:5:"total";s:9:"900000.00";s:16:"discounted_total";s:12:"900000.00000";}}s:9:"sale_mode";s:4:"sale";s:13:"sale_location";s:1:"1";s:8:"customer";s:1:"2";s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:1:"6";}'),
('8f1ce4712d4b56f9270bcd434e3270d6', '::1', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; Trident/7.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .N', 1466305615, ''),
('9711dda4c869e57a303f97c1d37042cf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0', 1454385518, 'a:11:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:13:"sale_location";s:1:"6";s:13:"item_location";s:1:"1";s:22:"sales_print_after_sale";s:4:"true";s:28:"sales_invoice_number_enabled";s:4:"true";s:4:"cart";a:0:{}s:9:"sale_mode";s:4:"sale";s:8:"customer";i:-1;s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:1:"2";}'),
('99575385aa82b43afb6ded614f31dba6', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455671545, ''),
('9974400677421ad25bbe3e4c10aae81d', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 1460370552, 'a:7:{s:9:"person_id";s:1:"1";s:8:"cartRecv";a:0:{}s:9:"recv_mode";s:7:"receive";s:17:"recv_stock_source";s:1:"1";s:22:"recv_stock_destination";s:1:"1";s:8:"supplier";i:-1;s:19:"recv_invoice_number";s:1:"1";}'),
('a12adc74c253f5fe8fb105e1571f98dd', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1457347557, ''),
('a2540f93af62987415bdd9373cbfa1ce', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454400410, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('a7a2bedb993ad0e6fdb5fd7a432a18b1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0', 1453950418, ''),
('a9522929a5721ca4fc6a0437103a7fe9', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', 1466485259, 'a:14:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:8:"cartRecv";a:0:{}s:9:"recv_mode";s:7:"receive";s:17:"recv_stock_source";s:1:"1";s:22:"recv_stock_destination";s:1:"1";s:8:"supplier";i:-1;s:19:"recv_invoice_number";s:1:"1";s:4:"cart";a:0:{}s:9:"sale_mode";s:4:"sale";s:13:"sale_location";s:1:"1";s:8:"customer";i:-1;s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:2:"16";}'),
('ab025939aa2e394b466a0fa6e30b9c66', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', 1466171987, 'a:15:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:4:"cart";a:0:{}s:9:"sale_mode";s:4:"sale";s:13:"sale_location";s:1:"1";s:8:"customer";i:-1;s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:2:"16";s:8:"cartRecv";a:0:{}s:9:"recv_mode";s:7:"receive";s:17:"recv_stock_source";s:1:"1";s:22:"recv_stock_destination";s:1:"1";s:8:"supplier";i:-1;s:19:"recv_invoice_number";s:1:"1";s:13:"item_location";s:1:"1";}'),
('ad2d710d47877d4f6bcbf99e579c3306', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0', 1454652702, 'a:10:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:13:"sale_location";s:1:"4";s:13:"item_location";s:1:"1";s:4:"cart";a:0:{}s:8:"customer";i:-1;s:8:"payments";a:1:{s:4:"cash";a:2:{s:12:"payment_type";s:4:"cash";s:14:"payment_amount";s:12:"200000.00000";}}s:20:"sales_invoice_number";s:1:"2";s:9:"sale_mode";s:4:"sale";s:22:"sales_print_after_sale";s:4:"true";}'),
('ae205a18a20b3c8d076999eef172a9a4', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 1467258745, 'a:15:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:13:"item_location";s:1:"1";s:4:"cart";a:0:{}s:9:"sale_mode";s:4:"sale";s:13:"sale_location";s:1:"1";s:8:"customer";i:-1;s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:2:"16";s:8:"cartRecv";a:0:{}s:9:"recv_mode";s:7:"receive";s:17:"recv_stock_source";s:1:"1";s:22:"recv_stock_destination";s:1:"1";s:8:"supplier";i:-1;s:19:"recv_invoice_number";s:1:"1";}'),
('b0035094bec4a821d60f90d03b70497f', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455551137, ''),
('b0467e3138aa54c05adedb2395f2e1bd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454465136, 'a:8:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:4:"cart";a:0:{}s:9:"sale_mode";s:4:"sale";s:13:"sale_location";s:1:"1";s:8:"customer";i:-1;s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:1:"2";}'),
('b219c5a89ab0438e8954ac320450dda7', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 1459870382, 'a:4:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:13:"sale_location";s:1:"1";s:11:"salesperson";s:1:"1";}'),
('b436e9ea3ca051fd008f29ba4a79a87b', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 1467007031, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('bee153c606c5905bdb4f13252c3e08d8', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 1459678355, 'a:3:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:13:"item_location";s:1:"1";}'),
('c1d7c35bd63c7a22852f58cebc7d9267', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 1466959243, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('c506fb34eb8cfa0aa35e0eeb385092c2', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454427336, 'a:9:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:13:"sale_location";s:1:"2";s:4:"cart";a:1:{i:1;a:16:{s:7:"item_id";s:1:"4";s:13:"item_location";s:1:"2";s:10:"stock_name";s:11:"GP1 - Pusat";s:4:"line";i:1;s:4:"name";s:20:"S3Vyc2kgU3lhaHJpbmk=";s:11:"item_number";s:4:"K002";s:11:"description";s:0:"";s:12:"serialnumber";s:0:"";s:21:"allow_alt_description";s:1:"0";s:13:"is_serialized";s:1:"0";s:8:"quantity";s:4:"1.00";s:8:"discount";s:4:"0.00";s:8:"in_stock";s:1:"1";s:5:"price";s:9:"300000.00";s:5:"total";s:11:"300000.0000";s:16:"discounted_total";s:12:"300000.00000";}}s:8:"customer";i:-1;s:7:"comment";s:0:"";s:20:"sales_invoice_number";s:1:"2";s:9:"sale_mode";s:4:"sale";s:8:"payments";a:0:{}}'),
('c58e84ec2bd93780dee6033b7570c829', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 1459753511, 'a:10:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:13:"item_location";s:1:"9";s:4:"cart";a:2:{i:1;a:16:{s:7:"item_id";s:1:"4";s:13:"item_location";s:1:"1";s:10:"stock_name";s:5:"stock";s:4:"line";i:1;s:4:"name";s:20:"S3Vyc2kgU3lhaHJpbmk=";s:11:"item_number";s:4:"K002";s:11:"description";s:0:"";s:12:"serialnumber";s:0:"";s:21:"allow_alt_description";s:1:"0";s:13:"is_serialized";s:1:"0";s:8:"quantity";d:2;s:8:"discount";s:1:"0";s:8:"in_stock";s:2:"12";s:5:"price";s:9:"300000.00";s:5:"total";s:9:"600000.00";s:16:"discounted_total";s:12:"600000.00000";}i:2;a:16:{s:7:"item_id";s:1:"6";s:13:"item_location";s:1:"1";s:10:"stock_name";s:5:"stock";s:4:"line";i:2;s:4:"name";s:16:"S29tcHV0ZXIgUEM=";s:11:"item_number";s:9:"PC2837849";s:11:"description";s:0:"";s:12:"serialnumber";s:0:"";s:21:"allow_alt_description";s:1:"0";s:13:"is_serialized";s:1:"0";s:8:"quantity";s:4:"2.00";s:8:"discount";i:0;s:8:"in_stock";s:1:"0";s:5:"price";s:10:"4500000.00";s:5:"total";s:12:"9000000.0000";s:16:"discounted_total";s:13:"9000000.00000";}}s:9:"sale_mode";s:4:"sale";s:13:"sale_location";s:1:"1";s:8:"customer";s:1:"2";s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:2:"15";s:11:"salesperson";s:1:"1";}'),
('c75a7ebad36009e09e56bcf2c42ec1a3', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1458189868, ''),
('c8220abf697d12e9304d5aaf5733ee62', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 1460240776, 'a:8:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:4:"cart";a:0:{}s:9:"sale_mode";s:4:"sale";s:13:"sale_location";s:1:"1";s:8:"customer";i:-1;s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:2:"15";}'),
('c83e61ebdf2e64ade0736a81d5241fb0', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 1460102218, 'a:9:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:8:"cartRecv";a:1:{i:1;a:15:{s:7:"item_id";s:1:"4";s:13:"item_location";s:1:"1";s:10:"stock_name";s:5:"stock";s:4:"line";i:1;s:4:"name";s:20:"S3Vyc2kgU3lhaHJpbmk=";s:11:"description";s:0:"";s:12:"serialnumber";s:0:"";s:21:"allow_alt_description";s:1:"0";s:13:"is_serialized";s:1:"0";s:8:"quantity";i:1;s:8:"discount";i:0;s:8:"in_stock";s:2:"15";s:5:"price";s:9:"100000.00";s:18:"receiving_quantity";s:1:"0";s:5:"total";s:12:"100000.00000";}}s:9:"recv_mode";s:7:"receive";s:17:"recv_stock_source";s:1:"1";s:22:"recv_stock_destination";s:1:"1";s:9:"sale_mode";s:4:"sale";s:8:"supplier";s:2:"15";s:19:"recv_invoice_number";s:1:"1";}'),
('cccf53a43b898114d98208b3f4e57ca9', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455096608, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('d4234be6342c14a83b8d80a82f166adb', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1457929314, ''),
('d603ea861f6e3e6627b6edd497b5abae', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 1460128747, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('d6395bbf13038609132982763ba8dd88', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455882489, ''),
('d6b766e69258298cdc9e69578cf50b74', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.109 Safari/537.36', 1455691806, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('d6cb6ec175ebb7cf40943f6af3142d15', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454403024, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('da98cf7194aec71cf03b7e944896c655', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.109 Safari/537.36', 1455746141, ''),
('dcaca54b924ae7279abbcfcbd41ee382', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454403258, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('df2935a36c23f6865b3b3c8c7aa82739', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455096115, 'a:8:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:4:"cart";a:0:{}s:9:"sale_mode";s:4:"sale";s:13:"sale_location";s:1:"1";s:8:"customer";i:-1;s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:1:"3";}'),
('e12dd1cefba4ee7ca7428132b61feaab', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 1467064501, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('e29c9f6b46e64a6f144ef5cc0177d3de', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455877122, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('e388567962d97856d795be2c9f8ddc84', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454407061, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('e6488f3672b9f31d257f6f3efd1e1f98', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455613084, 'a:14:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:13:"sale_location";s:1:"8";s:28:"sales_invoice_number_enabled";s:4:"true";s:22:"sales_print_after_sale";s:5:"false";s:4:"cart";a:2:{i:1;a:16:{s:7:"item_id";s:1:"4";s:13:"item_location";s:1:"8";s:10:"stock_name";s:28:"MOG3 - Stand Depan Foodcourt";s:4:"line";i:1;s:4:"name";s:20:"S3Vyc2kgU3lhaHJpbmk=";s:11:"item_number";s:4:"K002";s:11:"description";s:0:"";s:12:"serialnumber";s:0:"";s:21:"allow_alt_description";s:1:"0";s:13:"is_serialized";s:1:"0";s:8:"quantity";i:1;s:8:"discount";s:1:"0";s:8:"in_stock";s:2:"-1";s:5:"price";s:9:"300000.00";s:5:"total";s:9:"300000.00";s:16:"discounted_total";s:12:"300000.00000";}i:2;a:16:{s:7:"item_id";s:1:"5";s:13:"item_location";s:1:"8";s:10:"stock_name";s:28:"MOG3 - Stand Depan Foodcourt";s:4:"line";i:2;s:4:"name";s:16:"S3Vyc2kgVHVuZ2d1";s:11:"item_number";s:14:"56746774276356";s:11:"description";s:0:"";s:12:"serialnumber";s:0:"";s:21:"allow_alt_description";s:1:"0";s:13:"is_serialized";s:1:"0";s:8:"quantity";i:1;s:8:"discount";s:1:"0";s:8:"in_stock";s:1:"4";s:5:"price";s:9:"900000.00";s:5:"total";s:9:"900000.00";s:16:"discounted_total";s:12:"900000.00000";}}s:9:"sale_mode";s:4:"sale";s:8:"customer";s:1:"2";s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:1:"6";s:13:"item_location";s:1:"1";s:9:"recv_mode";s:11:"requisition";s:17:"recv_stock_source";s:1:"3";s:22:"recv_stock_destination";s:1:"5";}'),
('e8001e21f48d6343c22ae47c560124ed', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455114852, ''),
('e83333c1ae5e8920932f3fc99fc35998', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455096636, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('e95308bd025393bf4d9909cc74bc3111', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 1468393572, 'a:15:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:9:"sale_mode";s:4:"sale";s:13:"item_location";s:1:"1";s:4:"cart";a:0:{}s:13:"sale_location";s:1:"1";s:8:"customer";i:-1;s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:2:"16";s:8:"cartRecv";a:0:{}s:9:"recv_mode";s:7:"receive";s:17:"recv_stock_source";s:1:"1";s:22:"recv_stock_destination";s:1:"1";s:8:"supplier";i:-1;s:19:"recv_invoice_number";s:1:"1";}'),
('e9bb8088236fdb25a317e7d2dbf28595', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 1467198976, 'a:9:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:4:"cart";a:0:{}s:9:"sale_mode";s:4:"sale";s:13:"sale_location";s:1:"1";s:8:"customer";i:-1;s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:2:"16";s:13:"item_location";s:1:"1";}'),
('ea3dc855afaec530e9e4feb5db92f20e', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454402695, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('eaf6d485940b51fb0adc347611d852c7', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454403134, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('f026ed0064bdf93cf7c04952ce509564', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455283020, ''),
('f209524d8cbb535cfea04d1f01adebc2', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455101399, 'a:8:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:4:"cart";a:1:{i:1;a:16:{s:7:"item_id";s:1:"4";s:13:"item_location";s:1:"1";s:10:"stock_name";s:5:"stock";s:4:"line";i:1;s:4:"name";s:20:"S3Vyc2kgU3lhaHJpbmk=";s:11:"item_number";s:4:"K002";s:11:"description";s:0:"";s:12:"serialnumber";s:0:"";s:21:"allow_alt_description";s:1:"0";s:13:"is_serialized";s:1:"0";s:8:"quantity";i:1;s:8:"discount";s:1:"0";s:8:"in_stock";s:2:"17";s:5:"price";s:9:"300000.00";s:5:"total";s:9:"300000.00";s:16:"discounted_total";s:12:"300000.00000";}}s:9:"sale_mode";s:4:"sale";s:13:"sale_location";s:1:"1";s:8:"payments";a:1:{s:4:"cash";a:2:{s:12:"payment_type";s:4:"cash";s:14:"payment_amount";s:9:"300000.00";}}s:8:"customer";i:-1;s:20:"sales_invoice_number";s:1:"3";}'),
('f6f729a4de33d741b019bac14e71f79d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0', 1456982789, 'a:17:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:13:"sale_location";s:1:"5";s:28:"sales_invoice_number_enabled";s:4:"true";s:22:"sales_print_after_sale";s:4:"true";s:8:"cartRecv";a:0:{}s:9:"recv_mode";s:7:"receive";s:17:"recv_stock_source";s:1:"1";s:22:"recv_stock_destination";s:1:"1";s:8:"supplier";i:-1;s:19:"recv_invoice_number";s:1:"1";s:13:"item_location";s:1:"1";s:4:"cart";a:1:{i:1;a:16:{s:7:"item_id";s:1:"6";s:13:"item_location";s:1:"5";s:10:"stock_name";s:26:"GP4 - Gudang Produksi Sofa";s:4:"line";i:1;s:4:"name";s:16:"S29tcHV0ZXIgUEM=";s:11:"item_number";s:9:"PC2837849";s:11:"description";s:0:"";s:12:"serialnumber";s:0:"";s:21:"allow_alt_description";s:1:"0";s:13:"is_serialized";s:1:"0";s:8:"quantity";i:1;s:8:"discount";s:1:"0";s:8:"in_stock";s:1:"0";s:5:"price";s:10:"4500000.00";s:5:"total";s:10:"4500000.00";s:16:"discounted_total";s:13:"4500000.00000";}}s:8:"customer";i:-1;s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:2:"14";s:9:"sale_mode";s:4:"sale";}'),
('fc3d0065ee18232407a6a0bc437c9cb8', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455173332, ''),
('ff7c6a2585e3ac26e4bd697f5a6952e5', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454403203, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_shippings`
--

CREATE TABLE `ospos_shippings` (
  `ship_id` int(11) NOT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `recipient_name` varchar(255) DEFAULT NULL,
  `recipient_address` text,
  `person_in_charge` varchar(255) DEFAULT NULL,
  `shipping_date` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `user_entry_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_shippings`
--

INSERT INTO `ospos_shippings` (`ship_id`, `sale_id`, `recipient_name`, `recipient_address`, `person_in_charge`, `shipping_date`, `status`, `user_entry_id`) VALUES
(1, 14, 'Dwi Listika', 'Jalan Jalan Sana', 'Hendro', '2016-04-13', 'SJ Dibuat', 1),
(2, 38, 'Endro Yono', 'Merbabu Lima', 'Joko', '2016-04-14', 'Tunggu kirim', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_stock_locations`
--

CREATE TABLE `ospos_stock_locations` (
  `location_id` int(11) NOT NULL,
  `location_name` varchar(255) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_stock_locations`
--

INSERT INTO `ospos_stock_locations` (`location_id`, `location_name`, `deleted`) VALUES
(1, 'stock', 0),
(2, 'GP1 - Pusat', 0),
(3, 'GP2 - Toko Utama', 0),
(4, 'GP3 - Gudang Panel', 0),
(5, 'GP4 - Gudang Produksi Sofa', 0),
(6, 'GP5 - Gudang Produksi HPL', 0),
(7, 'MOG2 - Stand Depan Giant', 0),
(8, 'MOG3 - Stand Depan Foodcourt', 0),
(9, 'BATOS - Lippo Plaza Batu', 0),
(10, 'MOGATR - Atrium MOG', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_suppliers`
--

CREATE TABLE `ospos_suppliers` (
  `person_id` int(10) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `agency_name` varchar(255) NOT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_suppliers`
--

INSERT INTO `ospos_suppliers` (`person_id`, `company_name`, `agency_name`, `account_number`, `deleted`) VALUES
(4, 'Wacky Media', 'Komputer PC', NULL, 0),
(10, 'Pasok 1', 'Coba Pasok', '2324556', 0),
(11, 'Pasok 2', 'Coba Pasok 2', NULL, 0),
(12, 'Pasok 3', '', NULL, 0),
(13, 'ahaayyy', '', NULL, 0),
(14, 'gaagag', '', NULL, 0),
(15, 'yrjfhjfh', '', NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ospos_app_config`
--
ALTER TABLE `ospos_app_config`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `ospos_customers`
--
ALTER TABLE `ospos_customers`
  ADD UNIQUE KEY `account_number` (`account_number`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `ospos_employees`
--
ALTER TABLE `ospos_employees`
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `ospos_giftcards`
--
ALTER TABLE `ospos_giftcards`
  ADD PRIMARY KEY (`giftcard_id`),
  ADD UNIQUE KEY `giftcard_number` (`giftcard_number`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `ospos_grants`
--
ALTER TABLE `ospos_grants`
  ADD PRIMARY KEY (`permission_id`,`person_id`),
  ADD KEY `ospos_grants_ibfk_2` (`person_id`);

--
-- Indexes for table `ospos_inventory`
--
ALTER TABLE `ospos_inventory`
  ADD PRIMARY KEY (`trans_id`),
  ADD KEY `trans_items` (`trans_items`),
  ADD KEY `trans_user` (`trans_user`),
  ADD KEY `trans_location` (`trans_location`);

--
-- Indexes for table `ospos_items`
--
ALTER TABLE `ospos_items`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `item_number` (`item_number`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `ospos_items_taxes`
--
ALTER TABLE `ospos_items_taxes`
  ADD PRIMARY KEY (`item_id`,`name`,`percent`);

--
-- Indexes for table `ospos_item_kits`
--
ALTER TABLE `ospos_item_kits`
  ADD PRIMARY KEY (`item_kit_id`);

--
-- Indexes for table `ospos_item_kit_items`
--
ALTER TABLE `ospos_item_kit_items`
  ADD PRIMARY KEY (`item_kit_id`,`item_id`,`quantity`),
  ADD KEY `ospos_item_kit_items_ibfk_2` (`item_id`);

--
-- Indexes for table `ospos_item_quantities`
--
ALTER TABLE `ospos_item_quantities`
  ADD PRIMARY KEY (`item_id`,`location_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `ospos_menu`
--
ALTER TABLE `ospos_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ospos_menu_copy`
--
ALTER TABLE `ospos_menu_copy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ospos_modules`
--
ALTER TABLE `ospos_modules`
  ADD PRIMARY KEY (`module_id`),
  ADD UNIQUE KEY `desc_lang_key` (`desc_lang_key`),
  ADD UNIQUE KEY `name_lang_key` (`name_lang_key`);

--
-- Indexes for table `ospos_paket_sofa`
--
ALTER TABLE `ospos_paket_sofa`
  ADD PRIMARY KEY (`paket_id`);

--
-- Indexes for table `ospos_paket_sofa_items`
--
ALTER TABLE `ospos_paket_sofa_items`
  ADD KEY `ospos_item` (`item_id`);

--
-- Indexes for table `ospos_pembelian`
--
ALTER TABLE `ospos_pembelian`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `ospos_people`
--
ALTER TABLE `ospos_people`
  ADD PRIMARY KEY (`person_id`);

--
-- Indexes for table `ospos_permissions`
--
ALTER TABLE `ospos_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `module_id` (`module_id`),
  ADD KEY `ospos_permissions_ibfk_2` (`location_id`);

--
-- Indexes for table `ospos_produksi`
--
ALTER TABLE `ospos_produksi`
  ADD PRIMARY KEY (`noSurat`);

--
-- Indexes for table `ospos_raw_materials`
--
ALTER TABLE `ospos_raw_materials`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `item_number` (`item_number`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `ospos_raw_material_quantities`
--
ALTER TABLE `ospos_raw_material_quantities`
  ADD PRIMARY KEY (`item_id`,`location_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `ospos_receivings`
--
ALTER TABLE `ospos_receivings`
  ADD PRIMARY KEY (`receiving_id`),
  ADD UNIQUE KEY `invoice_number` (`invoice_number`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `ospos_receivings_items`
--
ALTER TABLE `ospos_receivings_items`
  ADD PRIMARY KEY (`receiving_id`,`item_id`,`line`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `ospos_sales`
--
ALTER TABLE `ospos_sales`
  ADD PRIMARY KEY (`sale_id`),
  ADD UNIQUE KEY `invoice_number` (`invoice_number`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `sale_time` (`sale_time`),
  ADD KEY `FK_ospos_sales_ospos_employees` (`sales_person_id`);

--
-- Indexes for table `ospos_sales_items`
--
ALTER TABLE `ospos_sales_items`
  ADD PRIMARY KEY (`sale_id`,`item_id`,`line`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `item_location` (`item_location`);

--
-- Indexes for table `ospos_sales_items_taxes`
--
ALTER TABLE `ospos_sales_items_taxes`
  ADD PRIMARY KEY (`sale_id`,`item_id`,`line`,`name`,`percent`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `ospos_sales_payments`
--
ALTER TABLE `ospos_sales_payments`
  ADD PRIMARY KEY (`sale_id`,`payment_type`),
  ADD KEY `sale_id` (`sale_id`);

--
-- Indexes for table `ospos_sales_suspended`
--
ALTER TABLE `ospos_sales_suspended`
  ADD PRIMARY KEY (`sale_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `ospos_sales_suspended_items`
--
ALTER TABLE `ospos_sales_suspended_items`
  ADD PRIMARY KEY (`sale_id`,`item_id`,`line`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `ospos_sales_suspended_items_ibfk_3` (`item_location`);

--
-- Indexes for table `ospos_sales_suspended_items_taxes`
--
ALTER TABLE `ospos_sales_suspended_items_taxes`
  ADD PRIMARY KEY (`sale_id`,`item_id`,`line`,`name`,`percent`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `ospos_sales_suspended_payments`
--
ALTER TABLE `ospos_sales_suspended_payments`
  ADD PRIMARY KEY (`sale_id`,`payment_type`);

--
-- Indexes for table `ospos_sessions`
--
ALTER TABLE `ospos_sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `ospos_shippings`
--
ALTER TABLE `ospos_shippings`
  ADD PRIMARY KEY (`ship_id`),
  ADD KEY `FK_ospos_shippings_ospos_sales` (`sale_id`),
  ADD KEY `FK_ospos_shippings_ospos_people` (`user_entry_id`);

--
-- Indexes for table `ospos_stock_locations`
--
ALTER TABLE `ospos_stock_locations`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `ospos_suppliers`
--
ALTER TABLE `ospos_suppliers`
  ADD UNIQUE KEY `account_number` (`account_number`),
  ADD KEY `person_id` (`person_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ospos_giftcards`
--
ALTER TABLE `ospos_giftcards`
  MODIFY `giftcard_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ospos_inventory`
--
ALTER TABLE `ospos_inventory`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;
--
-- AUTO_INCREMENT for table `ospos_items`
--
ALTER TABLE `ospos_items`
  MODIFY `item_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `ospos_item_kits`
--
ALTER TABLE `ospos_item_kits`
  MODIFY `item_kit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ospos_menu`
--
ALTER TABLE `ospos_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `ospos_menu_copy`
--
ALTER TABLE `ospos_menu_copy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `ospos_paket_sofa`
--
ALTER TABLE `ospos_paket_sofa`
  MODIFY `paket_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ospos_pembelian`
--
ALTER TABLE `ospos_pembelian`
  MODIFY `no` bigint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ospos_people`
--
ALTER TABLE `ospos_people`
  MODIFY `person_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `ospos_raw_materials`
--
ALTER TABLE `ospos_raw_materials`
  MODIFY `item_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `ospos_receivings`
--
ALTER TABLE `ospos_receivings`
  MODIFY `receiving_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ospos_sales`
--
ALTER TABLE `ospos_sales`
  MODIFY `sale_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `ospos_sales_suspended`
--
ALTER TABLE `ospos_sales_suspended`
  MODIFY `sale_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ospos_shippings`
--
ALTER TABLE `ospos_shippings`
  MODIFY `ship_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ospos_stock_locations`
--
ALTER TABLE `ospos_stock_locations`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ospos_customers`
--
ALTER TABLE `ospos_customers`
  ADD CONSTRAINT `ospos_customers_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`);

--
-- Constraints for table `ospos_employees`
--
ALTER TABLE `ospos_employees`
  ADD CONSTRAINT `ospos_employees_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`);

--
-- Constraints for table `ospos_giftcards`
--
ALTER TABLE `ospos_giftcards`
  ADD CONSTRAINT `ospos_giftcards_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`);

--
-- Constraints for table `ospos_grants`
--
ALTER TABLE `ospos_grants`
  ADD CONSTRAINT `ospos_grants_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `ospos_permissions` (`permission_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ospos_grants_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `ospos_employees` (`person_id`) ON DELETE CASCADE;

--
-- Constraints for table `ospos_inventory`
--
ALTER TABLE `ospos_inventory`
  ADD CONSTRAINT `ospos_inventory_ibfk_1` FOREIGN KEY (`trans_items`) REFERENCES `ospos_items` (`item_id`),
  ADD CONSTRAINT `ospos_inventory_ibfk_2` FOREIGN KEY (`trans_user`) REFERENCES `ospos_employees` (`person_id`),
  ADD CONSTRAINT `ospos_inventory_ibfk_3` FOREIGN KEY (`trans_location`) REFERENCES `ospos_stock_locations` (`location_id`);

--
-- Constraints for table `ospos_items`
--
ALTER TABLE `ospos_items`
  ADD CONSTRAINT `ospos_items_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `ospos_suppliers` (`person_id`);

--
-- Constraints for table `ospos_items_taxes`
--
ALTER TABLE `ospos_items_taxes`
  ADD CONSTRAINT `ospos_items_taxes_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`) ON DELETE CASCADE;

--
-- Constraints for table `ospos_item_kit_items`
--
ALTER TABLE `ospos_item_kit_items`
  ADD CONSTRAINT `ospos_item_kit_items_ibfk_1` FOREIGN KEY (`item_kit_id`) REFERENCES `ospos_item_kits` (`item_kit_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ospos_item_kit_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`) ON DELETE CASCADE;

--
-- Constraints for table `ospos_item_quantities`
--
ALTER TABLE `ospos_item_quantities`
  ADD CONSTRAINT `ospos_item_quantities_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  ADD CONSTRAINT `ospos_item_quantities_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `ospos_stock_locations` (`location_id`);

--
-- Constraints for table `ospos_permissions`
--
ALTER TABLE `ospos_permissions`
  ADD CONSTRAINT `ospos_permissions_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `ospos_modules` (`module_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ospos_permissions_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `ospos_stock_locations` (`location_id`) ON DELETE CASCADE;

--
-- Constraints for table `ospos_raw_materials`
--
ALTER TABLE `ospos_raw_materials`
  ADD CONSTRAINT `ospos_raw_materials_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `ospos_suppliers` (`person_id`);

--
-- Constraints for table `ospos_raw_material_quantities`
--
ALTER TABLE `ospos_raw_material_quantities`
  ADD CONSTRAINT `ospos_raw_material_quantities_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_raw_materials` (`item_id`),
  ADD CONSTRAINT `ospos_raw_material_quantities_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `ospos_stock_locations` (`location_id`);

--
-- Constraints for table `ospos_receivings`
--
ALTER TABLE `ospos_receivings`
  ADD CONSTRAINT `ospos_receivings_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`),
  ADD CONSTRAINT `ospos_receivings_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `ospos_suppliers` (`person_id`);

--
-- Constraints for table `ospos_receivings_items`
--
ALTER TABLE `ospos_receivings_items`
  ADD CONSTRAINT `ospos_receivings_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  ADD CONSTRAINT `ospos_receivings_items_ibfk_2` FOREIGN KEY (`receiving_id`) REFERENCES `ospos_receivings` (`receiving_id`);

--
-- Constraints for table `ospos_sales`
--
ALTER TABLE `ospos_sales`
  ADD CONSTRAINT `FK_ospos_sales_ospos_employees` FOREIGN KEY (`sales_person_id`) REFERENCES `ospos_employees` (`person_id`),
  ADD CONSTRAINT `ospos_sales_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`),
  ADD CONSTRAINT `ospos_sales_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `ospos_customers` (`person_id`);

--
-- Constraints for table `ospos_sales_items`
--
ALTER TABLE `ospos_sales_items`
  ADD CONSTRAINT `ospos_sales_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  ADD CONSTRAINT `ospos_sales_items_ibfk_2` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`),
  ADD CONSTRAINT `ospos_sales_items_ibfk_3` FOREIGN KEY (`item_location`) REFERENCES `ospos_stock_locations` (`location_id`);

--
-- Constraints for table `ospos_sales_items_taxes`
--
ALTER TABLE `ospos_sales_items_taxes`
  ADD CONSTRAINT `ospos_sales_items_taxes_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales_items` (`sale_id`),
  ADD CONSTRAINT `ospos_sales_items_taxes_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`);

--
-- Constraints for table `ospos_sales_payments`
--
ALTER TABLE `ospos_sales_payments`
  ADD CONSTRAINT `ospos_sales_payments_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`);

--
-- Constraints for table `ospos_sales_suspended`
--
ALTER TABLE `ospos_sales_suspended`
  ADD CONSTRAINT `ospos_sales_suspended_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`),
  ADD CONSTRAINT `ospos_sales_suspended_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `ospos_customers` (`person_id`);

--
-- Constraints for table `ospos_sales_suspended_items`
--
ALTER TABLE `ospos_sales_suspended_items`
  ADD CONSTRAINT `ospos_sales_suspended_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  ADD CONSTRAINT `ospos_sales_suspended_items_ibfk_2` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales_suspended` (`sale_id`),
  ADD CONSTRAINT `ospos_sales_suspended_items_ibfk_3` FOREIGN KEY (`item_location`) REFERENCES `ospos_stock_locations` (`location_id`);

--
-- Constraints for table `ospos_sales_suspended_items_taxes`
--
ALTER TABLE `ospos_sales_suspended_items_taxes`
  ADD CONSTRAINT `ospos_sales_suspended_items_taxes_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales_suspended_items` (`sale_id`),
  ADD CONSTRAINT `ospos_sales_suspended_items_taxes_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`);

--
-- Constraints for table `ospos_sales_suspended_payments`
--
ALTER TABLE `ospos_sales_suspended_payments`
  ADD CONSTRAINT `ospos_sales_suspended_payments_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales_suspended` (`sale_id`);

--
-- Constraints for table `ospos_shippings`
--
ALTER TABLE `ospos_shippings`
  ADD CONSTRAINT `FK_ospos_shippings_ospos_people` FOREIGN KEY (`user_entry_id`) REFERENCES `ospos_people` (`person_id`),
  ADD CONSTRAINT `FK_ospos_shippings_ospos_sales` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`);

--
-- Constraints for table `ospos_suppliers`
--
ALTER TABLE `ospos_suppliers`
  ADD CONSTRAINT `ospos_suppliers_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
