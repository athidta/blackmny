-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2018 at 12:36 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `essentialmode`
--

-- --------------------------------------------------------

--
-- Table structure for table `addon_account`
--

CREATE TABLE `addon_account` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `addon_account`
--

INSERT INTO `addon_account` (`id`, `name`, `label`, `shared`) VALUES
(1, 'caution', 'Caution', 0),
(2, 'society_cardealer', 'Concessionnaire', 1),
(3, 'society_police', 'Police', 1),
(4, 'society_mecano', 'Mecano', 1),
(5, 'society_ambulance', 'Ambulance', 1),
(6, 'society_taxi', 'Taxi', 1),
(7, 'society_boatdealer', 'Marina', 1),
(8, 'society_hitman', 'Hitman', 1),
(9, 'society_vip', 'Vip', 1);

-- --------------------------------------------------------

--
-- Table structure for table `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` double NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1, 'society_cardealer', 0, NULL),
(2, 'society_police', 0, NULL),
(3, 'society_mecano', 0, NULL),
(4, 'society_ambulance', 0, NULL),
(5, 'society_taxi', 0, NULL),
(6, 'society_boatdealer', 0, NULL),
(7, 'society_hitman', 0, NULL),
(8, 'society_vip', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `addon_inventory`
--

INSERT INTO `addon_inventory` (`id`, `name`, `label`, `shared`) VALUES
(1, 'society_cardealer', 'Concesionnaire', 1),
(2, 'society_police', 'Police', 1),
(3, 'society_mecano', 'Mecano', 1),
(4, 'society_ambulance', 'Ambulance', 1),
(5, 'society_taxi', 'Taxi', 1),
(6, 'society_boatdealer', 'Marina', 1),
(7, 'society_hitman', 'Hitman', 1),
(8, 'society_vip', 'Vip', 1);

-- --------------------------------------------------------

--
-- Table structure for table `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `sender` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `target_type` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `boatdealer_boats`
--

CREATE TABLE `boatdealer_boats` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `boats`
--

CREATE TABLE `boats` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boats`
--

INSERT INTO `boats` (`name`, `model`, `price`, `category`) VALUES
('Dinghy 4Seat', 'dinghy', 25000, 'boat'),
('Dinghy 2Seat', 'dinghy2', 20000, 'boat'),
('Dinghy Yacht', 'dinghy4', 25000, 'boat'),
('Jetmax', 'jetmax', 30000, 'boat'),
('Marquis', 'marquis', 45000, 'boat'),
('Seashark', 'seashark', 10000, 'boat'),
('Seashark Yacht', 'seashark3', 10000, 'boat'),
('Speeder', 'speeder', 40000, 'boat'),
('Squalo', 'squalo', 32000, 'boat'),
('Submarine', 'submersible', 29000, 'subs'),
('Kraken', 'submersible2', 31000, 'subs'),
('Suntrap', 'suntrap', 34000, 'boat'),
('Toro', 'toro', 38000, 'boat'),
('Toro Yacht', 'toro2', 38000, 'boat'),
('Tropic', 'tropic', 27000, 'boat'),
('Tropic Yacht', 'tropic2', 27000, 'boat');

-- --------------------------------------------------------

--
-- Table structure for table `boat_categories`
--

CREATE TABLE `boat_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boat_categories`
--

INSERT INTO `boat_categories` (`name`, `label`) VALUES
('boat', 'Boats'),
('subs', 'Submersibles');

-- --------------------------------------------------------

--
-- Table structure for table `cardealer_vehicles`
--

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `sex` varchar(1) NOT NULL DEFAULT 'f',
  `height` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `datastore`
--

CREATE TABLE `datastore` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `datastore`
--

INSERT INTO `datastore` (`id`, `name`, `label`, `shared`) VALUES
(1, 'user_ears', 'Ears', 0),
(2, 'user_glasses', 'Glasses', 0),
(3, 'user_helmet', 'Helmet', 0),
(4, 'user_mask', 'Mask', 0),
(6, 'society_police', 'Police', 1),
(7, 'society_ambulance', 'Ambulance', 1),
(8, 'society_mecano', 'Mecano', 1),
(9, 'society_taxi', 'Taxi', 1),
(10, 'society_hitman', 'Hitman', 1),
(11, 'society_vip', 'Vip', 1);

-- --------------------------------------------------------

--
-- Table structure for table `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(1, 'society_police', NULL, '{}'),
(2, 'society_ambulance', NULL, '{}'),
(3, 'society_mecano', NULL, '{}'),
(4, 'society_taxi', NULL, '{}'),
(5, 'society_hitman', NULL, '{}'),
(6, 'society_vip', NULL, '{}');

-- --------------------------------------------------------

--
-- Table structure for table `fine_types`
--

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(1, 'ข้บรถชนแล้วหนี', 10000, 0),
(2, 'ข่มขู่', 10000, 0),
(3, 'อยู่ในพื้นที่สุ่มเสี่ยงผิดกฎหมาย', 50000, 0),
(4, 'ทำร้ายร่างกายผู้เล่น', 10000, 0),
(5, 'ปล้นผู้เล่น', 30000, 0),
(6, 'ถืออาวุธในที่สาธารณะ', 40000, 0),
(7, 'ยัดสิ่งผิดกฎหมายให้กับผู้เล่นคนอื่น', 100000, 0),
(8, 'ฆ่าผู้เล่น 1 คน', 50000, 0),
(9, 'ฆ่าผู้เล่น 2-4 คน', 200000, 0),
(10, 'ฆ่าผู้เล่น 5-10 คน', 500000, 0),
(11, 'ฆ่าผู้เล่น 11 คน ขึ้นไป', 1000000, 0),
(20, 'พูดจาหมิ่นประมาทเจ้าหน้าที่', 15000, 1),
(21, 'ตำรวจเรียกแล้วไม่จอด', 20000, 1),
(22, 'หนีการตรวจค้น', 20000, 1),
(23, 'ทำลายหลักฐาน', 50000, 1),
(24, 'แจ้งความเท็จ', 50000, 1),
(25, 'เปิดไมค์ก่อกวนบริเวณ สน', 50000, 1),
(26, 'ถ่วงเวลาเจ้าหน้าที่', 80000, 1),
(27, 'ขโมยรถเจ้าหน้าที่', 50000, 1),
(28, 'นำรถเข้า สน', 50000, 1),
(29, 'ทำร้ายร่างกายเจ้าหน้าที่', 20000, 1),
(30, 'ชุมนุมบริเวณ สน', 30000, 1),
(31, 'ขัดขวางการทำงานเจ้าหน้าที่', 100000, 1),
(40, 'จับ ผู้เล่น เป็นตัวประกัน ', 50000, 2),
(41, 'จับ ตำรวจ เป็นตัวประกัน', 100000, 2),
(42, 'จับ หมอ เป็นตัวประกัน', 150000, 2),
(50, 'สมรู้ร่วมคิดก่อเหตุ', 150000, 3),
(51, 'ฆ่าตำรวจ 1 คน', 80000, 3),
(52, 'ฆ่าตำรวจ 2-4 คน', 300000, 3),
(53, 'ฆ่าตำรวจ 5-10 คน', 800000, 3),
(54, 'ฆ่าตำรวจ 11 คน ขึ้นไป', 1000000, 3),
(55, 'ฆ่าหมอ 1 คน', 100000, 3),
(56, 'ก่อเหตุบริเวณ สน', 250000, 3),
(57, 'ปล้นร้านค้า', 50000, 3),
(58, 'ปล้นร้านเพชร', 200000, 3),
(59, 'ปล้นธนาคาร', 1000000, 3),
(60, 'มีอาวุธผิดกฎหมายในครอบครอง', 150000, 4),
(61, 'มี กัญชา ไว้ในครอบครอง 1-100 ชิ้น', 30000, 4),
(62, 'มี กัญชา ไว้ในครอบครอง 101-200 ชิ้น', 70000, 4),
(63, 'มี โคเคน ไว้ในครอบครอง 1-100 ชิ้น', 60000, 4),
(64, 'มี โคเคน ไว้ในครอบครอง 101-200 ชิ้น', 100000, 4),
(65, 'มี ยาบ้า ไว้ในครอบครอง 1-100 ชิ้น', 80000, 4),
(66, 'มี ยาบ้า ไว้ในครอบครอง 101-200 ชิ้น', 120000, 4),
(67, 'มี ฝิ่น ไว้ในครอบครอง 1-100 ชิ้น', 120000, 4),
(68, 'มี ฝิ่น ไว้ในครอบครอง 101-200 ชิ้น', 180000, 4),
(69, 'มี แหวนเพชร ไว้ในครอบครอง 1-100 ชิ้น', 125000, 4),
(70, 'มี แหวนเพชร ไว้ในครอบครองมากกว่า 100 ชิ้น', 250000, 4),
(71, 'เงินแดงผิดกฎหมายในครอบครองน้อยกว่า 1 หมื่น', 30000, 4),
(72, 'เงินแดงผิดกฎหมายในครอบครอง 10,000-50,000', 60000, 4),
(73, 'เงินแดงผิดกฎหมายในครอบครอง 50,001-100,000', 120000, 4),
(74, 'เงินแดงผิดกฎหมายในครอบครองมากกว่า 1 แสน', 150000, 4);

-- --------------------------------------------------------

--
-- Table structure for table `fine_types_ambulance`
--

CREATE TABLE `fine_types_ambulance` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT;

--
-- Dumping data for table `fine_types_ambulance`
--

INSERT INTO `fine_types_ambulance` (`id`, `label`, `amount`, `category`) VALUES
(1, 'ชุบหน่วยงาน', 1000, 0),
(2, 'ชุบผู้เล่นใหม่', 2000, 0),
(3, 'ชุบประชาชนในเมือง', 3000, 0),
(4, 'ชุบประชาชนนอกเมือง', 3500, 0),
(5, 'ชุบประชาชนในพื้นที่ทำสิ่งผิดกฎหมาย', 5000, 0),
(6, 'ชุบประชาชนที่ฆ่ากันเล่น', 6000, 0),
(7, 'ชุบประชาชนสถานที่ยากจะเข้าถึง', 8000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fine_types_hitman`
--

CREATE TABLE `fine_types_hitman` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT;

--
-- Dumping data for table `fine_types_hitman`
--

INSERT INTO `fine_types_hitman` (`id`, `label`, `amount`, `category`) VALUES
(1, 'ฆ่าประชาชน', 100000, 0),
(2, 'ฆ่าตำรวจ', 200000, 0),
(3, 'ฆ่าหมอ', 300000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fine_types_mecano`
--

CREATE TABLE `fine_types_mecano` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT;

--
-- Dumping data for table `fine_types_mecano`
--

INSERT INTO `fine_types_mecano` (`id`, `label`, `amount`, `category`) VALUES
(1, 'งัดรถ', 1000, 0),
(2, 'ซ่อมรถหน่วยงาน', 2000, 0),
(3, 'ซ่อมรถในเมือง', 3000, 0),
(4, 'ซ่อมรถนอกเมือง', 4000, 0),
(5, 'ซ่อมรถในพื้นที่เข้าถึงยาก', 5000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fine_types_taxi`
--

CREATE TABLE `fine_types_taxi` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT;

--
-- Dumping data for table `fine_types_taxi`
--

INSERT INTO `fine_types_taxi` (`id`, `label`, `amount`, `category`) VALUES
(1, 'รับ-ส่ง หน่วยงาน', 1000, 0),
(2, 'รับ-ส่ง ในเมือง', 2000, 0),
(3, 'รับ-ส่ง นอกเมือง', 4000, 0),
(4, 'รับ-ส่ง พื้นที่สุ่มเสี่ยง', 10000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gangs`
--

CREATE TABLE `gangs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `color` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gangs`
--

INSERT INTO `gangs` (`id`, `name`, `label`, `color`) VALUES
(1, 'none', 'ไม่มีแก๊ง', '');

-- --------------------------------------------------------

--
-- Table structure for table `gang_account`
--

CREATE TABLE `gang_account` (
  `id` int(11) NOT NULL,
  `account` varchar(255) NOT NULL,
  `gang` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gang_grades`
--

CREATE TABLE `gang_grades` (
  `id` int(11) NOT NULL,
  `gang_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gang_grades`
--

INSERT INTO `gang_grades` (`id`, `gang_name`, `grade`, `name`, `label`) VALUES
(1, 'none', 0, 'none', 'ไม่มีตำแหน่ง');

-- --------------------------------------------------------

--
-- Table structure for table `gang_owned`
--

CREATE TABLE `gang_owned` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gang_special`
--

CREATE TABLE `gang_special` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `limit` int(11) NOT NULL DEFAULT '-1',
  `rare` int(11) NOT NULL DEFAULT '0',
  `can_remove` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
('alive_chicken', '🐥ไก่สด', 40, 0, 1),
('bandage', '🍭 ยารักษา', 100, 0, 1),
('blowpipe', 'ท่อ', 10, 0, 1),
('bottle', '🍼ขวดเปล่า', -1, 0, 1),
('bread', '🥪ขนมปัง', -1, 0, 1),
('carokit', 'อุปกรณ์ซ่อม', -1, 0, 1),
('carotool', 'อุปกรณ์ซ่อม', -1, 0, 1),
('clip', '🔫กระสุนปืน', -1, 0, 1),
('clothe', '🎀เสื้อผ้า', 80, 0, 1),
('coke', '🌱โคเคน', -1, 0, 1),
('coke_pooch', '🌱แพ็คโคเคน', 100, 0, 1),
('copper', 'ทองแดง', 80, 0, 1),
('cutted_wood', 'ไม้แปรรูป', 40, 0, 1),
('diamond', '💎เพชร', 50, 0, 1),
('essence', '🛢️น้ำมันเครื่อง', 48, 0, 1),
('fabric', '🎀ผ้า', 160, 0, 1),
('fish', '🐟ปลา', 100, 0, 1),
('fixkit', 'อุปกรณ์ซ่อม', -1, 0, 1),
('fixtool', 'อุปกรณ์ซ่อม', -1, 0, 1),
('flag1', 'Flag1', -1, 0, 1),
('flag2', 'Flag2', -1, 0, 1),
('fresh_orange', '🍊ส้ม', 100, 0, 1),
('gazbottle', 'ถังแก๊ส', -1, 0, 1),
('gold', 'ทอง', 30, 0, 1),
('gym_membership', '💳บัตรสมาชิก', -1, 0, 1),
('iron', 'เหล็ก', 60, 0, 1),
('jewels', '💍แหวนเพชร', -1, 0, 1),
('loffe_fish', '🐠ปลาแซลมอน', 30, 0, 1),
('loffe_fishingbait', 'เหยื่อตกปลา', 200, 0, 1),
('loffe_rod', 'เบ็ดตกปลา', 1, 0, 1),
('meat', '🐮 เนื้อสด', -1, 0, 1),
('medikit', '💉ยาชุบชีวิต', 100, 0, 1),
('meth', '💊ยาบ้า', -1, 0, 1),
('meth_pooch', '💊แพ็คยาบ้า', 100, 0, 1),
('nitro', '🔥ไนโตร', -1, 0, 1),
('opium', '🍁ฝิ่น', -1, 0, 1),
('opium_pooch', '🍁แพ็คฝิ่น', 100, 0, 1),
('orange_juice', '🍹น้ำส้มคั้น', 50, 0, 1),
('packaged_chicken', '🐥แพ็คไก่', 200, 0, 1),
('packaged_orange', '📦ลังน้ำส้มคั้น', 10, 0, 1),
('packaged_plank', 'ไม้กระดาน', 200, 0, 1),
('petrol', '🛢️น้ำมัน', 48, 0, 1),
('petrol_raffin', '🛢️น้ำมันกลั่น', 24, 0, 1),
('powerade', '🍹เครื่องดื่มเกลือแร่', -1, 0, 1),
('protein_shake', '☕️เวย์โปรตีน', -1, 0, 1),
('resurrection', '🍄ใบชุบชีวิต', 20, 0, 1),
('slaughtered_chicken', '🐥ไก่สไลด์', 40, 0, 1),
('sportlunch', '🍫โปรตีนแท่ง', -1, 0, 1),
('stone', '🥌หิน', 30, 0, 1),
('warrant1', 'หมายค้นบ้าน 1', 1, 0, 1),
('warrant10', 'หมายค้นบ้าน 10', 1, 0, 1),
('warrant11', 'หมายค้นบ้าน 11', 1, 0, 1),
('warrant12', 'หมายค้นบ้าน 12', 1, 0, 1),
('warrant13', 'หมายค้นบ้าน 13', 1, 0, 1),
('warrant14', 'หมายค้นบ้าน 14', 1, 0, 1),
('warrant15', 'หมายค้นบ้าน 15', 1, 0, 1),
('warrant2', 'หมายค้นบ้าน 2', 1, 0, 1),
('warrant3', 'หมายค้นบ้าน 3', 1, 0, 1),
('warrant4', 'หมายค้นบ้าน 4', 1, 0, 1),
('warrant5', 'หมายค้นบ้าน 5', 1, 0, 1),
('warrant6', 'หมายค้นบ้าน 6', 1, 0, 1),
('warrant7', 'หมายค้นบ้าน 7', 1, 0, 1),
('warrant8', 'หมายค้นบ้าน 8', 1, 0, 1),
('warrant9', 'หมายค้นบ้าน 9', 1, 0, 1),
('washed_stone', '🥌หินล้าง', 30, 0, 1),
('water', '🥤น้ำ', -1, 0, 1),
('weed', '🍀กัญชา', -1, 0, 1),
('weed_pooch', '🍀แพ็คกัญชา', 100, 0, 1),
('whool', '🎀ขนสัตว์', 80, 0, 1),
('wood', 'ไม้', 40, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jail`
--

CREATE TABLE `jail` (
  `identifier` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `J_Time` int(10) NOT NULL,
  `J_Cell` varchar(5) COLLATE utf8mb4_bin NOT NULL,
  `Jailer` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `Jailer_ID` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `reason` varchar(100) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('admin', '👑แอดมิน', 1),
('ambulance', '👨‍⚕️แพทย์', 1),
('boatdealer', 'Marina', 1),
('cardealer', '🏎️คนขายรถ', 1),
('fisherman', '🎣ชาวประมง', 0),
('fuel', '⛽นักขุดน้ำมัน', 0),
('hitman', '💀ฮิตแมน', 1),
('lumberjack', '🔪นักตัดไม้', 0),
('mecano', '👨‍🔧ช่างซ่อม', 1),
('miner', '👷‍นักขุดเหมือง', 0),
('oranger', '🍊ชาวสวน', 0),
('oranger2', '🍊COP ชาวสวน', 1),
('oranger3', '🍊EMS ชาวสวน', 1),
('oranger4', '🍊MEC ชาวสวน', 1),
('oranger5', '🍊TAXI ชาวสวน', 1),
('oranger6', '🍊HM ชาวสวน', 1),
('oranger7', '🍊VIP ชาวสวน', 1),
('police', '👮‍ตำรวจ', 1),
('reporter', '🎥นักข่าว', 1),
('slaughterer', '🐔พนักงานเชือดไก่', 0),
('taxi', '🚕แท็กซี่', 1),
('textil', '✂️ช่างตัดเสื้อ', 0),
('unemployed', '👨‍💼‍ว่างงาน', 0),
('vip', '👑สมาชิกวีไอพี', 1);

-- --------------------------------------------------------

--
-- Table structure for table `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext COLLATE utf8mb4_bin NOT NULL,
  `skin_female` longtext COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'ตกงาน', 400, '{}', '{}'),
(2, 'lumberjack', 0, 'interim', 'มืออาชีพ', 1000, '{\"beard_3\":0,\"torso_2\":0,\"helmet_1\":21,\"bags_2\":0,\"beard_2\":0,\"bproof_1\":0,\"decals_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"makeup_1\":0,\"shoes\":0,\"lipstick_3\":0,\"lipstick_2\":0,\"torso_1\":43,\"eyebrows_4\":0,\"shoes_2\":0,\"beard_1\":0,\"makeup_3\":0,\"face\":0,\"hair_color_2\":0,\"glasses_2\":0,\"hair_color_1\":0,\"skin\":0,\"helmet_2\":0,\"makeup_4\":0,\"bags_1\":0,\"shoes_1\":56,\"pants_2\":0,\"age_1\":0,\"arms\":11,\"hair_1\":0,\"beard_4\":0,\"sex\":0,\"tshirt_1\":15,\"mask_1\":0,\"lipstick_1\":0,\"glasses\":0,\"eyebrows_2\":0,\"age_2\":0,\"eyebrows_1\":0,\"chain_1\":0,\"decals_1\":0,\"ears_1\":0,\"makeup_2\":0,\"lipstick_4\":0,\"ears_2\":0,\"bproof_2\":0,\"tshirt_2\":0,\"hair_2\":0,\"pants_1\":4,\"mask_2\":0,\"glasses_1\":0}', '{\"beard_3\":0,\"torso_2\":0,\"helmet_1\":13,\"bags_2\":0,\"beard_2\":0,\"bproof_1\":0,\"decals_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"makeup_1\":0,\"shoes\":0,\"lipstick_3\":0,\"lipstick_2\":0,\"torso_1\":31,\"eyebrows_4\":0,\"shoes_2\":15,\"beard_1\":0,\"makeup_3\":0,\"face\":0,\"hair_color_2\":0,\"glasses_2\":0,\"hair_color_1\":0,\"skin\":0,\"helmet_2\":2,\"makeup_4\":0,\"bags_1\":0,\"shoes_1\":3,\"pants_2\":0,\"age_1\":0,\"arms\":5,\"hair_1\":0,\"beard_4\":0,\"sex\":1,\"tshirt_1\":39,\"mask_1\":0,\"lipstick_1\":0,\"glasses\":0,\"eyebrows_2\":0,\"age_2\":0,\"eyebrows_1\":0,\"chain_1\":0,\"decals_1\":0,\"ears_1\":0,\"makeup_2\":0,\"lipstick_4\":0,\"ears_2\":0,\"bproof_2\":0,\"tshirt_2\":0,\"hair_2\":0,\"pants_1\":43,\"mask_2\":0,\"glasses_1\":0}'),
(3, 'fisherman', 0, 'interim', 'มืออาชีพ', 1000, '{\"beard_3\":0,\"torso_2\":0,\"helmet_1\":20,\"bags_2\":0,\"beard_2\":0,\"bproof_1\":0,\"decals_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"makeup_1\":0,\"shoes\":0,\"lipstick_3\":0,\"lipstick_2\":0,\"torso_1\":22,\"eyebrows_4\":0,\"shoes_2\":1,\"beard_1\":0,\"makeup_3\":0,\"face\":0,\"hair_color_2\":0,\"glasses_2\":0,\"hair_color_1\":0,\"skin\":0,\"helmet_2\":1,\"makeup_4\":0,\"bags_1\":0,\"shoes_1\":49,\"pants_2\":0,\"age_1\":0,\"arms\":0,\"hair_1\":0,\"beard_4\":0,\"sex\":0,\"tshirt_1\":15,\"mask_1\":0,\"lipstick_1\":0,\"glasses\":0,\"eyebrows_2\":0,\"age_2\":0,\"eyebrows_1\":0,\"chain_1\":0,\"decals_1\":0,\"ears_1\":0,\"makeup_2\":0,\"lipstick_4\":0,\"ears_2\":0,\"bproof_2\":0,\"tshirt_2\":0,\"hair_2\":0,\"pants_1\":89,\"mask_2\":0,\"glasses_1\":0}', '{\"makeup_2\":0,\"eyebrows_4\":0,\"skin\":0,\"helmet_1\":93,\"bproof_2\":0,\"mask_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"eyebrows_2\":0,\"sex\":1,\"shoes_2\":0,\"tshirt_1\":0,\"lipstick_1\":0,\"mask_1\":0,\"ears_1\":0,\"helmet_2\":5,\"glasses_2\":0,\"glasses_1\":5,\"eyebrows_1\":0,\"ears_2\":0,\"torso_1\":0,\"beard_1\":0,\"glasses\":0,\"tshirt_2\":0,\"makeup_4\":0,\"hair_1\":0,\"face\":0,\"shoes_1\":1,\"makeup_3\":0,\"bags_2\":0,\"lipstick_3\":0,\"hair_color_1\":0,\"makeup_1\":0,\"chain_2\":0,\"beard_2\":0,\"bags_1\":0,\"torso_2\":0,\"beard_4\":0,\"age_2\":0,\"shoes\":0,\"eyebrows_3\":0,\"chain_1\":0,\"hair_2\":0,\"decals_1\":0,\"age_1\":0,\"pants_1\":92,\"pants_2\":0,\"beard_3\":0,\"bproof_1\":0,\"lipstick_4\":0,\"arms\":0,\"hair_color_2\":0}'),
(4, 'fuel', 0, 'interim', 'มืออาชีพ', 1000, '{\"beard_3\":0,\"torso_2\":3,\"helmet_1\":90,\"bags_2\":0,\"beard_2\":0,\"bproof_1\":0,\"decals_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"makeup_1\":0,\"shoes\":0,\"lipstick_3\":0,\"lipstick_2\":0,\"torso_1\":65,\"eyebrows_4\":0,\"shoes_2\":0,\"beard_1\":0,\"makeup_3\":0,\"face\":0,\"hair_color_2\":0,\"glasses_2\":0,\"hair_color_1\":0,\"skin\":0,\"helmet_2\":0,\"makeup_4\":0,\"bags_1\":0,\"shoes_1\":51,\"pants_2\":3,\"age_1\":0,\"arms\":11,\"hair_1\":0,\"beard_4\":0,\"sex\":0,\"tshirt_1\":15,\"mask_1\":0,\"lipstick_1\":0,\"glasses\":0,\"eyebrows_2\":0,\"age_2\":0,\"eyebrows_1\":0,\"chain_1\":0,\"decals_1\":0,\"ears_1\":0,\"makeup_2\":0,\"lipstick_4\":0,\"ears_2\":0,\"bproof_2\":0,\"tshirt_2\":0,\"hair_2\":0,\"pants_1\":38,\"mask_2\":0,\"glasses_1\":0}', '{\"beard_3\":0,\"torso_2\":3,\"helmet_1\":89,\"bags_2\":0,\"beard_2\":0,\"bproof_1\":0,\"decals_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"makeup_1\":0,\"shoes\":0,\"lipstick_3\":0,\"lipstick_2\":0,\"torso_1\":59,\"eyebrows_4\":0,\"shoes_2\":2,\"beard_1\":0,\"makeup_3\":0,\"face\":0,\"hair_color_2\":0,\"glasses_2\":0,\"hair_color_1\":0,\"skin\":0,\"helmet_2\":0,\"makeup_4\":0,\"bags_1\":0,\"shoes_1\":33,\"pants_2\":3,\"age_1\":0,\"arms\":1,\"hair_1\":0,\"beard_4\":0,\"sex\":1,\"tshirt_1\":14,\"mask_1\":0,\"lipstick_1\":0,\"glasses\":0,\"eyebrows_2\":0,\"age_2\":0,\"eyebrows_1\":0,\"chain_1\":0,\"decals_1\":0,\"ears_1\":0,\"makeup_2\":0,\"lipstick_4\":0,\"ears_2\":0,\"bproof_2\":0,\"tshirt_2\":0,\"hair_2\":0,\"pants_1\":38,\"mask_2\":0,\"glasses_1\":0}'),
(5, 'reporter', 0, 'employee', 'มืออาชีพ', 0, '{}', '{}'),
(6, 'textil', 0, 'interim', 'มืออาชีพ', 1000, '{\"mask_1\":0,\"arms\":1,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":24,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":36,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":48,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{\"mask_1\":0,\"arms\":5,\"glasses_1\":5,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":1,\"torso_1\":52,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":1,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":23,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":42,\"tshirt_2\":4,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":36,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}'),
(7, 'miner', 0, 'interim', 'มืออาชีพ', 1000, '{\"tshirt_2\":1,\"ears_1\":8,\"glasses_1\":15,\"torso_2\":0,\"ears_2\":2,\"glasses_2\":3,\"shoes_2\":1,\"pants_1\":75,\"shoes_1\":51,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":7,\"torso_1\":71,\"tshirt_1\":59,\"arms\":2,\"bags_2\":0,\"helmet_1\":0}', '{\"lipstick_3\":0,\"eyebrows_4\":0,\"makeup_4\":0,\"age_1\":0,\"bproof_2\":0,\"mask_2\":0,\"beard_1\":0,\"decals_2\":0,\"eyebrows_2\":0,\"sex\":1,\"makeup_2\":0,\"lipstick_1\":0,\"chain_1\":0,\"mask_1\":0,\"ears_1\":-1,\"helmet_2\":0,\"bproof_1\":0,\"glasses_1\":9,\"eyebrows_1\":0,\"ears_2\":0,\"torso_2\":0,\"tshirt_2\":1,\"glasses\":0,\"bags_2\":0,\"shoes_1\":68,\"hair_1\":0,\"beard_2\":0,\"chain_2\":0,\"lipstick_4\":0,\"hair_color_1\":0,\"skin\":0,\"tshirt_1\":36,\"hair_2\":0,\"pants_1\":75,\"makeup_3\":0,\"beard_3\":0,\"torso_1\":68,\"beard_4\":0,\"age_2\":0,\"shoes\":10,\"glasses_2\":9,\"helmet_1\":0,\"face\":0,\"decals_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"bags_1\":0,\"makeup_1\":0,\"shoes_2\":3,\"lipstick_2\":0,\"arms\":14,\"hair_color_2\":0}'),
(8, 'slaughterer', 0, 'interim', 'มืออาชีพ', 1000, '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":67,\"pants_1\":36,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":0,\"torso_1\":56,\"beard_2\":6,\"shoes_1\":12,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":15,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":0,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}', '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":72,\"pants_1\":45,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":1,\"torso_1\":49,\"beard_2\":6,\"shoes_1\":24,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":9,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}'),
(9, 'cardealer', 0, 'recruit', 'Recrue', 0, '{}', '{}'),
(10, 'cardealer', 1, 'novice', 'Novice', 0, '{}', '{}'),
(11, 'cardealer', 2, 'experienced', 'Experimente', 0, '{}', '{}'),
(12, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(13, 'police', 0, 'sergeant', 'นักเรียนตำรวจ', 3000, '{\"beard_3\":0,\"torso_2\":0,\"helmet_1\":46,\"bags_2\":0,\"beard_2\":0,\"bproof_1\":0,\"decals_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"makeup_1\":0,\"shoes\":0,\"lipstick_3\":0,\"lipstick_2\":0,\"torso_1\":55,\"eyebrows_4\":0,\"shoes_2\":0,\"beard_1\":0,\"makeup_3\":0,\"face\":0,\"hair_color_2\":0,\"glasses_2\":0,\"hair_color_1\":0,\"skin\":0,\"helmet_2\":0,\"makeup_4\":0,\"bags_1\":0,\"shoes_1\":56,\"pants_2\":0,\"age_1\":0,\"arms\":30,\"hair_1\":0,\"beard_4\":0,\"sex\":0,\"tshirt_1\":58,\"mask_1\":0,\"lipstick_1\":0,\"glasses\":0,\"eyebrows_2\":0,\"age_2\":0,\"eyebrows_1\":0,\"chain_1\":0,\"decals_1\":8,\"ears_1\":0,\"makeup_2\":0,\"lipstick_4\":0,\"ears_2\":0,\"bproof_2\":0,\"tshirt_2\":0,\"hair_2\":0,\"pants_1\":35,\"mask_2\":0,\"glasses_1\":0}', '{\"hair_2\":0,\"lipstick_4\":0,\"helmet_2\":0,\"decals_1\":0,\"lipstick_2\":0,\"bproof_1\":0,\"torso_2\":0,\"arms\":1,\"sex\":0,\"makeup_1\":0,\"eyebrows_3\":0,\"shoes_2\":9,\"hair_1\":0,\"lipstick_1\":0,\"chain_1\":0,\"lipstick_3\":0,\"mask_1\":0,\"age_2\":0,\"beard_2\":0,\"eyebrows_2\":0,\"mask_2\":0,\"makeup_3\":0,\"pants_2\":0,\"makeup_4\":0,\"chain_2\":0,\"beard_3\":0,\"shoes_1\":12,\"beard_1\":0,\"ears_2\":0,\"tshirt_2\":0,\"helmet_1\":-1,\"face\":0,\"bags_1\":0,\"ears_1\":-1,\"glasses_1\":0,\"hair_color_1\":0,\"tshirt_1\":15,\"eyebrows_1\":0,\"makeup_2\":0,\"age_1\":0,\"bproof_2\":0,\"pants_1\":39,\"decals_2\":0,\"beard_4\":0,\"skin\":0,\"hair_color_2\":0,\"torso_1\":66,\"bags_2\":0,\"eyebrows_4\":0,\"glasses_2\":0}'),
(14, 'police', 1, 'officer', 'ผู้กอง', 3500, '{\"beard_3\":0,\"torso_2\":0,\"helmet_1\":46,\"bags_2\":0,\"beard_2\":0,\"bproof_1\":0,\"decals_2\":1,\"eyebrows_3\":0,\"chain_2\":0,\"makeup_1\":0,\"shoes\":0,\"lipstick_3\":0,\"lipstick_2\":0,\"torso_1\":55,\"eyebrows_4\":0,\"shoes_2\":0,\"beard_1\":0,\"makeup_3\":0,\"face\":0,\"hair_color_2\":0,\"glasses_2\":0,\"hair_color_1\":0,\"skin\":0,\"helmet_2\":0,\"makeup_4\":0,\"bags_1\":0,\"shoes_1\":56,\"pants_2\":0,\"age_1\":0,\"arms\":30,\"hair_1\":0,\"beard_4\":0,\"sex\":0,\"tshirt_1\":58,\"mask_1\":0,\"lipstick_1\":0,\"glasses\":0,\"eyebrows_2\":0,\"age_2\":0,\"eyebrows_1\":0,\"chain_1\":0,\"decals_1\":8,\"ears_1\":0,\"makeup_2\":0,\"lipstick_4\":0,\"ears_2\":0,\"bproof_2\":0,\"tshirt_2\":0,\"hair_2\":0,\"pants_1\":35,\"mask_2\":0,\"glasses_1\":0}', '{\"hair_2\":0,\"lipstick_4\":0,\"helmet_2\":0,\"decals_1\":0,\"lipstick_2\":0,\"bproof_1\":0,\"torso_2\":0,\"arms\":1,\"sex\":0,\"makeup_1\":0,\"eyebrows_3\":0,\"shoes_2\":9,\"hair_1\":0,\"lipstick_1\":0,\"chain_1\":0,\"lipstick_3\":0,\"mask_1\":0,\"age_2\":0,\"beard_2\":0,\"eyebrows_2\":0,\"mask_2\":0,\"makeup_3\":0,\"pants_2\":0,\"makeup_4\":0,\"chain_2\":0,\"beard_3\":0,\"shoes_1\":12,\"beard_1\":0,\"ears_2\":0,\"tshirt_2\":0,\"helmet_1\":-1,\"face\":0,\"bags_1\":0,\"ears_1\":-1,\"glasses_1\":0,\"hair_color_1\":0,\"tshirt_1\":15,\"eyebrows_1\":0,\"makeup_2\":0,\"age_1\":0,\"bproof_2\":0,\"pants_1\":39,\"decals_2\":0,\"beard_4\":0,\"skin\":0,\"hair_color_2\":0,\"torso_1\":66,\"bags_2\":0,\"eyebrows_4\":0,\"glasses_2\":0}'),
(15, 'police', 2, 'sergeantchef', 'สารวัตร', 4000, '{\"beard_3\":0,\"torso_2\":1,\"helmet_1\":46,\"bags_2\":0,\"beard_2\":0,\"bproof_1\":0,\"decals_2\":2,\"eyebrows_3\":0,\"chain_2\":0,\"makeup_1\":0,\"shoes\":0,\"lipstick_3\":0,\"lipstick_2\":0,\"torso_1\":13,\"eyebrows_4\":0,\"shoes_2\":0,\"beard_1\":0,\"makeup_3\":0,\"face\":0,\"hair_color_2\":0,\"glasses_2\":0,\"hair_color_1\":0,\"skin\":0,\"helmet_2\":0,\"makeup_4\":0,\"bags_1\":0,\"shoes_1\":56,\"pants_2\":0,\"age_1\":0,\"arms\":30,\"hair_1\":0,\"beard_4\":0,\"sex\":0,\"tshirt_1\":58,\"mask_1\":0,\"lipstick_1\":0,\"glasses\":0,\"eyebrows_2\":0,\"age_2\":0,\"eyebrows_1\":0,\"chain_1\":0,\"decals_1\":8,\"ears_1\":0,\"makeup_2\":0,\"lipstick_4\":0,\"ears_2\":0,\"bproof_2\":0,\"tshirt_2\":0,\"hair_2\":0,\"pants_1\":35,\"mask_2\":0,\"glasses_1\":0}', '{\"hair_2\":0,\"lipstick_4\":0,\"helmet_2\":0,\"decals_1\":0,\"lipstick_2\":0,\"bproof_1\":0,\"torso_2\":0,\"arms\":1,\"sex\":0,\"makeup_1\":0,\"eyebrows_3\":0,\"shoes_2\":9,\"hair_1\":0,\"lipstick_1\":0,\"chain_1\":0,\"lipstick_3\":0,\"mask_1\":0,\"age_2\":0,\"beard_2\":0,\"eyebrows_2\":0,\"mask_2\":0,\"makeup_3\":0,\"pants_2\":0,\"makeup_4\":0,\"chain_2\":0,\"beard_3\":0,\"shoes_1\":12,\"beard_1\":0,\"ears_2\":0,\"tshirt_2\":0,\"helmet_1\":-1,\"face\":0,\"bags_1\":0,\"ears_1\":-1,\"glasses_1\":0,\"hair_color_1\":0,\"tshirt_1\":15,\"eyebrows_1\":0,\"makeup_2\":0,\"age_1\":0,\"bproof_2\":0,\"pants_1\":39,\"decals_2\":0,\"beard_4\":0,\"skin\":0,\"hair_color_2\":0,\"torso_1\":66,\"bags_2\":0,\"eyebrows_4\":0,\"glasses_2\":0}'),
(16, 'police', 3, 'lieutenant', 'ผู้กำกับ', 4500, '{\"beard_3\":0,\"torso_2\":3,\"helmet_1\":-1,\"bags_2\":0,\"beard_2\":0,\"bproof_1\":0,\"decals_2\":3,\"eyebrows_3\":0,\"chain_2\":0,\"makeup_1\":0,\"shoes\":0,\"lipstick_3\":0,\"lipstick_2\":0,\"torso_1\":13,\"eyebrows_4\":0,\"shoes_2\":0,\"beard_1\":0,\"makeup_3\":0,\"face\":0,\"hair_color_2\":0,\"glasses_2\":0,\"hair_color_1\":0,\"skin\":0,\"helmet_2\":0,\"makeup_4\":0,\"bags_1\":0,\"shoes_1\":56,\"pants_2\":0,\"age_1\":0,\"arms\":37,\"hair_1\":0,\"beard_4\":0,\"sex\":0,\"tshirt_1\":122,\"mask_1\":0,\"lipstick_1\":0,\"glasses\":0,\"eyebrows_2\":0,\"age_2\":0,\"eyebrows_1\":0,\"chain_1\":125,\"decals_1\":8,\"ears_1\":0,\"makeup_2\":0,\"lipstick_4\":0,\"ears_2\":0,\"bproof_2\":0,\"tshirt_2\":0,\"hair_2\":0,\"pants_1\":35,\"mask_2\":0,\"glasses_1\":0}', '{\"hair_2\":0,\"lipstick_4\":0,\"helmet_2\":0,\"decals_1\":0,\"lipstick_2\":0,\"bproof_1\":0,\"torso_2\":0,\"arms\":1,\"sex\":0,\"makeup_1\":0,\"eyebrows_3\":0,\"shoes_2\":9,\"hair_1\":0,\"lipstick_1\":0,\"chain_1\":0,\"lipstick_3\":0,\"mask_1\":0,\"age_2\":0,\"beard_2\":0,\"eyebrows_2\":0,\"mask_2\":0,\"makeup_3\":0,\"pants_2\":0,\"makeup_4\":0,\"chain_2\":0,\"beard_3\":0,\"shoes_1\":12,\"beard_1\":0,\"ears_2\":0,\"tshirt_2\":0,\"helmet_1\":-1,\"face\":0,\"bags_1\":0,\"ears_1\":-1,\"glasses_1\":0,\"hair_color_1\":0,\"tshirt_1\":15,\"eyebrows_1\":0,\"makeup_2\":0,\"age_1\":0,\"bproof_2\":0,\"pants_1\":39,\"decals_2\":0,\"beard_4\":0,\"skin\":0,\"hair_color_2\":0,\"torso_1\":66,\"bags_2\":0,\"eyebrows_4\":0,\"glasses_2\":0}'),
(17, 'police', 4, 'boss', 'ผู้บัญชาการตำรวจ', 5000, '{\"beard_3\":0,\"torso_2\":0,\"helmet_1\":-1,\"bags_2\":0,\"beard_2\":0,\"bproof_1\":0,\"decals_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"makeup_1\":0,\"shoes\":0,\"lipstick_3\":0,\"lipstick_2\":0,\"torso_1\":43,\"eyebrows_4\":0,\"shoes_2\":0,\"beard_1\":0,\"makeup_3\":0,\"face\":0,\"hair_color_2\":0,\"glasses_2\":0,\"hair_color_1\":0,\"skin\":0,\"helmet_2\":0,\"makeup_4\":0,\"bags_1\":0,\"shoes_1\":21,\"pants_2\":0,\"age_1\":0,\"arms\":26,\"hair_1\":0,\"beard_4\":0,\"sex\":0,\"tshirt_1\":129,\"mask_1\":0,\"lipstick_1\":0,\"glasses\":0,\"eyebrows_2\":0,\"age_2\":0,\"eyebrows_1\":0,\"chain_1\":125,\"decals_1\":8,\"ears_1\":0,\"makeup_2\":0,\"lipstick_4\":0,\"ears_2\":0,\"bproof_2\":0,\"tshirt_2\":0,\"hair_2\":0,\"pants_1\":24,\"mask_2\":0,\"glasses_1\":5}', '{\"hair_2\":0,\"lipstick_4\":0,\"helmet_2\":0,\"decals_1\":0,\"lipstick_2\":0,\"bproof_1\":0,\"torso_2\":0,\"arms\":1,\"sex\":0,\"makeup_1\":0,\"eyebrows_3\":0,\"shoes_2\":9,\"hair_1\":0,\"lipstick_1\":0,\"chain_1\":0,\"lipstick_3\":0,\"mask_1\":0,\"age_2\":0,\"beard_2\":0,\"eyebrows_2\":0,\"mask_2\":0,\"makeup_3\":0,\"pants_2\":0,\"makeup_4\":0,\"chain_2\":0,\"beard_3\":0,\"shoes_1\":12,\"beard_1\":0,\"ears_2\":0,\"tshirt_2\":0,\"helmet_1\":-1,\"face\":0,\"bags_1\":0,\"ears_1\":-1,\"glasses_1\":0,\"hair_color_1\":0,\"tshirt_1\":15,\"eyebrows_1\":0,\"makeup_2\":0,\"age_1\":0,\"bproof_2\":0,\"pants_1\":39,\"decals_2\":0,\"beard_4\":0,\"skin\":0,\"hair_color_2\":0,\"torso_1\":66,\"bags_2\":0,\"eyebrows_4\":0,\"glasses_2\":0}'),
(18, 'mecano', 0, 'recrue', 'นักเรียนช่าง', 2500, '{\"hair_2\":0,\"lipstick_4\":0,\"helmet_2\":0,\"decals_1\":0,\"lipstick_2\":0,\"bproof_1\":0,\"torso_2\":0,\"arms\":1,\"sex\":0,\"makeup_1\":0,\"eyebrows_3\":0,\"shoes_2\":9,\"hair_1\":0,\"lipstick_1\":0,\"chain_1\":0,\"lipstick_3\":0,\"mask_1\":0,\"age_2\":0,\"beard_2\":0,\"eyebrows_2\":0,\"mask_2\":0,\"makeup_3\":0,\"pants_2\":0,\"makeup_4\":0,\"chain_2\":0,\"beard_3\":0,\"shoes_1\":12,\"beard_1\":0,\"ears_2\":0,\"tshirt_2\":0,\"helmet_1\":-1,\"face\":0,\"bags_1\":0,\"ears_1\":-1,\"glasses_1\":0,\"hair_color_1\":0,\"tshirt_1\":15,\"eyebrows_1\":0,\"makeup_2\":0,\"age_1\":0,\"bproof_2\":0,\"pants_1\":39,\"decals_2\":0,\"beard_4\":0,\"skin\":0,\"hair_color_2\":0,\"torso_1\":66,\"bags_2\":0,\"eyebrows_4\":0,\"glasses_2\":0}', '{\"hair_2\":0,\"lipstick_4\":0,\"helmet_2\":0,\"decals_1\":0,\"lipstick_2\":0,\"bproof_1\":0,\"torso_2\":0,\"arms\":1,\"sex\":0,\"makeup_1\":0,\"eyebrows_3\":0,\"shoes_2\":9,\"hair_1\":0,\"lipstick_1\":0,\"chain_1\":0,\"lipstick_3\":0,\"mask_1\":0,\"age_2\":0,\"beard_2\":0,\"eyebrows_2\":0,\"mask_2\":0,\"makeup_3\":0,\"pants_2\":0,\"makeup_4\":0,\"chain_2\":0,\"beard_3\":0,\"shoes_1\":12,\"beard_1\":0,\"ears_2\":0,\"tshirt_2\":0,\"helmet_1\":-1,\"face\":0,\"bags_1\":0,\"ears_1\":-1,\"glasses_1\":0,\"hair_color_1\":0,\"tshirt_1\":15,\"eyebrows_1\":0,\"makeup_2\":0,\"age_1\":0,\"bproof_2\":0,\"pants_1\":39,\"decals_2\":0,\"beard_4\":0,\"skin\":0,\"hair_color_2\":0,\"torso_1\":66,\"bags_2\":0,\"eyebrows_4\":0,\"glasses_2\":0}'),
(19, 'mecano', 1, 'novice', 'ช่าง', 3000, '{\"hair_2\":0,\"lipstick_4\":0,\"helmet_2\":0,\"decals_1\":0,\"lipstick_2\":0,\"bproof_1\":0,\"torso_2\":0,\"arms\":1,\"sex\":0,\"makeup_1\":0,\"eyebrows_3\":0,\"shoes_2\":9,\"hair_1\":0,\"lipstick_1\":0,\"chain_1\":0,\"lipstick_3\":0,\"mask_1\":0,\"age_2\":0,\"beard_2\":0,\"eyebrows_2\":0,\"mask_2\":0,\"makeup_3\":0,\"pants_2\":0,\"makeup_4\":0,\"chain_2\":0,\"beard_3\":0,\"shoes_1\":12,\"beard_1\":0,\"ears_2\":0,\"tshirt_2\":0,\"helmet_1\":-1,\"face\":0,\"bags_1\":0,\"ears_1\":-1,\"glasses_1\":0,\"hair_color_1\":0,\"tshirt_1\":15,\"eyebrows_1\":0,\"makeup_2\":0,\"age_1\":0,\"bproof_2\":0,\"pants_1\":39,\"decals_2\":0,\"beard_4\":0,\"skin\":0,\"hair_color_2\":0,\"torso_1\":66,\"bags_2\":0,\"eyebrows_4\":0,\"glasses_2\":0}', '{\"hair_2\":0,\"lipstick_4\":0,\"helmet_2\":0,\"decals_1\":0,\"lipstick_2\":0,\"bproof_1\":0,\"torso_2\":0,\"arms\":1,\"sex\":0,\"makeup_1\":0,\"eyebrows_3\":0,\"shoes_2\":9,\"hair_1\":0,\"lipstick_1\":0,\"chain_1\":0,\"lipstick_3\":0,\"mask_1\":0,\"age_2\":0,\"beard_2\":0,\"eyebrows_2\":0,\"mask_2\":0,\"makeup_3\":0,\"pants_2\":0,\"makeup_4\":0,\"chain_2\":0,\"beard_3\":0,\"shoes_1\":12,\"beard_1\":0,\"ears_2\":0,\"tshirt_2\":0,\"helmet_1\":-1,\"face\":0,\"bags_1\":0,\"ears_1\":-1,\"glasses_1\":0,\"hair_color_1\":0,\"tshirt_1\":15,\"eyebrows_1\":0,\"makeup_2\":0,\"age_1\":0,\"bproof_2\":0,\"pants_1\":39,\"decals_2\":0,\"beard_4\":0,\"skin\":0,\"hair_color_2\":0,\"torso_1\":66,\"bags_2\":0,\"eyebrows_4\":0,\"glasses_2\":0}'),
(20, 'mecano', 2, 'experimente', 'ช่างซ่อมชำนาญ', 3500, '{\"hair_2\":0,\"lipstick_4\":0,\"helmet_2\":0,\"decals_1\":0,\"lipstick_2\":0,\"bproof_1\":0,\"torso_2\":0,\"arms\":1,\"sex\":0,\"makeup_1\":0,\"eyebrows_3\":0,\"shoes_2\":9,\"hair_1\":0,\"lipstick_1\":0,\"chain_1\":0,\"lipstick_3\":0,\"mask_1\":0,\"age_2\":0,\"beard_2\":0,\"eyebrows_2\":0,\"mask_2\":0,\"makeup_3\":0,\"pants_2\":0,\"makeup_4\":0,\"chain_2\":0,\"beard_3\":0,\"shoes_1\":12,\"beard_1\":0,\"ears_2\":0,\"tshirt_2\":0,\"helmet_1\":-1,\"face\":0,\"bags_1\":0,\"ears_1\":-1,\"glasses_1\":0,\"hair_color_1\":0,\"tshirt_1\":15,\"eyebrows_1\":0,\"makeup_2\":0,\"age_1\":0,\"bproof_2\":0,\"pants_1\":39,\"decals_2\":0,\"beard_4\":0,\"skin\":0,\"hair_color_2\":0,\"torso_1\":66,\"bags_2\":0,\"eyebrows_4\":0,\"glasses_2\":0}', '{\"hair_2\":0,\"lipstick_4\":0,\"helmet_2\":0,\"decals_1\":0,\"lipstick_2\":0,\"bproof_1\":0,\"torso_2\":0,\"arms\":1,\"sex\":0,\"makeup_1\":0,\"eyebrows_3\":0,\"shoes_2\":9,\"hair_1\":0,\"lipstick_1\":0,\"chain_1\":0,\"lipstick_3\":0,\"mask_1\":0,\"age_2\":0,\"beard_2\":0,\"eyebrows_2\":0,\"mask_2\":0,\"makeup_3\":0,\"pants_2\":0,\"makeup_4\":0,\"chain_2\":0,\"beard_3\":0,\"shoes_1\":12,\"beard_1\":0,\"ears_2\":0,\"tshirt_2\":0,\"helmet_1\":-1,\"face\":0,\"bags_1\":0,\"ears_1\":-1,\"glasses_1\":0,\"hair_color_1\":0,\"tshirt_1\":15,\"eyebrows_1\":0,\"makeup_2\":0,\"age_1\":0,\"bproof_2\":0,\"pants_1\":39,\"decals_2\":0,\"beard_4\":0,\"skin\":0,\"hair_color_2\":0,\"torso_1\":66,\"bags_2\":0,\"eyebrows_4\":0,\"glasses_2\":0}'),
(21, 'mecano', 3, 'chief', 'รองผู้อำนวยการช่างซ่อม', 4000, '{\"hair_2\":0,\"lipstick_4\":0,\"helmet_2\":0,\"decals_1\":0,\"lipstick_2\":0,\"bproof_1\":0,\"torso_2\":0,\"arms\":1,\"sex\":0,\"makeup_1\":0,\"eyebrows_3\":0,\"shoes_2\":9,\"hair_1\":0,\"lipstick_1\":0,\"chain_1\":0,\"lipstick_3\":0,\"mask_1\":0,\"age_2\":0,\"beard_2\":0,\"eyebrows_2\":0,\"mask_2\":0,\"makeup_3\":0,\"pants_2\":0,\"makeup_4\":0,\"chain_2\":0,\"beard_3\":0,\"shoes_1\":12,\"beard_1\":0,\"ears_2\":0,\"tshirt_2\":0,\"helmet_1\":-1,\"face\":0,\"bags_1\":0,\"ears_1\":-1,\"glasses_1\":0,\"hair_color_1\":0,\"tshirt_1\":15,\"eyebrows_1\":0,\"makeup_2\":0,\"age_1\":0,\"bproof_2\":0,\"pants_1\":39,\"decals_2\":0,\"beard_4\":0,\"skin\":0,\"hair_color_2\":0,\"torso_1\":66,\"bags_2\":0,\"eyebrows_4\":0,\"glasses_2\":0}', '{\"hair_2\":0,\"lipstick_4\":0,\"helmet_2\":0,\"decals_1\":0,\"lipstick_2\":0,\"bproof_1\":0,\"torso_2\":0,\"arms\":1,\"sex\":0,\"makeup_1\":0,\"eyebrows_3\":0,\"shoes_2\":9,\"hair_1\":0,\"lipstick_1\":0,\"chain_1\":0,\"lipstick_3\":0,\"mask_1\":0,\"age_2\":0,\"beard_2\":0,\"eyebrows_2\":0,\"mask_2\":0,\"makeup_3\":0,\"pants_2\":0,\"makeup_4\":0,\"chain_2\":0,\"beard_3\":0,\"shoes_1\":12,\"beard_1\":0,\"ears_2\":0,\"tshirt_2\":0,\"helmet_1\":-1,\"face\":0,\"bags_1\":0,\"ears_1\":-1,\"glasses_1\":0,\"hair_color_1\":0,\"tshirt_1\":15,\"eyebrows_1\":0,\"makeup_2\":0,\"age_1\":0,\"bproof_2\":0,\"pants_1\":39,\"decals_2\":0,\"beard_4\":0,\"skin\":0,\"hair_color_2\":0,\"torso_1\":66,\"bags_2\":0,\"eyebrows_4\":0,\"glasses_2\":0}'),
(22, 'mecano', 4, 'boss', 'ผู้อำนวยการช่างซ่อม', 4500, '{\"hair_2\":0,\"lipstick_4\":0,\"helmet_2\":0,\"decals_1\":0,\"lipstick_2\":0,\"bproof_1\":0,\"torso_2\":0,\"arms\":1,\"sex\":0,\"makeup_1\":0,\"eyebrows_3\":0,\"shoes_2\":9,\"hair_1\":0,\"lipstick_1\":0,\"chain_1\":0,\"lipstick_3\":0,\"mask_1\":0,\"age_2\":0,\"beard_2\":0,\"eyebrows_2\":0,\"mask_2\":0,\"makeup_3\":0,\"pants_2\":0,\"makeup_4\":0,\"chain_2\":0,\"beard_3\":0,\"shoes_1\":12,\"beard_1\":0,\"ears_2\":0,\"tshirt_2\":0,\"helmet_1\":-1,\"face\":0,\"bags_1\":0,\"ears_1\":-1,\"glasses_1\":0,\"hair_color_1\":0,\"tshirt_1\":15,\"eyebrows_1\":0,\"makeup_2\":0,\"age_1\":0,\"bproof_2\":0,\"pants_1\":39,\"decals_2\":0,\"beard_4\":0,\"skin\":0,\"hair_color_2\":0,\"torso_1\":66,\"bags_2\":0,\"eyebrows_4\":0,\"glasses_2\":0}', '{\"hair_2\":0,\"lipstick_4\":0,\"helmet_2\":0,\"decals_1\":0,\"lipstick_2\":0,\"bproof_1\":0,\"torso_2\":0,\"arms\":1,\"sex\":0,\"makeup_1\":0,\"eyebrows_3\":0,\"shoes_2\":9,\"hair_1\":0,\"lipstick_1\":0,\"chain_1\":0,\"lipstick_3\":0,\"mask_1\":0,\"age_2\":0,\"beard_2\":0,\"eyebrows_2\":0,\"mask_2\":0,\"makeup_3\":0,\"pants_2\":0,\"makeup_4\":0,\"chain_2\":0,\"beard_3\":0,\"shoes_1\":12,\"beard_1\":0,\"ears_2\":0,\"tshirt_2\":0,\"helmet_1\":-1,\"face\":0,\"bags_1\":0,\"ears_1\":-1,\"glasses_1\":0,\"hair_color_1\":0,\"tshirt_1\":15,\"eyebrows_1\":0,\"makeup_2\":0,\"age_1\":0,\"bproof_2\":0,\"pants_1\":39,\"decals_2\":0,\"beard_4\":0,\"skin\":0,\"hair_color_2\":0,\"torso_1\":66,\"bags_2\":0,\"eyebrows_4\":0,\"glasses_2\":0}'),
(23, 'ambulance', 0, 'interim', 'นักศึกษาแพทย์', 3500, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":0,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":0,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":0,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":5,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":57,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":5,\"skin\":13,\"face\":6,\"pants_2\":8,\"tshirt_1\":16,\"pants_1\":14,\"helmet_1\":-1,\"torso_2\":7,\"arms\":90,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(24, 'ambulance', 1, 'recruit', 'แพทย์', 4000, '{\"tshirt_2\":3,\"hair_color_1\":5,\"glasses_2\":0,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":0,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":25,\"helmet_1\":8,\"helmet_2\":0,\"arms\":83,\"face\":19,\"decals_1\":57,\"torso_1\":23,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":5,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":57,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":5,\"skin\":13,\"face\":6,\"pants_2\":8,\"tshirt_1\":16,\"pants_1\":14,\"helmet_1\":-1,\"torso_2\":7,\"arms\":90,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(25, 'ambulance', 2, 'nurse', 'แพทย์ผู้ชำนาญ', 4500, '{\"tshirt_2\":3,\"hair_color_1\":5,\"glasses_2\":0,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":0,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":25,\"helmet_1\":8,\"helmet_2\":0,\"arms\":83,\"face\":19,\"decals_1\":58,\"torso_1\":23,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":5,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":57,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":5,\"skin\":13,\"face\":6,\"pants_2\":8,\"tshirt_1\":16,\"pants_1\":14,\"helmet_1\":-1,\"torso_2\":7,\"arms\":90,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(26, 'ambulance', 3, 'doctor', 'แพทย์ผู้เชี่ยวชาญ', 5000, '{\"tshirt_2\":3,\"hair_color_1\":5,\"glasses_2\":0,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":0,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":25,\"helmet_1\":8,\"helmet_2\":0,\"arms\":83,\"face\":19,\"decals_1\":0,\"torso_1\":23,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":5,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":57,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":5,\"skin\":13,\"face\":6,\"pants_2\":8,\"tshirt_1\":16,\"pants_1\":14,\"helmet_1\":-1,\"torso_2\":7,\"arms\":90,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(27, 'ambulance', 4, 'surgeon', 'หัวหน้าแพทย์', 5500, '{\"tshirt_2\":3,\"hair_color_1\":5,\"glasses_2\":0,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":0,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":25,\"helmet_1\":8,\"helmet_2\":0,\"arms\":83,\"face\":19,\"decals_1\":0,\"torso_1\":23,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":5,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":57,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":5,\"skin\":13,\"face\":6,\"pants_2\":8,\"tshirt_1\":16,\"pants_1\":14,\"helmet_1\":-1,\"torso_2\":7,\"arms\":90,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(28, 'ambulance', 5, 'chief_doctor', 'รองผู้อำนวยการแพทย์', 6000, '{\"tshirt_2\":3,\"hair_color_1\":5,\"glasses_2\":0,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":0,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":25,\"helmet_1\":8,\"helmet_2\":0,\"arms\":83,\"face\":19,\"decals_1\":0,\"torso_1\":23,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":5,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":57,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":5,\"skin\":13,\"face\":6,\"pants_2\":8,\"tshirt_1\":16,\"pants_1\":14,\"helmet_1\":-1,\"torso_2\":7,\"arms\":90,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(29, 'ambulance', 6, 'boss', 'ผู้อำนวยการแพทย์', 6500, '{\"tshirt_2\":3,\"hair_color_1\":5,\"glasses_2\":0,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":0,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":25,\"helmet_1\":8,\"helmet_2\":0,\"arms\":83,\"face\":19,\"decals_1\":0,\"torso_1\":23,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":5,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":57,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":5,\"skin\":13,\"face\":6,\"pants_2\":8,\"tshirt_1\":16,\"pants_1\":14,\"helmet_1\":-1,\"torso_2\":7,\"arms\":90,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(30, 'taxi', 0, 'recrue', 'แท็กซี่ฝึกหัด', 2500, '{}', '{}'),
(31, 'taxi', 1, 'novice', 'แท็กซี่มืออาชีพ', 3000, '{}', '{}'),
(32, 'taxi', 2, 'experimente', 'แท็กซี่อาวุโส', 3500, '{}', '{}'),
(33, 'taxi', 3, 'uber', 'หัวหน้าแท็กซี่', 4000, '{}', '{}'),
(34, 'taxi', 4, 'boss', 'ประธานบริษัทแท็กซี่', 4500, '{}', '{}'),
(35, 'oranger2', 0, 'sergeant', 'นักเรียนตำรวจ (ออกเวร)', 1000, '{\"beard_3\":0,\"hair_color_1\":0,\"makeup_4\":0,\"helmet_1\":104,\"bproof_2\":0,\"mask_2\":0,\"decals_1\":0,\"shoes_1\":57,\"makeup_3\":0,\"tshirt_1\":15,\"chain_1\":0,\"mask_1\":0,\"ears_1\":-1,\"helmet_2\":20,\"makeup_1\":0,\"glasses_1\":0,\"eyebrows_1\":0,\"ears_2\":0,\"eyebrows_3\":0,\"skin\":0,\"shoes_2\":0,\"bags_2\":0,\"torso_1\":13,\"hair_1\":0,\"beard_2\":0,\"lipstick_1\":0,\"face\":0,\"lipstick_4\":0,\"lipstick_3\":0,\"bags_1\":0,\"chain_2\":0,\"age_1\":0,\"sex\":0,\"beard_1\":0,\"torso_2\":5,\"beard_4\":0,\"age_2\":0,\"tshirt_2\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"hair_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"pants_2\":0,\"eyebrows_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"pants_1\":76,\"arms\":106,\"hair_color_2\":0}', '{\"makeup_2\":0,\"eyebrows_4\":0,\"makeup_4\":0,\"age_1\":0,\"bproof_2\":0,\"mask_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"eyebrows_2\":0,\"tshirt_1\":0,\"chain_1\":0,\"chain_2\":0,\"ears_1\":-1,\"helmet_2\":20,\"beard_1\":0,\"glasses_1\":5,\"eyebrows_1\":0,\"ears_2\":0,\"bags_2\":0,\"eyebrows_3\":0,\"pants_2\":3,\"tshirt_2\":0,\"makeup_3\":0,\"hair_1\":0,\"hair_2\":0,\"lipstick_3\":0,\"helmet_1\":104,\"torso_2\":7,\"skin\":0,\"sex\":1,\"beard_2\":0,\"mask_1\":0,\"shoes_1\":60,\"shoes_2\":0,\"torso_1\":9,\"beard_4\":0,\"age_2\":0,\"makeup_1\":0,\"glasses_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"hair_color_1\":0,\"face\":0,\"pants_1\":73,\"lipstick_1\":0,\"bags_1\":0,\"bproof_1\":0,\"decals_1\":0,\"arms\":114,\"hair_color_2\":0}'),
(36, 'oranger2', 1, 'officer', 'ผู้กอง (ออกเวร)', 1000, '{\"beard_3\":0,\"hair_color_1\":0,\"makeup_4\":0,\"helmet_1\":104,\"bproof_2\":0,\"mask_2\":0,\"decals_1\":0,\"shoes_1\":57,\"makeup_3\":0,\"tshirt_1\":15,\"chain_1\":0,\"mask_1\":0,\"ears_1\":-1,\"helmet_2\":20,\"makeup_1\":0,\"glasses_1\":0,\"eyebrows_1\":0,\"ears_2\":0,\"eyebrows_3\":0,\"skin\":0,\"shoes_2\":0,\"bags_2\":0,\"torso_1\":13,\"hair_1\":0,\"beard_2\":0,\"lipstick_1\":0,\"face\":0,\"lipstick_4\":0,\"lipstick_3\":0,\"bags_1\":0,\"chain_2\":0,\"age_1\":0,\"sex\":0,\"beard_1\":0,\"torso_2\":5,\"beard_4\":0,\"age_2\":0,\"tshirt_2\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"hair_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"pants_2\":0,\"eyebrows_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"pants_1\":76,\"arms\":106,\"hair_color_2\":0}', '{\"makeup_2\":0,\"eyebrows_4\":0,\"makeup_4\":0,\"age_1\":0,\"bproof_2\":0,\"mask_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"eyebrows_2\":0,\"tshirt_1\":0,\"chain_1\":0,\"chain_2\":0,\"ears_1\":-1,\"helmet_2\":20,\"beard_1\":0,\"glasses_1\":5,\"eyebrows_1\":0,\"ears_2\":0,\"bags_2\":0,\"eyebrows_3\":0,\"pants_2\":3,\"tshirt_2\":0,\"makeup_3\":0,\"hair_1\":0,\"hair_2\":0,\"lipstick_3\":0,\"helmet_1\":104,\"torso_2\":7,\"skin\":0,\"sex\":1,\"beard_2\":0,\"mask_1\":0,\"shoes_1\":60,\"shoes_2\":0,\"torso_1\":9,\"beard_4\":0,\"age_2\":0,\"makeup_1\":0,\"glasses_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"hair_color_1\":0,\"face\":0,\"pants_1\":73,\"lipstick_1\":0,\"bags_1\":0,\"bproof_1\":0,\"decals_1\":0,\"arms\":114,\"hair_color_2\":0}'),
(37, 'oranger2', 2, 'sergeantchef', 'สารวัตร (ออกเวร)', 1000, '{\"beard_3\":0,\"hair_color_1\":0,\"makeup_4\":0,\"helmet_1\":104,\"bproof_2\":0,\"mask_2\":0,\"decals_1\":0,\"shoes_1\":57,\"makeup_3\":0,\"tshirt_1\":15,\"chain_1\":0,\"mask_1\":0,\"ears_1\":-1,\"helmet_2\":20,\"makeup_1\":0,\"glasses_1\":0,\"eyebrows_1\":0,\"ears_2\":0,\"eyebrows_3\":0,\"skin\":0,\"shoes_2\":0,\"bags_2\":0,\"torso_1\":13,\"hair_1\":0,\"beard_2\":0,\"lipstick_1\":0,\"face\":0,\"lipstick_4\":0,\"lipstick_3\":0,\"bags_1\":0,\"chain_2\":0,\"age_1\":0,\"sex\":0,\"beard_1\":0,\"torso_2\":5,\"beard_4\":0,\"age_2\":0,\"tshirt_2\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"hair_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"pants_2\":0,\"eyebrows_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"pants_1\":76,\"arms\":106,\"hair_color_2\":0}', '{\"makeup_2\":0,\"eyebrows_4\":0,\"makeup_4\":0,\"age_1\":0,\"bproof_2\":0,\"mask_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"eyebrows_2\":0,\"tshirt_1\":0,\"chain_1\":0,\"chain_2\":0,\"ears_1\":-1,\"helmet_2\":20,\"beard_1\":0,\"glasses_1\":5,\"eyebrows_1\":0,\"ears_2\":0,\"bags_2\":0,\"eyebrows_3\":0,\"pants_2\":3,\"tshirt_2\":0,\"makeup_3\":0,\"hair_1\":0,\"hair_2\":0,\"lipstick_3\":0,\"helmet_1\":104,\"torso_2\":7,\"skin\":0,\"sex\":1,\"beard_2\":0,\"mask_1\":0,\"shoes_1\":60,\"shoes_2\":0,\"torso_1\":9,\"beard_4\":0,\"age_2\":0,\"makeup_1\":0,\"glasses_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"hair_color_1\":0,\"face\":0,\"pants_1\":73,\"lipstick_1\":0,\"bags_1\":0,\"bproof_1\":0,\"decals_1\":0,\"arms\":114,\"hair_color_2\":0}'),
(38, 'oranger2', 3, 'lieutenant', 'ผู้กำกับ (ออกเวร)', 1000, '{\"beard_3\":0,\"hair_color_1\":0,\"makeup_4\":0,\"helmet_1\":104,\"bproof_2\":0,\"mask_2\":0,\"decals_1\":0,\"shoes_1\":57,\"makeup_3\":0,\"tshirt_1\":15,\"chain_1\":0,\"mask_1\":0,\"ears_1\":-1,\"helmet_2\":20,\"makeup_1\":0,\"glasses_1\":0,\"eyebrows_1\":0,\"ears_2\":0,\"eyebrows_3\":0,\"skin\":0,\"shoes_2\":0,\"bags_2\":0,\"torso_1\":13,\"hair_1\":0,\"beard_2\":0,\"lipstick_1\":0,\"face\":0,\"lipstick_4\":0,\"lipstick_3\":0,\"bags_1\":0,\"chain_2\":0,\"age_1\":0,\"sex\":0,\"beard_1\":0,\"torso_2\":5,\"beard_4\":0,\"age_2\":0,\"tshirt_2\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"hair_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"pants_2\":0,\"eyebrows_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"pants_1\":76,\"arms\":106,\"hair_color_2\":0}', '{\"makeup_2\":0,\"eyebrows_4\":0,\"makeup_4\":0,\"age_1\":0,\"bproof_2\":0,\"mask_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"eyebrows_2\":0,\"tshirt_1\":0,\"chain_1\":0,\"chain_2\":0,\"ears_1\":-1,\"helmet_2\":20,\"beard_1\":0,\"glasses_1\":5,\"eyebrows_1\":0,\"ears_2\":0,\"bags_2\":0,\"eyebrows_3\":0,\"pants_2\":3,\"tshirt_2\":0,\"makeup_3\":0,\"hair_1\":0,\"hair_2\":0,\"lipstick_3\":0,\"helmet_1\":104,\"torso_2\":7,\"skin\":0,\"sex\":1,\"beard_2\":0,\"mask_1\":0,\"shoes_1\":60,\"shoes_2\":0,\"torso_1\":9,\"beard_4\":0,\"age_2\":0,\"makeup_1\":0,\"glasses_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"hair_color_1\":0,\"face\":0,\"pants_1\":73,\"lipstick_1\":0,\"bags_1\":0,\"bproof_1\":0,\"decals_1\":0,\"arms\":114,\"hair_color_2\":0}'),
(39, 'oranger2', 4, 'boss', 'ผู้บัญชาการตำรวจ (ออกเวร)', 1000, '{\"beard_3\":0,\"hair_color_1\":0,\"makeup_4\":0,\"helmet_1\":104,\"bproof_2\":0,\"mask_2\":0,\"decals_1\":0,\"shoes_1\":57,\"makeup_3\":0,\"tshirt_1\":15,\"chain_1\":0,\"mask_1\":0,\"ears_1\":-1,\"helmet_2\":20,\"makeup_1\":0,\"glasses_1\":0,\"eyebrows_1\":0,\"ears_2\":0,\"eyebrows_3\":0,\"skin\":0,\"shoes_2\":0,\"bags_2\":0,\"torso_1\":13,\"hair_1\":0,\"beard_2\":0,\"lipstick_1\":0,\"face\":0,\"lipstick_4\":0,\"lipstick_3\":0,\"bags_1\":0,\"chain_2\":0,\"age_1\":0,\"sex\":0,\"beard_1\":0,\"torso_2\":5,\"beard_4\":0,\"age_2\":0,\"tshirt_2\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"hair_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"pants_2\":0,\"eyebrows_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"pants_1\":76,\"arms\":106,\"hair_color_2\":0}', '{\"makeup_2\":0,\"eyebrows_4\":0,\"makeup_4\":0,\"age_1\":0,\"bproof_2\":0,\"mask_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"eyebrows_2\":0,\"tshirt_1\":0,\"chain_1\":0,\"chain_2\":0,\"ears_1\":-1,\"helmet_2\":20,\"beard_1\":0,\"glasses_1\":5,\"eyebrows_1\":0,\"ears_2\":0,\"bags_2\":0,\"eyebrows_3\":0,\"pants_2\":3,\"tshirt_2\":0,\"makeup_3\":0,\"hair_1\":0,\"hair_2\":0,\"lipstick_3\":0,\"helmet_1\":104,\"torso_2\":7,\"skin\":0,\"sex\":1,\"beard_2\":0,\"mask_1\":0,\"shoes_1\":60,\"shoes_2\":0,\"torso_1\":9,\"beard_4\":0,\"age_2\":0,\"makeup_1\":0,\"glasses_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"hair_color_1\":0,\"face\":0,\"pants_1\":73,\"lipstick_1\":0,\"bags_1\":0,\"bproof_1\":0,\"decals_1\":0,\"arms\":114,\"hair_color_2\":0}'),
(40, 'oranger3', 0, 'interim', 'นักศึกษาแพทย์ (ออกเวร)', 1000, '{\"beard_3\":0,\"hair_color_1\":0,\"makeup_4\":0,\"helmet_1\":104,\"bproof_2\":0,\"mask_2\":0,\"decals_1\":0,\"shoes_1\":57,\"makeup_3\":0,\"tshirt_1\":15,\"chain_1\":0,\"mask_1\":0,\"ears_1\":-1,\"helmet_2\":20,\"makeup_1\":0,\"glasses_1\":0,\"eyebrows_1\":0,\"ears_2\":0,\"eyebrows_3\":0,\"skin\":0,\"shoes_2\":0,\"bags_2\":0,\"torso_1\":13,\"hair_1\":0,\"beard_2\":0,\"lipstick_1\":0,\"face\":0,\"lipstick_4\":0,\"lipstick_3\":0,\"bags_1\":0,\"chain_2\":0,\"age_1\":0,\"sex\":0,\"beard_1\":0,\"torso_2\":5,\"beard_4\":0,\"age_2\":0,\"tshirt_2\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"hair_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"pants_2\":0,\"eyebrows_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"pants_1\":76,\"arms\":106,\"hair_color_2\":0}', '{\"makeup_2\":0,\"eyebrows_4\":0,\"makeup_4\":0,\"age_1\":0,\"bproof_2\":0,\"mask_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"eyebrows_2\":0,\"tshirt_1\":0,\"chain_1\":0,\"chain_2\":0,\"ears_1\":-1,\"helmet_2\":20,\"beard_1\":0,\"glasses_1\":5,\"eyebrows_1\":0,\"ears_2\":0,\"bags_2\":0,\"eyebrows_3\":0,\"pants_2\":3,\"tshirt_2\":0,\"makeup_3\":0,\"hair_1\":0,\"hair_2\":0,\"lipstick_3\":0,\"helmet_1\":104,\"torso_2\":7,\"skin\":0,\"sex\":1,\"beard_2\":0,\"mask_1\":0,\"shoes_1\":60,\"shoes_2\":0,\"torso_1\":9,\"beard_4\":0,\"age_2\":0,\"makeup_1\":0,\"glasses_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"hair_color_1\":0,\"face\":0,\"pants_1\":73,\"lipstick_1\":0,\"bags_1\":0,\"bproof_1\":0,\"decals_1\":0,\"arms\":114,\"hair_color_2\":0}'),
(41, 'oranger3', 1, 'recruit', 'แพทย์ (ออกเวร)', 1000, '{\"beard_3\":0,\"hair_color_1\":0,\"makeup_4\":0,\"helmet_1\":104,\"bproof_2\":0,\"mask_2\":0,\"decals_1\":0,\"shoes_1\":57,\"makeup_3\":0,\"tshirt_1\":15,\"chain_1\":0,\"mask_1\":0,\"ears_1\":-1,\"helmet_2\":20,\"makeup_1\":0,\"glasses_1\":0,\"eyebrows_1\":0,\"ears_2\":0,\"eyebrows_3\":0,\"skin\":0,\"shoes_2\":0,\"bags_2\":0,\"torso_1\":13,\"hair_1\":0,\"beard_2\":0,\"lipstick_1\":0,\"face\":0,\"lipstick_4\":0,\"lipstick_3\":0,\"bags_1\":0,\"chain_2\":0,\"age_1\":0,\"sex\":0,\"beard_1\":0,\"torso_2\":5,\"beard_4\":0,\"age_2\":0,\"tshirt_2\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"hair_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"pants_2\":0,\"eyebrows_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"pants_1\":76,\"arms\":106,\"hair_color_2\":0}', '{\"makeup_2\":0,\"eyebrows_4\":0,\"makeup_4\":0,\"age_1\":0,\"bproof_2\":0,\"mask_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"eyebrows_2\":0,\"tshirt_1\":0,\"chain_1\":0,\"chain_2\":0,\"ears_1\":-1,\"helmet_2\":20,\"beard_1\":0,\"glasses_1\":5,\"eyebrows_1\":0,\"ears_2\":0,\"bags_2\":0,\"eyebrows_3\":0,\"pants_2\":3,\"tshirt_2\":0,\"makeup_3\":0,\"hair_1\":0,\"hair_2\":0,\"lipstick_3\":0,\"helmet_1\":104,\"torso_2\":7,\"skin\":0,\"sex\":1,\"beard_2\":0,\"mask_1\":0,\"shoes_1\":60,\"shoes_2\":0,\"torso_1\":9,\"beard_4\":0,\"age_2\":0,\"makeup_1\":0,\"glasses_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"hair_color_1\":0,\"face\":0,\"pants_1\":73,\"lipstick_1\":0,\"bags_1\":0,\"bproof_1\":0,\"decals_1\":0,\"arms\":114,\"hair_color_2\":0}'),
(42, 'oranger3', 2, 'nurse', 'แพทย์ผู้ชำนาญ (ออกเวร)', 1000, '{\"beard_3\":0,\"hair_color_1\":0,\"makeup_4\":0,\"helmet_1\":104,\"bproof_2\":0,\"mask_2\":0,\"decals_1\":0,\"shoes_1\":57,\"makeup_3\":0,\"tshirt_1\":15,\"chain_1\":0,\"mask_1\":0,\"ears_1\":-1,\"helmet_2\":20,\"makeup_1\":0,\"glasses_1\":0,\"eyebrows_1\":0,\"ears_2\":0,\"eyebrows_3\":0,\"skin\":0,\"shoes_2\":0,\"bags_2\":0,\"torso_1\":13,\"hair_1\":0,\"beard_2\":0,\"lipstick_1\":0,\"face\":0,\"lipstick_4\":0,\"lipstick_3\":0,\"bags_1\":0,\"chain_2\":0,\"age_1\":0,\"sex\":0,\"beard_1\":0,\"torso_2\":5,\"beard_4\":0,\"age_2\":0,\"tshirt_2\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"hair_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"pants_2\":0,\"eyebrows_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"pants_1\":76,\"arms\":106,\"hair_color_2\":0}', '{\"makeup_2\":0,\"eyebrows_4\":0,\"makeup_4\":0,\"age_1\":0,\"bproof_2\":0,\"mask_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"eyebrows_2\":0,\"tshirt_1\":0,\"chain_1\":0,\"chain_2\":0,\"ears_1\":-1,\"helmet_2\":20,\"beard_1\":0,\"glasses_1\":5,\"eyebrows_1\":0,\"ears_2\":0,\"bags_2\":0,\"eyebrows_3\":0,\"pants_2\":3,\"tshirt_2\":0,\"makeup_3\":0,\"hair_1\":0,\"hair_2\":0,\"lipstick_3\":0,\"helmet_1\":104,\"torso_2\":7,\"skin\":0,\"sex\":1,\"beard_2\":0,\"mask_1\":0,\"shoes_1\":60,\"shoes_2\":0,\"torso_1\":9,\"beard_4\":0,\"age_2\":0,\"makeup_1\":0,\"glasses_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"hair_color_1\":0,\"face\":0,\"pants_1\":73,\"lipstick_1\":0,\"bags_1\":0,\"bproof_1\":0,\"decals_1\":0,\"arms\":114,\"hair_color_2\":0}'),
(43, 'oranger3', 3, 'doctor', 'แพทย์ผู้เชี่ยวชาญ (ออกเวร)', 1000, '{\"beard_3\":0,\"hair_color_1\":0,\"makeup_4\":0,\"helmet_1\":104,\"bproof_2\":0,\"mask_2\":0,\"decals_1\":0,\"shoes_1\":57,\"makeup_3\":0,\"tshirt_1\":15,\"chain_1\":0,\"mask_1\":0,\"ears_1\":-1,\"helmet_2\":20,\"makeup_1\":0,\"glasses_1\":0,\"eyebrows_1\":0,\"ears_2\":0,\"eyebrows_3\":0,\"skin\":0,\"shoes_2\":0,\"bags_2\":0,\"torso_1\":13,\"hair_1\":0,\"beard_2\":0,\"lipstick_1\":0,\"face\":0,\"lipstick_4\":0,\"lipstick_3\":0,\"bags_1\":0,\"chain_2\":0,\"age_1\":0,\"sex\":0,\"beard_1\":0,\"torso_2\":5,\"beard_4\":0,\"age_2\":0,\"tshirt_2\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"hair_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"pants_2\":0,\"eyebrows_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"pants_1\":76,\"arms\":106,\"hair_color_2\":0}', '{\"makeup_2\":0,\"eyebrows_4\":0,\"makeup_4\":0,\"age_1\":0,\"bproof_2\":0,\"mask_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"eyebrows_2\":0,\"tshirt_1\":0,\"chain_1\":0,\"chain_2\":0,\"ears_1\":-1,\"helmet_2\":20,\"beard_1\":0,\"glasses_1\":5,\"eyebrows_1\":0,\"ears_2\":0,\"bags_2\":0,\"eyebrows_3\":0,\"pants_2\":3,\"tshirt_2\":0,\"makeup_3\":0,\"hair_1\":0,\"hair_2\":0,\"lipstick_3\":0,\"helmet_1\":104,\"torso_2\":7,\"skin\":0,\"sex\":1,\"beard_2\":0,\"mask_1\":0,\"shoes_1\":60,\"shoes_2\":0,\"torso_1\":9,\"beard_4\":0,\"age_2\":0,\"makeup_1\":0,\"glasses_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"hair_color_1\":0,\"face\":0,\"pants_1\":73,\"lipstick_1\":0,\"bags_1\":0,\"bproof_1\":0,\"decals_1\":0,\"arms\":114,\"hair_color_2\":0}'),
(44, 'oranger3', 4, 'surgeon', 'หัวหน้าแพทย์ (ออกเวร)', 1000, '{\"beard_3\":0,\"hair_color_1\":0,\"makeup_4\":0,\"helmet_1\":104,\"bproof_2\":0,\"mask_2\":0,\"decals_1\":0,\"shoes_1\":57,\"makeup_3\":0,\"tshirt_1\":15,\"chain_1\":0,\"mask_1\":0,\"ears_1\":-1,\"helmet_2\":20,\"makeup_1\":0,\"glasses_1\":0,\"eyebrows_1\":0,\"ears_2\":0,\"eyebrows_3\":0,\"skin\":0,\"shoes_2\":0,\"bags_2\":0,\"torso_1\":13,\"hair_1\":0,\"beard_2\":0,\"lipstick_1\":0,\"face\":0,\"lipstick_4\":0,\"lipstick_3\":0,\"bags_1\":0,\"chain_2\":0,\"age_1\":0,\"sex\":0,\"beard_1\":0,\"torso_2\":5,\"beard_4\":0,\"age_2\":0,\"tshirt_2\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"hair_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"pants_2\":0,\"eyebrows_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"pants_1\":76,\"arms\":106,\"hair_color_2\":0}', '{\"makeup_2\":0,\"eyebrows_4\":0,\"makeup_4\":0,\"age_1\":0,\"bproof_2\":0,\"mask_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"eyebrows_2\":0,\"tshirt_1\":0,\"chain_1\":0,\"chain_2\":0,\"ears_1\":-1,\"helmet_2\":20,\"beard_1\":0,\"glasses_1\":5,\"eyebrows_1\":0,\"ears_2\":0,\"bags_2\":0,\"eyebrows_3\":0,\"pants_2\":3,\"tshirt_2\":0,\"makeup_3\":0,\"hair_1\":0,\"hair_2\":0,\"lipstick_3\":0,\"helmet_1\":104,\"torso_2\":7,\"skin\":0,\"sex\":1,\"beard_2\":0,\"mask_1\":0,\"shoes_1\":60,\"shoes_2\":0,\"torso_1\":9,\"beard_4\":0,\"age_2\":0,\"makeup_1\":0,\"glasses_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"hair_color_1\":0,\"face\":0,\"pants_1\":73,\"lipstick_1\":0,\"bags_1\":0,\"bproof_1\":0,\"decals_1\":0,\"arms\":114,\"hair_color_2\":0}'),
(45, 'oranger3', 5, 'chief_doctor', 'รองผู้อำนวยการแพทย์ (ออกเวร)', 1000, '{\"beard_3\":0,\"hair_color_1\":0,\"makeup_4\":0,\"helmet_1\":104,\"bproof_2\":0,\"mask_2\":0,\"decals_1\":0,\"shoes_1\":57,\"makeup_3\":0,\"tshirt_1\":15,\"chain_1\":0,\"mask_1\":0,\"ears_1\":-1,\"helmet_2\":20,\"makeup_1\":0,\"glasses_1\":0,\"eyebrows_1\":0,\"ears_2\":0,\"eyebrows_3\":0,\"skin\":0,\"shoes_2\":0,\"bags_2\":0,\"torso_1\":13,\"hair_1\":0,\"beard_2\":0,\"lipstick_1\":0,\"face\":0,\"lipstick_4\":0,\"lipstick_3\":0,\"bags_1\":0,\"chain_2\":0,\"age_1\":0,\"sex\":0,\"beard_1\":0,\"torso_2\":5,\"beard_4\":0,\"age_2\":0,\"tshirt_2\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"hair_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"pants_2\":0,\"eyebrows_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"pants_1\":76,\"arms\":106,\"hair_color_2\":0}', '{\"makeup_2\":0,\"eyebrows_4\":0,\"makeup_4\":0,\"age_1\":0,\"bproof_2\":0,\"mask_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"eyebrows_2\":0,\"tshirt_1\":0,\"chain_1\":0,\"chain_2\":0,\"ears_1\":-1,\"helmet_2\":20,\"beard_1\":0,\"glasses_1\":5,\"eyebrows_1\":0,\"ears_2\":0,\"bags_2\":0,\"eyebrows_3\":0,\"pants_2\":3,\"tshirt_2\":0,\"makeup_3\":0,\"hair_1\":0,\"hair_2\":0,\"lipstick_3\":0,\"helmet_1\":104,\"torso_2\":7,\"skin\":0,\"sex\":1,\"beard_2\":0,\"mask_1\":0,\"shoes_1\":60,\"shoes_2\":0,\"torso_1\":9,\"beard_4\":0,\"age_2\":0,\"makeup_1\":0,\"glasses_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"hair_color_1\":0,\"face\":0,\"pants_1\":73,\"lipstick_1\":0,\"bags_1\":0,\"bproof_1\":0,\"decals_1\":0,\"arms\":114,\"hair_color_2\":0}'),
(46, 'oranger3', 6, 'boss', 'ผู้อำนวยการแพทย์ (ออกเวร)', 1000, '{\"beard_3\":0,\"hair_color_1\":0,\"makeup_4\":0,\"helmet_1\":104,\"bproof_2\":0,\"mask_2\":0,\"decals_1\":0,\"shoes_1\":57,\"makeup_3\":0,\"tshirt_1\":15,\"chain_1\":0,\"mask_1\":0,\"ears_1\":-1,\"helmet_2\":20,\"makeup_1\":0,\"glasses_1\":0,\"eyebrows_1\":0,\"ears_2\":0,\"eyebrows_3\":0,\"skin\":0,\"shoes_2\":0,\"bags_2\":0,\"torso_1\":13,\"hair_1\":0,\"beard_2\":0,\"lipstick_1\":0,\"face\":0,\"lipstick_4\":0,\"lipstick_3\":0,\"bags_1\":0,\"chain_2\":0,\"age_1\":0,\"sex\":0,\"beard_1\":0,\"torso_2\":5,\"beard_4\":0,\"age_2\":0,\"tshirt_2\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"hair_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"pants_2\":0,\"eyebrows_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"pants_1\":76,\"arms\":106,\"hair_color_2\":0}', '{\"makeup_2\":0,\"eyebrows_4\":0,\"makeup_4\":0,\"age_1\":0,\"bproof_2\":0,\"mask_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"eyebrows_2\":0,\"tshirt_1\":0,\"chain_1\":0,\"chain_2\":0,\"ears_1\":-1,\"helmet_2\":20,\"beard_1\":0,\"glasses_1\":5,\"eyebrows_1\":0,\"ears_2\":0,\"bags_2\":0,\"eyebrows_3\":0,\"pants_2\":3,\"tshirt_2\":0,\"makeup_3\":0,\"hair_1\":0,\"hair_2\":0,\"lipstick_3\":0,\"helmet_1\":104,\"torso_2\":7,\"skin\":0,\"sex\":1,\"beard_2\":0,\"mask_1\":0,\"shoes_1\":60,\"shoes_2\":0,\"torso_1\":9,\"beard_4\":0,\"age_2\":0,\"makeup_1\":0,\"glasses_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"hair_color_1\":0,\"face\":0,\"pants_1\":73,\"lipstick_1\":0,\"bags_1\":0,\"bproof_1\":0,\"decals_1\":0,\"arms\":114,\"hair_color_2\":0}'),
(47, 'oranger4', 0, 'recrue', 'นักเรียนช่าง (ออกเวร)', 1000, '{\"beard_3\":0,\"hair_color_1\":0,\"makeup_4\":0,\"helmet_1\":104,\"bproof_2\":0,\"mask_2\":0,\"decals_1\":0,\"shoes_1\":57,\"makeup_3\":0,\"tshirt_1\":15,\"chain_1\":0,\"mask_1\":0,\"ears_1\":-1,\"helmet_2\":20,\"makeup_1\":0,\"glasses_1\":0,\"eyebrows_1\":0,\"ears_2\":0,\"eyebrows_3\":0,\"skin\":0,\"shoes_2\":0,\"bags_2\":0,\"torso_1\":13,\"hair_1\":0,\"beard_2\":0,\"lipstick_1\":0,\"face\":0,\"lipstick_4\":0,\"lipstick_3\":0,\"bags_1\":0,\"chain_2\":0,\"age_1\":0,\"sex\":0,\"beard_1\":0,\"torso_2\":5,\"beard_4\":0,\"age_2\":0,\"tshirt_2\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"hair_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"pants_2\":0,\"eyebrows_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"pants_1\":76,\"arms\":106,\"hair_color_2\":0}', '{\"makeup_2\":0,\"eyebrows_4\":0,\"makeup_4\":0,\"age_1\":0,\"bproof_2\":0,\"mask_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"eyebrows_2\":0,\"tshirt_1\":0,\"chain_1\":0,\"chain_2\":0,\"ears_1\":-1,\"helmet_2\":20,\"beard_1\":0,\"glasses_1\":5,\"eyebrows_1\":0,\"ears_2\":0,\"bags_2\":0,\"eyebrows_3\":0,\"pants_2\":3,\"tshirt_2\":0,\"makeup_3\":0,\"hair_1\":0,\"hair_2\":0,\"lipstick_3\":0,\"helmet_1\":104,\"torso_2\":7,\"skin\":0,\"sex\":1,\"beard_2\":0,\"mask_1\":0,\"shoes_1\":60,\"shoes_2\":0,\"torso_1\":9,\"beard_4\":0,\"age_2\":0,\"makeup_1\":0,\"glasses_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"hair_color_1\":0,\"face\":0,\"pants_1\":73,\"lipstick_1\":0,\"bags_1\":0,\"bproof_1\":0,\"decals_1\":0,\"arms\":114,\"hair_color_2\":0}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(48, 'oranger4', 1, 'novice', 'ช่าง (ออกเวร)', 1000, '{\"beard_3\":0,\"hair_color_1\":0,\"makeup_4\":0,\"helmet_1\":104,\"bproof_2\":0,\"mask_2\":0,\"decals_1\":0,\"shoes_1\":57,\"makeup_3\":0,\"tshirt_1\":15,\"chain_1\":0,\"mask_1\":0,\"ears_1\":-1,\"helmet_2\":20,\"makeup_1\":0,\"glasses_1\":0,\"eyebrows_1\":0,\"ears_2\":0,\"eyebrows_3\":0,\"skin\":0,\"shoes_2\":0,\"bags_2\":0,\"torso_1\":13,\"hair_1\":0,\"beard_2\":0,\"lipstick_1\":0,\"face\":0,\"lipstick_4\":0,\"lipstick_3\":0,\"bags_1\":0,\"chain_2\":0,\"age_1\":0,\"sex\":0,\"beard_1\":0,\"torso_2\":5,\"beard_4\":0,\"age_2\":0,\"tshirt_2\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"hair_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"pants_2\":0,\"eyebrows_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"pants_1\":76,\"arms\":106,\"hair_color_2\":0}', '{\"makeup_2\":0,\"eyebrows_4\":0,\"makeup_4\":0,\"age_1\":0,\"bproof_2\":0,\"mask_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"eyebrows_2\":0,\"tshirt_1\":0,\"chain_1\":0,\"chain_2\":0,\"ears_1\":-1,\"helmet_2\":20,\"beard_1\":0,\"glasses_1\":5,\"eyebrows_1\":0,\"ears_2\":0,\"bags_2\":0,\"eyebrows_3\":0,\"pants_2\":3,\"tshirt_2\":0,\"makeup_3\":0,\"hair_1\":0,\"hair_2\":0,\"lipstick_3\":0,\"helmet_1\":104,\"torso_2\":7,\"skin\":0,\"sex\":1,\"beard_2\":0,\"mask_1\":0,\"shoes_1\":60,\"shoes_2\":0,\"torso_1\":9,\"beard_4\":0,\"age_2\":0,\"makeup_1\":0,\"glasses_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"hair_color_1\":0,\"face\":0,\"pants_1\":73,\"lipstick_1\":0,\"bags_1\":0,\"bproof_1\":0,\"decals_1\":0,\"arms\":114,\"hair_color_2\":0}'),
(49, 'oranger4', 2, 'experimente', 'ช่างซ่อมชำนาญ (ออกเวร)', 1000, '{\"beard_3\":0,\"hair_color_1\":0,\"makeup_4\":0,\"helmet_1\":104,\"bproof_2\":0,\"mask_2\":0,\"decals_1\":0,\"shoes_1\":57,\"makeup_3\":0,\"tshirt_1\":15,\"chain_1\":0,\"mask_1\":0,\"ears_1\":-1,\"helmet_2\":20,\"makeup_1\":0,\"glasses_1\":0,\"eyebrows_1\":0,\"ears_2\":0,\"eyebrows_3\":0,\"skin\":0,\"shoes_2\":0,\"bags_2\":0,\"torso_1\":13,\"hair_1\":0,\"beard_2\":0,\"lipstick_1\":0,\"face\":0,\"lipstick_4\":0,\"lipstick_3\":0,\"bags_1\":0,\"chain_2\":0,\"age_1\":0,\"sex\":0,\"beard_1\":0,\"torso_2\":5,\"beard_4\":0,\"age_2\":0,\"tshirt_2\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"hair_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"pants_2\":0,\"eyebrows_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"pants_1\":76,\"arms\":106,\"hair_color_2\":0}', '{\"makeup_2\":0,\"eyebrows_4\":0,\"makeup_4\":0,\"age_1\":0,\"bproof_2\":0,\"mask_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"eyebrows_2\":0,\"tshirt_1\":0,\"chain_1\":0,\"chain_2\":0,\"ears_1\":-1,\"helmet_2\":20,\"beard_1\":0,\"glasses_1\":5,\"eyebrows_1\":0,\"ears_2\":0,\"bags_2\":0,\"eyebrows_3\":0,\"pants_2\":3,\"tshirt_2\":0,\"makeup_3\":0,\"hair_1\":0,\"hair_2\":0,\"lipstick_3\":0,\"helmet_1\":104,\"torso_2\":7,\"skin\":0,\"sex\":1,\"beard_2\":0,\"mask_1\":0,\"shoes_1\":60,\"shoes_2\":0,\"torso_1\":9,\"beard_4\":0,\"age_2\":0,\"makeup_1\":0,\"glasses_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"hair_color_1\":0,\"face\":0,\"pants_1\":73,\"lipstick_1\":0,\"bags_1\":0,\"bproof_1\":0,\"decals_1\":0,\"arms\":114,\"hair_color_2\":0}'),
(50, 'oranger4', 3, 'chief', 'รองผู้อำนวยการช่างซ่อม (ออกเวร)', 1000, '{\"beard_3\":0,\"hair_color_1\":0,\"makeup_4\":0,\"helmet_1\":104,\"bproof_2\":0,\"mask_2\":0,\"decals_1\":0,\"shoes_1\":57,\"makeup_3\":0,\"tshirt_1\":15,\"chain_1\":0,\"mask_1\":0,\"ears_1\":-1,\"helmet_2\":20,\"makeup_1\":0,\"glasses_1\":0,\"eyebrows_1\":0,\"ears_2\":0,\"eyebrows_3\":0,\"skin\":0,\"shoes_2\":0,\"bags_2\":0,\"torso_1\":13,\"hair_1\":0,\"beard_2\":0,\"lipstick_1\":0,\"face\":0,\"lipstick_4\":0,\"lipstick_3\":0,\"bags_1\":0,\"chain_2\":0,\"age_1\":0,\"sex\":0,\"beard_1\":0,\"torso_2\":5,\"beard_4\":0,\"age_2\":0,\"tshirt_2\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"hair_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"pants_2\":0,\"eyebrows_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"pants_1\":76,\"arms\":106,\"hair_color_2\":0}', '{\"makeup_2\":0,\"eyebrows_4\":0,\"makeup_4\":0,\"age_1\":0,\"bproof_2\":0,\"mask_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"eyebrows_2\":0,\"tshirt_1\":0,\"chain_1\":0,\"chain_2\":0,\"ears_1\":-1,\"helmet_2\":20,\"beard_1\":0,\"glasses_1\":5,\"eyebrows_1\":0,\"ears_2\":0,\"bags_2\":0,\"eyebrows_3\":0,\"pants_2\":3,\"tshirt_2\":0,\"makeup_3\":0,\"hair_1\":0,\"hair_2\":0,\"lipstick_3\":0,\"helmet_1\":104,\"torso_2\":7,\"skin\":0,\"sex\":1,\"beard_2\":0,\"mask_1\":0,\"shoes_1\":60,\"shoes_2\":0,\"torso_1\":9,\"beard_4\":0,\"age_2\":0,\"makeup_1\":0,\"glasses_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"hair_color_1\":0,\"face\":0,\"pants_1\":73,\"lipstick_1\":0,\"bags_1\":0,\"bproof_1\":0,\"decals_1\":0,\"arms\":114,\"hair_color_2\":0}'),
(51, 'oranger4', 4, 'boss', 'ผู้อำนวยการช่างซ่อม (ออกเวร)', 1000, '{\"beard_3\":0,\"hair_color_1\":0,\"makeup_4\":0,\"helmet_1\":104,\"bproof_2\":0,\"mask_2\":0,\"decals_1\":0,\"shoes_1\":57,\"makeup_3\":0,\"tshirt_1\":15,\"chain_1\":0,\"mask_1\":0,\"ears_1\":-1,\"helmet_2\":20,\"makeup_1\":0,\"glasses_1\":0,\"eyebrows_1\":0,\"ears_2\":0,\"eyebrows_3\":0,\"skin\":0,\"shoes_2\":0,\"bags_2\":0,\"torso_1\":13,\"hair_1\":0,\"beard_2\":0,\"lipstick_1\":0,\"face\":0,\"lipstick_4\":0,\"lipstick_3\":0,\"bags_1\":0,\"chain_2\":0,\"age_1\":0,\"sex\":0,\"beard_1\":0,\"torso_2\":5,\"beard_4\":0,\"age_2\":0,\"tshirt_2\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"hair_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"pants_2\":0,\"eyebrows_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"pants_1\":76,\"arms\":106,\"hair_color_2\":0}', '{\"makeup_2\":0,\"eyebrows_4\":0,\"makeup_4\":0,\"age_1\":0,\"bproof_2\":0,\"mask_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"eyebrows_2\":0,\"tshirt_1\":0,\"chain_1\":0,\"chain_2\":0,\"ears_1\":-1,\"helmet_2\":20,\"beard_1\":0,\"glasses_1\":5,\"eyebrows_1\":0,\"ears_2\":0,\"bags_2\":0,\"eyebrows_3\":0,\"pants_2\":3,\"tshirt_2\":0,\"makeup_3\":0,\"hair_1\":0,\"hair_2\":0,\"lipstick_3\":0,\"helmet_1\":104,\"torso_2\":7,\"skin\":0,\"sex\":1,\"beard_2\":0,\"mask_1\":0,\"shoes_1\":60,\"shoes_2\":0,\"torso_1\":9,\"beard_4\":0,\"age_2\":0,\"makeup_1\":0,\"glasses_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"hair_color_1\":0,\"face\":0,\"pants_1\":73,\"lipstick_1\":0,\"bags_1\":0,\"bproof_1\":0,\"decals_1\":0,\"arms\":114,\"hair_color_2\":0}'),
(52, 'oranger5', 0, 'recrue', 'แท็กซี่ฝึกหัด (ออกเวร)', 1000, '{\"beard_3\":0,\"hair_color_1\":0,\"makeup_4\":0,\"helmet_1\":104,\"bproof_2\":0,\"mask_2\":0,\"decals_1\":0,\"shoes_1\":57,\"makeup_3\":0,\"tshirt_1\":15,\"chain_1\":0,\"mask_1\":0,\"ears_1\":-1,\"helmet_2\":20,\"makeup_1\":0,\"glasses_1\":0,\"eyebrows_1\":0,\"ears_2\":0,\"eyebrows_3\":0,\"skin\":0,\"shoes_2\":0,\"bags_2\":0,\"torso_1\":13,\"hair_1\":0,\"beard_2\":0,\"lipstick_1\":0,\"face\":0,\"lipstick_4\":0,\"lipstick_3\":0,\"bags_1\":0,\"chain_2\":0,\"age_1\":0,\"sex\":0,\"beard_1\":0,\"torso_2\":5,\"beard_4\":0,\"age_2\":0,\"tshirt_2\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"hair_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"pants_2\":0,\"eyebrows_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"pants_1\":76,\"arms\":106,\"hair_color_2\":0}', '{\"makeup_2\":0,\"eyebrows_4\":0,\"makeup_4\":0,\"age_1\":0,\"bproof_2\":0,\"mask_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"eyebrows_2\":0,\"tshirt_1\":0,\"chain_1\":0,\"chain_2\":0,\"ears_1\":-1,\"helmet_2\":20,\"beard_1\":0,\"glasses_1\":5,\"eyebrows_1\":0,\"ears_2\":0,\"bags_2\":0,\"eyebrows_3\":0,\"pants_2\":3,\"tshirt_2\":0,\"makeup_3\":0,\"hair_1\":0,\"hair_2\":0,\"lipstick_3\":0,\"helmet_1\":104,\"torso_2\":7,\"skin\":0,\"sex\":1,\"beard_2\":0,\"mask_1\":0,\"shoes_1\":60,\"shoes_2\":0,\"torso_1\":9,\"beard_4\":0,\"age_2\":0,\"makeup_1\":0,\"glasses_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"hair_color_1\":0,\"face\":0,\"pants_1\":73,\"lipstick_1\":0,\"bags_1\":0,\"bproof_1\":0,\"decals_1\":0,\"arms\":114,\"hair_color_2\":0}'),
(53, 'oranger5', 1, 'novice', 'แท็กซี่มืออาชีพ (ออกเวร)', 1000, '{\"beard_3\":0,\"hair_color_1\":0,\"makeup_4\":0,\"helmet_1\":104,\"bproof_2\":0,\"mask_2\":0,\"decals_1\":0,\"shoes_1\":57,\"makeup_3\":0,\"tshirt_1\":15,\"chain_1\":0,\"mask_1\":0,\"ears_1\":-1,\"helmet_2\":20,\"makeup_1\":0,\"glasses_1\":0,\"eyebrows_1\":0,\"ears_2\":0,\"eyebrows_3\":0,\"skin\":0,\"shoes_2\":0,\"bags_2\":0,\"torso_1\":13,\"hair_1\":0,\"beard_2\":0,\"lipstick_1\":0,\"face\":0,\"lipstick_4\":0,\"lipstick_3\":0,\"bags_1\":0,\"chain_2\":0,\"age_1\":0,\"sex\":0,\"beard_1\":0,\"torso_2\":5,\"beard_4\":0,\"age_2\":0,\"tshirt_2\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"hair_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"pants_2\":0,\"eyebrows_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"pants_1\":76,\"arms\":106,\"hair_color_2\":0}', '{\"makeup_2\":0,\"eyebrows_4\":0,\"makeup_4\":0,\"age_1\":0,\"bproof_2\":0,\"mask_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"eyebrows_2\":0,\"tshirt_1\":0,\"chain_1\":0,\"chain_2\":0,\"ears_1\":-1,\"helmet_2\":20,\"beard_1\":0,\"glasses_1\":5,\"eyebrows_1\":0,\"ears_2\":0,\"bags_2\":0,\"eyebrows_3\":0,\"pants_2\":3,\"tshirt_2\":0,\"makeup_3\":0,\"hair_1\":0,\"hair_2\":0,\"lipstick_3\":0,\"helmet_1\":104,\"torso_2\":7,\"skin\":0,\"sex\":1,\"beard_2\":0,\"mask_1\":0,\"shoes_1\":60,\"shoes_2\":0,\"torso_1\":9,\"beard_4\":0,\"age_2\":0,\"makeup_1\":0,\"glasses_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"hair_color_1\":0,\"face\":0,\"pants_1\":73,\"lipstick_1\":0,\"bags_1\":0,\"bproof_1\":0,\"decals_1\":0,\"arms\":114,\"hair_color_2\":0}'),
(54, 'oranger5', 2, 'experimente', 'แท็กซี่อาวุโส (ออกเวร)', 1000, '{\"beard_3\":0,\"hair_color_1\":0,\"makeup_4\":0,\"helmet_1\":104,\"bproof_2\":0,\"mask_2\":0,\"decals_1\":0,\"shoes_1\":57,\"makeup_3\":0,\"tshirt_1\":15,\"chain_1\":0,\"mask_1\":0,\"ears_1\":-1,\"helmet_2\":20,\"makeup_1\":0,\"glasses_1\":0,\"eyebrows_1\":0,\"ears_2\":0,\"eyebrows_3\":0,\"skin\":0,\"shoes_2\":0,\"bags_2\":0,\"torso_1\":13,\"hair_1\":0,\"beard_2\":0,\"lipstick_1\":0,\"face\":0,\"lipstick_4\":0,\"lipstick_3\":0,\"bags_1\":0,\"chain_2\":0,\"age_1\":0,\"sex\":0,\"beard_1\":0,\"torso_2\":5,\"beard_4\":0,\"age_2\":0,\"tshirt_2\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"hair_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"pants_2\":0,\"eyebrows_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"pants_1\":76,\"arms\":106,\"hair_color_2\":0}', '{\"makeup_2\":0,\"eyebrows_4\":0,\"makeup_4\":0,\"age_1\":0,\"bproof_2\":0,\"mask_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"eyebrows_2\":0,\"tshirt_1\":0,\"chain_1\":0,\"chain_2\":0,\"ears_1\":-1,\"helmet_2\":20,\"beard_1\":0,\"glasses_1\":5,\"eyebrows_1\":0,\"ears_2\":0,\"bags_2\":0,\"eyebrows_3\":0,\"pants_2\":3,\"tshirt_2\":0,\"makeup_3\":0,\"hair_1\":0,\"hair_2\":0,\"lipstick_3\":0,\"helmet_1\":104,\"torso_2\":7,\"skin\":0,\"sex\":1,\"beard_2\":0,\"mask_1\":0,\"shoes_1\":60,\"shoes_2\":0,\"torso_1\":9,\"beard_4\":0,\"age_2\":0,\"makeup_1\":0,\"glasses_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"hair_color_1\":0,\"face\":0,\"pants_1\":73,\"lipstick_1\":0,\"bags_1\":0,\"bproof_1\":0,\"decals_1\":0,\"arms\":114,\"hair_color_2\":0}'),
(55, 'oranger5', 3, 'uber', 'หัวหน้าแท็กซี่ (ออกเวร)', 1000, '{\"beard_3\":0,\"hair_color_1\":0,\"makeup_4\":0,\"helmet_1\":104,\"bproof_2\":0,\"mask_2\":0,\"decals_1\":0,\"shoes_1\":57,\"makeup_3\":0,\"tshirt_1\":15,\"chain_1\":0,\"mask_1\":0,\"ears_1\":-1,\"helmet_2\":20,\"makeup_1\":0,\"glasses_1\":0,\"eyebrows_1\":0,\"ears_2\":0,\"eyebrows_3\":0,\"skin\":0,\"shoes_2\":0,\"bags_2\":0,\"torso_1\":13,\"hair_1\":0,\"beard_2\":0,\"lipstick_1\":0,\"face\":0,\"lipstick_4\":0,\"lipstick_3\":0,\"bags_1\":0,\"chain_2\":0,\"age_1\":0,\"sex\":0,\"beard_1\":0,\"torso_2\":5,\"beard_4\":0,\"age_2\":0,\"tshirt_2\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"hair_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"pants_2\":0,\"eyebrows_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"pants_1\":76,\"arms\":106,\"hair_color_2\":0}', '{\"makeup_2\":0,\"eyebrows_4\":0,\"makeup_4\":0,\"age_1\":0,\"bproof_2\":0,\"mask_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"eyebrows_2\":0,\"tshirt_1\":0,\"chain_1\":0,\"chain_2\":0,\"ears_1\":-1,\"helmet_2\":20,\"beard_1\":0,\"glasses_1\":5,\"eyebrows_1\":0,\"ears_2\":0,\"bags_2\":0,\"eyebrows_3\":0,\"pants_2\":3,\"tshirt_2\":0,\"makeup_3\":0,\"hair_1\":0,\"hair_2\":0,\"lipstick_3\":0,\"helmet_1\":104,\"torso_2\":7,\"skin\":0,\"sex\":1,\"beard_2\":0,\"mask_1\":0,\"shoes_1\":60,\"shoes_2\":0,\"torso_1\":9,\"beard_4\":0,\"age_2\":0,\"makeup_1\":0,\"glasses_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"hair_color_1\":0,\"face\":0,\"pants_1\":73,\"lipstick_1\":0,\"bags_1\":0,\"bproof_1\":0,\"decals_1\":0,\"arms\":114,\"hair_color_2\":0}'),
(56, 'oranger5', 4, 'boss', 'ประธานบริษัทแท็กซี่ (ออกเวร)', 1000, '{\"beard_3\":0,\"hair_color_1\":0,\"makeup_4\":0,\"helmet_1\":104,\"bproof_2\":0,\"mask_2\":0,\"decals_1\":0,\"shoes_1\":57,\"makeup_3\":0,\"tshirt_1\":15,\"chain_1\":0,\"mask_1\":0,\"ears_1\":-1,\"helmet_2\":20,\"makeup_1\":0,\"glasses_1\":0,\"eyebrows_1\":0,\"ears_2\":0,\"eyebrows_3\":0,\"skin\":0,\"shoes_2\":0,\"bags_2\":0,\"torso_1\":13,\"hair_1\":0,\"beard_2\":0,\"lipstick_1\":0,\"face\":0,\"lipstick_4\":0,\"lipstick_3\":0,\"bags_1\":0,\"chain_2\":0,\"age_1\":0,\"sex\":0,\"beard_1\":0,\"torso_2\":5,\"beard_4\":0,\"age_2\":0,\"tshirt_2\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"hair_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"pants_2\":0,\"eyebrows_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"pants_1\":76,\"arms\":106,\"hair_color_2\":0}', '{\"makeup_2\":0,\"eyebrows_4\":0,\"makeup_4\":0,\"age_1\":0,\"bproof_2\":0,\"mask_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"eyebrows_2\":0,\"tshirt_1\":0,\"chain_1\":0,\"chain_2\":0,\"ears_1\":-1,\"helmet_2\":20,\"beard_1\":0,\"glasses_1\":5,\"eyebrows_1\":0,\"ears_2\":0,\"bags_2\":0,\"eyebrows_3\":0,\"pants_2\":3,\"tshirt_2\":0,\"makeup_3\":0,\"hair_1\":0,\"hair_2\":0,\"lipstick_3\":0,\"helmet_1\":104,\"torso_2\":7,\"skin\":0,\"sex\":1,\"beard_2\":0,\"mask_1\":0,\"shoes_1\":60,\"shoes_2\":0,\"torso_1\":9,\"beard_4\":0,\"age_2\":0,\"makeup_1\":0,\"glasses_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"hair_color_1\":0,\"face\":0,\"pants_1\":73,\"lipstick_1\":0,\"bags_1\":0,\"bproof_1\":0,\"decals_1\":0,\"arms\":114,\"hair_color_2\":0}'),
(57, 'boatdealer', 0, 'recruit', 'Recrue', 0, '{}', '{}'),
(58, 'boatdealer', 1, 'novice', 'Novice', 0, '{}', '{}'),
(59, 'boatdealer', 2, 'experienced', 'Experimente', 0, '{}', '{}'),
(60, 'boatdealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(61, 'oranger', 0, 'interim', 'ไร่ส้มธนาธร', 1000, '{\"beard_3\":0,\"hair_color_1\":0,\"makeup_4\":0,\"helmet_1\":104,\"bproof_2\":0,\"mask_2\":0,\"decals_1\":0,\"shoes_1\":57,\"makeup_3\":0,\"tshirt_1\":15,\"chain_1\":0,\"mask_1\":0,\"ears_1\":-1,\"helmet_2\":20,\"makeup_1\":0,\"glasses_1\":0,\"eyebrows_1\":0,\"ears_2\":0,\"eyebrows_3\":0,\"skin\":0,\"shoes_2\":0,\"bags_2\":0,\"torso_1\":13,\"hair_1\":0,\"beard_2\":0,\"lipstick_1\":0,\"face\":0,\"lipstick_4\":0,\"lipstick_3\":0,\"bags_1\":0,\"chain_2\":0,\"age_1\":0,\"sex\":0,\"beard_1\":0,\"torso_2\":5,\"beard_4\":0,\"age_2\":0,\"tshirt_2\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"hair_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"pants_2\":0,\"eyebrows_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"pants_1\":76,\"arms\":106,\"hair_color_2\":0}', '{\"makeup_2\":0,\"eyebrows_4\":0,\"makeup_4\":0,\"age_1\":0,\"bproof_2\":0,\"mask_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"eyebrows_2\":0,\"tshirt_1\":0,\"chain_1\":0,\"chain_2\":0,\"ears_1\":-1,\"helmet_2\":20,\"beard_1\":0,\"glasses_1\":5,\"eyebrows_1\":0,\"ears_2\":0,\"bags_2\":0,\"eyebrows_3\":0,\"pants_2\":3,\"tshirt_2\":0,\"makeup_3\":0,\"hair_1\":0,\"hair_2\":0,\"lipstick_3\":0,\"helmet_1\":104,\"torso_2\":7,\"skin\":0,\"sex\":1,\"beard_2\":0,\"mask_1\":0,\"shoes_1\":60,\"shoes_2\":0,\"torso_1\":9,\"beard_4\":0,\"age_2\":0,\"makeup_1\":0,\"glasses_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"hair_color_1\":0,\"face\":0,\"pants_1\":73,\"lipstick_1\":0,\"bags_1\":0,\"bproof_1\":0,\"decals_1\":0,\"arms\":114,\"hair_color_2\":0}'),
(62, 'hitman', 0, 'sergeant', 'สมาชิกองค์กร', 2000, '{}', '{}'),
(63, 'hitman', 1, 'boss', 'หัวหน้าฮิตแมน', 3000, '{}', '{}'),
(64, 'vip', 0, 'sergeant', 'กิตติมศักดิ์', 5000, '{}', '{}'),
(65, 'oranger6', 0, 'sergeant', 'สมาชิกองค์กร (ออกเวร)', 1000, '{\"beard_3\":0,\"hair_color_1\":0,\"makeup_4\":0,\"helmet_1\":104,\"bproof_2\":0,\"mask_2\":0,\"decals_1\":0,\"shoes_1\":57,\"makeup_3\":0,\"tshirt_1\":15,\"chain_1\":0,\"mask_1\":0,\"ears_1\":-1,\"helmet_2\":20,\"makeup_1\":0,\"glasses_1\":0,\"eyebrows_1\":0,\"ears_2\":0,\"eyebrows_3\":0,\"skin\":0,\"shoes_2\":0,\"bags_2\":0,\"torso_1\":13,\"hair_1\":0,\"beard_2\":0,\"lipstick_1\":0,\"face\":0,\"lipstick_4\":0,\"lipstick_3\":0,\"bags_1\":0,\"chain_2\":0,\"age_1\":0,\"sex\":0,\"beard_1\":0,\"torso_2\":5,\"beard_4\":0,\"age_2\":0,\"tshirt_2\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"hair_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"pants_2\":0,\"eyebrows_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"pants_1\":76,\"arms\":106,\"hair_color_2\":0}', '{\"makeup_2\":0,\"eyebrows_4\":0,\"makeup_4\":0,\"age_1\":0,\"bproof_2\":0,\"mask_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"eyebrows_2\":0,\"tshirt_1\":0,\"chain_1\":0,\"chain_2\":0,\"ears_1\":-1,\"helmet_2\":20,\"beard_1\":0,\"glasses_1\":5,\"eyebrows_1\":0,\"ears_2\":0,\"bags_2\":0,\"eyebrows_3\":0,\"pants_2\":3,\"tshirt_2\":0,\"makeup_3\":0,\"hair_1\":0,\"hair_2\":0,\"lipstick_3\":0,\"helmet_1\":104,\"torso_2\":7,\"skin\":0,\"sex\":1,\"beard_2\":0,\"mask_1\":0,\"shoes_1\":60,\"shoes_2\":0,\"torso_1\":9,\"beard_4\":0,\"age_2\":0,\"makeup_1\":0,\"glasses_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"hair_color_1\":0,\"face\":0,\"pants_1\":73,\"lipstick_1\":0,\"bags_1\":0,\"bproof_1\":0,\"decals_1\":0,\"arms\":114,\"hair_color_2\":0}'),
(66, 'oranger6', 1, 'boss', 'หัวหน้าฮิตแมน (ออกเวร)', 1000, '{\"beard_3\":0,\"hair_color_1\":0,\"makeup_4\":0,\"helmet_1\":104,\"bproof_2\":0,\"mask_2\":0,\"decals_1\":0,\"shoes_1\":57,\"makeup_3\":0,\"tshirt_1\":15,\"chain_1\":0,\"mask_1\":0,\"ears_1\":-1,\"helmet_2\":20,\"makeup_1\":0,\"glasses_1\":0,\"eyebrows_1\":0,\"ears_2\":0,\"eyebrows_3\":0,\"skin\":0,\"shoes_2\":0,\"bags_2\":0,\"torso_1\":13,\"hair_1\":0,\"beard_2\":0,\"lipstick_1\":0,\"face\":0,\"lipstick_4\":0,\"lipstick_3\":0,\"bags_1\":0,\"chain_2\":0,\"age_1\":0,\"sex\":0,\"beard_1\":0,\"torso_2\":5,\"beard_4\":0,\"age_2\":0,\"tshirt_2\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"hair_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"pants_2\":0,\"eyebrows_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"pants_1\":76,\"arms\":106,\"hair_color_2\":0}', '{\"makeup_2\":0,\"eyebrows_4\":0,\"makeup_4\":0,\"age_1\":0,\"bproof_2\":0,\"mask_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"eyebrows_2\":0,\"tshirt_1\":0,\"chain_1\":0,\"chain_2\":0,\"ears_1\":-1,\"helmet_2\":20,\"beard_1\":0,\"glasses_1\":5,\"eyebrows_1\":0,\"ears_2\":0,\"bags_2\":0,\"eyebrows_3\":0,\"pants_2\":3,\"tshirt_2\":0,\"makeup_3\":0,\"hair_1\":0,\"hair_2\":0,\"lipstick_3\":0,\"helmet_1\":104,\"torso_2\":7,\"skin\":0,\"sex\":1,\"beard_2\":0,\"mask_1\":0,\"shoes_1\":60,\"shoes_2\":0,\"torso_1\":9,\"beard_4\":0,\"age_2\":0,\"makeup_1\":0,\"glasses_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"hair_color_1\":0,\"face\":0,\"pants_1\":73,\"lipstick_1\":0,\"bags_1\":0,\"bproof_1\":0,\"decals_1\":0,\"arms\":114,\"hair_color_2\":0}'),
(67, 'oranger7', 0, 'sergeant', 'กิตติมศักดิ์ (ทำงาน)', 1000, '{\"beard_3\":0,\"hair_color_1\":0,\"makeup_4\":0,\"helmet_1\":104,\"bproof_2\":0,\"mask_2\":0,\"decals_1\":0,\"shoes_1\":57,\"makeup_3\":0,\"tshirt_1\":15,\"chain_1\":0,\"mask_1\":0,\"ears_1\":-1,\"helmet_2\":20,\"makeup_1\":0,\"glasses_1\":0,\"eyebrows_1\":0,\"ears_2\":0,\"eyebrows_3\":0,\"skin\":0,\"shoes_2\":0,\"bags_2\":0,\"torso_1\":13,\"hair_1\":0,\"beard_2\":0,\"lipstick_1\":0,\"face\":0,\"lipstick_4\":0,\"lipstick_3\":0,\"bags_1\":0,\"chain_2\":0,\"age_1\":0,\"sex\":0,\"beard_1\":0,\"torso_2\":5,\"beard_4\":0,\"age_2\":0,\"tshirt_2\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"hair_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"pants_2\":0,\"eyebrows_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"pants_1\":76,\"arms\":106,\"hair_color_2\":0}', '{\"makeup_2\":0,\"eyebrows_4\":0,\"makeup_4\":0,\"age_1\":0,\"bproof_2\":0,\"mask_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"eyebrows_2\":0,\"tshirt_1\":0,\"chain_1\":0,\"chain_2\":0,\"ears_1\":-1,\"helmet_2\":20,\"beard_1\":0,\"glasses_1\":5,\"eyebrows_1\":0,\"ears_2\":0,\"bags_2\":0,\"eyebrows_3\":0,\"pants_2\":3,\"tshirt_2\":0,\"makeup_3\":0,\"hair_1\":0,\"hair_2\":0,\"lipstick_3\":0,\"helmet_1\":104,\"torso_2\":7,\"skin\":0,\"sex\":1,\"beard_2\":0,\"mask_1\":0,\"shoes_1\":60,\"shoes_2\":0,\"torso_1\":9,\"beard_4\":0,\"age_2\":0,\"makeup_1\":0,\"glasses_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"hair_color_1\":0,\"face\":0,\"pants_1\":73,\"lipstick_1\":0,\"bags_1\":0,\"bproof_1\":0,\"decals_1\":0,\"arms\":114,\"hair_color_2\":0}'),
(68, 'admin', 0, 'admin', 'เจ้าของเซิฟเวอร์', 10000, '{}', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('boating', 'Boating License'),
('dmv', 'ใบขับขี่'),
('drive', 'ใบขับขี่รถยนต์'),
('drive_bike', 'ใบขับขี่รถมอเตอร์ไซต์'),
('drive_truck', 'ใบขับขี่รถบรรทุก'),
('weapon', 'ใบอนุญาติพกปืน');

-- --------------------------------------------------------

--
-- Table structure for table `owned_boats`
--

CREATE TABLE `owned_boats` (
  `owner` varchar(30) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'State of the boat',
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` longtext COLLATE utf8mb4_bin NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'State of the car'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `playerstattoos`
--

CREATE TABLE `playerstattoos` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `tattoos` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rented_boats`
--

CREATE TABLE `rented_boats` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rented_vehicles`
--

CREATE TABLE `rented_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `plate` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `player_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `store` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `item` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
(1, 'TwentyFourSeven', 'bread', 250),
(2, 'TwentyFourSeven', 'water', 250),
(3, 'TwentyFourSeven', 'nitro', 2500),
(4, 'RobsLiquor', 'bread', 250),
(5, 'RobsLiquor', 'water', 250),
(6, 'RobsLiquor', 'nitro', 2500),
(7, 'LTDgasoline', 'bread', 250),
(8, 'LTDgasoline', 'water', 250),
(9, 'LTDgasoline', 'nitro', 2500);

-- --------------------------------------------------------

--
-- Table structure for table `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `society` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `truck_inventory`
--

CREATE TABLE `truck_inventory` (
  `id` int(11) NOT NULL,
  `item` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `plate` varchar(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `itemt` varchar(50) DEFAULT NULL,
  `owned` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `identifier` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT '',
  `job` varchar(255) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT '0',
  `money` int(11) DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `skin` longtext COLLATE utf8mb4_bin,
  `loadout` longtext COLLATE utf8mb4_bin,
  `tattoos` varchar(255) COLLATE utf8mb4_bin DEFAULT '{}',
  `position` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `status` longtext COLLATE utf8mb4_bin,
  `phone_number` int(11) DEFAULT NULL,
  `isDead` bit(1) DEFAULT b'0',
  `gang` varchar(255) COLLATE utf8mb4_bin DEFAULT 'none',
  `gang_grade` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `user_accounts`
--

CREATE TABLE `user_accounts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `money` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `user_banned`
--

CREATE TABLE `user_banned` (
  `identifier` varchar(255) NOT NULL,
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `Name` varchar(100) NOT NULL,
  `Reason` varchar(100) NOT NULL,
  `Date` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `user_contacts`
--

CREATE TABLE `user_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `user_inventory`
--

CREATE TABLE `user_inventory` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `item` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `user_whitelist`
--

CREATE TABLE `user_whitelist` (
  `identifier` varchar(255) NOT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `model` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
('CBR 1000RR', '1000rr', 66, 'newbie'),
('Mitsubishi Eclipse Spyder GTS 2003', '2f2fgts', 66, 'fastNfurious'),
('Toyota Supra MK IV 1995', '2f2fmk4', 66, 'fastNfurious'),
('Mitsubishi Lancer Evolution VII 2002', '2f2fmle7', 66, 'fastNfurious'),
('Nissan 370Z', '370z', 66, 'supcarmod'),
('Alfa Romeo TZ3', '3tz', 66, 'supcarmod'),
('McLaren 650s', '650slw', 999, 'donate'),
('Akuma', 'AKUMA', 20000, 'motorcycles'),
('BMW i8', 'acs8', 66, 'backcarmod'),
('Alpha', 'alpha', 120000, 'sports'),
('Toyota Commuter', 'ap32', 66, 'carmod'),
('Asea', 'asea', 20000, 'sedans'),
('Honda Accord 2017', 'asterope', 66, 'carmod'),
('Avarus', 'avarus', 52000, 'motorcycles'),
('Aventador Doraemon', 'avendora', 66, 'backcarmod'),
('Lamborghini Aventador', 'avenguy', 999, 'donate'),
('Bagger', 'bagger', 34000, 'motorcycles'),
('Baller', 'baller2', 100000, 'suvs'),
('Banshee', 'banshee', 140000, 'sports'),
('Banshee 900R', 'banshee2', 250000, 'super'),
('Bati 801', 'bati', 48000, 'motorcycles'),
('Bati 801RR', 'bati2', 56000, 'motorcycles'),
('Mercedes-Benz SLR McLaren', 'bemos', 66, 'backcarmod'),
('Bestia GTS', 'bestiagts', 110000, 'sports'),
('BF400', 'bf400', 20000, 'motorcycles'),
('Bifta', 'bifta', 40000, 'offroad'),
('Bison', 'bison', 90000, 'vans'),
('Blade', 'blade', 30000, 'muscle'),
('Blazer', 'blazer', 20000, 'offroad'),
('Blazer Sport', 'blazer4', 28000, 'offroad'),
('Blista', 'blista', 25000, 'compacts'),
('BMW M2', 'bm2', 66, 'supcarmod'),
('S1000RR 2014', 'bmws', 66, 'supmotomod'),
('S1000RR 2016', 'bmws16', 66, 'supmotomod'),
('S1000RR Graffiti', 'bmws2', 66, 'supmotomod'),
('BMX (velo)', 'bmx', 3000, 'motorcycles'),
('Bobcat XL', 'bobcatxl', 62000, 'vans'),
('Truck (400kg)', 'brickade', 66, 'truck'),
('Brioso R/A', 'brioso', 25000, 'compacts'),
('S1000RR 2017', 'bs17', 66, 'supmotomod'),
('Minibike', 'btx', 66, 'supmotomod'),
('Btype', 'btype', 100000, 'sportsclassics'),
('Btype Hotroad', 'btype2', 150000, 'sportsclassics'),
('Btype Luxe', 'btype3', 150000, 'sportsclassics'),
('Buccaneer', 'buccaneer', 36000, 'muscle'),
('Buccaneer Rider', 'buccaneer2', 45000, 'muscle'),
('Buffalo', 'buffalo', 35000, 'sports'),
('Buffalo S', 'buffalo2', 40000, 'sports'),
('Toyota Camry V40 2008', 'cam08', 66, 'carmod'),
('Toyota Camry V55 2016', 'camry55', 66, 'carmod'),
('Toyota Camry V50', 'camv50', 66, 'carmod'),
('Carbonizzare', 'carbonizzare', 150000, 'sports'),
('Carbon RS', 'carbonrs', 72000, 'motorcycles'),
('Casco', 'casco', 60000, 'sportsclassics'),
('Cavalcade', 'cavalcade2', 22000, 'suvs'),
('Porsche Cayenne Turbo S 2016', 'cayenne', 66, 'carmod'),
('CBR1000RR 2014', 'cbrr', 66, 'supmotomod'),
('Dodge Charger Fast & Furious 8', 'chargerf8', 999, 'donate'),
('Cheetah', 'cheetah', 400000, 'super'),
('Chimera', 'chimera', 70000, 'motorcycles'),
('Chino', 'chino', 30000, 'muscle'),
('Chino Luxe', 'chino2', 46000, 'muscle'),
('Cliffhanger', 'cliffhanger', 30000, 'motorcycles'),
('Cognoscenti Cabrio', 'cogcabrio', 70000, 'coupes'),
('Cognoscenti', 'cognoscenti', 120000, 'sedans'),
('Comet', 'comet2', 130000, 'sports'),
('Comet 5', 'comet5', 800000, 'sports'),
('Coquette', 'coquette', 130000, 'sports'),
('Coquette Classic', 'coquette2', 80000, 'sportsclassics'),
('Coquette BlackFin', 'coquette3', 110000, 'muscle'),
('Cruiser (velo)', 'cruiser', 3000, 'motorcycles'),
(' Honda Accord Mugen 2010', 'cu2', 66, 'carmod'),
('Cyclone', 'cyclone', 1000000, 'super'),
('Ducati 1199', 'd99', 66, 'supmotomod'),
('Daemon', 'daemon', 30000, 'motorcycles'),
('Daemon High', 'daemon2', 30000, 'motorcycles'),
('Defiler', 'defiler', 29000, 'motorcycles'),
('GMC Sierra Denali 3500D 2018 (300kg)', 'denalihd', 66, 'truck'),
('Dominator', 'dominator', 140000, 'muscle'),
('Time Machine Doraemon', 'doo12', 999, 'donate'),
('Double T', 'double', 50000, 'motorcycles'),
('Drag Bike', 'dragbike', 66, 'himotomod'),
('Dune Buggy', 'dune', 20000, 'offroad'),
('Bus No.8 ', 'ebus8', 66, 'carmod'),
('Elegy', 'elegy2', 100000, 'sports'),
('Emperor', 'emperor', 20000, 'sedans'),
('Enduro', 'enduro', 18000, 'motorcycles'),
('Esskey', 'esskey', 18000, 'motorcycles'),
('Range Rover Evoque', 'evoque', 66, 'carmod'),
('Exemplar', 'exemplar', 90000, 'coupes'),
('Ford F150 XLT Ranger 1978 (100kg)', 'f15078', 66, 'newbie'),
('F620', 'f620', 80000, 'coupes'),
('Faggio', 'faggio', 10000, 'motorcycles'),
('Vespa', 'faggio2', 10000, 'motorcycles'),
('Felon', 'felon', 70000, 'coupes'),
('Felon GT', 'felon2', 70000, 'coupes'),
('Feltzer', 'feltzer2', 110000, 'sports'),
('Stirling GT', 'feltzer3', 130000, 'sportsclassics'),
('Subaru Impreza WRX STi GH 2009', 'ff4wrx', 66, 'fastNfurious'),
('Ford GT 2017', 'fgt2017', 66, 'supcarmod'),
('Honda NSX 2016', 'filthynsx', 66, 'supcarmod'),
('Fixter (velo)', 'fixter', 15000, 'motorcycles'),
('FMJ', 'fmj', 800000, 'super'),
('Nissan Skyline GT-R R34 2002', 'fnf4r34', 66, 'fastNfurious'),
('Mitsubishi Eclipse 1995', 'fnfmits', 66, 'fastNfurious'),
('Toyota Supra MK IV 1994', 'fnfmk4', 66, 'fastNfurious'),
('Mazda RX-7 1997', 'fnfrx7', 66, 'fastNfurious'),
('Fhantom', 'fq2', 34000, 'suvs'),
('Fugitive', 'fugitive', 35000, 'sedans'),
('Furore GT', 'furoregt', 90000, 'sports'),
('Fusilade', 'fusilade', 80000, 'sports'),
('Kawasaki G110', 'g110', 66, 'himotomod'),
('Mercedes-Benz G65 AMG', 'g65amg', 66, 'carmod'),
('Ducati G900', 'g900', 66, 'himotomod'),
('Gargoyle', 'gargoyle', 66000, 'motorcycles'),
('Gauntlet', 'gauntlet', 80000, 'muscle'),
('Glendale', 'glendale', 20000, 'sedans'),
('Grabger', 'granger', 100000, 'suvs'),
('Gresley', 'gresley', 100000, 'suvs'),
('GSX-R 1000', 'gsxr1000', 66, 'newbie'),
('GT 500', 'gt500', 700000, 'sportsclassics'),
('Hakuchou', 'hakuchou', 150000, 'motorcycles'),
('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
('Honda CBR 2017', 'hcbr17', 66, 'supmotomod'),
('Hexer', 'hexer', 48000, 'motorcycles'),
('Honda Civic Type-R', 'hondacivictr', 66, 'backcarmod'),
('Huntley S', 'huntley', 80000, 'suvs'),
('Hustler', 'hustler', 100000, 'muscle'),
('Innovation', 'innovation', 84000, 'motorcycles'),
('Intruder', 'intruder', 20000, 'sedans'),
('Honda Accord 2018', 'is350', 66, 'carmod'),
('Issi', 'issi2', 30000, 'compacts'),
('Jackal', 'jackal', 100000, 'coupes'),
('Khamelion', 'khamelion', 80000, 'sports'),
('Kawasaki KR 150', 'kr150', 66, 'himotomod'),
('Landstalker', 'landstalker', 70000, 'suvs'),
('Lamborghini Murcielago LP670 2010', 'lwlp670', 999, 'donate'),
('Lexus LX 570 2016', 'lx570', 66, 'carmod'),
('Lynx', 'lynx', 100000, 'sports'),
('BMW M2 Deva', 'm2', 66, 'supcarmod'),
('Mamba', 'mamba', 140000, 'sports'),
('Manana', 'manana', 20000, 'sportsclassics'),
('Manchez', 'manchez', 20000, 'motorcycles'),
('Massacro', 'massacro', 130000, 'sports'),
('Massacro(Racecar)', 'massacro2', 260000, 'sports'),
('Mesa', 'mesa', 40000, 'suvs'),
('Mr.Bean', 'minib', 66, 'supcarmod'),
('Minivan', 'minivan', 25000, 'vans'),
('Minibike X', 'minix', 66, 'supmotomod'),
('The Liberator', 'monster', 1000000, 'offroad'),
('Moonbeam', 'moonbeam', 36000, 'vans'),
('Moonbeam Rider', 'moonbeam2', 70000, 'vans'),
('Honda MSX (Grom) ', 'msx', 66, 'himotomod'),
('MSX', 'msx99', 66, 'himotomod'),
('Nemesis', 'nemesis', 20000, 'motorcycles'),
('Nissan Frontier 2017 (200kg)', 'nf2017', 66, 'truck'),
('Kawasaki Ninja H2R', 'nh2r', 66, 'supmotomod'),
('Nightblade', 'nightblade', 130000, 'motorcycles'),
('Nightshade', 'nightshade', 130000, 'muscle'),
('9F Cabrio', 'ninef2', 120000, 'sports'),
('Oracle XS', 'oracle2', 80000, 'coupes'),
('Osiris', 'osiris', 600000, 'super'),
('Panto', 'panto', 25000, 'compacts'),
('Pariah', 'pariah', 1000000, 'sports'),
('PCJ-600', 'pcj', 24000, 'motorcycles'),
('Penumbra', 'penumbra', 50000, 'sports'),
('Phoenix', 'phoenix', 25000, 'muscle'),
('Pigalle', 'pigalle', 40000, 'sportsclassics'),
('Prairie', 'prairie', 25000, 'compacts'),
('Premier', 'premier', 32000, 'sedans'),
('Honda Accord 2015', 'primo', 66, 'carmod'),
('Primo Custom', 'primo2', 35000, 'sedans'),
('YZF R1 2018', 'r1', 66, 'supmotomod'),
('YZF R1 2015', 'r1v2', 66, 'supmotomod'),
('Audi R8', 'r8m', 999, 'donate'),
('Radius', 'radi', 50000, 'suvs'),
('Rapid GT', 'rapidgt', 70000, 'sports'),
('Rapid GT Convertible', 'rapidgt2', 90000, 'sports'),
('Rapid GT3', 'rapidgt3', 800000, 'sportsclassics'),
('Formula 1', 'redf1', 66, 'backcarmod'),
('Retinue', 'retinue', 500000, 'sportsclassics'),
('Rev10', 'rev10', 66, 'newbie'),
('Revolter', 'revolter', 1500000, 'sports'),
('Ford Mustang GT', 'rmodmustang', 999, 'donate'),
('Rocoto', 'rocoto', 90000, 'suvs'),
('Audi RS7', 'rs777', 66, 'supcarmod'),
('Ruffian', 'ruffian', 24000, 'motorcycles'),
('S1000RR Thai', 's1000thai', 66, 'supmotomod'),
('Sabre Turbo', 'sabregt', 40000, 'muscle'),
('Sabre GT', 'sabregt2', 50000, 'muscle'),
('Sanchez', 'sanchez', 22000, 'motorcycles'),
('Sanchez Sport', 'sanchez2', 22000, 'motorcycles'),
('Sanctus', 'sanctus', 100000, 'motorcycles'),
('Savestra', 'savestra', 500000, 'sportsclassics'),
('Schafter', 'schafter2', 40000, 'sedans'),
('Schafter V12', 'schafter3', 100000, 'sports'),
('Scorcher (velo)', 'scorcher', 5000, 'motorcycles'),
('Seminole', 'seminole', 50000, 'suvs'),
('Sentinel', 'sentinel', 80000, 'coupes'),
('Sentinel XS', 'sentinel2', 100000, 'coupes'),
('Sentinel3', 'sentinel3', 800000, 'sports'),
('Seven 70', 'seven70', 80000, 'sports'),
('Shotaro Concept', 'shotaro', 500000, 'motorcycles'),
('Sovereign', 'sovereign', 80000, 'motorcycles'),
('Stinger', 'stinger', 140000, 'sportsclassics'),
('Stinger GT', 'stingergt', 150000, 'sportsclassics'),
('Streiter', 'streiter', 500000, 'sports'),
('Stretch', 'stretch', 200000, 'sedans'),
('Sultan', 'sultan', 30000, 'sports'),
('Sultan RS', 'sultanrs', 50000, 'super'),
('Super Diamond', 'superd', 250000, 'sedans'),
('Surano', 'surano', 100000, 'sports'),
('T20', 't20', 1000000, 'super'),
('Tailgater', 'tailgater', 80000, 'sedans'),
('Tampa', 'tampa', 40000, 'muscle'),
('Thrust', 'thrust', 80000, 'motorcycles'),
('Tri bike (velo)', 'tribike3', 15000, 'motorcycles'),
('TWZ', 'twz', 66, 'carmod'),
('Vader', 'vader', 28000, 'motorcycles'),
('Verlierer', 'verlierer2', 140000, 'sports'),
('Vigero', 'vigero', 25000, 'muscle'),
('Virgo', 'virgo', 28000, 'muscle'),
('Voodoo', 'voodoo', 20000, 'muscle'),
('Vortex', 'vortex', 36000, 'motorcycles'),
('Warrener', 'warrener', 16000, 'sedans'),
('Washington', 'washington', 30000, 'sedans'),
('Wave125', 'wave125', 66, 'himotomod'),
('Wave125s', 'wave125s', 66, 'himotomod'),
('Windsor', 'windsor', 200000, 'coupes'),
('Windsor Drop', 'windsor2', 250000, 'coupes'),
('Woflsbane', 'wolfsbane', 36000, 'motorcycles'),
('BMW X6M F16', 'x6m', 66, 'carmod'),
('XLS', 'xls', 70000, 'suvs'),
('Z190', 'z190', 650000, 'sportsclassics'),
('Zion', 'zion', 100000, 'coupes'),
('Zion Cabrio', 'zion2', 120000, 'coupes'),
('Zombie', 'zombiea', 38000, 'motorcycles'),
('Zombie Luxuary', 'zombieb', 48000, 'motorcycles'),
('ZX10', 'zx10', 66, 'supmotomod'),
('ZX10R', 'zx10r', 66, 'supmotomod');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`id`, `name`, `label`) VALUES
(1, 'compacts', 'Compacts'),
(2, 'coupes', 'Coupes'),
(3, 'sedans', 'Sedans'),
(4, 'sports', 'Sports'),
(5, 'sportsclassics', 'Sports Classics'),
(6, 'super', 'Super'),
(7, 'muscle', 'Muscle'),
(8, 'offroad', 'Off Road'),
(9, 'suvs', 'SUVs'),
(10, 'vans', 'Vans'),
(11, 'motorcycles', 'Motos'),
(12, 'newbie', 'รถแนะนำผู้เล่นใหม่'),
(13, 'himotomod', 'มอไซ Mod'),
(14, 'supmotomod', 'มอไซ เร็ว300++'),
(15, 'carmod', 'รถ Mod'),
(16, 'supcarmod', 'รถ เร็ว300++'),
(17, 'backcarmod', 'กันหลัง'),
(18, 'truck', 'รถบรรทุก'),
(19, 'fastNfurious', 'Fast & Furious'),
(20, 'donate', 'Donate Car');

-- --------------------------------------------------------

--
-- Table structure for table `wanted`
--

CREATE TABLE `wanted` (
  `identifier` varchar(100) NOT NULL,
  `wanted_time` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `weashops`
--

CREATE TABLE `weashops` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `item` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `weashops`
--

INSERT INTO `weashops` (`id`, `name`, `item`, `price`) VALUES
(1, 'GunShop', 'WEAPON_PISTOL', 8000),
(2, 'BlackWeashop', 'WEAPON_PISTOL', 10000),
(3, 'GunShop', 'WEAPON_FLASHLIGHT', 1000),
(4, 'BlackWeashop', 'WEAPON_FLASHLIGHT', 1000),
(5, 'GunShop', 'WEAPON_MACHETE', 1000),
(6, 'BlackWeashop', 'WEAPON_MACHETE', 1000),
(7, 'GunShop', 'WEAPON_BAT', 1000),
(8, 'BlackWeashop', 'WEAPON_BAT', 1000),
(9, 'GunShop', 'WEAPON_MICROSMG', 45000),
(10, 'BlackWeashop', 'WEAPON_MICROSMG', 50000),
(11, 'GunShop', 'WEAPON_PUMPSHOTGUN', 100000),
(12, 'BlackWeashop', 'WEAPON_PUMPSHOTGUN', 130000),
(13, 'GunShop', 'WEAPON_ASSAULTRIFLE', 120000),
(14, 'BlackWeashop', 'WEAPON_ASSAULTRIFLE', 150000),
(15, 'GunShop', 'WEAPON_SPECIALCARBINE', 120000),
(16, 'BlackWeashop', 'WEAPON_SPECIALCARBINE', 150000),
(17, 'BlackWeashop', 'WEAPON_APPISTOL', 200000),
(18, 'BlackWeashop', 'WEAPON_CARBINERIFLE', 250000),
(19, 'GunShop', 'GADGET_PARACHUTE', 2000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `boatdealer_boats`
--
ALTER TABLE `boatdealer_boats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `boats`
--
ALTER TABLE `boats`
  ADD PRIMARY KEY (`model`);

--
-- Indexes for table `boat_categories`
--
ALTER TABLE `boat_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types`
--
ALTER TABLE `fine_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types_ambulance`
--
ALTER TABLE `fine_types_ambulance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types_hitman`
--
ALTER TABLE `fine_types_hitman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types_mecano`
--
ALTER TABLE `fine_types_mecano`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types_taxi`
--
ALTER TABLE `fine_types_taxi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gangs`
--
ALTER TABLE `gangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gang_account`
--
ALTER TABLE `gang_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gang_grades`
--
ALTER TABLE `gang_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gang_owned`
--
ALTER TABLE `gang_owned`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gang_special`
--
ALTER TABLE `gang_special`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `jail`
--
ALTER TABLE `jail`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Indexes for table `owned_boats`
--
ALTER TABLE `owned_boats`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playerstattoos`
--
ALTER TABLE `playerstattoos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rented_boats`
--
ALTER TABLE `rented_boats`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `truck_inventory`
--
ALTER TABLE `truck_inventory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item` (`item`,`plate`);

--
-- Indexes for table `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_banned`
--
ALTER TABLE `user_banned`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexes for table `user_contacts`
--
ALTER TABLE `user_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_inventory`
--
ALTER TABLE `user_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_whitelist`
--
ALTER TABLE `user_whitelist`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`);

--
-- Indexes for table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wanted`
--
ALTER TABLE `wanted`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexes for table `weashops`
--
ALTER TABLE `weashops`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addon_account`
--
ALTER TABLE `addon_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `addon_inventory`
--
ALTER TABLE `addon_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `boatdealer_boats`
--
ALTER TABLE `boatdealer_boats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `datastore`
--
ALTER TABLE `datastore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fine_types`
--
ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `fine_types_ambulance`
--
ALTER TABLE `fine_types_ambulance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fine_types_hitman`
--
ALTER TABLE `fine_types_hitman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fine_types_mecano`
--
ALTER TABLE `fine_types_mecano`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fine_types_taxi`
--
ALTER TABLE `fine_types_taxi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gangs`
--
ALTER TABLE `gangs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gang_account`
--
ALTER TABLE `gang_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gang_grades`
--
ALTER TABLE `gang_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gang_owned`
--
ALTER TABLE `gang_owned`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gang_special`
--
ALTER TABLE `gang_special`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `playerstattoos`
--
ALTER TABLE `playerstattoos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `truck_inventory`
--
ALTER TABLE `truck_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_contacts`
--
ALTER TABLE `user_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_inventory`
--
ALTER TABLE `user_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `weashops`
--
ALTER TABLE `weashops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
