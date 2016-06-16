-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.24 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.5056
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table giripalma.ospos_app_config
DROP TABLE IF EXISTS `ospos_app_config`;
CREATE TABLE IF NOT EXISTS `ospos_app_config` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table giripalma.ospos_app_config: ~63 rows (approximately)
/*!40000 ALTER TABLE `ospos_app_config` DISABLE KEYS */;
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('address', 'Tidar, Malang');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('barcode_content', 'id');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('barcode_first_row', 'category');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('barcode_font', 'Arial');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('barcode_font_size', '10');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('barcode_generate_if_empty', '0');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('barcode_height', '50');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('barcode_num_in_row', '2');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('barcode_page_cellspacing', '20');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('barcode_page_width', '100');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('barcode_quality', '100');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('barcode_second_row', 'item_code');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('barcode_third_row', 'unit_price');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('barcode_type', 'Code39');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('barcode_width', '250');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('company', 'Giri Palma');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('company_logo', '');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('currency_side', '0');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('currency_symbol', 'Rp ');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('custom10_name', '');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('custom1_name', '');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('custom2_name', '');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('custom3_name', '');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('custom4_name', '');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('custom5_name', '');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('custom6_name', '');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('custom7_name', '');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('custom8_name', '');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('custom9_name', '');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('dateformat', 'd/m/Y');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('decimal_point', ',');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('default_sales_discount', '0');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('default_tax_1_name', 'Pajak Penjualan1');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('default_tax_1_rate', '10');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('default_tax_2_name', 'Pajak Penjualan2');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('default_tax_2_rate', '');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('default_tax_rate', '8');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('email', 'admin@giripalma.com');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('fax', '');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('invoice_default_comments', 'This is a default comment');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('invoice_email_message', 'Dear $CU, In attachment the receipt for sale $INV');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('language', 'id');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('lines_per_page', '25');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('phone', '0341-3222223');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('print_bottom_margin', '0');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('print_footer', '0');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('print_header', '0');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('print_left_margin', '0');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('print_right_margin', '0');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('print_silently', '1');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('print_top_margin', '0');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('receipt_show_taxes', '0');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('receiving_calculate_average_price', '0');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('recv_invoice_format', '$CO');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('return_policy', 'Test');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('sales_invoice_format', '$CO');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('show_total_discount', '1');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('tax_included', 'tax_included');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('thousands_separator', '.');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('timeformat', 'H:i:s');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('timezone', 'Asia/Bangkok');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('use_invoice_template', '1');
INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
	('website', '');
/*!40000 ALTER TABLE `ospos_app_config` ENABLE KEYS */;

-- Dumping structure for table giripalma.ospos_customers
DROP TABLE IF EXISTS `ospos_customers`;
CREATE TABLE IF NOT EXISTS `ospos_customers` (
  `person_id` int(10) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `taxable` int(1) NOT NULL DEFAULT '1',
  `deleted` int(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `account_number` (`account_number`),
  KEY `person_id` (`person_id`),
  CONSTRAINT `ospos_customers_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table giripalma.ospos_customers: ~7 rows (approximately)
/*!40000 ALTER TABLE `ospos_customers` DISABLE KEYS */;
INSERT INTO `ospos_customers` (`person_id`, `company_name`, `account_number`, `taxable`, `deleted`) VALUES
	(2, NULL, NULL, 1, 0);
INSERT INTO `ospos_customers` (`person_id`, `company_name`, `account_number`, `taxable`, `deleted`) VALUES
	(3, NULL, '34546246565', 1, 0);
INSERT INTO `ospos_customers` (`person_id`, `company_name`, `account_number`, `taxable`, `deleted`) VALUES
	(5, NULL, '12345', 0, 0);
INSERT INTO `ospos_customers` (`person_id`, `company_name`, `account_number`, `taxable`, `deleted`) VALUES
	(6, NULL, NULL, 1, 1);
INSERT INTO `ospos_customers` (`person_id`, `company_name`, `account_number`, `taxable`, `deleted`) VALUES
	(7, NULL, NULL, 1, 1);
INSERT INTO `ospos_customers` (`person_id`, `company_name`, `account_number`, `taxable`, `deleted`) VALUES
	(8, NULL, NULL, 0, 0);
INSERT INTO `ospos_customers` (`person_id`, `company_name`, `account_number`, `taxable`, `deleted`) VALUES
	(9, NULL, NULL, 0, 0);
/*!40000 ALTER TABLE `ospos_customers` ENABLE KEYS */;

-- Dumping structure for table giripalma.ospos_employees
DROP TABLE IF EXISTS `ospos_employees`;
CREATE TABLE IF NOT EXISTS `ospos_employees` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `person_id` int(10) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `username` (`username`),
  KEY `person_id` (`person_id`),
  CONSTRAINT `ospos_employees_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table giripalma.ospos_employees: ~0 rows (approximately)
/*!40000 ALTER TABLE `ospos_employees` DISABLE KEYS */;
INSERT INTO `ospos_employees` (`username`, `password`, `person_id`, `deleted`) VALUES
	('admin', '21232f297a57a5a743894a0e4a801fc3', 1, 0);
INSERT INTO `ospos_employees` (`username`, `password`, `person_id`, `deleted`) VALUES
	('halo.ocky', '1059c5ae65326e7f02ba9a9552889c6a', 16, 0);
/*!40000 ALTER TABLE `ospos_employees` ENABLE KEYS */;

-- Dumping structure for table giripalma.ospos_giftcards
DROP TABLE IF EXISTS `ospos_giftcards`;
CREATE TABLE IF NOT EXISTS `ospos_giftcards` (
  `record_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `giftcard_id` int(11) NOT NULL AUTO_INCREMENT,
  `giftcard_number` int(10) NOT NULL,
  `value` decimal(15,2) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `person_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`giftcard_id`),
  UNIQUE KEY `giftcard_number` (`giftcard_number`),
  KEY `person_id` (`person_id`),
  CONSTRAINT `ospos_giftcards_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table giripalma.ospos_giftcards: ~5 rows (approximately)
/*!40000 ALTER TABLE `ospos_giftcards` DISABLE KEYS */;
INSERT INTO `ospos_giftcards` (`record_time`, `giftcard_id`, `giftcard_number`, `value`, `deleted`, `person_id`) VALUES
	('2016-02-16 16:39:24', 1, 1234553, 100000.00, 1, 2);
INSERT INTO `ospos_giftcards` (`record_time`, `giftcard_id`, `giftcard_number`, `value`, `deleted`, `person_id`) VALUES
	('2016-04-08 20:59:46', 2, 333333, 100000.00, 1, NULL);
INSERT INTO `ospos_giftcards` (`record_time`, `giftcard_id`, `giftcard_number`, `value`, `deleted`, `person_id`) VALUES
	('2016-04-08 21:01:22', 3, 1234554, 100000.00, 1, 2);
INSERT INTO `ospos_giftcards` (`record_time`, `giftcard_id`, `giftcard_number`, `value`, `deleted`, `person_id`) VALUES
	('2016-04-08 21:01:57', 5, 1234555, 100000.00, 1, 2);
INSERT INTO `ospos_giftcards` (`record_time`, `giftcard_id`, `giftcard_number`, `value`, `deleted`, `person_id`) VALUES
	('2016-04-08 21:04:20', 6, 1234556, 100000.00, 0, 2);
/*!40000 ALTER TABLE `ospos_giftcards` ENABLE KEYS */;

-- Dumping structure for table giripalma.ospos_grants
DROP TABLE IF EXISTS `ospos_grants`;
CREATE TABLE IF NOT EXISTS `ospos_grants` (
  `permission_id` varchar(255) NOT NULL,
  `person_id` int(10) NOT NULL,
  PRIMARY KEY (`permission_id`,`person_id`),
  KEY `ospos_grants_ibfk_2` (`person_id`),
  CONSTRAINT `ospos_grants_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `ospos_permissions` (`permission_id`) ON DELETE CASCADE,
  CONSTRAINT `ospos_grants_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `ospos_employees` (`person_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table giripalma.ospos_grants: ~67 rows (approximately)
/*!40000 ALTER TABLE `ospos_grants` DISABLE KEYS */;
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('config', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('customers', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('employees', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('giftcards', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('items', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('items_BATOS - Lippo Plaza Batu', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('items_GP1 - Pusat', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('items_GP2 - Toko Utama', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('items_GP3 - Gudang Panel', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('items_GP4 - Gudang Produksi Sofa', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('items_GP5 - Gudang Produksi HPL', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('items_MOG2 - Stand Depan Giant', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('items_MOG3 - Stand Depan Foodcourt', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('items_MOGATR - Atrium MOG', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('items_stock', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('item_kits', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('productions', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('raw_materials', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('receivings', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('receivings_BATOS - Lippo Plaza Batu', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('receivings_GP1 - Pusat', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('receivings_GP2 - Toko Utama', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('receivings_GP3 - Gudang Panel', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('receivings_GP4 - Gudang Produksi Sofa', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('receivings_GP5 - Gudang Produksi HPL', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('receivings_MOG2 - Stand Depan Giant', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('receivings_MOG3 - Stand Depan Foodcourt', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('receivings_MOGATR - Atrium MOG', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('receivings_stock', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('reports', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('reports_categories', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('reports_customers', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('reports_discounts', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('reports_employees', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('reports_inventory', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('reports_items', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('reports_payments', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('reports_receivings', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('reports_sales', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('reports_suppliers', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('reports_taxes', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('sales', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('sales_BATOS - Lippo Plaza Batu', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('sales_GP1 - Pusat', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('sales_GP2 - Toko Utama', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('sales_GP3 - Gudang Panel', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('sales_GP4 - Gudang Produksi Sofa', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('sales_GP5 - Gudang Produksi HPL', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('sales_MOG2 - Stand Depan Giant', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('sales_MOG3 - Stand Depan Foodcourt', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('sales_MOGATR - Atrium MOG', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('sales_stock', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('shippings', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('suppliers', 1);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('customers', 16);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('giftcards', 16);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('items', 16);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('items_BATOS - Lippo Plaza Batu', 16);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('items_stock', 16);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('item_kits', 16);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('raw_materials', 16);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('receivings', 16);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('receivings_BATOS - Lippo Plaza Batu', 16);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('receivings_stock', 16);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('sales', 16);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('sales_BATOS - Lippo Plaza Batu', 16);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('sales_stock', 16);
INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
	('suppliers', 16);
/*!40000 ALTER TABLE `ospos_grants` ENABLE KEYS */;

-- Dumping structure for table giripalma.ospos_inventory
DROP TABLE IF EXISTS `ospos_inventory`;
CREATE TABLE IF NOT EXISTS `ospos_inventory` (
  `trans_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_items` int(11) NOT NULL DEFAULT '0',
  `trans_user` int(11) NOT NULL DEFAULT '0',
  `trans_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `trans_comment` text NOT NULL,
  `trans_location` int(11) NOT NULL,
  `trans_inventory` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`trans_id`),
  KEY `trans_items` (`trans_items`),
  KEY `trans_user` (`trans_user`),
  KEY `trans_location` (`trans_location`),
  CONSTRAINT `ospos_inventory_ibfk_1` FOREIGN KEY (`trans_items`) REFERENCES `ospos_items` (`item_id`),
  CONSTRAINT `ospos_inventory_ibfk_2` FOREIGN KEY (`trans_user`) REFERENCES `ospos_employees` (`person_id`),
  CONSTRAINT `ospos_inventory_ibfk_3` FOREIGN KEY (`trans_location`) REFERENCES `ospos_stock_locations` (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8;

-- Dumping data for table giripalma.ospos_inventory: ~162 rows (approximately)
/*!40000 ALTER TABLE `ospos_inventory` DISABLE KEYS */;
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(1, 1, 1, '2016-01-25 23:01:23', 'Manual Edit of Quantity', 1, 10);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(2, 2, 1, '2016-01-27 02:07:46', 'Perubahan jumlah Stok secara manual', 9, 10);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(3, 2, 1, '2016-01-27 02:07:46', 'Perubahan jumlah Stok secara manual', 2, 5);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(4, 2, 1, '2016-01-27 02:07:46', 'Perubahan jumlah Stok secara manual', 3, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(5, 2, 1, '2016-01-27 02:07:46', 'Perubahan jumlah Stok secara manual', 4, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(6, 2, 1, '2016-01-27 02:07:46', 'Perubahan jumlah Stok secara manual', 5, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(7, 2, 1, '2016-01-27 02:07:46', 'Perubahan jumlah Stok secara manual', 6, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(8, 2, 1, '2016-01-27 02:07:46', 'Perubahan jumlah Stok secara manual', 7, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(9, 2, 1, '2016-01-27 02:07:46', 'Perubahan jumlah Stok secara manual', 8, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(10, 2, 1, '2016-01-27 02:07:46', 'Perubahan jumlah Stok secara manual', 10, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(11, 2, 1, '2016-01-27 02:07:47', 'Perubahan jumlah Stok secara manual', 1, 20);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(12, 2, 1, '2016-01-27 02:09:38', 'Perubahan jumlah Stok secara manual', 4, 2);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(13, 2, 1, '2016-01-27 02:12:19', 'POS 1', 2, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(14, 2, 1, '2016-01-27 22:32:53', 'POS 2', 9, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(15, 2, 1, '2016-01-28 02:40:39', 'POS 3', 9, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(16, 3, 1, '2016-01-28 23:21:28', 'Perubahan jumlah Stok secara manual', 9, 2);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(17, 3, 1, '2016-01-28 23:21:29', 'Perubahan jumlah Stok secara manual', 2, 2);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(18, 3, 1, '2016-01-28 23:21:29', 'Perubahan jumlah Stok secara manual', 3, 2);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(19, 3, 1, '2016-01-28 23:21:29', 'Perubahan jumlah Stok secara manual', 4, 2);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(20, 3, 1, '2016-01-28 23:21:29', 'Perubahan jumlah Stok secara manual', 5, 2);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(21, 3, 1, '2016-01-28 23:21:29', 'Perubahan jumlah Stok secara manual', 6, 2);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(22, 3, 1, '2016-01-28 23:21:29', 'Perubahan jumlah Stok secara manual', 7, 2);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(23, 3, 1, '2016-01-28 23:21:29', 'Perubahan jumlah Stok secara manual', 8, 2);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(24, 3, 1, '2016-01-28 23:21:29', 'Perubahan jumlah Stok secara manual', 10, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(25, 3, 1, '2016-01-28 23:21:29', 'Perubahan jumlah Stok secara manual', 1, 14);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(26, 3, 1, '2016-02-01 01:01:04', 'POS 4', 9, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(27, 4, 1, '2016-02-01 04:17:29', 'Perubahan jumlah Stok secara manual', 9, 10);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(28, 4, 1, '2016-02-01 04:17:29', 'Perubahan jumlah Stok secara manual', 2, 1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(29, 4, 1, '2016-02-01 04:17:29', 'Perubahan jumlah Stok secara manual', 3, 1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(30, 4, 1, '2016-02-01 04:17:29', 'Perubahan jumlah Stok secara manual', 4, 1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(31, 4, 1, '2016-02-01 04:17:30', 'Perubahan jumlah Stok secara manual', 5, 1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(32, 4, 1, '2016-02-01 04:17:30', 'Perubahan jumlah Stok secara manual', 6, 1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(33, 4, 1, '2016-02-01 04:17:30', 'Perubahan jumlah Stok secara manual', 7, 1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(34, 4, 1, '2016-02-01 04:17:30', 'Perubahan jumlah Stok secara manual', 8, 1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(35, 4, 1, '2016-02-01 04:17:30', 'Perubahan jumlah Stok secara manual', 10, 1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(36, 4, 1, '2016-02-01 04:17:30', 'Perubahan jumlah Stok secara manual', 1, 18);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(37, 4, 1, '2016-02-01 22:04:55', 'POS 5', 9, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(38, 4, 1, '2016-02-03 02:43:01', 'POS 6', 1, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(39, 4, 1, '2016-02-03 02:46:39', 'POS 7', 2, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(40, 4, 1, '2016-02-05 01:14:21', 'POS 8', 3, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(41, 4, 1, '2016-02-05 01:48:58', 'POS 9', 3, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(42, 4, 1, '2016-02-10 20:19:47', 'POS 10', 1, -4);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(43, 4, 1, '2016-02-10 20:53:34', 'POS 11', 1, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(44, 5, 1, '2016-02-14 05:23:49', 'Perubahan jumlah Stok secara manual', 9, 5);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(45, 5, 1, '2016-02-14 05:23:49', 'Perubahan jumlah Stok secara manual', 2, 5);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(46, 5, 1, '2016-02-14 05:23:49', 'Perubahan jumlah Stok secara manual', 3, 5);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(47, 5, 1, '2016-02-14 05:23:50', 'Perubahan jumlah Stok secara manual', 4, 5);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(48, 5, 1, '2016-02-14 05:23:50', 'Perubahan jumlah Stok secara manual', 5, 5);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(49, 5, 1, '2016-02-14 05:23:50', 'Perubahan jumlah Stok secara manual', 6, 5);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(50, 5, 1, '2016-02-14 05:23:50', 'Perubahan jumlah Stok secara manual', 7, 5);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(51, 5, 1, '2016-02-14 05:23:50', 'Perubahan jumlah Stok secara manual', 8, 5);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(52, 5, 1, '2016-02-14 05:23:50', 'Perubahan jumlah Stok secara manual', 10, 5);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(53, 5, 1, '2016-02-14 05:23:50', 'Perubahan jumlah Stok secara manual', 1, 60);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(54, 5, 1, '2016-02-14 05:25:54', 'POS 12', 2, -2);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(55, 5, 1, '2016-02-14 05:40:30', 'POS 13', 3, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(56, 6, 1, '2016-02-15 19:12:14', 'Perubahan jumlah Stok secara manual', 9, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(57, 6, 1, '2016-02-15 19:12:15', 'Perubahan jumlah Stok secara manual', 2, 10);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(58, 6, 1, '2016-02-15 19:12:15', 'Perubahan jumlah Stok secara manual', 3, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(59, 6, 1, '2016-02-15 19:12:15', 'Perubahan jumlah Stok secara manual', 4, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(60, 6, 1, '2016-02-15 19:12:15', 'Perubahan jumlah Stok secara manual', 5, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(61, 6, 1, '2016-02-15 19:12:15', 'Perubahan jumlah Stok secara manual', 6, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(62, 6, 1, '2016-02-15 19:12:15', 'Perubahan jumlah Stok secara manual', 7, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(63, 6, 1, '2016-02-15 19:12:15', 'Perubahan jumlah Stok secara manual', 8, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(64, 6, 1, '2016-02-15 19:12:15', 'Perubahan jumlah Stok secara manual', 10, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(65, 6, 1, '2016-02-15 19:12:15', 'Perubahan jumlah Stok secara manual', 1, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(66, 6, 1, '2016-02-15 20:29:21', 'RECV 1', 7, 40);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(67, 4, 1, '2016-02-16 14:24:54', 'POS 14', 8, -2);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(68, 5, 1, '2016-02-16 14:24:54', 'POS 14', 8, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(69, 4, 1, '2016-02-16 14:34:00', 'RECV 2', 5, 1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(70, 4, 1, '2016-02-16 14:34:00', 'RECV 2', 3, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(71, 4, 1, '2016-02-22 14:45:36', 'POS 15', 9, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(72, 3, 1, '2016-02-22 14:58:35', 'POS 16', 9, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(73, 4, 1, '2016-02-22 16:11:50', 'POS 17', 9, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(74, 4, 1, '2016-02-22 16:27:22', 'POS 18', 9, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(75, 4, 1, '2016-02-22 16:29:31', 'POS 19', 9, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(76, 4, 1, '2016-02-22 16:40:03', 'POS 20', 9, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(77, 4, 1, '2016-02-23 11:09:43', 'POS 21', 9, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(78, 4, 1, '2016-02-23 11:10:48', 'POS 22', 9, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(79, 4, 1, '2016-02-25 12:00:38', 'POS 23', 9, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(80, 4, 1, '2016-02-25 12:03:03', 'POS 24', 9, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(81, 4, 1, '2016-02-25 12:03:46', 'POS 25', 9, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(82, 3, 1, '2016-02-25 12:04:48', 'POS 26', 9, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(83, 5, 1, '2016-02-25 12:05:48', 'POS 27', 9, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(84, 4, 1, '2016-02-25 13:37:29', 'POS 28', 5, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(85, 3, 1, '2016-02-25 18:18:26', 'POS 29', 5, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(86, 4, 1, '2016-02-26 10:56:37', 'POS 30', 5, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(87, 3, 1, '2016-02-26 10:57:55', 'POS 31', 5, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(88, 4, 1, '2016-02-26 11:00:50', 'POS 32', 5, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(89, 4, 1, '2016-02-26 11:03:38', 'POS 33', 5, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(90, 4, 1, '2016-02-26 11:04:42', 'POS 34', 5, -2);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(91, 6, 1, '2016-02-26 11:10:43', 'POS 35', 5, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(92, 7, 1, '2016-02-26 17:41:26', 'Perubahan jumlah Stok secara manual', 9, 10);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(93, 7, 1, '2016-02-26 17:41:26', 'Perubahan jumlah Stok secara manual', 2, 1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(94, 7, 1, '2016-02-26 17:41:26', 'Perubahan jumlah Stok secara manual', 3, 1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(95, 7, 1, '2016-02-26 17:41:27', 'Perubahan jumlah Stok secara manual', 4, 1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(96, 7, 1, '2016-02-26 17:41:27', 'Perubahan jumlah Stok secara manual', 5, 1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(97, 7, 1, '2016-02-26 17:41:27', 'Perubahan jumlah Stok secara manual', 6, 1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(98, 7, 1, '2016-02-26 17:41:27', 'Perubahan jumlah Stok secara manual', 7, 1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(99, 7, 1, '2016-02-26 17:41:27', 'Perubahan jumlah Stok secara manual', 8, 1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(100, 7, 1, '2016-02-26 17:41:27', 'Perubahan jumlah Stok secara manual', 10, 1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(101, 7, 1, '2016-02-26 17:41:27', 'Perubahan jumlah Stok secara manual', 1, 18);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(102, 8, 1, '2016-03-07 16:36:16', 'Perubahan jumlah Stok secara manual', 9, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(103, 8, 1, '2016-03-07 16:36:16', 'Perubahan jumlah Stok secara manual', 2, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(104, 8, 1, '2016-03-07 16:36:16', 'Perubahan jumlah Stok secara manual', 3, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(105, 8, 1, '2016-03-07 16:36:16', 'Perubahan jumlah Stok secara manual', 4, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(106, 8, 1, '2016-03-07 16:36:17', 'Perubahan jumlah Stok secara manual', 5, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(107, 8, 1, '2016-03-07 16:36:17', 'Perubahan jumlah Stok secara manual', 6, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(108, 8, 1, '2016-03-07 16:36:17', 'Perubahan jumlah Stok secara manual', 7, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(109, 8, 1, '2016-03-07 16:36:17', 'Perubahan jumlah Stok secara manual', 8, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(110, 8, 1, '2016-03-07 16:36:17', 'Perubahan jumlah Stok secara manual', 10, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(111, 8, 1, '2016-03-07 16:36:17', 'Perubahan jumlah Stok secara manual', 1, 5);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(112, 9, 1, '2016-03-07 16:52:02', 'Perubahan jumlah Stok secara manual', 9, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(113, 9, 1, '2016-03-07 16:52:02', 'Perubahan jumlah Stok secara manual', 2, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(114, 9, 1, '2016-03-07 16:52:02', 'Perubahan jumlah Stok secara manual', 3, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(115, 9, 1, '2016-03-07 16:52:02', 'Perubahan jumlah Stok secara manual', 4, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(116, 9, 1, '2016-03-07 16:52:03', 'Perubahan jumlah Stok secara manual', 5, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(117, 9, 1, '2016-03-07 16:52:03', 'Perubahan jumlah Stok secara manual', 6, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(118, 9, 1, '2016-03-07 16:52:03', 'Perubahan jumlah Stok secara manual', 7, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(119, 9, 1, '2016-03-07 16:52:03', 'Perubahan jumlah Stok secara manual', 8, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(120, 9, 1, '2016-03-07 16:52:03', 'Perubahan jumlah Stok secara manual', 10, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(121, 9, 1, '2016-03-07 16:52:03', 'Perubahan jumlah Stok secara manual', 1, 50);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(122, 5, 1, '2016-03-30 15:27:55', 'POS 36', 1, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(123, 4, 1, '2016-03-30 15:27:55', 'POS 36', 1, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(124, 4, 1, '2016-03-30 15:29:24', 'POS 37', 1, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(125, 10, 1, '2016-03-31 05:42:29', 'Perubahan jumlah Stok secara manual', 9, 5);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(126, 10, 1, '2016-03-31 05:42:29', 'Perubahan jumlah Stok secara manual', 2, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(127, 10, 1, '2016-03-31 05:42:29', 'Perubahan jumlah Stok secara manual', 3, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(128, 10, 1, '2016-03-31 05:42:29', 'Perubahan jumlah Stok secara manual', 4, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(129, 10, 1, '2016-03-31 05:42:29', 'Perubahan jumlah Stok secara manual', 5, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(130, 10, 1, '2016-03-31 05:42:29', 'Perubahan jumlah Stok secara manual', 6, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(131, 10, 1, '2016-03-31 05:42:29', 'Perubahan jumlah Stok secara manual', 7, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(132, 10, 1, '2016-03-31 05:42:29', 'Perubahan jumlah Stok secara manual', 8, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(133, 10, 1, '2016-03-31 05:42:29', 'Perubahan jumlah Stok secara manual', 10, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(134, 10, 1, '2016-03-31 05:42:29', 'Perubahan jumlah Stok secara manual', 1, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(135, 11, 1, '2016-03-31 07:55:17', 'Perubahan jumlah Stok secara manual', 9, 70);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(136, 11, 1, '2016-03-31 07:55:18', 'Perubahan jumlah Stok secara manual', 2, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(137, 11, 1, '2016-03-31 07:55:18', 'Perubahan jumlah Stok secara manual', 3, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(138, 11, 1, '2016-03-31 07:55:18', 'Perubahan jumlah Stok secara manual', 4, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(139, 11, 1, '2016-03-31 07:55:18', 'Perubahan jumlah Stok secara manual', 5, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(140, 11, 1, '2016-03-31 07:55:18', 'Perubahan jumlah Stok secara manual', 6, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(141, 11, 1, '2016-03-31 07:55:18', 'Perubahan jumlah Stok secara manual', 7, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(142, 11, 1, '2016-03-31 07:55:18', 'Perubahan jumlah Stok secara manual', 8, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(143, 11, 1, '2016-03-31 07:55:18', 'Perubahan jumlah Stok secara manual', 10, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(144, 11, 1, '2016-03-31 07:55:18', 'Perubahan jumlah Stok secara manual', 1, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(145, 8, 1, '2016-03-31 10:53:14', 'Perubahan jumlah Stok secara manual', 1, -5);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(146, 9, 1, '2016-04-02 11:37:29', '', 9, 7);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(147, 10, 1, '2016-04-02 11:44:51', '0', 9, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(148, 9, 1, '2016-04-02 11:46:33', '', 9, 1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(149, 11, 1, '2016-04-02 12:32:05', '', 2, 65);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(151, 12, 1, '2016-04-04 23:57:38', 'Perubahan jumlah Stok secara manual', 9, 30);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(152, 12, 1, '2016-04-04 23:57:38', 'Perubahan jumlah Stok secara manual', 2, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(153, 12, 1, '2016-04-04 23:57:39', 'Perubahan jumlah Stok secara manual', 3, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(154, 12, 1, '2016-04-04 23:57:39', 'Perubahan jumlah Stok secara manual', 4, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(155, 12, 1, '2016-04-04 23:57:39', 'Perubahan jumlah Stok secara manual', 5, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(156, 12, 1, '2016-04-04 23:57:39', 'Perubahan jumlah Stok secara manual', 6, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(157, 12, 1, '2016-04-04 23:57:39', 'Perubahan jumlah Stok secara manual', 7, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(158, 12, 1, '2016-04-04 23:57:39', 'Perubahan jumlah Stok secara manual', 8, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(159, 12, 1, '2016-04-04 23:57:39', 'Perubahan jumlah Stok secara manual', 10, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(160, 12, 1, '2016-04-04 23:57:39', 'Perubahan jumlah Stok secara manual', 1, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(161, 13, 1, '2016-04-05 00:03:07', 'Perubahan jumlah Stok secara manual', 9, 5);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(162, 13, 1, '2016-04-05 00:03:07', 'Perubahan jumlah Stok secara manual', 2, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(163, 13, 1, '2016-04-05 00:03:07', 'Perubahan jumlah Stok secara manual', 3, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(164, 13, 1, '2016-04-05 00:03:07', 'Perubahan jumlah Stok secara manual', 4, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(165, 13, 1, '2016-04-05 00:03:07', 'Perubahan jumlah Stok secara manual', 5, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(166, 13, 1, '2016-04-05 00:03:07', 'Perubahan jumlah Stok secara manual', 6, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(167, 13, 1, '2016-04-05 00:03:07', 'Perubahan jumlah Stok secara manual', 7, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(168, 13, 1, '2016-04-05 00:03:07', 'Perubahan jumlah Stok secara manual', 8, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(169, 13, 1, '2016-04-05 00:03:08', 'Perubahan jumlah Stok secara manual', 10, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(170, 13, 1, '2016-04-05 00:03:08', 'Perubahan jumlah Stok secara manual', 1, 0);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(171, 5, 1, '2016-04-05 22:33:02', 'POS 38', 1, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(172, 4, 1, '2016-04-06 17:04:59', 'POS 39', 1, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(173, 4, 1, '2016-04-06 23:27:28', 'Deleting sale 39', 1, 1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(174, 4, 1, '2016-04-06 23:28:54', 'POS 40', 1, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(175, 4, 1, '2016-04-06 23:29:37', 'Deleting sale 40', 1, 1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(176, 4, 1, '2016-04-06 23:33:10', 'POS 41', 1, -1);
INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
	(177, 4, 1, '2016-04-06 23:33:54', 'Deleting sale 41', 1, 1);
/*!40000 ALTER TABLE `ospos_inventory` ENABLE KEYS */;

-- Dumping structure for table giripalma.ospos_items
DROP TABLE IF EXISTS `ospos_items`;
CREATE TABLE IF NOT EXISTS `ospos_items` (
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
  `item_id` int(10) NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `item_number` (`item_number`),
  KEY `supplier_id` (`supplier_id`),
  CONSTRAINT `ospos_items_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `ospos_suppliers` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Dumping data for table giripalma.ospos_items: ~11 rows (approximately)
/*!40000 ALTER TABLE `ospos_items` DISABLE KEYS */;
INSERT INTO `ospos_items` (`name`, `category`, `supplier_id`, `type_item`, `item_number`, `description`, `color`, `dimension`, `cost_price`, `unit_price`, `reorder_level`, `receiving_quantity`, `item_id`, `pic_id`, `allow_alt_description`, `is_serialized`, `deleted`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`) VALUES
	('meja', 'kredit', NULL, NULL, NULL, '', '', '', 40000.00, 50000.00, 5.00, 0, 1, NULL, 0, 0, 1, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ospos_items` (`name`, `category`, `supplier_id`, `type_item`, `item_number`, `description`, `color`, `dimension`, `cost_price`, `unit_price`, `reorder_level`, `receiving_quantity`, `item_id`, `pic_id`, `allow_alt_description`, `is_serialized`, `deleted`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`) VALUES
	('Meja', 'Cash', NULL, NULL, 'M001', '', '', '', 20000.00, 30000.00, 1.00, 0, 2, NULL, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ospos_items` (`name`, `category`, `supplier_id`, `type_item`, `item_number`, `description`, `color`, `dimension`, `cost_price`, `unit_price`, `reorder_level`, `receiving_quantity`, `item_id`, `pic_id`, `allow_alt_description`, `is_serialized`, `deleted`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`) VALUES
	('Kursi', 'kursi', NULL, NULL, 'K001', '', '', '', 30000.00, 50000.00, 2.00, 0, 3, NULL, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ospos_items` (`name`, `category`, `supplier_id`, `type_item`, `item_number`, `description`, `color`, `dimension`, `cost_price`, `unit_price`, `reorder_level`, `receiving_quantity`, `item_id`, `pic_id`, `allow_alt_description`, `is_serialized`, `deleted`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`) VALUES
	('Kursi Syahrini', 'new', NULL, NULL, 'K002', '', 'merah', '20x25', 100000.00, 300000.00, 1.00, 0, 4, NULL, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ospos_items` (`name`, `category`, `supplier_id`, `type_item`, `item_number`, `description`, `color`, `dimension`, `cost_price`, `unit_price`, `reorder_level`, `receiving_quantity`, `item_id`, `pic_id`, `allow_alt_description`, `is_serialized`, `deleted`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`) VALUES
	('Kursi Tunggu', 'kursi', NULL, NULL, '56746774276356', '', 'Hitam', '45 x 200', 600000.00, 900000.00, 20.00, 60, 5, NULL, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ospos_items` (`name`, `category`, `supplier_id`, `type_item`, `item_number`, `description`, `color`, `dimension`, `cost_price`, `unit_price`, `reorder_level`, `receiving_quantity`, `item_id`, `pic_id`, `allow_alt_description`, `is_serialized`, `deleted`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`) VALUES
	('Komputer PC', 'Komputer', 4, 'Baik', 'PC2837849', '', 'Putih', '14"', 3000000.00, 4500000.00, 4.00, 10, 6, NULL, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ospos_items` (`name`, `category`, `supplier_id`, `type_item`, `item_number`, `description`, `color`, `dimension`, `cost_price`, `unit_price`, `reorder_level`, `receiving_quantity`, `item_id`, `pic_id`, `allow_alt_description`, `is_serialized`, `deleted`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`) VALUES
	('meja coba', 'apa ya', 4, 'service', 'kcoba1', '', 'hijau', '50 x 80', 200000.00, 200000.00, 0.00, 0, 7, NULL, 0, 0, 1, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ospos_items` (`name`, `category`, `supplier_id`, `type_item`, `item_number`, `description`, `color`, `dimension`, `cost_price`, `unit_price`, `reorder_level`, `receiving_quantity`, `item_id`, `pic_id`, `allow_alt_description`, `is_serialized`, `deleted`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`) VALUES
	('Kain 50meter', 'Kain', NULL, '0', '2222', '0', '0', '0', 0.00, 0.00, 0.00, 0, 8, NULL, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ospos_items` (`name`, `category`, `supplier_id`, `type_item`, `item_number`, `description`, `color`, `dimension`, `cost_price`, `unit_price`, `reorder_level`, `receiving_quantity`, `item_id`, `pic_id`, `allow_alt_description`, `is_serialized`, `deleted`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`) VALUES
	('56hhh', 'Kain', NULL, '0', '535365', '', 'Kuning', '', 150000.00, 230000.00, 20.00, 0, 9, NULL, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ospos_items` (`name`, `category`, `supplier_id`, `type_item`, `item_number`, `description`, `color`, `dimension`, `cost_price`, `unit_price`, `reorder_level`, `receiving_quantity`, `item_id`, `pic_id`, `allow_alt_description`, `is_serialized`, `deleted`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`) VALUES
	('Coba sih', 'Kain', NULL, 'Baik', '4gssss', '', '', '', 10000.00, 13000.00, 3.00, 5, 10, NULL, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ospos_items` (`name`, `category`, `supplier_id`, `type_item`, `item_number`, `description`, `color`, `dimension`, `cost_price`, `unit_price`, `reorder_level`, `receiving_quantity`, `item_id`, `pic_id`, `allow_alt_description`, `is_serialized`, `deleted`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`) VALUES
	('Itulah aku', 'kursi', NULL, 'Baik', 'huhuuh', '', 'hitam', '20x20', 12000.00, 15000.00, 35.00, 70, 11, NULL, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ospos_items` (`name`, `category`, `supplier_id`, `type_item`, `item_number`, `description`, `color`, `dimension`, `cost_price`, `unit_price`, `reorder_level`, `receiving_quantity`, `item_id`, `pic_id`, `allow_alt_description`, `is_serialized`, `deleted`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`) VALUES
	('Ngetes 1', 'kursi', NULL, 'Baik', 'gertyui', '', 'Merah', '20x20', 100000.00, 130000.00, 10.00, 30, 12, NULL, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ospos_items` (`name`, `category`, `supplier_id`, `type_item`, `item_number`, `description`, `color`, `dimension`, `cost_price`, `unit_price`, `reorder_level`, `receiving_quantity`, `item_id`, `pic_id`, `allow_alt_description`, `is_serialized`, `deleted`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`) VALUES
	('Ngetes 2', 'Meja', NULL, 'Baik', 'tyuqw', '', '', '', 100000.00, 130000.00, 1.00, 5, 13, NULL, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
/*!40000 ALTER TABLE `ospos_items` ENABLE KEYS */;

-- Dumping structure for table giripalma.ospos_items_taxes
DROP TABLE IF EXISTS `ospos_items_taxes`;
CREATE TABLE IF NOT EXISTS `ospos_items_taxes` (
  `item_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,2) NOT NULL,
  PRIMARY KEY (`item_id`,`name`,`percent`),
  CONSTRAINT `ospos_items_taxes_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table giripalma.ospos_items_taxes: ~4 rows (approximately)
/*!40000 ALTER TABLE `ospos_items_taxes` DISABLE KEYS */;
INSERT INTO `ospos_items_taxes` (`item_id`, `name`, `percent`) VALUES
	(5, 'Pajak Penjualan1', 10.00);
INSERT INTO `ospos_items_taxes` (`item_id`, `name`, `percent`) VALUES
	(6, 'Pajak Penjualan1', 10.00);
INSERT INTO `ospos_items_taxes` (`item_id`, `name`, `percent`) VALUES
	(7, 'Pajak Penjualan1', 10.00);
INSERT INTO `ospos_items_taxes` (`item_id`, `name`, `percent`) VALUES
	(10, 'Pajak Penjualan1', 10.00);
INSERT INTO `ospos_items_taxes` (`item_id`, `name`, `percent`) VALUES
	(13, 'Pajak Penjualan1', 10.00);
/*!40000 ALTER TABLE `ospos_items_taxes` ENABLE KEYS */;

-- Dumping structure for table giripalma.ospos_item_kits
DROP TABLE IF EXISTS `ospos_item_kits`;
CREATE TABLE IF NOT EXISTS `ospos_item_kits` (
  `item_kit_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`item_kit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table giripalma.ospos_item_kits: ~3 rows (approximately)
/*!40000 ALTER TABLE `ospos_item_kits` DISABLE KEYS */;
INSERT INTO `ospos_item_kits` (`item_kit_id`, `name`, `description`) VALUES
	(1, 'paket 1', '');
INSERT INTO `ospos_item_kits` (`item_kit_id`, `name`, `description`) VALUES
	(2, 'Paket Coba 1', 'Coba coba 1');
INSERT INTO `ospos_item_kits` (`item_kit_id`, `name`, `description`) VALUES
	(3, 'Meja Kursi', '');
/*!40000 ALTER TABLE `ospos_item_kits` ENABLE KEYS */;

-- Dumping structure for table giripalma.ospos_item_kit_items
DROP TABLE IF EXISTS `ospos_item_kit_items`;
CREATE TABLE IF NOT EXISTS `ospos_item_kit_items` (
  `item_kit_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` decimal(15,2) NOT NULL,
  PRIMARY KEY (`item_kit_id`,`item_id`,`quantity`),
  KEY `ospos_item_kit_items_ibfk_2` (`item_id`),
  CONSTRAINT `ospos_item_kit_items_ibfk_1` FOREIGN KEY (`item_kit_id`) REFERENCES `ospos_item_kits` (`item_kit_id`) ON DELETE CASCADE,
  CONSTRAINT `ospos_item_kit_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table giripalma.ospos_item_kit_items: ~5 rows (approximately)
/*!40000 ALTER TABLE `ospos_item_kit_items` DISABLE KEYS */;
INSERT INTO `ospos_item_kit_items` (`item_kit_id`, `item_id`, `quantity`) VALUES
	(1, 2, 1.00);
INSERT INTO `ospos_item_kit_items` (`item_kit_id`, `item_id`, `quantity`) VALUES
	(3, 2, 2.00);
INSERT INTO `ospos_item_kit_items` (`item_kit_id`, `item_id`, `quantity`) VALUES
	(1, 3, 1.00);
INSERT INTO `ospos_item_kit_items` (`item_kit_id`, `item_id`, `quantity`) VALUES
	(2, 4, 1.00);
INSERT INTO `ospos_item_kit_items` (`item_kit_id`, `item_id`, `quantity`) VALUES
	(3, 4, 1.00);
INSERT INTO `ospos_item_kit_items` (`item_kit_id`, `item_id`, `quantity`) VALUES
	(2, 6, 2.00);
/*!40000 ALTER TABLE `ospos_item_kit_items` ENABLE KEYS */;

-- Dumping structure for table giripalma.ospos_item_quantities
DROP TABLE IF EXISTS `ospos_item_quantities`;
CREATE TABLE IF NOT EXISTS `ospos_item_quantities` (
  `item_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_id`,`location_id`),
  KEY `item_id` (`item_id`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `ospos_item_quantities_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  CONSTRAINT `ospos_item_quantities_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `ospos_stock_locations` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table giripalma.ospos_item_quantities: ~124 rows (approximately)
/*!40000 ALTER TABLE `ospos_item_quantities` DISABLE KEYS */;
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(1, 1, 10);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(1, 2, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(1, 3, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(1, 4, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(1, 5, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(1, 6, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(1, 7, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(1, 8, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(1, 9, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(1, 10, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(2, 1, 20);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(2, 2, 4);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(2, 3, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(2, 4, 2);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(2, 5, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(2, 6, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(2, 7, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(2, 8, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(2, 9, 8);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(2, 10, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(3, 1, 14);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(3, 2, 2);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(3, 3, 2);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(3, 4, 2);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(3, 5, 1);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(3, 6, 2);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(3, 7, 2);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(3, 8, 2);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(3, 9, -1);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(3, 10, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(4, 1, 15);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(4, 2, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(4, 3, -2);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(4, 4, 1);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(4, 5, 2);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(4, 6, 1);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(4, 7, 1);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(4, 8, -1);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(4, 9, -1);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(4, 10, 1);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(5, 1, 60);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(5, 2, 3);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(5, 3, 4);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(5, 4, 5);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(5, 5, 5);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(5, 6, 5);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(5, 7, 5);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(5, 8, 4);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(5, 9, 4);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(5, 10, 5);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(6, 1, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(6, 2, 10);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(6, 3, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(6, 4, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(6, 5, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(6, 6, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(6, 7, 40);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(6, 8, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(6, 9, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(6, 10, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(7, 1, 18);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(7, 2, 1);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(7, 3, 1);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(7, 4, 1);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(7, 5, 1);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(7, 6, 1);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(7, 7, 1);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(7, 8, 1);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(7, 9, 10);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(7, 10, 1);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(8, 1, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(8, 2, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(8, 3, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(8, 4, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(8, 5, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(8, 6, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(8, 7, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(8, 8, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(8, 9, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(8, 10, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(9, 1, 50);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(9, 2, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(9, 3, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(9, 4, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(9, 5, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(9, 6, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(9, 7, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(9, 8, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(9, 9, 8);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(9, 10, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(10, 1, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(10, 2, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(10, 3, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(10, 4, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(10, 5, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(10, 6, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(10, 7, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(10, 8, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(10, 9, 5);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(10, 10, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(11, 1, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(11, 2, 65);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(11, 3, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(11, 4, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(11, 5, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(11, 6, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(11, 7, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(11, 8, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(11, 9, 70);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(11, 10, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(12, 1, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(12, 2, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(12, 3, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(12, 4, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(12, 5, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(12, 6, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(12, 7, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(12, 8, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(12, 9, 30);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(12, 10, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(13, 1, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(13, 2, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(13, 3, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(13, 4, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(13, 5, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(13, 6, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(13, 7, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(13, 8, 0);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(13, 9, 5);
INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(13, 10, 0);
/*!40000 ALTER TABLE `ospos_item_quantities` ENABLE KEYS */;

-- Dumping structure for table giripalma.ospos_menu
DROP TABLE IF EXISTS `ospos_menu`;
CREATE TABLE IF NOT EXISTS `ospos_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `module_id` varchar(255) DEFAULT NULL,
  `depth_level` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL,
  `sort_number` int(11) DEFAULT NULL,
  `menu_identifier` varchar(100) DEFAULT NULL,
  `font_awesome_icon` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- Dumping data for table giripalma.ospos_menu: ~48 rows (approximately)
/*!40000 ALTER TABLE `ospos_menu` DISABLE KEYS */;
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(1, 'Item', NULL, 0, 0, '#', 1, 'items', 'fa fa-hdd-o');
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(3, 'Penerimaan', 'receivings', 0, 0, 'receivings', 2, 'receivings', 'fa fa-truck');
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(4, 'Penjualan', NULL, 0, 0, '#', 3, 'sales', 'fa fa-shopping-cart');
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(5, 'Produksi', NULL, 0, 0, '#', 4, 'productions', 'fa fa-puzzle-piece');
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(6, 'Pemasok', 'suppliers', 0, 0, 'suppliers', 5, 'suppliers', 'fa fa-retweet');
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(7, 'Pelanggan', NULL, 0, 0, '#', 6, 'customers', 'fa fa-users');
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(8, 'Laporan', NULL, 0, 0, '#', 7, 'reports', 'fa fa-file-text-o');
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(9, 'Manajemen Pengguna', 'employees', 0, 0, 'employees', 8, 'employees', 'fa fa-users');
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(10, 'Konfigurasi', 'config', 0, 0, 'config', 9, 'config', 'fa fa-cogs');
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(11, 'Bahan Baku', 'raw_materials', 1, 1, 'raw_materials', 1, 'raw_materials', 'fa fa-tint');
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(12, 'Item Jual', 'items', 1, 1, 'items', 2, 'items', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(13, 'Paket Item Jual', 'item_kits', 1, 1, 'item_kits', 3, 'item_kits', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(14, 'Surat Pesanan', 'sales', 1, 4, 'sales', 1, 'sales', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(15, 'Surat Jalan', 'sales', 1, 4, 'shippings', 2, 'shipping', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(16, 'Input Proyek', 'productions', 1, 5, 'productions/project', 1, 'project', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(17, 'Pemantauan', 'productions', 1, 5, 'productions/supervise', 2, 'supervise', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(18, 'Produk Waste/Cacat', 'productions', 1, 5, 'productions/waste', 3, 'waste', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(19, 'Data', 'customers', 1, 7, 'customers', 1, 'customers', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(20, 'Gift Card', 'customers', 1, 7, 'giftcards', 2, 'gift_cards', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(21, 'Laporan Grafik', 'reports', 1, 8, '#', 1, 'graphical_report', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(22, 'Ringkasan Laporan', 'reports', 1, 8, '#', 2, 'summary_report', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(23, 'Rincian Laporan', 'reports', 1, 8, '#', 3, 'detail_report', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(24, 'Laporan Persediaan', 'reports', 1, 8, '#', 4, 'stock_report', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(25, 'Penjualan', 'reports', 2, 21, 'reports/graphical_summary_sales', 1, 'graphical_summary_sales', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(26, 'Kategori', 'reports', 2, 21, 'reports/graphical_summary_categories', 2, 'graphical_summary_categories', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(27, 'Pelanggan', 'reports', 2, 21, 'reports/graphical_summary_customers', 3, 'graphical_summary_customers', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(28, 'Diskon', 'reports', 2, 21, 'reports/graphical_summary_discounts', 4, 'graphical_summary_discounts', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(29, 'Produk/Item', 'reports', 2, 21, 'reports/graphical_summary_items', 5, 'graphical_summary_items', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(30, 'Pembayaran', 'reports', 2, 21, 'reports/graphical_summary_payments', 6, 'graphical_summary_payments', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(31, 'Karyawan', 'reports', 2, 21, 'reports/graphical_summary_employees', 7, 'graphical_summary_employees', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(32, 'Pemasok', 'reports', 2, 21, 'reports/graphical_summary_suppliers', 8, 'graphical_summary_suppliers', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(33, 'Pajak', 'reports', 2, 21, 'reports/graphical_summary_taxes', 9, 'graphical_summary_taxes', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(40, 'Penjualan', 'reports', 2, 22, 'reports/summary_sales', 1, 'summary_sales', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(41, 'Kategori', 'reports', 2, 22, 'reports/summary_categories', 2, 'summary_categories', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(42, 'Pelanggan', 'reports', 2, 22, 'reports/summary_customers', 3, 'summary_customers', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(43, 'Diskon', 'reports', 2, 22, 'reports/summary_discounts', 4, 'summary_discounts', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(44, 'Produk/Item', 'reports', 2, 22, 'reports/summary_items', 5, 'summary_items', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(45, 'Pembayaran', 'reports', 2, 22, 'reports/summary_payments', 6, 'summary_payments', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(46, 'Karyawan', 'reports', 2, 22, 'reports/summary_employees', 7, 'summary_employees', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(47, 'Pemasok', 'reports', 2, 22, 'reports/summary_suppliers', 8, 'summary_suppliers', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(48, 'Pajak', 'reports', 2, 22, 'reports/summary_taxes', 9, 'summary_taxes', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(55, 'Penjualan', 'reports', 2, 23, 'reports/detailed_sales', 1, 'detailed_sales', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(56, 'Barang Masuk', 'reports', 2, 23, 'reports/detailed_receivings', 2, 'detailed_receivings', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(57, 'Pelanggan', 'reports', 2, 23, 'reports/specific_customer', 3, 'specific_customer', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(58, 'Diskon', 'reports', 2, 23, 'reports/specific_discount', 4, 'specific_discount', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(59, 'Karyawan', 'reports', 2, 23, 'reports/specific_employee', 5, 'specific_employee', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(62, 'Persediaan Rendah', 'reports', 2, 24, 'reports/inventory_low', 1, 'inventory_low', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(63, 'Ringkasan Persediaan', 'reports', 2, 24, 'reports/inventory_summary', 2, 'inventory_summary', NULL);
/*!40000 ALTER TABLE `ospos_menu` ENABLE KEYS */;

-- Dumping structure for table giripalma.ospos_menu_copy
DROP TABLE IF EXISTS `ospos_menu_copy`;
CREATE TABLE IF NOT EXISTS `ospos_menu_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL,
  `sort_number` int(11) DEFAULT NULL,
  `menu_identifier` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dumping data for table giripalma.ospos_menu_copy: ~31 rows (approximately)
/*!40000 ALTER TABLE `ospos_menu_copy` DISABLE KEYS */;
INSERT INTO `ospos_menu_copy` (`id`, `name`, `module`, `parent_id`, `href`, `sort_number`, `menu_identifier`) VALUES
	(1, 'Laporan Grafik', 'reports', NULL, '#', 1, 'graphical_report');
INSERT INTO `ospos_menu_copy` (`id`, `name`, `module`, `parent_id`, `href`, `sort_number`, `menu_identifier`) VALUES
	(2, 'Ringkasan Laporan', 'reports', NULL, '#', 2, 'summary_report');
INSERT INTO `ospos_menu_copy` (`id`, `name`, `module`, `parent_id`, `href`, `sort_number`, `menu_identifier`) VALUES
	(3, 'Rincian Laporan', 'reports', NULL, '#', 3, 'detail_report');
INSERT INTO `ospos_menu_copy` (`id`, `name`, `module`, `parent_id`, `href`, `sort_number`, `menu_identifier`) VALUES
	(4, 'Laporan Persediaan', 'reports', NULL, '#', 4, 'stock_report');
INSERT INTO `ospos_menu_copy` (`id`, `name`, `module`, `parent_id`, `href`, `sort_number`, `menu_identifier`) VALUES
	(5, 'Penjualan', NULL, 1, 'reports/graphical_summary_sales', 1, 'graphical_summary_sales');
INSERT INTO `ospos_menu_copy` (`id`, `name`, `module`, `parent_id`, `href`, `sort_number`, `menu_identifier`) VALUES
	(6, 'Kategori', NULL, 1, 'reports/graphical_summary_categories', 2, 'graphical_summary_categories');
INSERT INTO `ospos_menu_copy` (`id`, `name`, `module`, `parent_id`, `href`, `sort_number`, `menu_identifier`) VALUES
	(7, 'Pelanggan', NULL, 1, 'reports/graphical_summary_customers', 3, 'graphical_summary_customers');
INSERT INTO `ospos_menu_copy` (`id`, `name`, `module`, `parent_id`, `href`, `sort_number`, `menu_identifier`) VALUES
	(8, 'Diskon', NULL, 1, 'reports/graphical_summary_discounts', 4, 'graphical_summary_discounts');
INSERT INTO `ospos_menu_copy` (`id`, `name`, `module`, `parent_id`, `href`, `sort_number`, `menu_identifier`) VALUES
	(9, 'Produk/Item', NULL, 1, 'reports/graphical_summary_items', 5, 'graphical_summary_items');
INSERT INTO `ospos_menu_copy` (`id`, `name`, `module`, `parent_id`, `href`, `sort_number`, `menu_identifier`) VALUES
	(10, 'Pembayaran', NULL, 1, 'reports/graphical_summary_payments', 6, 'graphical_summary_payments');
INSERT INTO `ospos_menu_copy` (`id`, `name`, `module`, `parent_id`, `href`, `sort_number`, `menu_identifier`) VALUES
	(11, 'Karyawan', NULL, 1, 'reports/graphical_summary_employees', 7, 'graphical_summary_employees');
INSERT INTO `ospos_menu_copy` (`id`, `name`, `module`, `parent_id`, `href`, `sort_number`, `menu_identifier`) VALUES
	(12, 'Pemasok', NULL, 1, 'reports/graphical_summary_suppliers', 8, 'graphical_summary_suppliers');
INSERT INTO `ospos_menu_copy` (`id`, `name`, `module`, `parent_id`, `href`, `sort_number`, `menu_identifier`) VALUES
	(13, 'Pajak', NULL, 1, 'reports/graphical_summary_taxes', 9, 'graphical_summary_taxes');
INSERT INTO `ospos_menu_copy` (`id`, `name`, `module`, `parent_id`, `href`, `sort_number`, `menu_identifier`) VALUES
	(14, 'Penjualan', NULL, 2, 'reports/summary_sales', 1, 'summary_sales');
INSERT INTO `ospos_menu_copy` (`id`, `name`, `module`, `parent_id`, `href`, `sort_number`, `menu_identifier`) VALUES
	(15, 'Kategori', NULL, 2, 'reports/summary_categories', 2, 'summary_categories');
INSERT INTO `ospos_menu_copy` (`id`, `name`, `module`, `parent_id`, `href`, `sort_number`, `menu_identifier`) VALUES
	(16, 'Pelanggan', NULL, 2, 'reports/summary_customers', 3, 'summary_customers');
INSERT INTO `ospos_menu_copy` (`id`, `name`, `module`, `parent_id`, `href`, `sort_number`, `menu_identifier`) VALUES
	(17, 'Diskon', NULL, 2, 'reports/summary_discounts', 4, 'summary_discounts');
INSERT INTO `ospos_menu_copy` (`id`, `name`, `module`, `parent_id`, `href`, `sort_number`, `menu_identifier`) VALUES
	(18, 'Produk/Item', NULL, 2, 'reports/summary_items', 5, 'summary_items');
INSERT INTO `ospos_menu_copy` (`id`, `name`, `module`, `parent_id`, `href`, `sort_number`, `menu_identifier`) VALUES
	(19, 'Pembayaran', NULL, 2, 'reports/summary_payments', 6, 'summary_payments');
INSERT INTO `ospos_menu_copy` (`id`, `name`, `module`, `parent_id`, `href`, `sort_number`, `menu_identifier`) VALUES
	(20, 'Karyawan', NULL, 2, 'reports/summary_employees', 7, 'summary_employees');
INSERT INTO `ospos_menu_copy` (`id`, `name`, `module`, `parent_id`, `href`, `sort_number`, `menu_identifier`) VALUES
	(21, 'Pemasok', NULL, 2, 'reports/summary_suppliers', 8, 'summary_suppliers');
INSERT INTO `ospos_menu_copy` (`id`, `name`, `module`, `parent_id`, `href`, `sort_number`, `menu_identifier`) VALUES
	(22, 'Pajak', NULL, 2, 'reports/summary_taxes', 9, 'summary_taxes');
INSERT INTO `ospos_menu_copy` (`id`, `name`, `module`, `parent_id`, `href`, `sort_number`, `menu_identifier`) VALUES
	(29, 'Penjualan', NULL, 3, 'reports/detailed_sales', 1, 'detailed_sales');
INSERT INTO `ospos_menu_copy` (`id`, `name`, `module`, `parent_id`, `href`, `sort_number`, `menu_identifier`) VALUES
	(30, 'Barang Masuk', NULL, 3, 'reports/detailed_receivings', 2, 'detailed_receivings');
INSERT INTO `ospos_menu_copy` (`id`, `name`, `module`, `parent_id`, `href`, `sort_number`, `menu_identifier`) VALUES
	(31, 'Pelanggan', NULL, 3, 'reports/specific_customer', 3, 'specific_customer');
INSERT INTO `ospos_menu_copy` (`id`, `name`, `module`, `parent_id`, `href`, `sort_number`, `menu_identifier`) VALUES
	(32, 'Diskon', NULL, 3, 'reports/specific_discount', 4, 'specific_discount');
INSERT INTO `ospos_menu_copy` (`id`, `name`, `module`, `parent_id`, `href`, `sort_number`, `menu_identifier`) VALUES
	(33, 'Karyawan', NULL, 3, 'reports/specific_employee', 5, 'specific_employee');
INSERT INTO `ospos_menu_copy` (`id`, `name`, `module`, `parent_id`, `href`, `sort_number`, `menu_identifier`) VALUES
	(34, 'Persediaan Rendah', NULL, 4, 'reports/inventory_low', 1, 'inventory_low');
INSERT INTO `ospos_menu_copy` (`id`, `name`, `module`, `parent_id`, `href`, `sort_number`, `menu_identifier`) VALUES
	(35, 'Ringkasan Persediaan', NULL, 4, 'reports/inventory_summary', 2, 'inventory_summary');
INSERT INTO `ospos_menu_copy` (`id`, `name`, `module`, `parent_id`, `href`, `sort_number`, `menu_identifier`) VALUES
	(36, 'Surat Pesanan', 'sales', NULL, 'sales', 1, 'sales_order');
INSERT INTO `ospos_menu_copy` (`id`, `name`, `module`, `parent_id`, `href`, `sort_number`, `menu_identifier`) VALUES
	(37, 'Surat Jalan', 'sales', NULL, 'shipments', 2, 'shipment');
/*!40000 ALTER TABLE `ospos_menu_copy` ENABLE KEYS */;

-- Dumping structure for table giripalma.ospos_modules
DROP TABLE IF EXISTS `ospos_modules`;
CREATE TABLE IF NOT EXISTS `ospos_modules` (
  `name_lang_key` varchar(255) NOT NULL,
  `desc_lang_key` varchar(255) NOT NULL,
  `sort` int(10) NOT NULL,
  `module_id` varchar(255) NOT NULL,
  `font_awesome_icon` varchar(255) NOT NULL,
  `sort_number` int(11) NOT NULL,
  `href` text NOT NULL,
  PRIMARY KEY (`module_id`),
  UNIQUE KEY `desc_lang_key` (`desc_lang_key`),
  UNIQUE KEY `name_lang_key` (`name_lang_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table giripalma.ospos_modules: ~13 rows (approximately)
/*!40000 ALTER TABLE `ospos_modules` DISABLE KEYS */;
INSERT INTO `ospos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`, `font_awesome_icon`, `sort_number`, `href`) VALUES
	('module_config', 'module_config_desc', 100, 'config', 'fa fa-cogs', 10, 'config');
INSERT INTO `ospos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`, `font_awesome_icon`, `sort_number`, `href`) VALUES
	('module_customers', 'module_customers_desc', 10, 'customers', 'fa fa-users', 3, 'customers');
INSERT INTO `ospos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`, `font_awesome_icon`, `sort_number`, `href`) VALUES
	('module_employees', 'module_employees_desc', 80, 'employees', 'fa fa-users', 8, 'employees');
INSERT INTO `ospos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`, `font_awesome_icon`, `sort_number`, `href`) VALUES
	('module_giftcards', 'module_giftcards_desc', 90, 'giftcards', 'fa fa-gift', 7, 'giftcards');
INSERT INTO `ospos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`, `font_awesome_icon`, `sort_number`, `href`) VALUES
	('module_items', 'module_items_desc', 20, 'items', 'fa fa-hdd-o', 1, 'items');
INSERT INTO `ospos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`, `font_awesome_icon`, `sort_number`, `href`) VALUES
	('module_item_kits', 'module_item_kits_desc', 30, 'item_kits', 'ion ion-cube', 2, 'item_kits');
INSERT INTO `ospos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`, `font_awesome_icon`, `sort_number`, `href`) VALUES
	('module_productions', 'module_productions_desc', 130, 'productions', 'fa fa-puzzle', 13, 'productions');
INSERT INTO `ospos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`, `font_awesome_icon`, `sort_number`, `href`) VALUES
	('module_raw_materials', 'module_raw_materials_desc', 110, 'raw_materials', 'fa fa-tint', 11, 'raw_materials');
INSERT INTO `ospos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`, `font_awesome_icon`, `sort_number`, `href`) VALUES
	('module_receivings', 'module_receivings_desc', 60, 'receivings', 'fa fa-truck', 6, 'receivings');
INSERT INTO `ospos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`, `font_awesome_icon`, `sort_number`, `href`) VALUES
	('module_reports', 'module_reports_desc', 50, 'reports', 'fa fa-file-text-o', 9, 'reports');
INSERT INTO `ospos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`, `font_awesome_icon`, `sort_number`, `href`) VALUES
	('module_sales', 'module_sales_desc', 70, 'sales', 'fa fa-shopping-cart', 4, 'sales');
INSERT INTO `ospos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`, `font_awesome_icon`, `sort_number`, `href`) VALUES
	('module_shippings', 'module_shippings_desc', 120, 'shippings', 'fa fa-truck fa-flip-horizontal', 12, 'shippings');
INSERT INTO `ospos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`, `font_awesome_icon`, `sort_number`, `href`) VALUES
	('module_suppliers', 'module_suppliers_desc', 40, 'suppliers', 'fa fa-retweet', 5, 'suppliers');
/*!40000 ALTER TABLE `ospos_modules` ENABLE KEYS */;

-- Dumping structure for table giripalma.ospos_people
DROP TABLE IF EXISTS `ospos_people`;
CREATE TABLE IF NOT EXISTS `ospos_people` (
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
  `person_id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Dumping data for table giripalma.ospos_people: ~15 rows (approximately)
/*!40000 ALTER TABLE `ospos_people` DISABLE KEYS */;
INSERT INTO `ospos_people` (`first_name`, `last_name`, `id_number`, `gender`, `phone_number`, `email`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `comments`, `person_id`) VALUES
	('WM', 'Dev', '78347900', NULL, '555-555-5555', 'admin@pappastech.com', 'Address 1', '', '', '', '', '', '', 1);
INSERT INTO `ospos_people` (`first_name`, `last_name`, `id_number`, `gender`, `phone_number`, `email`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `comments`, `person_id`) VALUES
	('Dicky', 'Gimbobb', '', 1, '', '', '', '', '', '', '', '', '', 2);
INSERT INTO `ospos_people` (`first_name`, `last_name`, `id_number`, `gender`, `phone_number`, `email`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `comments`, `person_id`) VALUES
	('Iwap', 'Saputra', '', 1, '', '', '', '', '', '', '', '', '', 3);
INSERT INTO `ospos_people` (`first_name`, `last_name`, `id_number`, `gender`, `phone_number`, `email`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `comments`, `person_id`) VALUES
	('Ocky', 'Harliansyah', '', 1, '', '', '', '', '', '', '', '', '', 4);
INSERT INTO `ospos_people` (`first_name`, `last_name`, `id_number`, `gender`, `phone_number`, `email`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `comments`, `person_id`) VALUES
	('novand', 'Dwiki', '', 1, '085791390018', 'novand@gmail.com', 'surabaya', 'mojokerto', 'surabaya', 'jawa timur', '60243', 'indonesia', '', 5);
INSERT INTO `ospos_people` (`first_name`, `last_name`, `id_number`, `gender`, `phone_number`, `email`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `comments`, `person_id`) VALUES
	('', '', '', 0, '', '', '', '', '', '', '', '', '', 6);
INSERT INTO `ospos_people` (`first_name`, `last_name`, `id_number`, `gender`, `phone_number`, `email`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `comments`, `person_id`) VALUES
	('Bri', 'Oooo', '', 0, '', '', '', '', '', '', '', '', '', 7);
INSERT INTO `ospos_people` (`first_name`, `last_name`, `id_number`, `gender`, `phone_number`, `email`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `comments`, `person_id`) VALUES
	('Coba', 'Customer', '', 1, '', '', '', '', '', '', '', '', '', 8);
INSERT INTO `ospos_people` (`first_name`, `last_name`, `id_number`, `gender`, `phone_number`, `email`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `comments`, `person_id`) VALUES
	('Coba', 'Dwiki', '', 1, '', '', '', '', '', '', '', '', '', 9);
INSERT INTO `ospos_people` (`first_name`, `last_name`, `id_number`, `gender`, `phone_number`, `email`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `comments`, `person_id`) VALUES
	('Coba', 'Pasok 1', '', 1, '008888888', 'coba.pasok@gmail.com', 'Jl. Muruririririri', 'Burirkkkk', 'Surabaya', 'H', '232323232', 'Indonesia', 'gggeeeeg', 10);
INSERT INTO `ospos_people` (`first_name`, `last_name`, `id_number`, `gender`, `phone_number`, `email`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `comments`, `person_id`) VALUES
	('Coba', 'Pasok 2', '', 0, '', '', '', '', '', '', '', '', '', 11);
INSERT INTO `ospos_people` (`first_name`, `last_name`, `id_number`, `gender`, `phone_number`, `email`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `comments`, `person_id`) VALUES
	('Pasooo', 'Coba', '', 0, '', '', '', '', '', '', '', '', '', 12);
INSERT INTO `ospos_people` (`first_name`, `last_name`, `id_number`, `gender`, `phone_number`, `email`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `comments`, `person_id`) VALUES
	('aha', 'haha', '', 0, '', '', '', '', '', '', '', '', '', 13);
INSERT INTO `ospos_people` (`first_name`, `last_name`, `id_number`, `gender`, `phone_number`, `email`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `comments`, `person_id`) VALUES
	('ehehee', 'hahahaha', '', 0, '', '', '', '', '', '', '', '', '', 14);
INSERT INTO `ospos_people` (`first_name`, `last_name`, `id_number`, `gender`, `phone_number`, `email`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `comments`, `person_id`) VALUES
	('gjfhj', 'fhjfhjh', '', 0, '', '', '', '', '', '', '', '', '', 15);
INSERT INTO `ospos_people` (`first_name`, `last_name`, `id_number`, `gender`, `phone_number`, `email`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `comments`, `person_id`) VALUES
	('Halo', 'Ocky', '', 1, '', '', '', '', '', '', '', '', '', 16);
/*!40000 ALTER TABLE `ospos_people` ENABLE KEYS */;

-- Dumping structure for table giripalma.ospos_permissions
DROP TABLE IF EXISTS `ospos_permissions`;
CREATE TABLE IF NOT EXISTS `ospos_permissions` (
  `permission_id` varchar(255) NOT NULL,
  `module_id` varchar(255) NOT NULL,
  `location_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`permission_id`),
  KEY `module_id` (`module_id`),
  KEY `ospos_permissions_ibfk_2` (`location_id`),
  CONSTRAINT `ospos_permissions_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `ospos_modules` (`module_id`) ON DELETE CASCADE,
  CONSTRAINT `ospos_permissions_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `ospos_stock_locations` (`location_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table giripalma.ospos_permissions: ~52 rows (approximately)
/*!40000 ALTER TABLE `ospos_permissions` DISABLE KEYS */;
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('config', 'config', NULL);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('customers', 'customers', NULL);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('employees', 'employees', NULL);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('giftcards', 'giftcards', NULL);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('items', 'items', NULL);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('items_BATOS - Lippo Plaza Batu', 'items', 9);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('items_GP1 - Pusat', 'items', 2);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('items_GP2 - Toko Utama', 'items', 3);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('items_GP3 - Gudang Panel', 'items', 4);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('items_GP4 - Gudang Produksi Sofa', 'items', 5);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('items_GP5 - Gudang Produksi HPL', 'items', 6);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('items_MOG2 - Stand Depan Giant', 'items', 7);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('items_MOG3 - Stand Depan Foodcourt', 'items', 8);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('items_MOGATR - Atrium MOG', 'items', 10);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('items_stock', 'items', 1);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('item_kits', 'item_kits', NULL);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('productions', 'productions', NULL);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('raw_materials', 'raw_materials', NULL);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('receivings', 'receivings', NULL);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('receivings_BATOS - Lippo Plaza Batu', 'receivings', 9);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('receivings_GP1 - Pusat', 'receivings', 2);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('receivings_GP2 - Toko Utama', 'receivings', 3);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('receivings_GP3 - Gudang Panel', 'receivings', 4);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('receivings_GP4 - Gudang Produksi Sofa', 'receivings', 5);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('receivings_GP5 - Gudang Produksi HPL', 'receivings', 6);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('receivings_MOG2 - Stand Depan Giant', 'receivings', 7);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('receivings_MOG3 - Stand Depan Foodcourt', 'receivings', 8);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('receivings_MOGATR - Atrium MOG', 'receivings', 10);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('receivings_stock', 'receivings', 1);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('reports', 'reports', NULL);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('reports_categories', 'reports', NULL);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('reports_customers', 'reports', NULL);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('reports_discounts', 'reports', NULL);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('reports_employees', 'reports', NULL);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('reports_inventory', 'reports', NULL);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('reports_items', 'reports', NULL);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('reports_payments', 'reports', NULL);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('reports_receivings', 'reports', NULL);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('reports_sales', 'reports', NULL);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('reports_suppliers', 'reports', NULL);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('reports_taxes', 'reports', NULL);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('sales', 'sales', NULL);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('sales_BATOS - Lippo Plaza Batu', 'sales', 9);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('sales_GP1 - Pusat', 'sales', 2);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('sales_GP2 - Toko Utama', 'sales', 3);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('sales_GP3 - Gudang Panel', 'sales', 4);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('sales_GP4 - Gudang Produksi Sofa', 'sales', 5);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('sales_GP5 - Gudang Produksi HPL', 'sales', 6);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('sales_MOG2 - Stand Depan Giant', 'sales', 7);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('sales_MOG3 - Stand Depan Foodcourt', 'sales', 8);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('sales_MOGATR - Atrium MOG', 'sales', 10);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('sales_stock', 'sales', 1);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('shippings', 'shippings', NULL);
INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
	('suppliers', 'suppliers', NULL);
/*!40000 ALTER TABLE `ospos_permissions` ENABLE KEYS */;

-- Dumping structure for table giripalma.ospos_raw_materials
DROP TABLE IF EXISTS `ospos_raw_materials`;
CREATE TABLE IF NOT EXISTS `ospos_raw_materials` (
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
  `item_id` int(10) NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `item_number` (`item_number`),
  KEY `supplier_id` (`supplier_id`),
  CONSTRAINT `ospos_raw_materials_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `ospos_suppliers` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dumping data for table giripalma.ospos_raw_materials: ~4 rows (approximately)
/*!40000 ALTER TABLE `ospos_raw_materials` DISABLE KEYS */;
INSERT INTO `ospos_raw_materials` (`name`, `category`, `supplier_id`, `type_item`, `item_number`, `description`, `color`, `dimension`, `unit_metric`, `cost_price`, `unit_price`, `reorder_level`, `receiving_quantity`, `item_id`, `pic_id`, `allow_alt_description`, `is_serialized`, `deleted`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`) VALUES
	('Kayu Jati', 'Kayu', NULL, '0', '6354749', '', '', '', '', 1000000.00, 2000000.00, 10.00, 0, 14, NULL, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ospos_raw_materials` (`name`, `category`, `supplier_id`, `type_item`, `item_number`, `description`, `color`, `dimension`, `unit_metric`, `cost_price`, `unit_price`, `reorder_level`, `receiving_quantity`, `item_id`, `pic_id`, `allow_alt_description`, `is_serialized`, `deleted`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`) VALUES
	('Coba', 'Kain', NULL, '0', '890', '', '', '', '', 10000.00, 20000.00, 4.00, 0, 15, NULL, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ospos_raw_materials` (`name`, `category`, `supplier_id`, `type_item`, `item_number`, `description`, `color`, `dimension`, `unit_metric`, `cost_price`, `unit_price`, `reorder_level`, `receiving_quantity`, `item_id`, `pic_id`, `allow_alt_description`, `is_serialized`, `deleted`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`) VALUES
	('Coba 2', 'Kayu', NULL, '0', '6474950', '', 'Manis', '', '', 90000.00, 100000.00, 2.00, 0, 16, NULL, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `ospos_raw_materials` (`name`, `category`, `supplier_id`, `type_item`, `item_number`, `description`, `color`, `dimension`, `unit_metric`, `cost_price`, `unit_price`, `reorder_level`, `receiving_quantity`, `item_id`, `pic_id`, `allow_alt_description`, `is_serialized`, `deleted`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`) VALUES
	('Coba 3', 'Kayu', NULL, 'Baik', '878787', '', 'Merah', '', 'Kg', 20000.00, 0.00, 10.00, 0, 17, NULL, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
/*!40000 ALTER TABLE `ospos_raw_materials` ENABLE KEYS */;

-- Dumping structure for table giripalma.ospos_raw_material_quantities
DROP TABLE IF EXISTS `ospos_raw_material_quantities`;
CREATE TABLE IF NOT EXISTS `ospos_raw_material_quantities` (
  `item_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_id`,`location_id`),
  KEY `item_id` (`item_id`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `ospos_raw_material_quantities_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_raw_materials` (`item_id`),
  CONSTRAINT `ospos_raw_material_quantities_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `ospos_stock_locations` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dumping data for table giripalma.ospos_raw_material_quantities: ~35 rows (approximately)
/*!40000 ALTER TABLE `ospos_raw_material_quantities` DISABLE KEYS */;
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(14, 1, 20);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(14, 2, 0);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(14, 3, 0);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(14, 4, 0);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(14, 5, 0);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(14, 6, 50);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(14, 7, 0);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(14, 8, 0);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(14, 9, 0);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(14, 10, 0);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(15, 1, 10);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(15, 2, 0);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(15, 3, 0);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(15, 4, 0);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(15, 5, 0);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(15, 6, 0);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(15, 7, 0);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(15, 8, 0);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(15, 9, 3);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(15, 10, 0);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(16, 1, 10);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(16, 2, 0);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(16, 3, 0);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(16, 4, 0);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(16, 5, 0);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(16, 6, 0);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(16, 7, 0);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(16, 8, 0);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(16, 9, 0);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(16, 10, 0);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(17, 1, 0);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(17, 2, 0);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(17, 3, 0);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(17, 4, 0);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(17, 5, 0);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(17, 6, 0);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(17, 7, 0);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(17, 8, 0);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(17, 9, 0);
INSERT INTO `ospos_raw_material_quantities` (`item_id`, `location_id`, `quantity`) VALUES
	(17, 10, 0);
/*!40000 ALTER TABLE `ospos_raw_material_quantities` ENABLE KEYS */;

-- Dumping structure for table giripalma.ospos_receivings
DROP TABLE IF EXISTS `ospos_receivings`;
CREATE TABLE IF NOT EXISTS `ospos_receivings` (
  `receiving_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `supplier_id` int(10) DEFAULT NULL,
  `employee_id` int(10) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `receiving_id` int(10) NOT NULL AUTO_INCREMENT,
  `payment_type` varchar(20) DEFAULT NULL,
  `invoice_number` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`receiving_id`),
  UNIQUE KEY `invoice_number` (`invoice_number`),
  KEY `supplier_id` (`supplier_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `ospos_receivings_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`),
  CONSTRAINT `ospos_receivings_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `ospos_suppliers` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table giripalma.ospos_receivings: ~2 rows (approximately)
/*!40000 ALTER TABLE `ospos_receivings` DISABLE KEYS */;
INSERT INTO `ospos_receivings` (`receiving_time`, `supplier_id`, `employee_id`, `comment`, `receiving_id`, `payment_type`, `invoice_number`) VALUES
	('2016-02-15 20:29:21', 4, 1, '', 1, 'Tunai', '0');
INSERT INTO `ospos_receivings` (`receiving_time`, `supplier_id`, `employee_id`, `comment`, `receiving_id`, `payment_type`, `invoice_number`) VALUES
	('2016-02-16 14:34:00', NULL, 1, '', 2, '0', NULL);
/*!40000 ALTER TABLE `ospos_receivings` ENABLE KEYS */;

-- Dumping structure for table giripalma.ospos_receivings_items
DROP TABLE IF EXISTS `ospos_receivings_items`;
CREATE TABLE IF NOT EXISTS `ospos_receivings_items` (
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
  `receiving_quantity` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`receiving_id`,`item_id`,`line`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `ospos_receivings_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  CONSTRAINT `ospos_receivings_items_ibfk_2` FOREIGN KEY (`receiving_id`) REFERENCES `ospos_receivings` (`receiving_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table giripalma.ospos_receivings_items: ~3 rows (approximately)
/*!40000 ALTER TABLE `ospos_receivings_items` DISABLE KEYS */;
INSERT INTO `ospos_receivings_items` (`receiving_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`, `receiving_quantity`) VALUES
	(1, 6, '', '0', 1, 4.00, 3000000.00, 3000000.00, 0.00, 7, 10);
INSERT INTO `ospos_receivings_items` (`receiving_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`, `receiving_quantity`) VALUES
	(2, 4, '', '', 1, 1.00, 100000.00, 100000.00, 0.00, 5, 0);
INSERT INTO `ospos_receivings_items` (`receiving_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`, `receiving_quantity`) VALUES
	(2, 4, '', '', 2, -1.00, 100000.00, 100000.00, 0.00, 3, 0);
/*!40000 ALTER TABLE `ospos_receivings_items` ENABLE KEYS */;

-- Dumping structure for table giripalma.ospos_sales
DROP TABLE IF EXISTS `ospos_sales`;
CREATE TABLE IF NOT EXISTS `ospos_sales` (
  `sale_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int(10) DEFAULT NULL,
  `employee_id` int(10) NOT NULL DEFAULT '0',
  `sales_person_id` int(10) NOT NULL DEFAULT '1',
  `comment` text NOT NULL,
  `invoice_number` varchar(32) DEFAULT NULL,
  `sale_id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sale_id`),
  UNIQUE KEY `invoice_number` (`invoice_number`),
  KEY `customer_id` (`customer_id`),
  KEY `employee_id` (`employee_id`),
  KEY `sale_time` (`sale_time`),
  KEY `FK_ospos_sales_ospos_employees` (`sales_person_id`),
  CONSTRAINT `FK_ospos_sales_ospos_employees` FOREIGN KEY (`sales_person_id`) REFERENCES `ospos_employees` (`person_id`),
  CONSTRAINT `ospos_sales_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`),
  CONSTRAINT `ospos_sales_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `ospos_customers` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- Dumping data for table giripalma.ospos_sales: ~39 rows (approximately)
/*!40000 ALTER TABLE `ospos_sales` DISABLE KEYS */;
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-01-27 02:12:18', NULL, 1, 1, '', NULL, 1);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-01-27 22:32:53', NULL, 1, 1, '', NULL, 2);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-01-28 02:40:39', NULL, 1, 1, '', NULL, 3);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-02-01 01:01:04', NULL, 1, 1, '', '0', 4);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-02-01 22:04:55', NULL, 1, 1, '', '1', 5);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-02-03 02:43:01', NULL, 1, 1, '', NULL, 6);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-02-03 02:46:39', NULL, 1, 1, '', NULL, 7);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-02-05 01:14:21', NULL, 1, 1, '', NULL, 8);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-02-05 01:48:58', NULL, 1, 1, '', '2', 9);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-02-10 20:19:47', 2, 1, 1, '', NULL, 10);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-02-10 20:53:34', 2, 1, 1, '', NULL, 11);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-02-14 05:25:54', 3, 1, 1, '', '3', 12);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-02-14 05:40:30', NULL, 1, 1, '', '4', 13);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-02-16 14:24:54', NULL, 1, 1, '', 'SP-0006', 14);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-02-22 14:45:36', 5, 1, 1, '', NULL, 15);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-02-22 14:58:35', NULL, 1, 1, '', NULL, 16);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-02-22 16:11:50', NULL, 1, 1, '', NULL, 17);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-02-22 16:27:22', NULL, 1, 1, '', '6', 18);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-02-22 16:29:31', NULL, 1, 1, '', '7', 19);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-02-22 16:40:03', NULL, 1, 1, '', '8', 20);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-02-23 11:09:43', NULL, 1, 1, '', 'nota NO 1', 21);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-02-23 11:10:48', NULL, 1, 1, '', NULL, 22);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-02-25 12:00:38', NULL, 1, 1, '', NULL, 23);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-02-25 12:03:03', NULL, 1, 1, '', NULL, 24);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-02-25 12:03:46', NULL, 1, 1, '', NULL, 25);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-02-25 12:04:48', NULL, 1, 1, '', '10', 26);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-02-25 12:05:48', NULL, 1, 1, '', NULL, 27);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-02-25 13:37:29', NULL, 1, 1, '', NULL, 28);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-02-25 18:18:26', NULL, 1, 1, '', NULL, 29);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-02-26 10:56:37', NULL, 1, 1, '', NULL, 30);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-02-26 10:57:55', NULL, 1, 1, '', NULL, 31);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-02-26 11:00:50', NULL, 1, 1, '', NULL, 32);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-02-26 11:03:38', NULL, 1, 1, '', '12', 33);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-02-26 11:04:42', NULL, 1, 1, '', '14', 34);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-02-26 11:10:43', NULL, 1, 1, '', '15', 35);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-03-30 15:27:55', 5, 1, 1, '', NULL, 36);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-03-30 15:29:24', 2, 1, 1, '', 'SP-0004', 37);
INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `sales_person_id`, `comment`, `invoice_number`, `sale_id`) VALUES
	('2016-04-05 22:33:02', NULL, 1, 1, '', 'SP-0005', 38);
/*!40000 ALTER TABLE `ospos_sales` ENABLE KEYS */;

-- Dumping structure for table giripalma.ospos_sales_items
DROP TABLE IF EXISTS `ospos_sales_items`;
CREATE TABLE IF NOT EXISTS `ospos_sales_items` (
  `sale_id` int(10) NOT NULL DEFAULT '0',
  `item_id` int(10) NOT NULL DEFAULT '0',
  `description` varchar(30) DEFAULT NULL,
  `serialnumber` varchar(30) DEFAULT NULL,
  `line` int(3) NOT NULL DEFAULT '0',
  `quantity_purchased` decimal(15,2) NOT NULL DEFAULT '0.00',
  `item_cost_price` decimal(15,2) NOT NULL,
  `item_unit_price` decimal(15,2) NOT NULL,
  `discount_percent` decimal(15,2) NOT NULL DEFAULT '0.00',
  `item_location` int(11) NOT NULL,
  PRIMARY KEY (`sale_id`,`item_id`,`line`),
  KEY `sale_id` (`sale_id`),
  KEY `item_id` (`item_id`),
  KEY `item_location` (`item_location`),
  CONSTRAINT `ospos_sales_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  CONSTRAINT `ospos_sales_items_ibfk_2` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`),
  CONSTRAINT `ospos_sales_items_ibfk_3` FOREIGN KEY (`item_location`) REFERENCES `ospos_stock_locations` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table giripalma.ospos_sales_items: ~40 rows (approximately)
/*!40000 ALTER TABLE `ospos_sales_items` DISABLE KEYS */;
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(1, 2, '', '', 1, 1.00, 20000.00, 30000.00, 0.00, 2);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(2, 2, '', '', 1, 1.00, 20000.00, 30000.00, 0.00, 9);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(3, 2, '', '', 1, 1.00, 20000.00, 30000.00, 0.00, 9);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(4, 3, '', '', 1, 1.00, 30000.00, 50000.00, 0.00, 9);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(5, 4, '', '', 1, 1.00, 100000.00, 300000.00, 0.00, 9);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(6, 4, '', '', 1, 1.00, 100000.00, 300000.00, 0.00, 1);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(7, 4, '', '', 1, 1.00, 100000.00, 300000.00, 0.00, 2);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(8, 4, '', '', 1, 1.00, 100000.00, 300000.00, 0.00, 3);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(9, 4, '', '', 1, 1.00, 100000.00, 300000.00, 0.00, 3);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(10, 4, '', '', 1, 4.00, 100000.00, 300000.00, 20.00, 1);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(11, 4, '', '', 1, 1.00, 100000.00, 300000.00, 0.00, 1);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(12, 5, '', '', 1, 2.00, 600000.00, 900000.00, 0.00, 2);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(13, 5, '', '', 1, 1.00, 600000.00, 900000.00, 0.00, 3);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(14, 4, '', '', 1, 2.00, 100000.00, 300000.00, 0.00, 8);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(14, 5, '', '', 2, 1.00, 600000.00, 900000.00, 0.00, 8);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(15, 4, '', '', 1, 1.00, 100000.00, 300000.00, 0.00, 9);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(16, 3, '', '', 1, 1.00, 30000.00, 50000.00, 0.00, 9);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(17, 4, '', '', 1, 1.00, 100000.00, 300000.00, 0.00, 9);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(18, 4, '', '', 1, 1.00, 100000.00, 300000.00, 0.00, 9);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(19, 4, '', '', 1, 1.00, 100000.00, 300000.00, 0.00, 9);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(20, 4, '', '', 1, 1.00, 100000.00, 300000.00, 0.00, 9);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(21, 4, '', '', 1, 1.00, 100000.00, 300000.00, 0.00, 9);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(22, 4, '', '', 1, 1.00, 100000.00, 300000.00, 0.00, 9);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(23, 4, '', '', 1, 1.00, 100000.00, 300000.00, 0.00, 9);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(24, 4, '', '', 1, 1.00, 100000.00, 300000.00, 0.00, 9);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(25, 4, '', '', 1, 1.00, 100000.00, 300000.00, 0.00, 9);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(26, 3, '', '', 1, 1.00, 30000.00, 50000.00, 0.00, 9);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(27, 5, '', '', 1, 1.00, 600000.00, 900000.00, 0.00, 9);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(28, 4, '', '', 1, 1.00, 100000.00, 300000.00, 0.00, 5);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(29, 3, '', '', 1, 1.00, 30000.00, 50000.00, 0.00, 5);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(30, 4, '', '', 1, 1.00, 100000.00, 300000.00, 0.00, 5);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(31, 3, '', '', 1, 1.00, 30000.00, 50000.00, 0.00, 5);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(32, 4, '', '', 1, 1.00, 100000.00, 300000.00, 0.00, 5);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(33, 4, '', '', 1, 1.00, 100000.00, 300000.00, 0.00, 5);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(34, 4, '', '', 1, 2.00, 100000.00, 300000.00, 0.00, 5);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(35, 6, '', '', 1, 1.00, 3000000.00, 4500000.00, 0.00, 5);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(36, 4, '', '', 2, 1.00, 100000.00, 300000.00, 0.00, 1);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(36, 5, '', '', 1, 1.00, 600000.00, 900000.00, 0.00, 1);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(37, 4, '', '', 1, 1.00, 100000.00, 300000.00, 0.00, 1);
INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`) VALUES
	(38, 5, '', '', 1, 1.00, 600000.00, 900000.00, 0.00, 1);
/*!40000 ALTER TABLE `ospos_sales_items` ENABLE KEYS */;

-- Dumping structure for table giripalma.ospos_sales_items_taxes
DROP TABLE IF EXISTS `ospos_sales_items_taxes`;
CREATE TABLE IF NOT EXISTS `ospos_sales_items_taxes` (
  `sale_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `line` int(3) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,2) NOT NULL,
  PRIMARY KEY (`sale_id`,`item_id`,`line`,`name`,`percent`),
  KEY `sale_id` (`sale_id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `ospos_sales_items_taxes_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales_items` (`sale_id`),
  CONSTRAINT `ospos_sales_items_taxes_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table giripalma.ospos_sales_items_taxes: ~5 rows (approximately)
/*!40000 ALTER TABLE `ospos_sales_items_taxes` DISABLE KEYS */;
INSERT INTO `ospos_sales_items_taxes` (`sale_id`, `item_id`, `line`, `name`, `percent`) VALUES
	(12, 5, 1, 'Pajak Penjualan1', 10.00);
INSERT INTO `ospos_sales_items_taxes` (`sale_id`, `item_id`, `line`, `name`, `percent`) VALUES
	(13, 5, 1, 'Pajak Penjualan1', 10.00);
INSERT INTO `ospos_sales_items_taxes` (`sale_id`, `item_id`, `line`, `name`, `percent`) VALUES
	(14, 5, 2, 'Pajak Penjualan1', 10.00);
INSERT INTO `ospos_sales_items_taxes` (`sale_id`, `item_id`, `line`, `name`, `percent`) VALUES
	(27, 5, 1, 'Pajak Penjualan1', 10.00);
INSERT INTO `ospos_sales_items_taxes` (`sale_id`, `item_id`, `line`, `name`, `percent`) VALUES
	(35, 6, 1, 'Pajak Penjualan1', 10.00);
INSERT INTO `ospos_sales_items_taxes` (`sale_id`, `item_id`, `line`, `name`, `percent`) VALUES
	(36, 5, 1, 'Pajak Penjualan1', 10.00);
INSERT INTO `ospos_sales_items_taxes` (`sale_id`, `item_id`, `line`, `name`, `percent`) VALUES
	(38, 5, 1, 'Pajak Penjualan1', 10.00);
/*!40000 ALTER TABLE `ospos_sales_items_taxes` ENABLE KEYS */;

-- Dumping structure for table giripalma.ospos_sales_payments
DROP TABLE IF EXISTS `ospos_sales_payments`;
CREATE TABLE IF NOT EXISTS `ospos_sales_payments` (
  `sale_id` int(10) NOT NULL,
  `payment_type` varchar(40) NOT NULL,
  `payment_leasing` varchar(40) NOT NULL,
  `payment_amount` decimal(15,2) NOT NULL,
  `card_number` varchar(50) NOT NULL,
  PRIMARY KEY (`sale_id`,`payment_type`),
  KEY `sale_id` (`sale_id`),
  CONSTRAINT `ospos_sales_payments_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table giripalma.ospos_sales_payments: ~40 rows (approximately)
/*!40000 ALTER TABLE `ospos_sales_payments` DISABLE KEYS */;
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(1, 'Tunai', '', 30000.00, '');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(2, 'Tunai', '', 30000.00, '');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(3, 'kredit rekanan', '', 30000.00, '');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(4, 'cash', '', 20000.00, '');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(4, 'kredit in house', '', 30000.00, '');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(5, 'cash', '', 300000.00, '');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(6, 'cash', '', 400000.00, '');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(7, 'cash', '', 0.00, '');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(7, 'kredit in house', '', 300000.00, '');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(8, 'cash', '', 300000.00, '');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(9, 'cash', '', 300000.00, '');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(10, 'cash', '', 1000000.00, '');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(11, 'cash', '', 300000.00, '');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(12, 'cash kredit', '', 1800000.00, '557788883344');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(13, 'cash', '', 900000.00, '');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(14, 'kredit leasing', '', 1500000.00, '5676865697');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(15, 'Tunai', '', 300000.00, '1234567');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(16, 'Kartu Debit', '', 50000.00, '1234');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(17, 'Tunai', '', 300000.00, '123456');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(18, 'Tunai', '', 300000.00, '');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(19, 'Tunai', 'Kredit Plus', 300000.00, '');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(20, 'Tunai', 'FIF', 300000.00, '');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(21, 'Kartu Debit', 'FIF', 300000.00, '123456');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(22, 'Kartu Debit', 'FIF', 300000.00, '23456');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(23, 'Tunai', '', 300000.00, '');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(24, 'Tunai', '', 300000.00, '');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(25, 'Tunai', '', 300000.00, '');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(26, 'Tunai', '', 50000.00, '');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(27, 'Tunai', '', 900000.00, '');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(28, 'Tunai', '', 300000.00, '');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(29, 'cash', '', 50000.00, '');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(30, 'Tunai', '', 300000.00, '');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(31, 'Tunai', '', 50000.00, '');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(32, 'Tunai', '', 300000.00, '');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(33, 'Tunai', '', 300000.00, '');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(34, 'Tunai', '', 600000.00, '');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(35, 'Tunai', '', 4500000.00, '');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(36, 'Tunai', '', 1200000.00, '');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(37, 'Tunai', '', 300000.00, '');
INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_leasing`, `payment_amount`, `card_number`) VALUES
	(38, 'Tunai', '', 900000.00, '');
/*!40000 ALTER TABLE `ospos_sales_payments` ENABLE KEYS */;

-- Dumping structure for table giripalma.ospos_sales_suspended
DROP TABLE IF EXISTS `ospos_sales_suspended`;
CREATE TABLE IF NOT EXISTS `ospos_sales_suspended` (
  `sale_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int(10) DEFAULT NULL,
  `employee_id` int(10) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `invoice_number` varchar(32) DEFAULT NULL,
  `sale_id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sale_id`),
  KEY `customer_id` (`customer_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `ospos_sales_suspended_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`),
  CONSTRAINT `ospos_sales_suspended_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `ospos_customers` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table giripalma.ospos_sales_suspended: ~0 rows (approximately)
/*!40000 ALTER TABLE `ospos_sales_suspended` DISABLE KEYS */;
/*!40000 ALTER TABLE `ospos_sales_suspended` ENABLE KEYS */;

-- Dumping structure for table giripalma.ospos_sales_suspended_items
DROP TABLE IF EXISTS `ospos_sales_suspended_items`;
CREATE TABLE IF NOT EXISTS `ospos_sales_suspended_items` (
  `sale_id` int(10) NOT NULL DEFAULT '0',
  `item_id` int(10) NOT NULL DEFAULT '0',
  `description` varchar(30) DEFAULT NULL,
  `serialnumber` varchar(30) DEFAULT NULL,
  `line` int(3) NOT NULL DEFAULT '0',
  `quantity_purchased` decimal(15,2) NOT NULL DEFAULT '0.00',
  `item_cost_price` decimal(15,2) NOT NULL,
  `item_unit_price` decimal(15,2) NOT NULL,
  `discount_percent` decimal(15,2) NOT NULL DEFAULT '0.00',
  `item_location` int(11) NOT NULL,
  PRIMARY KEY (`sale_id`,`item_id`,`line`),
  KEY `sale_id` (`sale_id`),
  KEY `item_id` (`item_id`),
  KEY `ospos_sales_suspended_items_ibfk_3` (`item_location`),
  CONSTRAINT `ospos_sales_suspended_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  CONSTRAINT `ospos_sales_suspended_items_ibfk_2` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales_suspended` (`sale_id`),
  CONSTRAINT `ospos_sales_suspended_items_ibfk_3` FOREIGN KEY (`item_location`) REFERENCES `ospos_stock_locations` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table giripalma.ospos_sales_suspended_items: ~0 rows (approximately)
/*!40000 ALTER TABLE `ospos_sales_suspended_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ospos_sales_suspended_items` ENABLE KEYS */;

-- Dumping structure for table giripalma.ospos_sales_suspended_items_taxes
DROP TABLE IF EXISTS `ospos_sales_suspended_items_taxes`;
CREATE TABLE IF NOT EXISTS `ospos_sales_suspended_items_taxes` (
  `sale_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `line` int(3) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,2) NOT NULL,
  PRIMARY KEY (`sale_id`,`item_id`,`line`,`name`,`percent`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `ospos_sales_suspended_items_taxes_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales_suspended_items` (`sale_id`),
  CONSTRAINT `ospos_sales_suspended_items_taxes_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table giripalma.ospos_sales_suspended_items_taxes: ~0 rows (approximately)
/*!40000 ALTER TABLE `ospos_sales_suspended_items_taxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ospos_sales_suspended_items_taxes` ENABLE KEYS */;

-- Dumping structure for table giripalma.ospos_sales_suspended_payments
DROP TABLE IF EXISTS `ospos_sales_suspended_payments`;
CREATE TABLE IF NOT EXISTS `ospos_sales_suspended_payments` (
  `sale_id` int(10) NOT NULL,
  `payment_type` varchar(40) NOT NULL,
  `payment_amount` decimal(15,2) NOT NULL,
  PRIMARY KEY (`sale_id`,`payment_type`),
  CONSTRAINT `ospos_sales_suspended_payments_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales_suspended` (`sale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table giripalma.ospos_sales_suspended_payments: ~0 rows (approximately)
/*!40000 ALTER TABLE `ospos_sales_suspended_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ospos_sales_suspended_payments` ENABLE KEYS */;

-- Dumping structure for table giripalma.ospos_sessions
DROP TABLE IF EXISTS `ospos_sessions`;
CREATE TABLE IF NOT EXISTS `ospos_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table giripalma.ospos_sessions: ~76 rows (approximately)
/*!40000 ALTER TABLE `ospos_sessions` DISABLE KEYS */;
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('0148a39435b34ebc75678e1cf9007048', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455095550, 'a:8:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:4:"cart";a:0:{}s:9:"sale_mode";s:4:"sale";s:13:"sale_location";s:1:"1";s:8:"customer";i:-1;s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:1:"3";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('042334c18208ade07fe307fb06528ee5', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454402685, '');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('079175abb61e763762df79b9c4827209', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455796472, '');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('158ae1b70d57d7c9cc93831ef5c34e3d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0', 1455077777, '');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('19112963f16bec54180c9e6862d6531d', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454402471, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('1936b89fd4c6e58ca1236bab292ee2e4', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454402519, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('1a0f512b7f383c6dd52f66b70942f79e', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454402754, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('1e1fa74028a9ee9a9ef48a3acdf7b30e', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1458029188, '');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('200d0d6193a89ab368b0fedf35683189', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 1460387376, '');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('20374eff3972a47e6ab12613972bfa3b', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454418265, 'a:8:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:4:"cart";a:0:{}s:9:"sale_mode";s:4:"sale";s:13:"sale_location";s:1:"2";s:8:"customer";i:-1;s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:1:"2";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('22c8e20ea4055fc8b013781bdb5d6dfe', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455116410, 'a:3:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:13:"sale_location";s:1:"1";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('2623b2ff8835b9195cbb880b22a37369', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 1460004090, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('2a976145064e7c01688d29cfe1f12df3', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455671545, '');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('2efd6c11eafa41ebead039b6764cb3b7', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1458118471, '');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('316077144bd572eec734882f7f3e73cd', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455403415, '');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('322291649019683f88fbcb3c2d0ebd39', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 1459987869, 'a:9:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:13:"sale_location";s:1:"1";s:8:"cartRecv";a:0:{}s:9:"recv_mode";s:7:"receive";s:17:"recv_stock_source";s:1:"1";s:22:"recv_stock_destination";s:1:"1";s:8:"supplier";i:-1;s:19:"recv_invoice_number";s:1:"1";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('39c9a89d75941617da42dfc035332091', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1456994889, 'a:3:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:13:"item_location";s:1:"1";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('3d7a1d66cb71a2fa9ed17cd2321c3f3c', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 1459633689, '');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('4134dd990883ef5b10f75a86cef04e86', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454402573, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('43d558b908656d17f7b9620ddf2827b9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36', 1453801341, 'a:9:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:13:"sale_location";s:1:"1";s:13:"item_location";s:1:"1";s:4:"cart";a:1:{i:1;a:16:{s:7:"item_id";s:1:"1";s:13:"item_location";s:1:"1";s:10:"stock_name";s:5:"stock";s:4:"line";i:1;s:4:"name";s:8:"bWVqYQ==";s:11:"item_number";N;s:11:"description";s:0:"";s:12:"serialnumber";s:0:"";s:21:"allow_alt_description";s:1:"0";s:13:"is_serialized";s:1:"0";s:8:"quantity";s:1:"2";s:8:"discount";s:1:"0";s:8:"in_stock";s:2:"10";s:5:"price";s:8:"50000.00";s:5:"total";s:9:"100000.00";s:16:"discounted_total";s:12:"100000.00000";}}s:9:"sale_mode";s:4:"sale";s:8:"customer";i:-1;s:8:"payments";a:2:{s:4:"Cash";a:2:{s:12:"payment_type";s:4:"Cash";s:14:"payment_amount";s:8:"50000.00";}s:5:"Tunai";a:2:{s:12:"payment_type";s:5:"Tunai";s:14:"payment_amount";s:12:"150000.00000";}}s:20:"sales_invoice_number";s:1:"0";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('50087bfc6ba346f3dc3ffff64e391f33', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 1459312799, '');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('515270df63a524dd29693fca40f51890', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455180365, '');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('520b0461065eecabf219f27bea2c4d63', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 1460272316, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('54ece90649a4011c10e70c362893f2c6', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454402425, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('561f9a48a20ddb32f87eb584e2e2a9e2', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 1460212760, '');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('570d2cd2522e5e7d8d3e841a72dc7dec', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455528976, 'a:15:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:13:"item_location";s:1:"1";s:4:"cart";a:0:{}s:9:"sale_mode";s:4:"sale";s:13:"sale_location";s:1:"1";s:8:"customer";i:-1;s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:1:"5";s:8:"cartRecv";a:0:{}s:9:"recv_mode";s:6:"return";s:17:"recv_stock_source";s:1:"1";s:22:"recv_stock_destination";s:1:"1";s:8:"supplier";i:-1;s:19:"recv_invoice_number";s:1:"0";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('5add28dabaae11de799d4bd7407f7ffa', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455180361, '');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('5bd7c0d9cedd069dd1adfbd77fcd938f', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454484331, 'a:15:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:4:"cart";a:0:{}s:9:"sale_mode";s:4:"sale";s:13:"sale_location";s:1:"1";s:8:"customer";i:-1;s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:1:"2";s:13:"item_location";s:1:"1";s:8:"cartRecv";a:0:{}s:9:"recv_mode";s:7:"receive";s:17:"recv_stock_source";s:1:"1";s:22:"recv_stock_destination";s:1:"1";s:8:"supplier";i:-1;s:19:"recv_invoice_number";s:1:"0";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('61415eb80921a1ace182bcdec229f9b5', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1457928595, '');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('67eee1e84c35702fcfa7f7adff52f540', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 1459960445, '');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('6871b4f5e5618431ecff5fce2a344968', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 1459852590, 'a:9:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:4:"cart";a:1:{i:1;a:16:{s:7:"item_id";s:2:"13";s:13:"item_location";s:1:"1";s:10:"stock_name";s:5:"stock";s:4:"line";i:1;s:4:"name";s:12:"TmdldGVzIDI=";s:11:"item_number";s:5:"tyuqw";s:11:"description";s:0:"";s:12:"serialnumber";s:0:"";s:21:"allow_alt_description";s:1:"0";s:13:"is_serialized";s:1:"0";s:8:"quantity";i:1;s:8:"discount";s:1:"0";s:8:"in_stock";s:1:"0";s:5:"price";s:9:"130000.00";s:5:"total";s:9:"130000.00";s:16:"discounted_total";s:12:"130000.00000";}}s:9:"sale_mode";s:4:"sale";s:13:"sale_location";s:1:"9";s:8:"customer";i:-1;s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:2:"15";s:13:"item_location";s:1:"1";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('69eb7c0cdfef78ac5103a393ea0de3aa', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0', 1455085692, 'a:16:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:13:"sale_location";s:1:"3";s:22:"sales_print_after_sale";s:4:"true";s:28:"sales_invoice_number_enabled";s:4:"true";s:9:"sale_mode";s:4:"sale";s:4:"cart";a:1:{i:1;a:16:{s:7:"item_id";s:1:"4";s:13:"item_location";s:1:"3";s:10:"stock_name";s:16:"GP2 - Toko Utama";s:4:"line";i:1;s:4:"name";s:20:"S3Vyc2kgU3lhaHJpbmk=";s:11:"item_number";s:4:"K002";s:11:"description";s:0:"";s:12:"serialnumber";s:0:"";s:21:"allow_alt_description";s:1:"0";s:13:"is_serialized";s:1:"0";s:8:"quantity";i:1;s:8:"discount";s:1:"0";s:8:"in_stock";s:2:"-1";s:5:"price";s:9:"300000.00";s:5:"total";s:9:"300000.00";s:16:"discounted_total";s:12:"300000.00000";}}s:8:"customer";i:-1;s:8:"payments";a:1:{s:4:"cash";a:2:{s:12:"payment_type";s:4:"cash";s:14:"payment_amount";s:6:"400000";}}s:20:"sales_invoice_number";s:1:"3";s:8:"cartRecv";a:0:{}s:9:"recv_mode";s:7:"receive";s:17:"recv_stock_source";s:1:"1";s:22:"recv_stock_destination";s:1:"1";s:8:"supplier";i:-1;s:19:"recv_invoice_number";s:1:"0";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('6a8fdebce7133d9e2012242a253eef77', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454400230, '');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('6c4a8c0b7cf444f441ba2e033f272168', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455529829, '');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('772cc1c8a29384fd5eaf277876b270e2', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454393251, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('7d42e268fac6cfb5c4497e7bb5e0a2a2', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455106938, 'a:8:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:4:"cart";a:1:{i:1;a:16:{s:7:"item_id";s:1:"4";s:13:"item_location";s:1:"1";s:10:"stock_name";s:5:"stock";s:4:"line";i:1;s:4:"name";s:20:"S3Vyc2kgU3lhaHJpbmk=";s:11:"item_number";s:4:"K002";s:11:"description";s:0:"";s:12:"serialnumber";s:0:"";s:21:"allow_alt_description";s:1:"0";s:13:"is_serialized";s:1:"0";s:8:"quantity";s:1:"2";s:8:"discount";s:1:"0";s:8:"in_stock";s:2:"17";s:5:"price";s:9:"300000.00";s:5:"total";s:9:"600000.00";s:16:"discounted_total";s:12:"600000.00000";}}s:9:"sale_mode";s:4:"sale";s:13:"sale_location";s:1:"1";s:8:"customer";i:-1;s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:1:"3";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('7d7a92b278cd8d92e66a79784c8a664e', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1458029826, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('85c1a706a61566aedc5c4681200b7eb6', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 1459761498, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('8a44c43d58092fd06d31573a15c157b9', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455615952, 'a:15:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:8:"cartRecv";a:0:{}s:9:"recv_mode";s:7:"receive";s:17:"recv_stock_source";s:1:"1";s:22:"recv_stock_destination";s:1:"1";s:8:"supplier";i:-1;s:19:"recv_invoice_number";s:1:"1";s:13:"item_location";s:1:"1";s:4:"cart";a:2:{i:1;a:16:{s:7:"item_id";s:1:"2";s:13:"item_location";s:1:"1";s:10:"stock_name";s:5:"stock";s:4:"line";i:1;s:4:"name";s:8:"TWVqYQ==";s:11:"item_number";s:4:"M001";s:11:"description";s:0:"";s:12:"serialnumber";s:0:"";s:21:"allow_alt_description";s:1:"0";s:13:"is_serialized";s:1:"0";s:8:"quantity";s:4:"1.00";s:8:"discount";i:0;s:8:"in_stock";s:2:"20";s:5:"price";s:8:"30000.00";s:5:"total";s:10:"30000.0000";s:16:"discounted_total";s:11:"30000.00000";}i:3;a:16:{s:7:"item_id";s:1:"5";s:13:"item_location";s:1:"1";s:10:"stock_name";s:5:"stock";s:4:"line";i:3;s:4:"name";s:16:"S3Vyc2kgVHVuZ2d1";s:11:"item_number";s:14:"56746774276356";s:11:"description";s:0:"";s:12:"serialnumber";s:0:"";s:21:"allow_alt_description";s:1:"0";s:13:"is_serialized";s:1:"0";s:8:"quantity";i:1;s:8:"discount";s:1:"0";s:8:"in_stock";s:2:"60";s:5:"price";s:9:"900000.00";s:5:"total";s:9:"900000.00";s:16:"discounted_total";s:12:"900000.00000";}}s:9:"sale_mode";s:4:"sale";s:13:"sale_location";s:1:"1";s:8:"customer";s:1:"2";s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:1:"6";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('9711dda4c869e57a303f97c1d37042cf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0', 1454385518, 'a:11:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:13:"sale_location";s:1:"6";s:13:"item_location";s:1:"1";s:22:"sales_print_after_sale";s:4:"true";s:28:"sales_invoice_number_enabled";s:4:"true";s:4:"cart";a:0:{}s:9:"sale_mode";s:4:"sale";s:8:"customer";i:-1;s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:1:"2";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('99575385aa82b43afb6ded614f31dba6', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455671545, '');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('9974400677421ad25bbe3e4c10aae81d', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 1460370552, 'a:7:{s:9:"person_id";s:1:"1";s:8:"cartRecv";a:0:{}s:9:"recv_mode";s:7:"receive";s:17:"recv_stock_source";s:1:"1";s:22:"recv_stock_destination";s:1:"1";s:8:"supplier";i:-1;s:19:"recv_invoice_number";s:1:"1";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('a12adc74c253f5fe8fb105e1571f98dd', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1457347557, '');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('a2540f93af62987415bdd9373cbfa1ce', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454400410, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('a7a2bedb993ad0e6fdb5fd7a432a18b1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0', 1453950418, '');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('ad2d710d47877d4f6bcbf99e579c3306', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0', 1454652702, 'a:10:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:13:"sale_location";s:1:"4";s:13:"item_location";s:1:"1";s:4:"cart";a:0:{}s:8:"customer";i:-1;s:8:"payments";a:1:{s:4:"cash";a:2:{s:12:"payment_type";s:4:"cash";s:14:"payment_amount";s:12:"200000.00000";}}s:20:"sales_invoice_number";s:1:"2";s:9:"sale_mode";s:4:"sale";s:22:"sales_print_after_sale";s:4:"true";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('b0035094bec4a821d60f90d03b70497f', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455551137, '');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('b0467e3138aa54c05adedb2395f2e1bd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454465136, 'a:8:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:4:"cart";a:0:{}s:9:"sale_mode";s:4:"sale";s:13:"sale_location";s:1:"1";s:8:"customer";i:-1;s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:1:"2";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('b219c5a89ab0438e8954ac320450dda7', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 1459870382, 'a:4:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:13:"sale_location";s:1:"1";s:11:"salesperson";s:1:"1";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('bee153c606c5905bdb4f13252c3e08d8', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 1459678355, 'a:3:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:13:"item_location";s:1:"1";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('c506fb34eb8cfa0aa35e0eeb385092c2', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454427336, 'a:9:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:13:"sale_location";s:1:"2";s:4:"cart";a:1:{i:1;a:16:{s:7:"item_id";s:1:"4";s:13:"item_location";s:1:"2";s:10:"stock_name";s:11:"GP1 - Pusat";s:4:"line";i:1;s:4:"name";s:20:"S3Vyc2kgU3lhaHJpbmk=";s:11:"item_number";s:4:"K002";s:11:"description";s:0:"";s:12:"serialnumber";s:0:"";s:21:"allow_alt_description";s:1:"0";s:13:"is_serialized";s:1:"0";s:8:"quantity";s:4:"1.00";s:8:"discount";s:4:"0.00";s:8:"in_stock";s:1:"1";s:5:"price";s:9:"300000.00";s:5:"total";s:11:"300000.0000";s:16:"discounted_total";s:12:"300000.00000";}}s:8:"customer";i:-1;s:7:"comment";s:0:"";s:20:"sales_invoice_number";s:1:"2";s:9:"sale_mode";s:4:"sale";s:8:"payments";a:0:{}}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('c58e84ec2bd93780dee6033b7570c829', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 1459753511, 'a:10:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:13:"item_location";s:1:"9";s:4:"cart";a:2:{i:1;a:16:{s:7:"item_id";s:1:"4";s:13:"item_location";s:1:"1";s:10:"stock_name";s:5:"stock";s:4:"line";i:1;s:4:"name";s:20:"S3Vyc2kgU3lhaHJpbmk=";s:11:"item_number";s:4:"K002";s:11:"description";s:0:"";s:12:"serialnumber";s:0:"";s:21:"allow_alt_description";s:1:"0";s:13:"is_serialized";s:1:"0";s:8:"quantity";d:2;s:8:"discount";s:1:"0";s:8:"in_stock";s:2:"12";s:5:"price";s:9:"300000.00";s:5:"total";s:9:"600000.00";s:16:"discounted_total";s:12:"600000.00000";}i:2;a:16:{s:7:"item_id";s:1:"6";s:13:"item_location";s:1:"1";s:10:"stock_name";s:5:"stock";s:4:"line";i:2;s:4:"name";s:16:"S29tcHV0ZXIgUEM=";s:11:"item_number";s:9:"PC2837849";s:11:"description";s:0:"";s:12:"serialnumber";s:0:"";s:21:"allow_alt_description";s:1:"0";s:13:"is_serialized";s:1:"0";s:8:"quantity";s:4:"2.00";s:8:"discount";i:0;s:8:"in_stock";s:1:"0";s:5:"price";s:10:"4500000.00";s:5:"total";s:12:"9000000.0000";s:16:"discounted_total";s:13:"9000000.00000";}}s:9:"sale_mode";s:4:"sale";s:13:"sale_location";s:1:"1";s:8:"customer";s:1:"2";s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:2:"15";s:11:"salesperson";s:1:"1";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('c75a7ebad36009e09e56bcf2c42ec1a3', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1458189868, '');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('c8220abf697d12e9304d5aaf5733ee62', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 1460240776, 'a:8:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:4:"cart";a:0:{}s:9:"sale_mode";s:4:"sale";s:13:"sale_location";s:1:"1";s:8:"customer";i:-1;s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:2:"15";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('c83e61ebdf2e64ade0736a81d5241fb0', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 1460102218, 'a:9:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:8:"cartRecv";a:1:{i:1;a:15:{s:7:"item_id";s:1:"4";s:13:"item_location";s:1:"1";s:10:"stock_name";s:5:"stock";s:4:"line";i:1;s:4:"name";s:20:"S3Vyc2kgU3lhaHJpbmk=";s:11:"description";s:0:"";s:12:"serialnumber";s:0:"";s:21:"allow_alt_description";s:1:"0";s:13:"is_serialized";s:1:"0";s:8:"quantity";i:1;s:8:"discount";i:0;s:8:"in_stock";s:2:"15";s:5:"price";s:9:"100000.00";s:18:"receiving_quantity";s:1:"0";s:5:"total";s:12:"100000.00000";}}s:9:"recv_mode";s:7:"receive";s:17:"recv_stock_source";s:1:"1";s:22:"recv_stock_destination";s:1:"1";s:9:"sale_mode";s:4:"sale";s:8:"supplier";s:2:"15";s:19:"recv_invoice_number";s:1:"1";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('cccf53a43b898114d98208b3f4e57ca9', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455096608, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('d4234be6342c14a83b8d80a82f166adb', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1457929314, '');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('d603ea861f6e3e6627b6edd497b5abae', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 1460128747, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('d6395bbf13038609132982763ba8dd88', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455882489, '');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('d6b766e69258298cdc9e69578cf50b74', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.109 Safari/537.36', 1455691806, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('d6cb6ec175ebb7cf40943f6af3142d15', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454403024, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('da98cf7194aec71cf03b7e944896c655', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.109 Safari/537.36', 1455746141, '');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('dcaca54b924ae7279abbcfcbd41ee382', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454403258, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('df2935a36c23f6865b3b3c8c7aa82739', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455096115, 'a:8:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:4:"cart";a:0:{}s:9:"sale_mode";s:4:"sale";s:13:"sale_location";s:1:"1";s:8:"customer";i:-1;s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:1:"3";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('e29c9f6b46e64a6f144ef5cc0177d3de', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455877122, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('e388567962d97856d795be2c9f8ddc84', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454407061, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('e6488f3672b9f31d257f6f3efd1e1f98', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455613084, 'a:14:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:13:"sale_location";s:1:"8";s:28:"sales_invoice_number_enabled";s:4:"true";s:22:"sales_print_after_sale";s:5:"false";s:4:"cart";a:2:{i:1;a:16:{s:7:"item_id";s:1:"4";s:13:"item_location";s:1:"8";s:10:"stock_name";s:28:"MOG3 - Stand Depan Foodcourt";s:4:"line";i:1;s:4:"name";s:20:"S3Vyc2kgU3lhaHJpbmk=";s:11:"item_number";s:4:"K002";s:11:"description";s:0:"";s:12:"serialnumber";s:0:"";s:21:"allow_alt_description";s:1:"0";s:13:"is_serialized";s:1:"0";s:8:"quantity";i:1;s:8:"discount";s:1:"0";s:8:"in_stock";s:2:"-1";s:5:"price";s:9:"300000.00";s:5:"total";s:9:"300000.00";s:16:"discounted_total";s:12:"300000.00000";}i:2;a:16:{s:7:"item_id";s:1:"5";s:13:"item_location";s:1:"8";s:10:"stock_name";s:28:"MOG3 - Stand Depan Foodcourt";s:4:"line";i:2;s:4:"name";s:16:"S3Vyc2kgVHVuZ2d1";s:11:"item_number";s:14:"56746774276356";s:11:"description";s:0:"";s:12:"serialnumber";s:0:"";s:21:"allow_alt_description";s:1:"0";s:13:"is_serialized";s:1:"0";s:8:"quantity";i:1;s:8:"discount";s:1:"0";s:8:"in_stock";s:1:"4";s:5:"price";s:9:"900000.00";s:5:"total";s:9:"900000.00";s:16:"discounted_total";s:12:"900000.00000";}}s:9:"sale_mode";s:4:"sale";s:8:"customer";s:1:"2";s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:1:"6";s:13:"item_location";s:1:"1";s:9:"recv_mode";s:11:"requisition";s:17:"recv_stock_source";s:1:"3";s:22:"recv_stock_destination";s:1:"5";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('e8001e21f48d6343c22ae47c560124ed', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455114852, '');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('e83333c1ae5e8920932f3fc99fc35998', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455096636, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('ea3dc855afaec530e9e4feb5db92f20e', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454402695, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('eaf6d485940b51fb0adc347611d852c7', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454403134, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('f026ed0064bdf93cf7c04952ce509564', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455283020, '');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('f209524d8cbb535cfea04d1f01adebc2', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455101399, 'a:8:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:4:"cart";a:1:{i:1;a:16:{s:7:"item_id";s:1:"4";s:13:"item_location";s:1:"1";s:10:"stock_name";s:5:"stock";s:4:"line";i:1;s:4:"name";s:20:"S3Vyc2kgU3lhaHJpbmk=";s:11:"item_number";s:4:"K002";s:11:"description";s:0:"";s:12:"serialnumber";s:0:"";s:21:"allow_alt_description";s:1:"0";s:13:"is_serialized";s:1:"0";s:8:"quantity";i:1;s:8:"discount";s:1:"0";s:8:"in_stock";s:2:"17";s:5:"price";s:9:"300000.00";s:5:"total";s:9:"300000.00";s:16:"discounted_total";s:12:"300000.00000";}}s:9:"sale_mode";s:4:"sale";s:13:"sale_location";s:1:"1";s:8:"payments";a:1:{s:4:"cash";a:2:{s:12:"payment_type";s:4:"cash";s:14:"payment_amount";s:9:"300000.00";}}s:8:"customer";i:-1;s:20:"sales_invoice_number";s:1:"3";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('f6f729a4de33d741b019bac14e71f79d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0', 1456982789, 'a:17:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:13:"sale_location";s:1:"5";s:28:"sales_invoice_number_enabled";s:4:"true";s:22:"sales_print_after_sale";s:4:"true";s:8:"cartRecv";a:0:{}s:9:"recv_mode";s:7:"receive";s:17:"recv_stock_source";s:1:"1";s:22:"recv_stock_destination";s:1:"1";s:8:"supplier";i:-1;s:19:"recv_invoice_number";s:1:"1";s:13:"item_location";s:1:"1";s:4:"cart";a:1:{i:1;a:16:{s:7:"item_id";s:1:"6";s:13:"item_location";s:1:"5";s:10:"stock_name";s:26:"GP4 - Gudang Produksi Sofa";s:4:"line";i:1;s:4:"name";s:16:"S29tcHV0ZXIgUEM=";s:11:"item_number";s:9:"PC2837849";s:11:"description";s:0:"";s:12:"serialnumber";s:0:"";s:21:"allow_alt_description";s:1:"0";s:13:"is_serialized";s:1:"0";s:8:"quantity";i:1;s:8:"discount";s:1:"0";s:8:"in_stock";s:1:"0";s:5:"price";s:10:"4500000.00";s:5:"total";s:10:"4500000.00";s:16:"discounted_total";s:13:"4500000.00000";}}s:8:"customer";i:-1;s:8:"payments";a:0:{}s:20:"sales_invoice_number";s:2:"14";s:9:"sale_mode";s:4:"sale";}');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('fc3d0065ee18232407a6a0bc437c9cb8', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1455173332, '');
INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('ff7c6a2585e3ac26e4bd697f5a6952e5', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 1454403203, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}');
/*!40000 ALTER TABLE `ospos_sessions` ENABLE KEYS */;

-- Dumping structure for table giripalma.ospos_shippings
DROP TABLE IF EXISTS `ospos_shippings`;
CREATE TABLE IF NOT EXISTS `ospos_shippings` (
  `ship_id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) DEFAULT NULL,
  `recipient_name` varchar(255) DEFAULT NULL,
  `recipient_address` text,
  `person_in_charge` varchar(255) DEFAULT NULL,
  `shipping_date` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `user_entry_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ship_id`),
  KEY `FK_ospos_shippings_ospos_sales` (`sale_id`),
  KEY `FK_ospos_shippings_ospos_people` (`user_entry_id`),
  CONSTRAINT `FK_ospos_shippings_ospos_people` FOREIGN KEY (`user_entry_id`) REFERENCES `ospos_people` (`person_id`),
  CONSTRAINT `FK_ospos_shippings_ospos_sales` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table giripalma.ospos_shippings: ~2 rows (approximately)
/*!40000 ALTER TABLE `ospos_shippings` DISABLE KEYS */;
INSERT INTO `ospos_shippings` (`ship_id`, `sale_id`, `recipient_name`, `recipient_address`, `person_in_charge`, `shipping_date`, `status`, `user_entry_id`) VALUES
	(1, 14, 'Dwi Listika', 'Jalan Jalan Sana', 'Hendro', '2016-04-13', 'SJ Dibuat', 1);
INSERT INTO `ospos_shippings` (`ship_id`, `sale_id`, `recipient_name`, `recipient_address`, `person_in_charge`, `shipping_date`, `status`, `user_entry_id`) VALUES
	(2, 38, 'Endro Yono', 'Merbabu Lima', 'Joko', '2016-04-14', 'Tunggu kirim', 1);
/*!40000 ALTER TABLE `ospos_shippings` ENABLE KEYS */;

-- Dumping structure for table giripalma.ospos_stock_locations
DROP TABLE IF EXISTS `ospos_stock_locations`;
CREATE TABLE IF NOT EXISTS `ospos_stock_locations` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `location_name` varchar(255) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Dumping data for table giripalma.ospos_stock_locations: ~10 rows (approximately)
/*!40000 ALTER TABLE `ospos_stock_locations` DISABLE KEYS */;
INSERT INTO `ospos_stock_locations` (`location_id`, `location_name`, `deleted`) VALUES
	(1, 'stock', 0);
INSERT INTO `ospos_stock_locations` (`location_id`, `location_name`, `deleted`) VALUES
	(2, 'GP1 - Pusat', 0);
INSERT INTO `ospos_stock_locations` (`location_id`, `location_name`, `deleted`) VALUES
	(3, 'GP2 - Toko Utama', 0);
INSERT INTO `ospos_stock_locations` (`location_id`, `location_name`, `deleted`) VALUES
	(4, 'GP3 - Gudang Panel', 0);
INSERT INTO `ospos_stock_locations` (`location_id`, `location_name`, `deleted`) VALUES
	(5, 'GP4 - Gudang Produksi Sofa', 0);
INSERT INTO `ospos_stock_locations` (`location_id`, `location_name`, `deleted`) VALUES
	(6, 'GP5 - Gudang Produksi HPL', 0);
INSERT INTO `ospos_stock_locations` (`location_id`, `location_name`, `deleted`) VALUES
	(7, 'MOG2 - Stand Depan Giant', 0);
INSERT INTO `ospos_stock_locations` (`location_id`, `location_name`, `deleted`) VALUES
	(8, 'MOG3 - Stand Depan Foodcourt', 0);
INSERT INTO `ospos_stock_locations` (`location_id`, `location_name`, `deleted`) VALUES
	(9, 'BATOS - Lippo Plaza Batu', 0);
INSERT INTO `ospos_stock_locations` (`location_id`, `location_name`, `deleted`) VALUES
	(10, 'MOGATR - Atrium MOG', 0);
/*!40000 ALTER TABLE `ospos_stock_locations` ENABLE KEYS */;

-- Dumping structure for table giripalma.ospos_suppliers
DROP TABLE IF EXISTS `ospos_suppliers`;
CREATE TABLE IF NOT EXISTS `ospos_suppliers` (
  `person_id` int(10) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `agency_name` varchar(255) NOT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `account_number` (`account_number`),
  KEY `person_id` (`person_id`),
  CONSTRAINT `ospos_suppliers_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table giripalma.ospos_suppliers: ~7 rows (approximately)
/*!40000 ALTER TABLE `ospos_suppliers` DISABLE KEYS */;
INSERT INTO `ospos_suppliers` (`person_id`, `company_name`, `agency_name`, `account_number`, `deleted`) VALUES
	(4, 'Wacky Media', 'Komputer PC', NULL, 0);
INSERT INTO `ospos_suppliers` (`person_id`, `company_name`, `agency_name`, `account_number`, `deleted`) VALUES
	(10, 'Pasok 1', 'Coba Pasok', '2324556', 0);
INSERT INTO `ospos_suppliers` (`person_id`, `company_name`, `agency_name`, `account_number`, `deleted`) VALUES
	(11, 'Pasok 2', 'Coba Pasok 2', NULL, 0);
INSERT INTO `ospos_suppliers` (`person_id`, `company_name`, `agency_name`, `account_number`, `deleted`) VALUES
	(12, 'Pasok 3', '', NULL, 0);
INSERT INTO `ospos_suppliers` (`person_id`, `company_name`, `agency_name`, `account_number`, `deleted`) VALUES
	(13, 'ahaayyy', '', NULL, 0);
INSERT INTO `ospos_suppliers` (`person_id`, `company_name`, `agency_name`, `account_number`, `deleted`) VALUES
	(14, 'gaagag', '', NULL, 0);
INSERT INTO `ospos_suppliers` (`person_id`, `company_name`, `agency_name`, `account_number`, `deleted`) VALUES
	(15, 'yrjfhjfh', '', NULL, 0);
/*!40000 ALTER TABLE `ospos_suppliers` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
