-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 28, 2016 at 03:49 AM
-- Server version: 5.5.31
-- PHP Version: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thuch_thichi`
--

-- --------------------------------------------------------

--
-- Table structure for table `chiphitour`
--

CREATE TABLE IF NOT EXISTS `chiphitour` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `date_from` bigint(20) NOT NULL,
  `date_to` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `baby` int(11) NOT NULL,
  `datecreated` bigint(20) NOT NULL,
  `detail` tinyint(3) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chiphitour`
--

INSERT INTO `chiphitour` (`id`, `user_id`, `title`, `date_from`, `date_to`, `quantity`, `baby`, `datecreated`, `detail`, `status`) VALUES
(1, 3, 'Mail gửi cho khách hàng', 1462035600, 1463590800, 600, 5, 1463642327, 0, 1),
(2, 43, 'Nhập kho', 1462208400, 1464627600, 12, 40, 1463652653, 0, 1),
(4, 3, 'Nhà Trang 2 ngày 1 đêm', 1464109200, 1464282000, 10, 5, 1464056125, 0, 1),
(5, 3, 'Vũng tầu 4 ngày 3 đêm', 1464195600, 1464454800, 100, 3, 1464058153, 0, 1),
(6, 3, 'Vũng tầu 4 ngày 3 đêm', 1464195600, 1464454800, 100, 10, 1464058281, 0, 1),
(7, 43, 'Tour ca mau', 1462208400, 1462554000, 56, 8, 1464077046, 0, 1),
(8, 43, 'Tour ca mau', 1462208400, 1462554000, 56, 8, 1464077090, 0, 1),
(9, 43, 'tourr Phu quoc', 1464195600, 1464627600, 55, 9, 1464400860, 0, 1),
(10, 43, 'du an abc d', 1464714000, 1464973200, 6, 8, 1465178824, 0, 1),
(11, 43, 'vung tau', 1467072000, 1467244800, 4, 2, 1466726400, 0, 1),
(12, 43, 'vung tau', 1467046800, 1467219600, 4, 2, 1466768173, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ck_tm`
--

CREATE TABLE IF NOT EXISTS `ck_tm` (
  `id` int(11) NOT NULL,
  `title` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ck_tm`
--

INSERT INTO `ck_tm` (`id`, `title`, `status`) VALUES
(1, 'TM', 1),
(2, 'CK', 1),
(3, 'TM & CK', 1);

-- --------------------------------------------------------

--
-- Table structure for table `duan`
--

CREATE TABLE IF NOT EXISTS `duan` (
  `id` int(10) NOT NULL,
  `member_id` int(10) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `date_start` bigint(20) DEFAULT NULL,
  `date_end` bigint(20) DEFAULT NULL,
  `process` int(11) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `content` text,
  `datecreated` bigint(20) DEFAULT NULL,
  `dateupdated` bigint(20) DEFAULT NULL,
  `file` varchar(250) DEFAULT NULL,
  `trangthai_id` int(10) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `duan`
--

INSERT INTO `duan` (`id`, `member_id`, `title`, `price`, `date_start`, `date_end`, `process`, `note`, `content`, `datecreated`, `dateupdated`, `file`, `trangthai_id`) VALUES
(1, 43, 'thu nghiem', 6000000, 1461888000, 1462320000, 90, 'thu nghiem', '&nbsp;thu nghiem', 1461888000, 1461888000, '', 3),
(2, 43, 'du an abc d', 8000000, 1463529600, 1463529600, 15, 'ghi chu tong hop', '&nbsp;dang thuc hien<br />', 1463529600, 1463529600, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `group_date_tour`
--

CREATE TABLE IF NOT EXISTS `group_date_tour` (
  `id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `group_date_tour`
--

INSERT INTO `group_date_tour` (`id`, `tour_id`, `title`, `status`) VALUES
(1, 4, 'Ngày 1- 25-05-2016', 1),
(2, 4, 'Ngày 2- 26-05-2016', 1),
(3, 4, 'Ngày 3- 27-05-2016', 1),
(4, 5, 'Ngày 1- 26-05-2016', 1),
(5, 6, 'Ngày 1- 26-05-2016', 1),
(6, 6, 'Ngày 2- 27-05-2016', 1),
(7, 6, 'Ngày 3- 28-05-2016', 1),
(8, 6, 'Ngày 4- 29-05-2016', 1),
(9, 7, 'Ngày 1- 03-05-2016', 1),
(10, 7, 'Ngày 2- 04-05-2016', 1),
(11, 7, 'Ngày 3- 05-05-2016', 1),
(12, 7, 'Ngày 4- 06-05-2016', 1),
(13, 7, 'Ngày 5- 07-05-2016', 1),
(14, 9, 'Ngày 1- 26-05-2016', 1),
(15, 9, 'Ngày 2- 27-05-2016', 1),
(16, 9, 'Ngày 3- 28-05-2016', 1),
(17, 9, 'Ngày 4- 29-05-2016', 1),
(18, 9, 'Ngày 5- 30-05-2016', 1),
(19, 9, 'Ngày 6- 31-05-2016', 1),
(20, 10, 'Ngày 1- 01-06-2016', 1),
(21, 10, 'Ngày 2- 02-06-2016', 1),
(22, 10, 'Ngày 3- 03-06-2016', 1),
(23, 10, 'Ngày 4- 04-06-2016', 1);

-- --------------------------------------------------------

--
-- Table structure for table `loaithuchi`
--

CREATE TABLE IF NOT EXISTS `loaithuchi` (
  `id` int(10) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaithuchi`
--

INSERT INTO `loaithuchi` (`id`, `title`) VALUES
(1, 'Thu'),
(2, 'Chi'),
(3, 'Nợ'),
(4, 'Cho mượn'),
(5, 'Đi mượn');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(10) unsigned NOT NULL COMMENT 'ID',
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax` int(10) DEFAULT '0',
  `soluong` int(10) DEFAULT '2',
  `soluongm` int(10) DEFAULT '10'
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `title`, `address`, `phone`, `tax`, `soluong`, `soluongm`) VALUES
(42, 'Trần Quốc Thụy', '100/2 Quang Trung, Trung Chánh Hóc Môn, TP. HCM', '0939262905', 0, 2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `status_duan`
--

CREATE TABLE IF NOT EXISTS `status_duan` (
  `id` int(10) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `status_duan`
--

INSERT INTO `status_duan` (`id`, `title`) VALUES
(1, 'Đang thực hiện'),
(2, 'Hoàn thành'),
(3, 'Thương lượng'),
(4, 'Tạm hoãn');

-- --------------------------------------------------------

--
-- Table structure for table `sys_field`
--

CREATE TABLE IF NOT EXISTS `sys_field` (
  `id` int(10) unsigned NOT NULL,
  `table_id` int(10) DEFAULT NULL COMMENT 'Label=Bảng&fk_from=sys_table&fk_text=table_name&fk_value=id&isFilter=1',
  `field_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Label=Tên field',
  `format_id` int(10) DEFAULT NULL,
  `Label` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Label=Nhãn',
  `type_id` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `list_show` tinyint(3) DEFAULT '1' COMMENT 'Label=List&list=false',
  `insert_show` tinyint(3) DEFAULT '1' COMMENT 'Label=Add&list=false',
  `edit_show` tinyint(3) DEFAULT '1' COMMENT 'Label=Edit&list=false',
  `edit_width` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_height` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `list_default_orderby` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `list_footer_subtotal` int(3) DEFAULT '0',
  `list_sortable` int(3) DEFAULT '0',
  `fk_isMultiLevel` tinyint(3) DEFAULT '0' COMMENT 'Label=Khóa ngoại - Multilevel&list=false',
  `fk_from` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Label=Khóa ngoại - From&list=false',
  `fk_where` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Label=Khóa ngoại - Where&list=false',
  `fk_orderby` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Label=Khóa ngoại - Order by&list=false',
  `fk_text` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Label=Khóa ngoại - Text&list=false',
  `fk_value` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Label=Khóa ngoại - Value&list=false',
  `fk_count_sub_total` tinyint(4) DEFAULT '0',
  `isFilter` tinyint(3) DEFAULT '0' COMMENT 'Label=Chức năng lọc',
  `position` int(10) DEFAULT NULL,
  `plugin_function_id` int(10) DEFAULT NULL,
  `plufin_function_parameter` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `front_list_show` tinyint(4) DEFAULT '0',
  `front_insert_show` tinyint(4) DEFAULT '0',
  `front_edit_show` tinyint(4) DEFAULT '0',
  `front_detail_show` tinyint(4) DEFAULT '0',
  `check_require` tinyint(3) DEFAULT '0',
  `check_telephone` tinyint(4) DEFAULT '0',
  `check_url` tinyint(4) DEFAULT '0',
  `check_email` tinyint(4) DEFAULT '0',
  `check_digit` tinyint(4) DEFAULT '0',
  `check_range` tinyint(4) DEFAULT '0',
  `check_range_min` bigint(20) DEFAULT '0',
  `check_range_max` bigint(20) DEFAULT '0',
  `check_file_extension` tinyint(4) DEFAULT '0',
  `check_file_extension_list` varchar(100) COLLATE utf8_unicode_ci DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=617 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_field`
--

INSERT INTO `sys_field` (`id`, `table_id`, `field_name`, `format_id`, `Label`, `type_id`, `list_show`, `insert_show`, `edit_show`, `edit_width`, `edit_height`, `list_default_orderby`, `list_footer_subtotal`, `list_sortable`, `fk_isMultiLevel`, `fk_from`, `fk_where`, `fk_orderby`, `fk_text`, `fk_value`, `fk_count_sub_total`, `isFilter`, `position`, `plugin_function_id`, `plufin_function_parameter`, `front_list_show`, `front_insert_show`, `front_edit_show`, `front_detail_show`, `check_require`, `check_telephone`, `check_url`, `check_email`, `check_digit`, `check_range`, `check_range_min`, `check_range_max`, `check_file_extension`, `check_file_extension_list`) VALUES
(1, 53, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(2, 53, 'table_id', 0, '', NULL, 1, 1, 1, '', '', '', 0, 0, 0, 'sys_table', '', '', 'table_name', 'id', 0, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(3, 53, 'field_name', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(4, 53, 'format_id', 0, '', NULL, 1, 1, 1, '', '', '', 0, 0, 0, 'sys_plugin_function', '', '', 'title', 'id', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(5, 53, 'Label', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(6, 53, 'list_show', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(7, 53, 'insert_show', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(8, 53, 'edit_show', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(9, 53, 'edit_width', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(10, 53, 'edit_height', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(11, 53, 'list_default_orderby', 0, '', NULL, 1, 1, 1, '', '', '', 0, 0, 0, 'sys_orderby', '', '', 'title', 'id', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(12, 53, 'list_footer_subtotal', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(13, 53, 'list_sortable', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(14, 53, 'fk_isMultiLevel', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(15, 53, 'fk_from', 0, '', NULL, 1, 1, 1, '', '', '', 0, 0, 0, 'sys_table', '', '', 'table_name', 'table_name', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(16, 53, 'fk_where', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(17, 53, 'fk_orderby', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(18, 53, 'fk_text', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(19, 53, 'fk_value', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(20, 53, 'fk_count_sub_total', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(21, 53, 'isFilter', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(22, 53, 'position', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(23, 53, 'plugin_function_id', 0, '', '', 1, 1, 1, '', '', '', 0, 0, 0, 'sys_plugin_function', '', '', 'title', 'id', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(24, 53, 'plufin_function_parameter', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(25, 53, 'front_list_show', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(26, 53, 'front_insert_show', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(27, 53, 'front_edit_show', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(28, 53, 'front_detail_show', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(29, 53, 'check_require', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(30, 53, 'check_telephone', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(31, 53, 'check_url', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(32, 53, 'check_email', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(33, 53, 'check_digit', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(34, 53, 'check_range', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(35, 53, 'check_range_min', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(36, 53, 'check_range_max', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(37, 53, 'check_file_extension', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(38, 53, 'check_file_extension_list', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(74, 54, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(75, 54, 'table_name', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(76, 54, 'title', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(77, 54, 'menu', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(78, 54, 'custom_link', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(79, 54, 'menu_group_id', 0, '', NULL, 1, 1, 1, '', '', '', 0, 0, 0, 'sys_menu_group', '', '', 'title', 'id', 0, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(80, 54, 'show_order', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(81, 54, 'list_page_size', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(82, 54, 'list_footer', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(83, 54, 'position', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(84, 58, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(85, 58, 'title', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(86, 58, 'position', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(87, 58, 'status', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(88, 73, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(89, 73, 'title', 0, 'Tiêu đề', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(95, 69, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(96, 69, 'title', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(97, 69, 'code', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(98, 70, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(99, 70, 'title', 0, 'Tiêu đề', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(100, 70, 'function_name', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(101, 72, 'id', 0, '', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(102, 72, 'username', 0, 'Username', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(103, 72, 'password', 0, 'Password', '', 0, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(104, 72, 'fullname', 0, 'Họ và Tên', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(105, 72, 'email', 0, 'Email', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, '0'),
(106, 72, 'roleid', 0, 'Loại tài khoản', '', 1, 1, 1, '', '', '', 0, 0, 0, 'webmaster_roles', '', '', 'title', 'id', 1, 1, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(107, 72, 'status', 0, 'Trạng thái', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(108, 72, 'is_change_webmaster_permission', 0, 'Được phân quyền', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(109, 72, 'is_view_tabledesign', 0, 'Đựơc thiết kế bảng', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(110, 72, 'datecreated', 0, 'Ngày tạo', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(111, 72, 'dateupdated', 0, 'Ngày cập nhật', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(112, 74, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(113, 74, 'title', 0, 'Tiêu đề', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(114, 74, 'code', 0, 'Code (php)', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(170, 123, 'is_delete', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(169, 123, 'is_edit', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(168, 123, 'is_insert', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(167, 123, 'is_list', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(166, 123, 'table_id', 0, '', NULL, 1, 1, 1, '', '', '', 0, 0, 0, 'sys_table', '', '', 'table_name', 'id', 0, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(165, 123, 'webmaster_role_id', 0, '', NULL, 1, 1, 1, '', '', '', 0, 0, 0, 'webmaster_roles', '', '', 'title', 'id', 0, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(164, 123, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(284, 58, 'picture', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(309, 53, 'type_id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(374, 73, 'position', 0, 'Position', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(460, 191, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(461, 191, 'title', 0, 'Tỉnh thành', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(462, 191, 'picture', 0, 'Hình ảnh', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(463, 191, 'position', 0, 'Ví trí', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(464, 191, 'status', 0, 'Trạng thái', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(465, 191, 'datecreated', 0, 'Ngày tạo', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(466, 191, 'dateupdated', 0, 'Ngày cập nhật', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(491, 192, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(492, 192, 'tinhthanh_id', 0, 'Tỉnh thành', '', 1, 1, 1, '', '', '', 0, 0, 0, 'city_vietnam', '', '', 'title', 'id', 0, 1, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(493, 192, 'title', 0, 'Họ và Tên', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(494, 192, 'address', 0, 'Địa chỉ', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(495, 192, 'picture', 0, 'Hình ảnh', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(496, 192, 'mst', 0, 'Mã số thuế', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(497, 192, 'email', 0, 'Email', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(498, 192, 'phone', 0, 'Điện thoại', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(499, 192, 'fax', 0, 'Fax', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(500, 192, 'datecreated', 0, 'Ngày tạo', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(501, 192, 'status', 0, 'Trạng thái', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(502, 193, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(503, 193, 'title', 0, 'Tiêu đề', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(504, 193, 'description', 0, 'Mô tả', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(505, 193, 'status', 0, 'Trạng thái', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(506, 194, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(507, 194, 'item_code', 0, 'Mã mặt hàng', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(508, 194, 'item_name', 0, 'Tên mặt hàng', '', 1, 1, 1, '', '', '', 0, 1, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(509, 194, 'unit', 0, 'Đơn vị', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(510, 194, 'price', 0, 'Giá', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(511, 194, 'note', 0, 'Ghi chú', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(513, 195, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(514, 195, 'tinhthanh_id', 0, 'Tỉnh thành', '', 1, 1, 1, '', '', '', 0, 0, 0, 'city_vietnam', '', '', 'title', 'id', 0, 1, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(515, 195, 'title', 0, 'Họ và tên', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(516, 195, 'address', 0, 'Địa chỉ', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(517, 195, 'picture', 0, 'Hình đại diện', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(518, 195, 'mst', 0, 'Mã số thuể', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(519, 195, 'email', 0, 'Email', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(520, 195, 'phone', 0, 'Phone', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(521, 195, 'fax', 0, 'Fax', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(522, 195, 'datecreated', 0, 'Ngày tạo', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(523, 195, 'status', 0, 'Trạng thái', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(524, 197, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(525, 197, 'title', 0, 'Họ và tên', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(526, 197, 'address', 0, 'Địa chỉ', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(527, 197, 'phone', 0, 'Điện thoại', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(528, 197, 'tax', 0, 'Thuế', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(529, 197, 'soluong', 0, 'Số lượng thông báo', '', 0, 0, 0, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(530, 197, 'soluongm', 0, 'Số lượng thông báo khổ giấy', '', 0, 0, 0, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(531, 194, 'status', 0, 'Trạng thái', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(532, 194, 'quantity', 0, 'Số lượng', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(533, 194, 'quantitym', 0, 'Số lượng mét', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(534, 194, 'is_dichvu', 0, 'Mặt hàng là dịch vụ', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(535, 195, 'is_nvquay', 0, 'Là nhân viên nhận hình', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(536, 195, 'is_other', 0, 'Nhân viên khác', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(537, 195, 'is_nvxh', 0, 'Nhân viên xuất hàng', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(538, 198, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(539, 198, 'title', 0, 'Tên khổ giấy', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(540, 198, 'quantity', 0, 'Số lượng (Mét vuông)', '', 0, 0, 0, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(541, 198, 'note', 0, 'Ghi chú', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(542, 198, 'status', 0, 'Trạng thái', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(543, 194, 'khogiay_id', 0, 'Loại khổ giấy', '', 1, 1, 1, '', '', '', 0, 0, 0, 'khogiay', '', '', 'title', 'id', 0, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(544, 194, 'dientich', 0, 'Tốn giấy (cm2)', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(545, 198, 'quantity_du', 0, 'Số dư hiện tại (Mét vuông)', '', 0, 0, 0, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(546, 198, 'datecreated', 0, 'Ngày tạo', '', 0, 0, 0, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(547, 198, 'dateupdated', 0, 'Ngày cập nhật', '', 0, 0, 0, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(548, 199, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(549, 199, 'title', 0, 'Tên khổ giấy', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(550, 199, 'quantity', 0, 'Tổng Số lượng (Mét vuông)', '', 0, 0, 0, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(551, 199, 'quantity_du', 0, 'Số dư hiện tại (Mét vuông)', '', 0, 0, 0, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(552, 199, 'note', 0, 'Ghi chú', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(553, 199, 'status', 0, 'Trạng thái', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(554, 199, 'datecreated', 0, 'Ngày tạo', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(555, 199, 'dateupdated', 0, 'Ngày cập nhật', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(556, 200, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(557, 200, 'khogiay_id', 0, 'Loại khổ giấy', '', 0, 0, 0, '', '', '', 0, 0, 0, '', '', '', 'title', 'id', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(558, 200, 'title', 0, 'Tên khổ giấy', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(559, 200, 'quantity', 0, 'Số lượng (Cm2)', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(560, 200, 'note', 0, 'Ghi chú', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(561, 200, 'datecreated', 0, 'Ngày nhập', '', 1, 1, 0, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(562, 200, 'dateupdated', 0, 'Ngày cập nhật', '', 1, 0, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(563, 200, 'status', 0, 'Trạng thái', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(568, 200, 'quantity_scroll', 0, 'Roll/cm2', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(564, 208, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(565, 208, 'khogiay_id', 0, 'Loại khổ giấy', '', 1, 1, 1, '', '', '', 0, 0, 0, 'khogiay_category', '', '', 'title', 'id', 0, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(566, 208, 'dientich', 0, 'Diện tích (Cm2)', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(567, 208, 'datecreated', 0, 'Ngày cập nhật', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(569, 200, 'scroll', 0, 'Tồn kho (Rolls)', '', 1, 0, 0, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 3, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(570, 194, 'price_goc', 0, 'Giá gốc', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(571, 212, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(572, 212, 'title', 0, 'Tiêu đề', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(573, 212, 'content', 0, 'Nội dung', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(574, 212, 'datecreated', 0, 'Ngày tạo', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(575, 212, 'status', 0, 'Trạng thái', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(576, 212, 'viewhinh', 0, 'Xem hình', '', 1, 0, 0, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 2, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(577, 212, 'fullname', 0, 'FullName', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(578, 214, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(579, 214, 'type_id', 0, 'Loại', '', 1, 1, 1, '', '', '', 0, 0, 0, 'loaithuchi', '', '', 'title', 'id', 0, 1, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(580, 214, 'price', 0, 'Số tiền', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(581, 214, 'datecreated', 0, 'Ngày tạo', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(582, 214, 'dateupdated', 0, 'Ngày cập nhật', '', 0, 0, 0, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(583, 214, 'note', 0, 'Ghi chú', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(584, 213, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(585, 213, 'title', 0, 'Loại', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(586, 216, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(587, 216, 'title', 0, 'Tên dự án', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(588, 216, 'price', 0, 'Dự kiến giá', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(589, 216, 'date_start', 0, 'Ngày bắt đầu', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(590, 216, 'date_end', 0, 'Ngày kết thúc', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(591, 216, 'process', 0, 'Hoàn thành (%)', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(592, 216, 'note', 0, 'Ghi chú', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(593, 216, 'datecreated', 0, 'Ngày tạo', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(594, 216, 'dateupdated', 0, 'Ngày cập nhật', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(595, 217, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(596, 217, 'title', 0, 'Tiêu đề', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(597, 216, 'trangthai_id', 0, 'Trạng thái', '', 1, 1, 1, '', '', '', 0, 0, 0, 'status_duan', '', '', 'title', 'id', 0, 1, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(598, 216, 'content', 0, 'Nội dung', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(599, 216, 'file', 0, 'File đính kèm', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(600, 220, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(601, 220, 'title', 0, 'Loại', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(602, 214, 'member_id', 0, 'Thành viên', '', 1, 1, 1, '', '', '', 0, 0, 0, 'webmaster', '', '', 'fullname', 'id', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(603, 216, 'member_id', 0, 'Thành viên', '', 1, 1, 1, '', '', '', 0, 0, 0, 'webmaster', '', '', 'fullname', 'id', 0, 1, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(604, 221, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(605, 221, 'user_id', 0, 'Người tạo', '', 1, 1, 1, '', '', '', 0, 0, 0, 'webmaster', '', '', 'fullname', 'id', 0, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(606, 221, 'title', 0, 'Tiêu đề', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(607, 221, 'date_from', 0, 'Từ ngày', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(608, 221, 'date_to', 0, 'Đến ngày', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(609, 221, 'quantity', 0, 'Người lớn', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(610, 221, 'baby', 0, 'Trẻ em', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(611, 221, 'datecreated', 0, 'Ngày tạo', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(612, 221, 'status', 0, 'Trạng thái', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(613, 221, 'detail', 0, 'Chi tiết', '', 1, 0, 0, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 4, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(614, 225, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(615, 225, 'title', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(616, 225, 'status', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `sys_format`
--

CREATE TABLE IF NOT EXISTS `sys_format` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varbinary(50) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_format`
--

INSERT INTO `sys_format` (`id`, `title`, `code`) VALUES
(1, 'Tiền VNĐ', 0x564e44),
(2, 'Phần trăm', 0x50455243454e54),
(3, 'Tiền US', 0x24);

-- --------------------------------------------------------

--
-- Table structure for table `sys_menu_group`
--

CREATE TABLE IF NOT EXISTS `sys_menu_group` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(10) DEFAULT NULL,
  `status` tinyint(3) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_menu_group`
--

INSERT INTO `sys_menu_group` (`id`, `title`, `picture`, `position`, `status`) VALUES
(1, 'System', '/products/icon/Housing.gif', 0, 1),
(7, 'Quản lý cá nhân', '/products/icon/Photo.gif', 0, 1),
(24, 'Quản lý dự án', '/products/icon/WebUI.gif', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sys_orderby`
--

CREATE TABLE IF NOT EXISTS `sys_orderby` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_orderby`
--

INSERT INTO `sys_orderby` (`id`, `title`, `code`) VALUES
(1, 'ASC', 'ASC'),
(2, 'DESC', 'DESC');

-- --------------------------------------------------------

--
-- Table structure for table `sys_plugin_function`
--

CREATE TABLE IF NOT EXISTS `sys_plugin_function` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `function_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_plugin_function`
--

INSERT INTO `sys_plugin_function` (`id`, `title`, `function_name`) VALUES
(2, 'link_option', 'link_option'),
(4, 'link_detail_tour', 'link_detail_tour');

-- --------------------------------------------------------

--
-- Table structure for table `sys_table`
--

CREATE TABLE IF NOT EXISTS `sys_table` (
  `id` int(10) unsigned NOT NULL,
  `table_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Label=Table',
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu` tinyint(3) DEFAULT '0',
  `custom_link` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_group_id` int(10) DEFAULT NULL,
  `show_order` tinyint(3) DEFAULT '1',
  `list_page_size` int(10) DEFAULT NULL,
  `list_footer` int(3) DEFAULT '0',
  `position` int(10) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=226 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_table`
--

INSERT INTO `sys_table` (`id`, `table_name`, `title`, `menu`, `custom_link`, `menu_group_id`, `show_order`, `list_page_size`, `list_footer`, `position`) VALUES
(53, 'sys_field', 'Field', 1, '', 1, 1, 50, 0, 0),
(54, 'sys_table', 'Table', 1, '', 1, 1, 1000, 0, 0),
(58, 'sys_menu_group', 'Menu Group', 1, '', 1, 1, 0, 1, 0),
(73, 'webmaster_roles', 'Chức vụ', 1, '', 1, 1, 0, 0, 0),
(69, 'sys_format', 'Field Format', 1, '', 1, 1, 0, 1, 0),
(70, 'sys_plugin_function', 'Plugin Function', 1, '', 1, 0, 0, 0, 0),
(72, 'webmaster', 'Tài khoản', 1, '', 1, 1, 0, 0, 0),
(74, 'sys_orderby', 'Order by', 1, '', 1, 1, 0, 0, 0),
(123, 'webmaster_permission', 'Permission', 1, '', 1, 1, 0, 1, 0),
(197, 'setting', 'Cấu hình hệ thống', 1, '', 1, 1, 0, 0, 5),
(217, 'status_duan', 'Trạng thái dự án', 1, '', 24, 1, 0, 0, 2),
(214, 'thuchi', 'Thu chi', 1, '', 7, 1, 100, 0, 2),
(216, 'duan', 'Dự án', 1, '', 24, 1, 50, 0, 0),
(218, 'bieudoduan', 'Biểu đồ % dự án', 1, 'bieudoduan.php', 24, 1, 0, 0, 0),
(219, 'thongkethuchi', 'Thống kê thu chi', 1, 'thongkethuchi.php', 7, 1, 0, 0, 5),
(220, 'loaithuchi', 'Loại thu chi', 1, '', 7, 1, 0, 0, 0),
(221, 'chiphitour', 'Danh sách Thu chi tour', 1, '', 7, 1, 50, 1, 0),
(222, 'group_date_tour', NULL, 0, NULL, NULL, 1, NULL, 0, NULL),
(223, 'tour_detail', NULL, 0, NULL, NULL, 1, NULL, 0, NULL),
(224, 'thuchitour', 'Thêm Thu chi tour', 1, 'chiphitour.php', 7, 1, 0, 0, 0),
(225, 'ck_tm', 'CK_TM', 1, '', 1, 1, 10, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `thuchi`
--

CREATE TABLE IF NOT EXISTS `thuchi` (
  `id` int(10) NOT NULL,
  `type_id` int(10) DEFAULT NULL,
  `member_id` int(11) NOT NULL,
  `price` double DEFAULT NULL,
  `datecreated` bigint(20) DEFAULT NULL,
  `dateupdated` bigint(20) DEFAULT NULL,
  `note` varchar(250) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `thuchi`
--

INSERT INTO `thuchi` (`id`, `type_id`, `member_id`, `price`, `datecreated`, `dateupdated`, `note`) VALUES
(1, 2, 43, 3000000, 1461974400, 1461960592, 'thu nghiem');

-- --------------------------------------------------------

--
-- Table structure for table `tour_detail`
--

CREATE TABLE IF NOT EXISTS `tour_detail` (
  `id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `group_date_tour_id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `ck_tm` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit` int(11) NOT NULL,
  `price` float NOT NULL,
  `total_price` float NOT NULL,
  `note` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tour_detail`
--

INSERT INTO `tour_detail` (`id`, `tour_id`, `group_date_tour_id`, `title`, `ck_tm`, `quantity`, `unit`, `price`, `total_price`, `note`, `status`) VALUES
(1, 6, 5, 'Ăn sáng', 'TM', 100, 1, 0, 0, '', 1),
(2, 6, 5, 'Ăn trưa', 'TM', 100, 1, 0, 0, '', 1),
(3, 6, 5, 'Ăn tối', 'TM', 100, 1, 0, 0, '', 1),
(4, 6, 5, 'Khách sạn', 'TM', 100, 1, 0, 0, '', 1),
(5, 6, 5, 'Tham quan khác', 'TM', 100, 1, 0, 0, '', 1),
(6, 6, 6, 'Ăn sáng', 'TM', 100, 1, 0, 0, '', 1),
(7, 6, 6, 'Ăn trưa', 'TM', 100, 1, 0, 0, '', 1),
(8, 6, 6, 'Ăn tối', 'TM', 100, 1, 0, 0, '', 1),
(9, 6, 6, 'Khách sạn', 'TM', 100, 1, 0, 0, '', 1),
(10, 6, 6, 'Tham quan khác', 'TM', 100, 1, 0, 0, '', 1),
(11, 6, 7, 'Ăn sáng', 'TM', 100, 1, 0, 0, '', 1),
(12, 6, 7, 'Ăn trưa', 'TM', 100, 1, 0, 0, '', 1),
(13, 6, 7, 'Ăn tối', 'TM', 100, 1, 0, 0, '', 1),
(14, 6, 7, 'Khách sạn', 'TM', 100, 1, 0, 0, '', 1),
(15, 6, 7, 'Tham quan khác', 'TM', 100, 1, 0, 0, '', 1),
(16, 6, 8, 'Ăn sáng', 'TM', 100, 1, 0, 0, '', 1),
(17, 6, 8, 'Ăn trưa', 'TM', 100, 1, 0, 0, '', 1),
(18, 6, 8, 'Ăn tối', 'TM', 100, 1, 0, 0, '', 1),
(19, 6, 8, 'Khách sạn', 'TM', 100, 1, 0, 0, '', 1),
(20, 6, 8, 'Tham quan khác', 'TM', 100, 1, 0, 0, '', 1),
(21, 7, 9, 'Ăn sáng', 'TM', 56, 1, 0, 0, '', 1),
(22, 7, 9, 'Ăn trưa', 'TM', 56, 1, 0, 0, '', 1),
(23, 7, 9, 'Ăn tối', 'TM', 56, 1, 0, 0, '', 1),
(24, 7, 9, 'Khách sạn', 'TM', 56, 1, 0, 0, '', 1),
(25, 7, 9, 'Tham quan khác', 'TM', 56, 1, 0, 0, '', 1),
(26, 7, 10, 'Ăn sáng', 'TM', 56, 1, 0, 0, '', 1),
(27, 7, 10, 'Ăn trưa', 'TM', 56, 1, 0, 0, '', 1),
(28, 7, 10, 'Ăn tối', 'TM', 56, 1, 0, 0, '', 1),
(29, 7, 10, 'Khách sạn', 'TM', 56, 1, 0, 0, '', 1),
(30, 7, 10, 'Tham quan khác', 'TM', 56, 1, 0, 0, '', 1),
(31, 7, 11, 'Ăn sáng', 'TM', 56, 1, 0, 0, '', 1),
(32, 7, 11, 'Ăn trưa', 'TM', 56, 1, 0, 0, '', 1),
(33, 7, 11, 'Ăn tối', 'TM', 56, 1, 0, 0, '', 1),
(34, 7, 11, 'Khách sạn', 'TM', 56, 1, 0, 0, '', 1),
(35, 7, 11, 'Tham quan khác', 'TM', 56, 1, 0, 0, '', 1),
(36, 7, 12, 'Ăn sáng', 'TM', 56, 1, 0, 0, '', 1),
(37, 7, 12, 'Ăn trưa', 'TM', 56, 1, 0, 0, '', 1),
(38, 7, 12, 'Ăn tối', 'TM', 56, 1, 0, 0, '', 1),
(39, 7, 12, 'Khách sạn', 'TM', 56, 1, 0, 0, '', 1),
(40, 7, 12, 'Tham quan khác', 'TM', 56, 1, 0, 0, '', 1),
(41, 7, 13, 'Ăn sáng', 'TM', 56, 1, 0, 0, '', 1),
(42, 7, 13, 'Ăn trưa', 'TM', 56, 1, 0, 0, '', 1),
(43, 7, 13, 'Ăn tối', 'TM', 56, 1, 0, 0, '', 1),
(44, 7, 13, 'Khách sạn', 'TM', 56, 1, 0, 0, '', 1),
(45, 7, 13, 'Tham quan khác', 'TM', 56, 1, 0, 0, '', 1),
(46, 9, 14, 'Ăn sáng', 'TM', 55, 1, 0, 0, '', 1),
(47, 9, 14, 'Ăn trưa', 'TM', 55, 1, 0, 0, '', 1),
(48, 9, 14, 'Ăn tối', 'TM', 55, 1, 0, 0, '', 1),
(49, 9, 14, 'Khách sạn', 'TM', 55, 1, 0, 0, '', 1),
(50, 9, 14, 'Tham quan khác', 'TM', 55, 1, 0, 0, '', 1),
(51, 9, 15, 'Ăn sáng', 'TM', 55, 1, 0, 0, '', 1),
(52, 9, 15, 'Ăn trưa', 'TM', 55, 1, 0, 0, '', 1),
(53, 9, 15, 'Ăn tối', 'TM', 55, 1, 0, 0, '', 1),
(54, 9, 15, 'Khách sạn', 'TM', 55, 1, 0, 0, '', 1),
(55, 9, 15, 'Tham quan khác', 'TM', 55, 1, 0, 0, '', 1),
(56, 9, 16, 'Ăn sáng', 'TM', 55, 1, 0, 0, '', 1),
(57, 9, 16, 'Ăn trưa', 'TM', 55, 1, 0, 0, '', 1),
(58, 9, 16, 'Ăn tối', 'TM', 55, 1, 0, 0, '', 1),
(59, 9, 16, 'Khách sạn', 'TM', 55, 1, 0, 0, '', 1),
(60, 9, 16, 'Tham quan khác', 'TM', 55, 1, 0, 0, '', 1),
(61, 9, 17, 'Ăn sáng', 'TM', 55, 1, 0, 0, '', 1),
(62, 9, 17, 'Ăn trưa', 'TM', 55, 1, 0, 0, '', 1),
(63, 9, 17, 'Ăn tối', 'TM', 55, 1, 0, 0, '', 1),
(64, 9, 17, 'Khách sạn', 'TM', 55, 1, 0, 0, '', 1),
(65, 9, 17, 'Tham quan khác', 'TM', 55, 1, 0, 0, '', 1),
(66, 9, 18, 'Ăn sáng', 'TM', 55, 1, 0, 0, '', 1),
(67, 9, 18, 'Ăn trưa', 'TM', 55, 1, 0, 0, '', 1),
(68, 9, 18, 'Ăn tối', 'TM', 55, 1, 0, 0, '', 1),
(69, 9, 18, 'Khách sạn', 'TM', 55, 1, 0, 0, '', 1),
(70, 9, 18, 'Tham quan khác', 'TM', 55, 1, 0, 0, '', 1),
(71, 9, 19, 'Ăn sáng', 'TM', 55, 1, 0, 0, '', 1),
(72, 9, 19, 'Ăn trưa', 'TM', 55, 1, 0, 0, '', 1),
(73, 9, 19, 'Ăn tối', 'TM', 55, 1, 0, 0, '', 1),
(74, 9, 19, 'Khách sạn', 'TM', 55, 1, 0, 0, '', 1),
(75, 9, 19, 'Tham quan khác', 'TM', 55, 1, 0, 0, '', 1),
(76, 10, 20, 'Ăn sáng', 'TM', 6, 1, 0, 0, '', 1),
(77, 10, 20, 'Ăn trưa', 'TM', 6, 1, 0, 0, '', 1),
(78, 10, 20, 'Ăn tối', 'TM', 6, 1, 0, 0, '', 1),
(79, 10, 20, 'Khách sạn', 'TM', 6, 1, 0, 0, '', 1),
(80, 10, 20, 'Tham quan khác', 'TM', 6, 1, 0, 0, '', 1),
(81, 10, 21, 'Ăn sáng', 'TM', 6, 1, 0, 0, '', 1),
(82, 10, 21, 'Ăn trưa', 'TM', 6, 1, 0, 0, '', 1),
(83, 10, 21, 'Ăn tối', 'TM', 6, 1, 0, 0, '', 1),
(84, 10, 21, 'Khách sạn', 'TM', 6, 1, 0, 0, '', 1),
(85, 10, 21, 'Tham quan khác', 'TM', 6, 1, 0, 0, '', 1),
(86, 10, 22, 'Ăn sáng', 'TM', 6, 1, 0, 0, '', 1),
(87, 10, 22, 'Ăn trưa', 'TM', 6, 1, 0, 0, '', 1),
(88, 10, 22, 'Ăn tối', 'TM', 6, 1, 0, 0, '', 1),
(89, 10, 22, 'Khách sạn', 'TM', 6, 1, 0, 0, '', 1),
(90, 10, 22, 'Tham quan khác', 'TM', 6, 1, 0, 0, '', 1),
(91, 10, 23, 'Ăn sáng', 'TM', 6, 1, 0, 0, '', 1),
(92, 10, 23, 'Ăn trưa', 'TM', 6, 1, 0, 0, '', 1),
(93, 10, 23, 'Ăn tối', 'TM', 6, 1, 0, 0, '', 1),
(94, 10, 23, 'Khách sạn', 'TM', 6, 1, 0, 0, '', 1),
(95, 10, 23, 'Tham quan khác', 'TM', 6, 1, 0, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `webmaster`
--

CREATE TABLE IF NOT EXISTS `webmaster` (
  `id` int(10) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Thanh vien',
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Mat khau',
  `fullname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Ho ten',
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Email',
  `roleid` int(10) NOT NULL COMMENT 'Role',
  `status` tinyint(3) unsigned DEFAULT '1' COMMENT 'Trang thai',
  `is_change_webmaster_permission` tinyint(3) DEFAULT '0',
  `is_view_tabledesign` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `webmaster`
--

INSERT INTO `webmaster` (`id`, `username`, `password`, `fullname`, `email`, `roleid`, `status`, `is_change_webmaster_permission`, `is_view_tabledesign`) VALUES
(3, 'thuy.tq', '6d230603c695221de25dc34f6bb31a73', 'Mr. Thuy', 'thuy.tq@hotmail.com', 11, 1, 1, 1),
(43, 'duythe', '00338e44eed127c464635e185a5ae64e', 'Duy The', 'duythe@gmail.com', 4, 1, 1, 1),
(44, 'nhanvien', '7d81aad9f9ee89ad4bd10a7e9da23e09', 'Nhân Viên', 'tquocthuy@gmail.com', 14, 1, 0, 0),
(45, 'duythe', '00338e44eed127c464635e185a5ae64e', 'Nguyễn Văn Tèo', 'teo@gmail.comv', 11, 1, 0, 0),
(46, 'admin', 'e6e061838856bf47e1de730719fb2609', 'admin', 'admin@thuchi.com', 11, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `webmaster_permission`
--

CREATE TABLE IF NOT EXISTS `webmaster_permission` (
  `id` int(10) unsigned NOT NULL,
  `webmaster_role_id` int(10) DEFAULT NULL,
  `table_id` int(10) DEFAULT NULL,
  `is_list` tinyint(4) DEFAULT '1',
  `is_insert` tinyint(4) DEFAULT '1',
  `is_edit` tinyint(4) DEFAULT '1',
  `is_delete` tinyint(4) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `webmaster_permission`
--

INSERT INTO `webmaster_permission` (`id`, `webmaster_role_id`, `table_id`, `is_list`, `is_insert`, `is_edit`, `is_delete`) VALUES
(17, 4, 72, 1, 1, 1, 1),
(43, 4, 197, 1, 1, 1, 1),
(68, 4, 217, 1, 1, 1, 1),
(62, 11, 217, 1, 1, 1, 1),
(63, 11, 214, 1, 1, 1, 1),
(64, 11, 216, 1, 1, 1, 1),
(65, 11, 218, 1, 1, 1, 1),
(66, 11, 219, 1, 1, 1, 1),
(67, 11, 220, 1, 1, 1, 1),
(69, 4, 216, 1, 1, 1, 1),
(70, 4, 218, 1, 1, 1, 1),
(71, 4, 219, 1, 1, 1, 1),
(72, 4, 220, 1, 1, 1, 1),
(73, 4, 214, 1, 1, 1, 1),
(74, 4, 224, 1, 1, 1, 1),
(75, 14, 224, 1, 1, 1, 1),
(76, 4, 221, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `webmaster_roles`
--

CREATE TABLE IF NOT EXISTS `webmaster_roles` (
  `id` smallint(6) NOT NULL COMMENT 'ID',
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Role name',
  `position` int(10) DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `webmaster_roles`
--

INSERT INTO `webmaster_roles` (`id`, `title`, `position`) VALUES
(4, 'Supper Admin', 1),
(11, 'Hệ thống', 0),
(14, 'Nhân viên du lịch', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chiphitour`
--
ALTER TABLE `chiphitour`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `ck_tm`
--
ALTER TABLE `ck_tm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `duan`
--
ALTER TABLE `duan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_date_tour`
--
ALTER TABLE `group_date_tour`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loaithuchi`
--
ALTER TABLE `loaithuchi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_duan`
--
ALTER TABLE `status_duan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_field`
--
ALTER TABLE `sys_field`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_format`
--
ALTER TABLE `sys_format`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_menu_group`
--
ALTER TABLE `sys_menu_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_orderby`
--
ALTER TABLE `sys_orderby`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_plugin_function`
--
ALTER TABLE `sys_plugin_function`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_table`
--
ALTER TABLE `sys_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thuchi`
--
ALTER TABLE `thuchi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tour_detail`
--
ALTER TABLE `tour_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webmaster`
--
ALTER TABLE `webmaster`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `webmaster_permission`
--
ALTER TABLE `webmaster_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webmaster_roles`
--
ALTER TABLE `webmaster_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chiphitour`
--
ALTER TABLE `chiphitour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `ck_tm`
--
ALTER TABLE `ck_tm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `duan`
--
ALTER TABLE `duan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `group_date_tour`
--
ALTER TABLE `group_date_tour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `loaithuchi`
--
ALTER TABLE `loaithuchi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `status_duan`
--
ALTER TABLE `status_duan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sys_field`
--
ALTER TABLE `sys_field`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=617;
--
-- AUTO_INCREMENT for table `sys_format`
--
ALTER TABLE `sys_format`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sys_menu_group`
--
ALTER TABLE `sys_menu_group`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `sys_orderby`
--
ALTER TABLE `sys_orderby`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sys_plugin_function`
--
ALTER TABLE `sys_plugin_function`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sys_table`
--
ALTER TABLE `sys_table`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=226;
--
-- AUTO_INCREMENT for table `thuchi`
--
ALTER TABLE `thuchi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tour_detail`
--
ALTER TABLE `tour_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT for table `webmaster`
--
ALTER TABLE `webmaster`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `webmaster_permission`
--
ALTER TABLE `webmaster_permission`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `webmaster_roles`
--
ALTER TABLE `webmaster_roles`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
