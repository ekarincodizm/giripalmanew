USE giripalma;

UPDATE `giripalma`.`ospos_modules` SET `href`='sales' WHERE  `module_id`='sales';

RENAME TABLE `ospos_module_menu` TO `ospos_menu`;

-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.24 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.5051
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

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
	(11, 'Raw Material', 'raw_materials', 1, 1, 'raw_materials', 1, 'raw_materials', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(12, 'Item Jual', 'items', 1, 1, 'items', 2, 'items', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(13, 'Paket Item Jual', 'item_kits', 1, 1, 'item_kits', 3, 'item_kits', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(14, 'Surat Pesanan', 'sales', 1, 4, 'sales', 1, 'sales', NULL);
INSERT INTO `ospos_menu` (`id`, `name`, `module_id`, `depth_level`, `parent_id`, `href`, `sort_number`, `menu_identifier`, `font_awesome_icon`) VALUES
	(15, 'Surat Jalan', 'sales', 1, 4, 'sales/shipping', 2, 'shipping', NULL);
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

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
