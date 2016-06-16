-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.24 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table giripalma.ospos_modules
CREATE TABLE IF NOT EXISTS `ospos_modules` (
  `name_lang_key` varchar(255) NOT NULL,
  `desc_lang_key` varchar(255) NOT NULL,
  `sort` int(10) NOT NULL,
  `module_id` varchar(255) NOT NULL,
  `font_awesome_icon` varchar(255) NOT NULL,
  PRIMARY KEY (`module_id`),
  UNIQUE KEY `desc_lang_key` (`desc_lang_key`),
  UNIQUE KEY `name_lang_key` (`name_lang_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table giripalma.ospos_modules: ~10 rows (approximately)
/*!40000 ALTER TABLE `ospos_modules` DISABLE KEYS */;
INSERT INTO `ospos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`, `font_awesome_icon`) VALUES
	('module_config', 'module_config_desc', 100, 'config', 'fa fa-cogs');
INSERT INTO `ospos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`, `font_awesome_icon`) VALUES
	('module_customers', 'module_customers_desc', 10, 'customers', 'fa fa-users');
INSERT INTO `ospos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`, `font_awesome_icon`) VALUES
	('module_employees', 'module_employees_desc', 80, 'employees', 'fa fa-users');
INSERT INTO `ospos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`, `font_awesome_icon`) VALUES
	('module_giftcards', 'module_giftcards_desc', 90, 'giftcards', 'fa fa-gift');
INSERT INTO `ospos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`, `font_awesome_icon`) VALUES
	('module_items', 'module_items_desc', 20, 'items', 'fa fa-hdd-o');
INSERT INTO `ospos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`, `font_awesome_icon`) VALUES
	('module_item_kits', 'module_item_kits_desc', 30, 'item_kits', 'ion ion-cube');
INSERT INTO `ospos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`, `font_awesome_icon`) VALUES
	('module_receivings', 'module_receivings_desc', 60, 'receivings', 'fa fa-truck');
INSERT INTO `ospos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`, `font_awesome_icon`) VALUES
	('module_reports', 'module_reports_desc', 50, 'reports', 'fa fa-file-text-o');
INSERT INTO `ospos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`, `font_awesome_icon`) VALUES
	('module_sales', 'module_sales_desc', 70, 'sales', 'fa fa-shopping-cart');
INSERT INTO `ospos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`, `font_awesome_icon`) VALUES
	('module_suppliers', 'module_suppliers_desc', 40, 'suppliers', 'fa fa-retweet');
/*!40000 ALTER TABLE `ospos_modules` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
