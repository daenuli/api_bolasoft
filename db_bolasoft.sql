-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for bolasoft
CREATE DATABASE IF NOT EXISTS `bolasoft` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bolasoft`;

-- Dumping structure for table bolasoft.attendances
CREATE TABLE IF NOT EXISTS `attendances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `schedule_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `status` enum('h','i','s','a') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'a',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.attendances: ~13 rows (approximately)
/*!40000 ALTER TABLE `attendances` DISABLE KEYS */;
INSERT INTO `attendances` (`id`, `schedule_id`, `student_id`, `status`, `created_at`, `updated_at`) VALUES
	(1, 1, 17, 's', '2022-09-15 10:02:59', '2022-09-15 10:03:15'),
	(2, 1, 28, 's', '2022-09-15 10:02:59', '2022-09-15 10:03:15'),
	(3, 1, 33, 'h', '2022-09-15 10:02:59', '2022-09-15 10:03:15'),
	(4, 1, 43, 'i', '2022-09-15 10:02:59', '2022-09-15 10:03:15'),
	(5, 1, 65, 'h', '2022-09-15 10:02:59', '2022-09-15 10:03:15'),
	(6, 1, 84, 'h', '2022-09-15 10:02:59', '2022-09-15 10:03:15'),
	(7, 1, 98, 'i', '2022-09-15 10:02:59', '2022-09-15 10:03:15'),
	(8, 1, 104, 'h', '2022-09-15 10:02:59', '2022-09-15 10:03:15'),
	(9, 1, 135, 'h', '2022-09-15 10:02:59', '2022-09-15 10:03:15'),
	(10, 1, 137, 'h', '2022-09-15 10:02:59', '2022-09-15 10:03:15'),
	(11, 1, 143, 'h', '2022-09-15 10:02:59', '2022-09-15 10:03:15'),
	(12, 1, 146, 'h', '2022-09-15 10:02:59', '2022-09-15 10:03:15'),
	(13, 1, 175, 'h', '2022-09-15 10:02:59', '2022-09-15 10:03:15');
/*!40000 ALTER TABLE `attendances` ENABLE KEYS */;

-- Dumping structure for table bolasoft.attendance_histories
CREATE TABLE IF NOT EXISTS `attendance_histories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attendance_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.attendance_histories: ~0 rows (approximately)
/*!40000 ALTER TABLE `attendance_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendance_histories` ENABLE KEYS */;

-- Dumping structure for table bolasoft.classes
CREATE TABLE IF NOT EXISTS `classes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `club_id` int(11) NOT NULL,
  `name_class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.classes: ~29 rows (approximately)
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` (`id`, `club_id`, `name_class`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 1, 'Class U-248', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(2, 2, 'Class U-778', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(3, 3, 'Class U-449', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(4, 4, 'Class U-708', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(5, 5, 'Class U-499', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(6, 6, 'Class U-640', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(7, 7, 'Class U-174', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(8, 8, 'Class U-644', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(9, 9, 'Class U-418', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(10, 10, 'Class U-901', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(11, 11, 'Class U-338', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(12, 12, 'Class U-852', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(13, 13, 'Class U-817', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(14, 14, 'Class U-265', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(15, 15, 'Class U-366', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(16, 16, 'Class U-329', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(17, 17, 'Class U-995', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(18, 18, 'Class U-830', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(19, 19, 'Class U-955', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(20, 20, 'Class U-203', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(21, 21, 'Class U-914', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(22, 22, 'Class U-349', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(23, 23, 'Class U-764', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(24, 24, 'Class U-372', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(25, 25, 'Class U-894', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(26, 26, 'Class U-600', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(27, 27, 'Class U-972', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(28, 28, 'Class U-341', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(29, 29, 'Class U-978', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL);
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;

-- Dumping structure for table bolasoft.cloud_export_histories
CREATE TABLE IF NOT EXISTS `cloud_export_histories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` enum('student') NOT NULL,
  `key_id` int(11) NOT NULL,
  `status` enum('process','done') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table bolasoft.cloud_export_histories: ~0 rows (approximately)
/*!40000 ALTER TABLE `cloud_export_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `cloud_export_histories` ENABLE KEYS */;

-- Dumping structure for table bolasoft.clubs
CREATE TABLE IF NOT EXISTS `clubs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paguyuban_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `desc` text COLLATE utf8mb4_unicode_ci,
  `thumbnail_image` longblob,
  `number_of_student` int(11) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_premium` enum('y','n') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clubs_telp_unique` (`telp`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.clubs: ~29 rows (approximately)
/*!40000 ALTER TABLE `clubs` DISABLE KEYS */;
INSERT INTO `clubs` (`id`, `paguyuban_id`, `name`, `telp`, `address`, `desc`, `thumbnail_image`, `number_of_student`, `email_verified_at`, `is_premium`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, '1', 'Club Angus Mountain', '847.680.6131 x157530', '90325 Heller Fields', NULL, NULL, 14, '2022-09-15 09:31:43', 'y', '2022-09-15 09:31:43', '2022-09-16 03:37:46', NULL),
	(2, '1', 'Club Katheryn Shoals', '(240) 708-7340 x593501', '9226 Jana Mountains Suite 938', NULL, NULL, 2, '2022-09-15 09:31:43', 'n', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(3, '2', 'Club Velva Vista', '+1-364-565-35950', '391 Clay Ramp', NULL, NULL, 8, '2022-09-15 09:31:43', 'n', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(4, '2', 'Club Carley Meadow', '(329) 618-9048 x50441', '813 Adams Light', NULL, NULL, 5, '2022-09-15 09:31:43', 'y', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(5, '2', 'Club Monserrate Place', '(402) 891-75882', '4419 Dorris Neck Apt. 928', NULL, NULL, 0, '2022-09-15 09:31:43', 'n', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(6, '3', 'Club Felipa Plains', '348.514.1098 x3090', '472 Hackett Hill Suite 567', NULL, NULL, 5, '2022-09-15 09:31:43', 'n', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(7, '3', 'Club Marcellus Throughway', '(741) 532-2922 x67041', '96374 Smith Plains', NULL, NULL, 3, '2022-09-15 09:31:43', 'y', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(8, '4', 'Club Willms Meadow', '1-694-801-1583 x704060', '60537 General Park', NULL, NULL, 9, '2022-09-15 09:31:43', 'n', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(9, '4', 'Club Dayna Terrace', '321.754.11321', '48867 Nicolas Drive', NULL, NULL, 9, '2022-09-15 09:31:43', 'y', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(10, '4', 'Club Rodriguez Mews', '+1-508-723-12082', '529 Stroman Points', NULL, NULL, 8, '2022-09-15 09:31:43', 'y', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(11, '4', 'Club Howard Lodge', '(763) 366-8450 x72203', '172 Reilly Lights Suite 173', NULL, NULL, 9, '2022-09-15 09:31:43', 'n', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(12, '5', 'Club Melyna Port', '(697) 635-0191 x88650', '2469 Jerde Stravenue Suite 198', NULL, NULL, 6, '2022-09-15 09:31:43', 'n', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(13, '5', 'Club Isobel Lakes', '(512) 334-6107 x04231', '817 Hegmann Roads', NULL, NULL, 5, '2022-09-15 09:31:43', 'n', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(14, '6', 'Club Flatley Turnpike', '649.710.0555 x7930', '291 Cordelia Falls', NULL, NULL, 6, '2022-09-15 09:31:43', 'n', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(15, '6', 'Club Bria View', '347.358.92481', '496 Carmel Lights', NULL, NULL, 1, '2022-09-15 09:31:43', 'y', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(16, '7', 'Club Pascale Points', '1-471-452-4359 x90560', '9307 Hailee Villages', NULL, NULL, 5, '2022-09-15 09:31:43', 'n', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(17, '7', 'Club Rohan Mountains', '1-682-556-3353 x16281', '682 Ivah Neck Suite 982', NULL, NULL, 9, '2022-09-15 09:31:43', 'y', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(18, '8', 'Club Karlee Creek', '880-386-41060', '39074 Sonny Shore', NULL, NULL, 1, '2022-09-15 09:31:43', 'n', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(19, '8', 'Club Stiedemann Walk', '901.606.4187 x994951', '13012 Miller Roads', NULL, NULL, 0, '2022-09-15 09:31:43', 'n', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(20, '9', 'Club Kutch Harbors', '1-409-951-5095 x9510', '1554 Collier Cliffs', NULL, NULL, 8, '2022-09-15 09:31:43', 'n', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(21, '9', 'Club Dawn Ferry', '531-786-43201', '92937 Gerlach Wall', NULL, NULL, 1, '2022-09-15 09:31:43', 'y', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(22, '9', 'Club Russel Lakes', '548.496.9156 x145442', '1940 Gerry Points Suite 158', NULL, NULL, 7, '2022-09-15 09:31:43', 'y', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(23, '9', 'Club Wolff Vista', '373-447-1839 x39073', '9278 Aracely Prairie Suite 393', NULL, NULL, 6, '2022-09-15 09:31:43', 'n', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(24, '10', 'Club Colten Keys', '+1-234-819-92110', '9538 Batz Gateway', NULL, NULL, 7, '2022-09-15 09:31:43', 'n', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(25, '10', 'Club Javon Walks', '637.419.7394 x585711', '8824 Mara Ridges Suite 757', NULL, NULL, 3, '2022-09-15 09:31:43', 'y', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(26, '10', 'Club Prince Fields', '(318) 333-3298 x011482', '40041 Ardith Courts Suite 254', NULL, NULL, 0, '2022-09-15 09:31:43', 'n', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(27, '11', 'Club Lolita Greens', '316-641-76930', '243 Valentin Ramp', NULL, NULL, 8, '2022-09-15 09:31:43', 'y', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(28, '11', 'Club Alayna Garden', '(713) 240-17001', '58395 Kemmer Underpass', NULL, NULL, 6, '2022-09-15 09:31:43', 'y', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(29, '11', 'Club Boyle Common', '+1-672-815-38112', '95731 Marquardt Lodge', NULL, NULL, 5, '2022-09-15 09:31:43', 'n', '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL);
/*!40000 ALTER TABLE `clubs` ENABLE KEYS */;

-- Dumping structure for table bolasoft.club_assets
CREATE TABLE IF NOT EXISTS `club_assets` (
  `id_images` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `club_id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` longblob,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_images`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.club_assets: ~0 rows (approximately)
/*!40000 ALTER TABLE `club_assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `club_assets` ENABLE KEYS */;

-- Dumping structure for table bolasoft.competitions
CREATE TABLE IF NOT EXISTS `competitions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `competition_id` int(10) unsigned NOT NULL,
  `competition_type` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eo_type` enum('paguyuban','ssb') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'paguyuban',
  `eo_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secretariat` text COLLATE utf8mb4_unicode_ci,
  `max_participant` int(11) NOT NULL DEFAULT '8',
  `max_team_knockout` int(11) DEFAULT NULL,
  `min_player` int(11) NOT NULL DEFAULT '16',
  `max_player` int(11) NOT NULL DEFAULT '18',
  `lineup_player` int(11) NOT NULL DEFAULT '7',
  `desc` text COLLATE utf8mb4_unicode_ci,
  `winner` int(11) DEFAULT NULL COMMENT 'participant_id',
  `status` int(10) unsigned NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.competitions: ~2 rows (approximately)
/*!40000 ALTER TABLE `competitions` DISABLE KEYS */;
INSERT INTO `competitions` (`id`, `competition_id`, `competition_type`, `category_id`, `level`, `eo_type`, `eo_id`, `name`, `secretariat`, `max_participant`, `max_team_knockout`, `min_player`, `max_player`, `lineup_player`, `desc`, `winner`, `status`, `reason`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(21, 536203988, 1, 2, 'Provinsi', 'paguyuban', 1, 'Bupati Cup Coffee', 'Jl. Jalan', 8, NULL, 16, 18, 7, NULL, NULL, 5, NULL, '2022-09-20 04:24:37', '2022-09-20 04:40:17', NULL),
	(22, 489677458, 1, 14, 'Kecamatan', 'paguyuban', 1, 'Good Bener', 'Jl. Jalan', 8, NULL, 16, 18, 7, NULL, NULL, 1, NULL, '2022-09-20 04:25:31', '2022-09-20 04:25:31', NULL);
/*!40000 ALTER TABLE `competitions` ENABLE KEYS */;

-- Dumping structure for table bolasoft.competition_accesses
CREATE TABLE IF NOT EXISTS `competition_accesses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `competition_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.competition_accesses: ~0 rows (approximately)
/*!40000 ALTER TABLE `competition_accesses` DISABLE KEYS */;
/*!40000 ALTER TABLE `competition_accesses` ENABLE KEYS */;

-- Dumping structure for table bolasoft.competition_assets
CREATE TABLE IF NOT EXISTS `competition_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `competition_id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `mime` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` longblob,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` enum('pamflet','rule','logo') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pamflet',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.competition_assets: ~0 rows (approximately)
/*!40000 ALTER TABLE `competition_assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `competition_assets` ENABLE KEYS */;

-- Dumping structure for table bolasoft.competition_categories
CREATE TABLE IF NOT EXISTS `competition_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_age` date NOT NULL,
  `max_age` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_competitions_name_category_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.competition_categories: ~21 rows (approximately)
/*!40000 ALTER TABLE `competition_categories` DISABLE KEYS */;
INSERT INTO `competition_categories` (`id`, `name`, `min_age`, `max_age`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'U-15', '2022-09-15', '2022-09-15', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(2, 'U-20', '2022-09-15', '2022-09-15', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(3, 'U-21', '2022-09-15', '2022-09-15', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(4, 'U-22', '2022-09-15', '2022-09-15', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(5, 'U-23', '2022-09-15', '2022-09-15', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(6, 'U-24', '2022-09-15', '2022-09-15', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(7, 'U-25', '2022-09-15', '2022-09-15', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(8, 'U-26', '2022-09-15', '2022-09-15', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(9, 'U-27', '2022-09-15', '2022-09-15', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(10, 'U-28', '2022-09-15', '2022-09-15', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(11, 'U-29', '2022-09-15', '2022-09-15', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(12, 'U-210', '2022-09-15', '2022-09-15', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(13, 'U-211', '2022-09-15', '2022-09-15', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(14, 'U-212', '2022-09-15', '2022-09-15', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(15, 'U-213', '2022-09-15', '2022-09-15', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(16, 'U-214', '2022-09-15', '2022-09-15', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(17, 'U-215', '2022-09-15', '2022-09-15', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(18, 'U-216', '2022-09-15', '2022-09-15', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(19, 'U-217', '2022-09-15', '2022-09-15', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(20, 'U-218', '2022-09-15', '2022-09-15', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(21, 'U-219', '2022-09-15', '2022-09-15', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL);
/*!40000 ALTER TABLE `competition_categories` ENABLE KEYS */;

-- Dumping structure for table bolasoft.competition_dsps
CREATE TABLE IF NOT EXISTS `competition_dsps` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `match_id` int(11) NOT NULL,
  `participant_id` int(11) DEFAULT NULL,
  `player_id` int(11) NOT NULL,
  `no_back` int(11) DEFAULT NULL,
  `position` enum('kiper','belakang','tengah','depan') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('utama','pengganti') COLLATE utf8mb4_unicode_ci DEFAULT 'pengganti',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=378 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.competition_dsps: ~374 rows (approximately)
/*!40000 ALTER TABLE `competition_dsps` DISABLE KEYS */;
INSERT INTO `competition_dsps` (`id`, `match_id`, `participant_id`, `player_id`, `no_back`, `position`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 1, 3, 42, 42, 'kiper', 'pengganti', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(2, 1, 12, 26, 26, 'kiper', 'utama', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(3, 1, 4, 43, 30, 'kiper', 'utama', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(4, 2, 20, 50, 38, 'tengah', 'utama', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(5, 2, 18, 50, 39, 'kiper', 'utama', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(6, 3, 1, 22, 45, 'depan', 'utama', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(7, 3, 8, 11, 65, 'depan', 'pengganti', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(8, 3, 9, 41, 48, 'tengah', 'pengganti', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(9, 4, 18, 54, 63, 'tengah', 'utama', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(10, 4, 19, 22, 40, 'belakang', 'utama', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(11, 4, 13, 7, 85, 'belakang', 'utama', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(12, 5, 15, 48, 20, 'belakang', 'pengganti', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(13, 5, 2, 29, 61, 'kiper', 'utama', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(14, 5, 14, 44, 76, 'tengah', 'pengganti', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(15, 6, 4, 28, 64, 'depan', 'pengganti', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(16, 6, 12, 55, 22, 'kiper', 'pengganti', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(17, 7, 4, 23, 50, 'depan', 'pengganti', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(18, 7, 18, 5, 46, 'tengah', 'utama', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(19, 8, 16, 15, 64, 'tengah', 'utama', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(20, 8, 19, 21, 80, 'kiper', 'utama', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(21, 8, 17, 2, 28, 'depan', 'pengganti', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(22, 9, 12, 13, 58, 'tengah', 'utama', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(23, 9, 5, 53, 26, 'tengah', 'utama', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(24, 9, 16, 56, 53, 'belakang', 'pengganti', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(25, 10, 17, 31, 37, 'depan', 'utama', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(26, 10, 13, 4, 48, 'tengah', 'utama', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(27, 10, 14, 44, 43, 'depan', 'utama', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(28, 10, 6, 41, 82, 'tengah', 'pengganti', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(29, 11, 3, 24, 28, 'tengah', 'utama', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(30, 11, 11, 33, 27, 'tengah', 'utama', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(31, 11, 1, 27, 74, 'kiper', 'pengganti', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(32, 12, 20, 37, 78, 'depan', 'utama', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(33, 12, 1, 31, 64, 'tengah', 'utama', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(34, 13, 19, 52, 31, 'tengah', 'utama', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(35, 13, 6, 52, 60, 'depan', 'pengganti', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(36, 13, 5, 14, 27, 'belakang', 'pengganti', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(37, 14, 2, 48, 33, 'belakang', 'utama', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(38, 14, 8, 23, 66, 'depan', 'pengganti', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(39, 15, 7, 21, 47, 'tengah', 'pengganti', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(40, 15, 17, 17, 64, 'tengah', 'pengganti', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(41, 15, 9, 57, 54, 'kiper', 'utama', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(42, 15, 17, 55, 23, 'tengah', 'pengganti', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(43, 16, 16, 39, 72, 'depan', 'utama', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(44, 16, 18, 9, 71, 'tengah', 'utama', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(45, 16, 3, 5, 49, 'belakang', 'utama', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(46, 17, 15, 47, 64, 'tengah', 'utama', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(47, 17, 13, 4, 25, 'depan', 'utama', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(48, 17, 4, 48, 35, 'tengah', 'pengganti', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(49, 18, 9, 23, 47, 'kiper', 'utama', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(50, 18, 14, 19, 49, 'depan', 'utama', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(51, 18, 16, 18, 40, 'kiper', 'pengganti', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(52, 19, 16, 1, 21, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(53, 19, 17, 11, 76, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(54, 19, 11, 8, 30, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(55, 20, 3, 39, 77, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(56, 20, 11, 7, 55, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(57, 20, 2, 26, 67, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(58, 21, 4, 14, 77, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(59, 21, 8, 12, 87, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(60, 21, 20, 5, 36, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(61, 22, 3, 45, 79, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(62, 22, 14, 22, 41, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(63, 23, 8, 39, 43, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(64, 23, 9, 12, 80, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(65, 24, 2, 50, 76, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(66, 24, 6, 40, 44, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(67, 24, 12, 9, 39, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(68, 25, 8, 23, 48, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(69, 25, 14, 55, 26, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(70, 25, 8, 27, 52, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(71, 25, 15, 23, 74, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(72, 26, 18, 23, 69, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(73, 26, 19, 34, 56, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(74, 27, 3, 10, 68, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(75, 27, 3, 40, 88, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(76, 27, 10, 29, 66, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(77, 28, 20, 34, 54, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(78, 28, 11, 47, 54, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(79, 28, 20, 3, 66, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(80, 29, 17, 55, 52, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(81, 29, 11, 30, 70, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(82, 29, 15, 24, 51, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(83, 29, 8, 54, 77, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(84, 30, 20, 48, 83, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(85, 30, 13, 26, 87, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(86, 30, 13, 9, 79, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(87, 31, 3, 10, 51, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(88, 31, 4, 48, 24, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(89, 31, 16, 3, 84, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(90, 32, 6, 21, 74, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(91, 32, 10, 56, 66, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(92, 32, 17, 3, 31, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(93, 32, 19, 42, 38, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(94, 33, 4, 41, 64, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(95, 33, 11, 4, 28, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(96, 33, 14, 10, 63, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(97, 34, 16, 41, 64, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(98, 34, 19, 31, 42, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(99, 34, 7, 44, 28, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(100, 35, 4, 7, 44, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(101, 35, 6, 32, 62, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(102, 36, 17, 38, 25, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(103, 36, 12, 25, 79, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(104, 36, 7, 35, 21, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(105, 37, 20, 10, 32, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(106, 37, 20, 49, 63, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(107, 37, 12, 8, 37, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(108, 38, 10, 44, 50, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(109, 38, 20, 14, 69, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(110, 38, 14, 56, 78, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(111, 39, 18, 50, 72, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(112, 39, 19, 47, 57, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(113, 40, 4, 12, 75, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(114, 40, 17, 29, 41, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(115, 41, 19, 17, 68, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(116, 41, 6, 1, 30, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(117, 42, 7, 20, 56, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(118, 42, 11, 45, 41, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(119, 42, 19, 14, 47, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(120, 42, 11, 22, 58, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(121, 43, 7, 34, 47, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(122, 43, 5, 42, 20, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(123, 43, 5, 26, 84, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(124, 44, 20, 2, 20, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(125, 44, 18, 30, 78, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(126, 45, 18, 53, 76, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(127, 45, 2, 14, 21, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(128, 45, 19, 19, 85, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(129, 46, 14, 45, 73, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(130, 46, 12, 49, 85, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(131, 46, 12, 38, 32, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(132, 46, 5, 40, 88, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(133, 47, 16, 3, 67, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(134, 47, 10, 46, 35, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(135, 47, 3, 15, 46, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(136, 48, 16, 49, 29, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(137, 48, 8, 10, 85, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(138, 49, 19, 9, 65, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(139, 49, 13, 19, 29, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(140, 50, 18, 55, 57, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(141, 50, 20, 13, 31, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(142, 50, 6, 8, 41, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(143, 51, 9, 13, 37, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(144, 51, 11, 20, 61, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(145, 52, 12, 9, 65, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(146, 52, 5, 3, 25, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(147, 52, 11, 51, 58, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(148, 52, 14, 40, 69, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(149, 53, 17, 20, 31, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(150, 53, 9, 21, 86, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(151, 53, 20, 6, 49, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(152, 54, 12, 36, 48, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(153, 54, 15, 9, 31, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(154, 54, 9, 11, 20, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(155, 55, 7, 41, 58, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(156, 55, 20, 1, 39, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(157, 56, 8, 5, 35, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(158, 56, 5, 32, 81, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(159, 56, 9, 21, 48, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(160, 56, 8, 33, 69, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(161, 57, 14, 42, 74, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(162, 57, 12, 3, 25, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(163, 57, 3, 12, 67, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(164, 58, 6, 16, 79, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(165, 58, 5, 30, 25, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(166, 58, 14, 35, 61, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(167, 58, 9, 28, 64, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(168, 59, 17, 10, 64, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(169, 59, 1, 43, 82, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(170, 60, 9, 6, 80, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(171, 60, 9, 21, 62, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(172, 60, 20, 56, 28, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(173, 61, 13, 14, 88, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(174, 61, 3, 48, 59, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(175, 61, 9, 18, 66, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(176, 61, 3, 27, 75, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(177, 62, 7, 43, 54, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(178, 62, 13, 27, 73, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(179, 62, 9, 11, 41, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(180, 63, 2, 47, 46, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(181, 63, 12, 28, 54, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(182, 64, 15, 54, 46, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(183, 64, 13, 42, 20, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(184, 64, 4, 1, 34, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(185, 64, 8, 55, 80, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(186, 65, 3, 15, 68, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(187, 65, 9, 33, 76, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(188, 65, 13, 23, 29, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(189, 65, 6, 36, 52, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(190, 66, 18, 18, 76, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(191, 66, 5, 32, 46, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(192, 67, 10, 55, 67, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(193, 67, 19, 21, 61, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(194, 67, 10, 36, 79, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(195, 67, 13, 15, 62, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(196, 68, 3, 57, 76, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(197, 68, 8, 32, 57, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(198, 68, 17, 33, 24, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(199, 68, 17, 20, 48, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(200, 69, 2, 6, 63, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(201, 69, 8, 35, 49, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(202, 69, 7, 27, 46, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(203, 69, 7, 9, 47, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(204, 70, 9, 28, 22, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(205, 70, 14, 49, 37, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(206, 70, 5, 24, 37, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(207, 71, 14, 56, 76, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(208, 71, 13, 21, 67, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(209, 72, 19, 39, 69, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(210, 72, 19, 9, 81, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(211, 72, 20, 22, 86, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(212, 73, 8, 23, 55, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(213, 73, 14, 45, 38, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(214, 73, 14, 16, 29, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(215, 74, 4, 23, 89, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(216, 74, 7, 1, 77, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(217, 74, 2, 2, 57, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(218, 74, 11, 20, 72, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(219, 75, 15, 9, 25, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(220, 75, 2, 56, 50, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(221, 76, 16, 29, 79, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(222, 76, 9, 36, 55, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(223, 77, 12, 43, 78, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(224, 77, 12, 40, 21, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(225, 78, 17, 14, 61, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(226, 78, 2, 51, 36, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(227, 78, 9, 37, 34, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(228, 78, 12, 21, 59, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(229, 79, 1, 9, 66, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(230, 79, 16, 3, 73, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(231, 79, 7, 2, 52, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(232, 80, 14, 33, 58, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(233, 80, 13, 26, 79, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(234, 80, 11, 52, 62, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(235, 80, 17, 40, 62, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(236, 81, 20, 16, 73, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(237, 81, 11, 20, 52, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(238, 82, 19, 15, 20, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(239, 82, 14, 1, 24, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(240, 82, 13, 49, 28, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(241, 83, 15, 53, 54, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(242, 83, 18, 32, 34, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(243, 83, 9, 46, 88, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(244, 83, 8, 5, 72, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(245, 84, 3, 40, 50, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(246, 84, 3, 55, 27, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(247, 85, 4, 2, 50, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(248, 85, 20, 45, 52, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(249, 86, 11, 51, 82, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(250, 86, 12, 20, 63, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(251, 86, 20, 9, 72, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(252, 87, 2, 20, 40, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(253, 87, 16, 25, 20, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(254, 88, 4, 54, 70, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(255, 88, 2, 47, 83, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(256, 88, 8, 11, 71, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(257, 88, 6, 43, 78, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(258, 89, 12, 56, 72, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(259, 89, 4, 1, 77, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(260, 89, 4, 47, 56, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(261, 89, 1, 29, 83, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(262, 90, 16, 7, 83, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(263, 90, 4, 6, 38, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(264, 91, 12, 20, 33, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(265, 91, 6, 9, 87, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(266, 91, 8, 53, 38, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(267, 92, 2, 55, 68, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(268, 92, 3, 17, 46, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(269, 92, 4, 31, 50, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(270, 93, 6, 12, 21, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(271, 93, 6, 11, 76, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(272, 93, 10, 16, 46, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(273, 94, 20, 44, 84, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(274, 94, 18, 23, 87, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(275, 94, 4, 50, 41, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(276, 95, 17, 47, 36, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(277, 95, 3, 19, 23, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(278, 95, 15, 42, 63, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(279, 95, 6, 17, 55, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(280, 96, 1, 3, 44, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(281, 96, 18, 53, 30, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(282, 96, 2, 54, 35, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(283, 97, 2, 35, 26, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(284, 97, 15, 44, 44, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(285, 97, 16, 35, 75, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(286, 98, 20, 30, 42, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(287, 98, 6, 49, 41, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(288, 98, 14, 40, 87, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(289, 98, 17, 29, 29, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(290, 99, 16, 42, 70, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(291, 99, 18, 38, 70, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(292, 100, 10, 34, 61, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(293, 100, 9, 10, 60, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(294, 100, 17, 2, 89, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(295, 101, 1, 57, 55, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(296, 101, 19, 16, 23, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(297, 101, 4, 51, 80, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(298, 102, 8, 42, 48, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(299, 102, 7, 29, 26, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(300, 102, 19, 32, 44, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(301, 102, 4, 53, 88, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(302, 103, 11, 26, 44, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(303, 103, 14, 16, 76, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(304, 103, 17, 41, 50, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(305, 104, 6, 19, 74, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(306, 104, 11, 50, 52, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(307, 105, 6, 27, 21, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(308, 105, 17, 2, 76, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(309, 106, 2, 27, 64, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(310, 106, 7, 35, 85, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(311, 107, 12, 9, 51, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(312, 107, 12, 24, 75, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(313, 107, 7, 49, 30, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(314, 108, 8, 40, 62, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(315, 108, 13, 12, 20, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(316, 108, 17, 3, 24, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(317, 109, 20, 29, 59, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(318, 109, 3, 35, 80, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(319, 109, 9, 49, 31, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(320, 110, 11, 44, 20, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(321, 110, 7, 17, 80, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(322, 111, 1, 45, 67, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(323, 111, 11, 39, 74, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(324, 112, 3, 52, 33, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(325, 112, 1, 9, 72, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(326, 112, 16, 27, 81, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(327, 113, 14, 53, 50, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(328, 113, 13, 1, 62, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(329, 114, 19, 40, 70, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(330, 114, 2, 4, 79, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(331, 114, 20, 43, 48, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(332, 115, 20, 34, 75, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(333, 115, 8, 37, 31, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(334, 116, 1, 34, 69, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(335, 116, 7, 55, 52, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(336, 116, 7, 9, 49, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(337, 117, 16, 49, 20, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(338, 117, 20, 46, 47, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(339, 117, 15, 15, 69, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(340, 118, 18, 12, 60, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(341, 118, 12, 5, 89, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(342, 119, 13, 24, 28, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(343, 119, 6, 29, 23, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(344, 119, 11, 40, 63, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(345, 120, 2, 49, 90, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(346, 120, 18, 7, 67, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(347, 120, 2, 2, 21, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(348, 121, 20, 31, 31, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(349, 121, 10, 22, 46, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(350, 122, 19, 31, 45, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(351, 122, 8, 51, 86, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(352, 122, 17, 36, 22, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(353, 123, 13, 53, 29, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(354, 123, 7, 14, 68, 'depan', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(355, 123, 5, 23, 45, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(356, 124, 9, 2, 23, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(357, 124, 18, 3, 32, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(358, 124, 8, 26, 25, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(359, 124, 8, 4, 30, 'tengah', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(360, 125, 11, 22, 59, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(361, 125, 3, 25, 77, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(362, 126, 19, 20, 43, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(363, 126, 4, 50, 38, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(364, 127, 10, 25, 29, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(365, 127, 5, 39, 20, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(366, 127, 12, 19, 79, 'kiper', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(367, 128, 1, 33, 87, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(368, 128, 9, 42, 53, 'depan', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(369, 128, 5, 13, 60, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(370, 128, 2, 11, 41, 'belakang', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(371, 129, 17, 46, 65, 'kiper', 'utama', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(372, 129, 3, 48, 54, 'tengah', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(373, 129, 13, 15, 66, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(374, 129, 18, 11, 58, 'belakang', 'pengganti', '2022-09-15 09:31:46', '2022-09-15 09:31:46', NULL),
	(375, 131, 23, 58, 15, 'tengah', 'utama', '2022-09-20 07:59:20', '2022-09-20 08:01:38', NULL),
	(376, 131, 23, 59, 60, 'belakang', 'utama', '2022-09-20 07:59:20', '2022-09-20 08:01:41', NULL),
	(377, 131, 23, 60, 20, 'depan', 'utama', '2022-09-20 07:59:20', '2022-09-20 08:01:42', NULL);
/*!40000 ALTER TABLE `competition_dsps` ENABLE KEYS */;

-- Dumping structure for table bolasoft.competition_groups
CREATE TABLE IF NOT EXISTS `competition_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `competition_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.competition_groups: ~0 rows (approximately)
/*!40000 ALTER TABLE `competition_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `competition_groups` ENABLE KEYS */;

-- Dumping structure for table bolasoft.competition_letter_heads
CREATE TABLE IF NOT EXISTS `competition_letter_heads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `competition_id` varchar(191) NOT NULL,
  `line_1` text,
  `line_2` text,
  `line_3` text,
  `size` enum('A6','A4') DEFAULT 'A4',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table bolasoft.competition_letter_heads: ~0 rows (approximately)
/*!40000 ALTER TABLE `competition_letter_heads` DISABLE KEYS */;
/*!40000 ALTER TABLE `competition_letter_heads` ENABLE KEYS */;

-- Dumping structure for table bolasoft.competition_locations
CREATE TABLE IF NOT EXISTS `competition_locations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `competition_id` int(11) NOT NULL,
  `lapangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.competition_locations: ~0 rows (approximately)
/*!40000 ALTER TABLE `competition_locations` DISABLE KEYS */;
INSERT INTO `competition_locations` (`id`, `competition_id`, `lapangan`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(31, 536203988, 'Lapang Wijaya', '2022-09-20 08:03:12', '2022-09-20 08:03:12', NULL);
/*!40000 ALTER TABLE `competition_locations` ENABLE KEYS */;

-- Dumping structure for table bolasoft.competition_participants
CREATE TABLE IF NOT EXISTS `competition_participants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `competition_id` int(11) NOT NULL,
  `club_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jersey_1` int(11) NOT NULL DEFAULT '0',
  `jersey_2` int(11) NOT NULL DEFAULT '0',
  `group_id` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'belum',
  `to_knockout` enum('y','n') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.competition_participants: ~2 rows (approximately)
/*!40000 ALTER TABLE `competition_participants` DISABLE KEYS */;
INSERT INTO `competition_participants` (`id`, `competition_id`, `club_id`, `name`, `jersey_1`, `jersey_2`, `group_id`, `to_knockout`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(23, 536203988, 1, 'SSB Makan Nasi', 0, 0, 'belum', NULL, '2022-09-20 04:28:39', '2022-09-20 04:28:39', NULL),
	(24, 536203988, 1, 'Indonesia Merdeka', 0, 0, 'belum', NULL, '2022-09-20 04:39:50', '2022-09-20 04:39:50', NULL);
/*!40000 ALTER TABLE `competition_participants` ENABLE KEYS */;

-- Dumping structure for table bolasoft.competition_players
CREATE TABLE IF NOT EXISTS `competition_players` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `participant_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `no_back` int(11) NOT NULL DEFAULT '0',
  `position` enum('Kiper','Belakang','Tengah','Depan') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Kiper',
  `status` enum('utama','pengganti') COLLATE utf8mb4_unicode_ci DEFAULT 'pengganti',
  `is_verified` enum('y','n') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `verified_date` date DEFAULT NULL,
  `user_proof_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.competition_players: ~67 rows (approximately)
/*!40000 ALTER TABLE `competition_players` DISABLE KEYS */;
INSERT INTO `competition_players` (`id`, `participant_id`, `student_id`, `no_back`, `position`, `status`, `is_verified`, `verified_date`, `user_proof_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 1, 44, 0, 'Kiper', 'pengganti', 'y', '2022-09-15', NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(2, 1, 25, 0, 'Kiper', 'pengganti', 'y', '2022-09-15', NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(3, 2, 52, 0, 'Depan', 'utama', 'n', NULL, NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(4, 2, 122, 0, 'Kiper', 'utama', 'n', NULL, NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(5, 2, 96, 0, 'Kiper', 'pengganti', 'n', NULL, NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(6, 2, 20, 0, 'Tengah', 'pengganti', 'n', NULL, NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(7, 3, 155, 0, 'Depan', 'utama', 'n', NULL, NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(8, 3, 77, 0, 'Tengah', 'utama', 'n', NULL, NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(9, 4, 130, 0, 'Tengah', 'utama', 'n', NULL, NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(10, 4, 114, 0, 'Belakang', 'utama', 'n', NULL, NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(11, 5, 146, 0, 'Belakang', 'utama', 'y', '2022-09-15', NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(12, 5, 94, 0, 'Tengah', 'utama', 'y', '2022-09-15', NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(13, 6, 104, 0, 'Depan', 'pengganti', 'y', '2022-09-15', NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(14, 6, 6, 0, 'Kiper', 'pengganti', 'y', '2022-09-15', NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(15, 6, 199, 0, 'Depan', 'pengganti', 'y', '2022-09-15', NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(16, 6, 51, 0, 'Kiper', 'pengganti', 'y', '2022-09-15', NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(17, 7, 148, 0, 'Belakang', 'pengganti', 'y', '2022-09-15', NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(18, 7, 30, 0, 'Belakang', 'pengganti', 'y', '2022-09-15', NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(19, 7, 178, 0, 'Depan', 'pengganti', 'y', '2022-09-15', NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(20, 7, 193, 0, 'Kiper', 'pengganti', 'y', '2022-09-15', NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(21, 8, 152, 0, 'Kiper', 'utama', 'n', NULL, NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(22, 8, 185, 0, 'Kiper', 'pengganti', 'n', NULL, NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(23, 9, 187, 0, 'Belakang', 'utama', 'n', NULL, NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(24, 9, 90, 0, 'Belakang', 'utama', 'n', NULL, NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(25, 9, 2, 0, 'Kiper', 'pengganti', 'n', NULL, NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(26, 9, 82, 0, 'Belakang', 'utama', 'n', NULL, NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(27, 10, 14, 0, 'Belakang', 'utama', 'n', NULL, NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(28, 10, 28, 0, 'Tengah', 'utama', 'n', NULL, NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(29, 11, 118, 0, 'Belakang', 'utama', 'n', NULL, NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(30, 11, 41, 0, 'Belakang', 'pengganti', 'n', NULL, NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(31, 12, 36, 0, 'Kiper', 'pengganti', 'y', '2022-09-15', NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(32, 12, 135, 0, 'Depan', 'utama', 'y', '2022-09-15', NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(33, 12, 168, 0, 'Tengah', 'pengganti', 'y', '2022-09-15', NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(34, 12, 26, 0, 'Belakang', 'pengganti', 'y', '2022-09-15', NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(35, 13, 98, 0, 'Depan', 'utama', 'y', '2022-09-15', NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(36, 13, 163, 0, 'Kiper', 'pengganti', 'y', '2022-09-15', NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(37, 13, 70, 0, 'Tengah', 'utama', 'y', '2022-09-15', NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(38, 14, 44, 0, 'Belakang', 'pengganti', 'y', '2022-09-15', NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(39, 14, 140, 0, 'Kiper', 'utama', 'y', '2022-09-15', NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(40, 14, 90, 0, 'Depan', 'pengganti', 'y', '2022-09-15', NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(41, 15, 46, 0, 'Tengah', 'utama', 'y', '2022-09-15', NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(42, 15, 199, 0, 'Kiper', 'utama', 'y', '2022-09-15', NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(43, 16, 10, 0, 'Tengah', 'pengganti', 'y', '2022-09-15', NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(44, 16, 113, 0, 'Kiper', 'utama', 'y', '2022-09-15', NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(45, 16, 45, 0, 'Tengah', 'utama', 'y', '2022-09-15', NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(46, 16, 42, 0, 'Belakang', 'utama', 'y', '2022-09-15', NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(47, 17, 116, 0, 'Belakang', 'pengganti', 'n', NULL, NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(48, 17, 13, 0, 'Depan', 'pengganti', 'n', NULL, NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(49, 18, 53, 0, 'Tengah', 'utama', 'n', NULL, NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(50, 18, 139, 0, 'Tengah', 'utama', 'n', NULL, NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(51, 18, 7, 0, 'Tengah', 'pengganti', 'n', NULL, NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(52, 18, 20, 0, 'Tengah', 'pengganti', 'n', NULL, NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(53, 19, 169, 0, 'Tengah', 'pengganti', 'n', NULL, NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(54, 19, 183, 0, 'Belakang', 'pengganti', 'n', NULL, NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(55, 19, 182, 0, 'Depan', 'pengganti', 'n', NULL, NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(56, 20, 153, 0, 'Belakang', 'utama', 'y', '2022-09-15', NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(57, 20, 121, 0, 'Belakang', 'utama', 'y', '2022-09-15', NULL, '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(58, 23, 17, 15, 'Tengah', 'pengganti', 'y', NULL, NULL, '2022-09-20 04:33:09', '2022-09-20 04:38:02', NULL),
	(59, 23, 28, 60, 'Belakang', 'pengganti', 'y', NULL, NULL, '2022-09-20 04:33:09', '2022-09-20 04:37:57', NULL),
	(60, 23, 33, 20, 'Depan', 'pengganti', 'y', NULL, NULL, '2022-09-20 04:33:09', '2022-09-20 04:37:51', NULL),
	(61, 24, 17, 0, 'Kiper', 'pengganti', 'n', NULL, NULL, '2022-09-20 07:56:04', '2022-09-20 07:56:04', NULL),
	(62, 24, 28, 24, 'Belakang', 'pengganti', 'n', NULL, NULL, '2022-09-20 07:56:04', '2022-09-21 04:18:11', NULL),
	(63, 24, 33, 0, 'Belakang', 'pengganti', 'n', NULL, NULL, '2022-09-20 07:56:04', '2022-09-20 07:59:59', NULL),
	(64, 24, 43, 0, 'Depan', 'pengganti', 'n', NULL, NULL, '2022-09-20 07:56:04', '2022-09-20 08:00:04', NULL),
	(65, 24, 65, 0, 'Belakang', 'pengganti', 'n', NULL, NULL, '2022-09-20 07:56:04', '2022-09-20 07:59:51', NULL),
	(66, 24, 84, 0, 'Tengah', 'pengganti', 'n', NULL, NULL, '2022-09-20 07:56:04', '2022-09-20 08:00:09', NULL),
	(67, 24, 98, 0, 'Depan', 'pengganti', 'n', NULL, NULL, '2022-09-20 07:56:04', '2022-09-20 08:00:16', NULL);
/*!40000 ALTER TABLE `competition_players` ENABLE KEYS */;

-- Dumping structure for table bolasoft.competition_schedules
CREATE TABLE IF NOT EXISTS `competition_schedules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `competition_id` int(11) NOT NULL,
  `competition_start` date NOT NULL,
  `competition_end` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.competition_schedules: ~20 rows (approximately)
/*!40000 ALTER TABLE `competition_schedules` DISABLE KEYS */;
INSERT INTO `competition_schedules` (`id`, `competition_id`, `competition_start`, `competition_end`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 595465153, '2022-09-16', '2022-10-06', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(2, 186480652, '2022-09-17', '2022-10-27', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(3, 797101875, '2022-09-18', '2022-11-17', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(4, 279023838, '2022-09-19', '2022-12-08', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(5, 648538299, '2022-09-20', '2022-12-29', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(6, 846129236, '2022-09-21', '2023-01-19', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(7, 423418571, '2022-09-22', '2023-02-09', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(8, 214238617, '2022-09-23', '2023-03-02', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(9, 56508628, '2022-09-24', '2023-03-23', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(10, 237143549, '2022-09-25', '2023-04-13', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(11, 560409287, '2022-09-26', '2023-05-04', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(12, 69516987, '2022-09-27', '2023-05-25', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(13, 806637701, '2022-09-28', '2023-06-15', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(14, 138748301, '2022-09-29', '2023-07-06', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(15, 804814205, '2022-09-30', '2023-07-27', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(16, 167687652, '2022-10-01', '2023-08-17', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(17, 54680823, '2022-10-02', '2023-09-07', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(18, 334778285, '2022-10-03', '2023-09-28', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(19, 311564827, '2022-10-04', '2023-10-19', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(20, 817337716, '2022-10-05', '2023-11-09', '2022-09-15 09:31:45', '2022-09-15 09:31:45', NULL),
	(21, 536203988, '2022-09-21', '2022-09-30', '2022-09-20 04:24:37', '2022-09-20 04:24:37', NULL),
	(22, 489677458, '2022-09-23', '2022-09-28', '2022-09-20 04:25:31', '2022-09-20 04:25:31', NULL);
/*!40000 ALTER TABLE `competition_schedules` ENABLE KEYS */;

-- Dumping structure for table bolasoft.competition_statuses
CREATE TABLE IF NOT EXISTS `competition_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` enum('y','n') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.competition_statuses: ~7 rows (approximately)
/*!40000 ALTER TABLE `competition_statuses` DISABLE KEYS */;
INSERT INTO `competition_statuses` (`id`, `code`, `name`, `is_deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, '1', 'pendaftaran', 'n', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(2, '2', 'group', 'n', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(3, '3', 'penyisihan', 'n', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(4, '4', 'perempat final', 'n', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(5, '5', 'sedang berangsung', 'n', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(6, '6', 'selesai', 'n', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(7, '7', 'final', 'n', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL);
/*!40000 ALTER TABLE `competition_statuses` ENABLE KEYS */;

-- Dumping structure for table bolasoft.competition_types
CREATE TABLE IF NOT EXISTS `competition_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` enum('y','n') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.competition_types: ~2 rows (approximately)
/*!40000 ALTER TABLE `competition_types` DISABLE KEYS */;
INSERT INTO `competition_types` (`id`, `name`, `is_deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Round Robin', 'n', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(2, 'Setengah Kompetisi', 'n', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL);
/*!40000 ALTER TABLE `competition_types` ENABLE KEYS */;

-- Dumping structure for table bolasoft.competition_wasits
CREATE TABLE IF NOT EXISTS `competition_wasits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `competition_id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `is_deleted` enum('y','n') NOT NULL DEFAULT 'n',
  `reason` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- Dumping data for table bolasoft.competition_wasits: ~30 rows (approximately)
/*!40000 ALTER TABLE `competition_wasits` DISABLE KEYS */;
INSERT INTO `competition_wasits` (`id`, `competition_id`, `name`, `is_deleted`, `reason`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, '473215082', 'Bernhard Steuber', 'n', '-', '2022-09-15 16:31:45', NULL, NULL),
	(2, '449715656', 'Prof. Charles O\'Conner Sr.', 'n', '-', '2022-09-15 16:31:45', NULL, NULL),
	(3, '947982143', 'Erling Feeney', 'n', '-', '2022-09-15 16:31:45', NULL, NULL),
	(4, '179290405', 'Mr. Carey Skiles DDS', 'n', '-', '2022-09-15 16:31:45', NULL, NULL),
	(5, '700545328', 'Titus Goyette', 'n', '-', '2022-09-15 16:31:45', NULL, NULL),
	(6, '609481611', 'Kayleigh Crona', 'n', '-', '2022-09-15 16:31:45', NULL, NULL),
	(7, '710680192', 'Mr. Clifford Stehr IV', 'n', '-', '2022-09-15 16:31:45', NULL, NULL),
	(8, '244721967', 'Ole Shanahan', 'n', '-', '2022-09-15 16:31:45', NULL, NULL),
	(9, '062333168', 'Boyd Lubowitz', 'n', '-', '2022-09-15 16:31:45', NULL, NULL),
	(10, '104036902', 'Emmett Kilback', 'n', '-', '2022-09-15 16:31:45', NULL, NULL),
	(11, '394714209', 'Prof. Rollin Murray Sr.', 'n', '-', '2022-09-15 16:31:45', NULL, NULL),
	(12, '706611267', 'Ludwig Nolan', 'n', '-', '2022-09-15 16:31:45', NULL, NULL),
	(13, '016469472', 'Chelsey Hodkiewicz III', 'n', '-', '2022-09-15 16:31:45', NULL, NULL),
	(14, '880420470', 'Gage Adams', 'n', '-', '2022-09-15 16:31:45', NULL, NULL),
	(15, '560180123', 'Grant Schoen', 'n', '-', '2022-09-15 16:31:45', NULL, NULL),
	(16, '196175256', 'Tevin Langosh', 'n', '-', '2022-09-15 16:31:45', NULL, NULL),
	(17, '241987013', 'Brennan Hartmann', 'n', '-', '2022-09-15 16:31:45', NULL, NULL),
	(18, '850700921', 'Prof. Emanuel Doyle III', 'n', '-', '2022-09-15 16:31:45', NULL, NULL),
	(19, '084993946', 'Payton Cruickshank', 'n', '-', '2022-09-15 16:31:45', NULL, NULL),
	(20, '921807233', 'Mr. Florencio Graham', 'n', '-', '2022-09-15 16:31:45', NULL, NULL),
	(21, '889810953', 'Dedrick Berge', 'n', '-', '2022-09-15 16:31:45', NULL, NULL),
	(22, '408441075', 'Dr. Fausto Kovacek IV', 'n', '-', '2022-09-15 16:31:45', NULL, NULL),
	(23, '138586679', 'Steve Purdy', 'n', '-', '2022-09-15 16:31:45', NULL, NULL),
	(24, '067822489', 'Jasmin Sipes', 'n', '-', '2022-09-15 16:31:45', NULL, NULL),
	(25, '051552035', 'Aric Rice', 'n', '-', '2022-09-15 16:31:45', NULL, NULL),
	(26, '042392511', 'Jaeden Jacobs', 'n', '-', '2022-09-15 16:31:45', NULL, NULL),
	(27, '262668919', 'Morton Price', 'n', '-', '2022-09-15 16:31:45', NULL, NULL),
	(28, '993652308', 'Prof. Pietro Runolfsdottir PhD', 'n', '-', '2022-09-15 16:31:45', NULL, NULL),
	(29, '396504674', 'German Mueller', 'n', '-', '2022-09-15 16:31:45', NULL, NULL),
	(30, '283497731', 'Dr. Loyal Brakus PhD', 'n', '-', '2022-09-15 16:31:45', NULL, NULL),
	(31, '536203988', 'Nuli', 'n', '-', '2022-09-20 04:38:22', '2022-09-20 04:38:22', NULL);
/*!40000 ALTER TABLE `competition_wasits` ENABLE KEYS */;

-- Dumping structure for table bolasoft.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table bolasoft.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table bolasoft.faqs
CREATE TABLE IF NOT EXISTS `faqs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table bolasoft.faqs: ~0 rows (approximately)
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;

-- Dumping structure for table bolasoft.jerseys
CREATE TABLE IF NOT EXISTS `jerseys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `club_id` int(11) NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cloth` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pants` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socks` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.jerseys: ~0 rows (approximately)
/*!40000 ALTER TABLE `jerseys` DISABLE KEYS */;
/*!40000 ALTER TABLE `jerseys` ENABLE KEYS */;

-- Dumping structure for table bolasoft.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `queue` (`queue`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table bolasoft.jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Dumping structure for table bolasoft.match_accumulations
CREATE TABLE IF NOT EXISTS `match_accumulations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `match_id` int(11) NOT NULL,
  `dsp_id` int(11) NOT NULL,
  `status` enum('kuning','merah','goal','none','own_goal') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `menit` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` enum('y','n') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.match_accumulations: ~0 rows (approximately)
/*!40000 ALTER TABLE `match_accumulations` DISABLE KEYS */;
/*!40000 ALTER TABLE `match_accumulations` ENABLE KEYS */;

-- Dumping structure for table bolasoft.match_player_changes
CREATE TABLE IF NOT EXISTS `match_player_changes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `match_id` int(11) NOT NULL,
  `in` int(11) NOT NULL,
  `out` int(11) NOT NULL,
  `menit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` enum('y','n') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.match_player_changes: ~0 rows (approximately)
/*!40000 ALTER TABLE `match_player_changes` DISABLE KEYS */;
/*!40000 ALTER TABLE `match_player_changes` ENABLE KEYS */;

-- Dumping structure for table bolasoft.match_schedules
CREATE TABLE IF NOT EXISTS `match_schedules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `competition_id` int(11) NOT NULL,
  `type` enum('gugur','group') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'group',
  `step` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `wasit_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `participant1_id` int(11) NOT NULL,
  `participant2_id` int(11) NOT NULL,
  `goal1` int(11) NOT NULL DEFAULT '0',
  `goal2` int(11) NOT NULL DEFAULT '0',
  `is_finished` enum('y','n') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `is_deleted` enum('y','n') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.match_schedules: ~129 rows (approximately)
/*!40000 ALTER TABLE `match_schedules` DISABLE KEYS */;
INSERT INTO `match_schedules` (`id`, `competition_id`, `type`, `step`, `location_id`, `wasit_id`, `date`, `participant1_id`, `participant2_id`, `goal1`, `goal2`, `is_finished`, `is_deleted`, `reason`, `note`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 595465153, 'group', NULL, 10, 6, '2022-09-16 00:00:00', 7, 5, 1, 1, 'y', 'n', 'Hic harum illo eum est est.', 'Quia sunt facilis non hic.', NULL, NULL, NULL),
	(2, 595465153, 'group', NULL, 23, 13, '2022-09-17 00:00:00', 3, 12, 2, 9, 'y', 'y', 'Illum pariatur dignissimos quia.', 'Et dolores sed odit sit vitae sed non.', NULL, NULL, NULL),
	(3, 595465153, 'gugur', NULL, 8, 12, '2022-09-18 00:00:00', 15, 10, 7, 8, 'n', 'y', 'Unde sunt voluptate et consectetur aut libero accusamus.', 'Voluptatum rerum commodi voluptas sapiente quidem rem velit.', NULL, NULL, NULL),
	(4, 595465153, 'gugur', NULL, 6, 21, '2022-09-19 00:00:00', 20, 8, 3, 5, 'n', 'n', 'Officiis at ea rerum velit velit perferendis.', 'Minus laboriosam quasi ipsum laboriosam deleniti.', NULL, NULL, NULL),
	(5, 595465153, 'group', NULL, 9, 23, '2022-09-20 00:00:00', 2, 8, 0, 3, 'n', 'n', 'Culpa voluptates earum et quaerat assumenda est unde.', 'Molestiae pariatur provident omnis id qui consectetur.', NULL, NULL, NULL),
	(6, 595465153, 'group', NULL, 4, 14, '2022-09-21 00:00:00', 2, 5, 2, 3, 'n', 'n', 'Consequatur quam voluptatem asperiores.', 'Necessitatibus ut sint ut hic.', NULL, NULL, NULL),
	(7, 595465153, 'group', NULL, 28, 12, '2022-09-22 00:00:00', 11, 6, 3, 6, 'y', 'n', 'At provident est iure illo similique saepe quisquam laudantium.', 'Enim ducimus hic qui minus aut id consequuntur.', NULL, NULL, NULL),
	(8, 595465153, 'gugur', NULL, 26, 7, '2022-09-23 00:00:00', 13, 20, 7, 9, 'y', 'y', 'Vitae debitis nihil quod qui.', 'Maxime id iure assumenda enim sed.', NULL, NULL, NULL),
	(9, 186480652, 'gugur', NULL, 12, 22, '2022-09-16 00:00:00', 3, 11, 7, 5, 'y', 'n', 'Id explicabo deleniti officiis impedit.', 'Iusto sit repudiandae voluptatum sed qui necessitatibus molestiae.', NULL, NULL, NULL),
	(10, 186480652, 'gugur', NULL, 18, 2, '2022-09-17 00:00:00', 18, 3, 5, 0, 'y', 'n', 'Ut iste omnis sit incidunt sed.', 'Qui cumque quo hic officiis earum dolor.', NULL, NULL, NULL),
	(11, 186480652, 'gugur', NULL, 4, 25, '2022-09-18 00:00:00', 20, 19, 4, 1, 'y', 'n', 'Dolor omnis ut distinctio.', 'Aut similique quasi molestiae eos est illum cumque asperiores.', NULL, NULL, NULL),
	(12, 186480652, 'group', NULL, 20, 6, '2022-09-19 00:00:00', 14, 14, 8, 6, 'n', 'n', 'Sit explicabo asperiores delectus deserunt aut at architecto.', 'Nostrum est quasi quo dolorum et perspiciatis.', NULL, NULL, NULL),
	(13, 186480652, 'gugur', NULL, 2, 24, '2022-09-20 00:00:00', 7, 2, 4, 6, 'y', 'n', 'Rerum molestiae voluptas mollitia voluptatum quaerat sit placeat.', 'Natus recusandae esse nemo molestiae.', NULL, NULL, NULL),
	(14, 186480652, 'group', NULL, 5, 16, '2022-09-21 00:00:00', 8, 17, 1, 7, 'n', 'y', 'Nihil non consequuntur a at voluptate voluptas.', 'Harum aliquid aut officiis ut et consequuntur.', NULL, NULL, NULL),
	(15, 797101875, 'group', NULL, 10, 27, '2022-09-16 00:00:00', 12, 17, 6, 7, 'y', 'n', 'Molestiae inventore ea animi.', 'Alias atque quia enim quisquam harum qui.', NULL, NULL, NULL),
	(16, 797101875, 'group', NULL, 17, 4, '2022-09-17 00:00:00', 12, 3, 2, 4, 'n', 'n', 'Et voluptatum eaque voluptas a molestias ipsum.', 'Officiis sunt sequi omnis qui.', NULL, NULL, NULL),
	(17, 797101875, 'gugur', NULL, 25, 30, '2022-09-18 00:00:00', 8, 18, 9, 6, 'y', 'y', 'Aut ab officiis quis eius.', 'Quia aut qui facilis tempora minus non.', NULL, NULL, NULL),
	(18, 797101875, 'group', NULL, 8, 22, '2022-09-19 00:00:00', 4, 2, 6, 1, 'n', 'n', 'Sint tempora ullam labore quaerat.', 'Laboriosam velit vel ratione ut dolorum ipsum.', NULL, NULL, NULL),
	(19, 797101875, 'group', NULL, 9, 21, '2022-09-20 00:00:00', 11, 5, 0, 2, 'y', 'y', 'Eum eveniet et consequatur commodi maxime commodi enim eos.', 'Illo non et eius et soluta asperiores consequatur.', NULL, NULL, NULL),
	(20, 797101875, 'gugur', NULL, 9, 30, '2022-09-21 00:00:00', 4, 7, 8, 2, 'n', 'y', 'Doloremque enim accusamus quod aperiam consectetur atque exercitationem.', 'Excepturi quia voluptatem quasi perferendis quaerat qui.', NULL, NULL, NULL),
	(21, 797101875, 'group', NULL, 10, 10, '2022-09-22 00:00:00', 15, 11, 1, 2, 'y', 'n', 'Deserunt illum omnis earum veniam at sunt.', 'Veritatis nihil perferendis eum ducimus.', NULL, NULL, NULL),
	(22, 797101875, 'group', NULL, 13, 26, '2022-09-23 00:00:00', 4, 13, 0, 9, 'y', 'y', 'Expedita qui eum debitis aliquid aliquam harum.', NULL, NULL, '2022-09-15 09:57:09', NULL),
	(23, 279023838, 'group', NULL, 14, 20, '2022-09-16 00:00:00', 6, 13, 6, 0, 'n', 'y', 'Molestiae id vel culpa culpa voluptatem.', 'Itaque vel et totam molestias ab cumque nobis.', NULL, NULL, NULL),
	(24, 279023838, 'group', NULL, 11, 19, '2022-09-17 00:00:00', 12, 10, 7, 0, 'n', 'y', 'Et voluptate quis ipsum.', 'Doloribus voluptas magnam est.', NULL, NULL, NULL),
	(25, 279023838, 'gugur', NULL, 27, 2, '2022-09-18 00:00:00', 10, 12, 2, 5, 'y', 'n', 'Aut aut at velit et eveniet.', 'Sapiente est voluptatibus rerum veniam occaecati sapiente culpa rerum.', NULL, NULL, NULL),
	(26, 279023838, 'group', NULL, 18, 20, '2022-09-19 00:00:00', 5, 4, 4, 4, 'y', 'n', 'Praesentium autem distinctio impedit quia architecto blanditiis nobis rerum.', 'Dolorum omnis nesciunt officiis odit sit.', NULL, NULL, NULL),
	(27, 279023838, 'group', NULL, 6, 6, '2022-09-20 00:00:00', 7, 7, 9, 9, 'y', 'y', 'Adipisci voluptates assumenda nisi optio modi quas in.', 'Quia omnis quod eligendi dolores doloribus.', NULL, NULL, NULL),
	(28, 279023838, 'gugur', NULL, 8, 11, '2022-09-21 00:00:00', 5, 19, 3, 0, 'n', 'n', 'Repudiandae id minus ex dignissimos consequatur.', 'Ea iusto non provident et sequi nesciunt tenetur.', NULL, NULL, NULL),
	(29, 279023838, 'gugur', NULL, 24, 4, '2022-09-22 00:00:00', 2, 15, 0, 2, 'n', 'y', 'Facere recusandae minima aperiam id dignissimos.', 'Quis iste perferendis atque ducimus et.', NULL, NULL, NULL),
	(30, 279023838, 'group', NULL, 22, 30, '2022-09-23 00:00:00', 12, 17, 5, 2, 'n', 'n', 'Maxime voluptas suscipit dolor omnis.', 'Autem deserunt reprehenderit aperiam ea autem nesciunt.', NULL, NULL, NULL),
	(31, 648538299, 'gugur', NULL, 23, 21, '2022-09-16 00:00:00', 5, 1, 3, 9, 'n', 'y', 'Quaerat ipsam temporibus laboriosam non minima delectus ut.', 'Esse consequuntur voluptatibus consequatur sed aperiam pariatur veritatis.', NULL, NULL, NULL),
	(32, 648538299, 'gugur', NULL, 18, 14, '2022-09-17 00:00:00', 3, 12, 3, 9, 'n', 'n', 'Suscipit provident sunt autem aliquid tenetur animi.', 'Quia quia placeat ipsum est.', NULL, NULL, NULL),
	(33, 648538299, 'gugur', NULL, 9, 3, '2022-09-18 00:00:00', 7, 4, 3, 6, 'n', 'y', 'Rem dolores voluptas cupiditate hic est quo.', 'Quia nulla ea rerum enim.', NULL, NULL, NULL),
	(34, 648538299, 'gugur', NULL, 4, 5, '2022-09-19 00:00:00', 12, 13, 0, 8, 'y', 'y', 'Laborum eum omnis nihil inventore qui.', 'Occaecati rerum maiores eius error cumque.', NULL, NULL, NULL),
	(35, 648538299, 'group', NULL, 13, 20, '2022-09-20 00:00:00', 19, 7, 0, 0, 'n', 'n', 'Nostrum voluptatem rem et eos vel qui odio.', 'Qui magni et laborum fuga.', NULL, NULL, NULL),
	(36, 648538299, 'group', NULL, 19, 6, '2022-09-21 00:00:00', 3, 10, 2, 5, 'n', 'y', 'Impedit aut consectetur voluptas a.', 'Aut sint quis asperiores voluptas blanditiis quis.', NULL, NULL, NULL),
	(37, 846129236, 'gugur', NULL, 14, 14, '2022-09-16 00:00:00', 1, 19, 9, 3, 'n', 'y', 'Veritatis nihil vitae quo modi.', 'Assumenda et optio id ipsam.', NULL, NULL, NULL),
	(38, 846129236, 'group', NULL, 6, 13, '2022-09-17 00:00:00', 12, 3, 9, 6, 'n', 'y', 'Suscipit consectetur quae autem.', 'Magnam quibusdam qui delectus culpa aut architecto.', NULL, NULL, NULL),
	(39, 846129236, 'gugur', NULL, 25, 14, '2022-09-18 00:00:00', 13, 9, 6, 1, 'y', 'y', 'Commodi beatae quidem minima.', 'Recusandae voluptatum voluptatem quas sed aliquid ut voluptates placeat.', NULL, NULL, NULL),
	(40, 846129236, 'group', NULL, 25, 17, '2022-09-19 00:00:00', 12, 11, 7, 4, 'n', 'y', 'Doloribus maxime voluptatem fugiat molestiae.', 'Sapiente eius non repellat eum ut.', NULL, NULL, NULL),
	(41, 846129236, 'group', NULL, 28, 28, '2022-09-20 00:00:00', 6, 5, 4, 2, 'n', 'n', 'Blanditiis temporibus recusandae aspernatur ipsum cumque.', 'Nihil aut pariatur fugiat labore.', NULL, NULL, NULL),
	(42, 423418571, 'group', NULL, 27, 1, '2022-09-16 00:00:00', 2, 2, 7, 1, 'y', 'n', 'Assumenda ipsum commodi ipsum facilis nam ipsam eveniet.', 'Dolore a repellat quo cum a odio repudiandae.', NULL, NULL, NULL),
	(43, 423418571, 'gugur', NULL, 11, 24, '2022-09-17 00:00:00', 12, 5, 2, 0, 'y', 'n', 'Et excepturi pariatur qui laboriosam aut asperiores molestias suscipit.', 'Animi reprehenderit expedita officia qui necessitatibus.', NULL, NULL, NULL),
	(44, 423418571, 'gugur', NULL, 2, 18, '2022-09-18 00:00:00', 2, 16, 2, 4, 'y', 'y', 'Quibusdam dolor et deserunt recusandae maxime et.', 'Occaecati non libero dolor blanditiis.', NULL, NULL, NULL),
	(45, 423418571, 'gugur', NULL, 2, 24, '2022-09-19 00:00:00', 16, 19, 1, 0, 'y', 'y', 'Minima qui nemo quo aspernatur dolore ex delectus rerum.', 'Sit labore aut perspiciatis quo perferendis sed.', NULL, NULL, NULL),
	(46, 423418571, 'group', NULL, 27, 11, '2022-09-20 00:00:00', 7, 6, 2, 3, 'n', 'y', 'Qui est et maiores debitis eum.', 'Nisi est quisquam tempore ut.', NULL, NULL, NULL),
	(47, 423418571, 'gugur', NULL, 8, 3, '2022-09-21 00:00:00', 15, 8, 8, 5, 'y', 'n', 'Nihil quidem sunt alias sapiente.', 'Atque ipsa consequatur vel voluptatem saepe tenetur.', NULL, NULL, NULL),
	(48, 423418571, 'gugur', NULL, 7, 30, '2022-09-22 00:00:00', 7, 15, 4, 7, 'n', 'n', 'Qui dicta voluptatem quaerat eos.', 'Quo autem ullam quia minima omnis similique impedit.', NULL, NULL, NULL),
	(49, 214238617, 'group', NULL, 24, 13, '2022-09-16 00:00:00', 7, 7, 2, 6, 'y', 'n', 'Voluptatem nisi iure cumque earum natus et.', 'Rerum dolores consequuntur impedit dolor.', NULL, NULL, NULL),
	(50, 214238617, 'gugur', NULL, 12, 25, '2022-09-17 00:00:00', 3, 4, 0, 3, 'n', 'n', 'Nulla enim quos natus sequi repellendus id praesentium vel.', 'Ipsum a voluptatem impedit eligendi.', NULL, NULL, NULL),
	(51, 214238617, 'group', NULL, 19, 26, '2022-09-18 00:00:00', 15, 14, 5, 4, 'y', 'n', 'Aut atque minus explicabo error fugiat in.', 'Aut minus debitis ratione dicta.', NULL, NULL, NULL),
	(52, 214238617, 'group', NULL, 10, 10, '2022-09-19 00:00:00', 5, 17, 1, 8, 'n', 'y', 'Nulla nam quia voluptatem.', 'Sunt omnis eius est illo minus et.', NULL, NULL, NULL),
	(53, 214238617, 'gugur', NULL, 1, 29, '2022-09-20 00:00:00', 13, 17, 4, 4, 'y', 'y', 'Repudiandae eius sit qui et.', 'Provident modi nisi quia et et.', NULL, NULL, NULL),
	(54, 56508628, 'group', NULL, 23, 10, '2022-09-16 00:00:00', 20, 8, 8, 5, 'y', 'n', 'Animi enim ea doloribus aut vitae omnis.', 'Et voluptas sint ut dignissimos.', NULL, NULL, NULL),
	(55, 56508628, 'group', NULL, 28, 20, '2022-09-17 00:00:00', 16, 20, 7, 5, 'n', 'n', 'Similique at quia eos ratione.', 'Libero nihil ut mollitia et non nobis iure.', NULL, NULL, NULL),
	(56, 56508628, 'gugur', NULL, 1, 9, '2022-09-18 00:00:00', 4, 17, 8, 2, 'n', 'y', 'Pariatur debitis animi est corrupti ut et impedit dolorem.', 'Corporis sint et aliquam alias.', NULL, NULL, NULL),
	(57, 56508628, 'gugur', NULL, 5, 12, '2022-09-19 00:00:00', 12, 3, 9, 8, 'n', 'y', 'Velit quibusdam odio perspiciatis molestiae adipisci praesentium libero.', 'Rerum provident esse nam explicabo sed dolorem.', NULL, NULL, NULL),
	(58, 56508628, 'group', NULL, 15, 18, '2022-09-20 00:00:00', 3, 16, 2, 4, 'n', 'n', 'Iste error amet ex non et.', 'Est et suscipit est cupiditate velit assumenda omnis nisi.', NULL, NULL, NULL),
	(59, 56508628, 'gugur', NULL, 23, 7, '2022-09-21 00:00:00', 12, 5, 2, 2, 'n', 'y', 'Corrupti maxime officia est incidunt qui ad.', 'Ipsum id harum consequatur provident accusamus.', NULL, NULL, NULL),
	(60, 56508628, 'gugur', NULL, 7, 30, '2022-09-22 00:00:00', 4, 9, 3, 6, 'y', 'y', 'Perspiciatis et labore optio facilis amet.', 'Maiores voluptas cum aut corporis.', NULL, NULL, NULL),
	(61, 237143549, 'group', NULL, 13, 29, '2022-09-16 00:00:00', 5, 17, 4, 8, 'n', 'n', 'Unde omnis eaque nulla odit et nihil soluta eos.', 'Libero rerum soluta ut veniam.', NULL, NULL, NULL),
	(62, 237143549, 'group', NULL, 3, 14, '2022-09-17 00:00:00', 13, 17, 2, 8, 'y', 'y', 'Quaerat dolores possimus quis blanditiis.', 'Dolores eos repellendus quis et.', NULL, NULL, NULL),
	(63, 237143549, 'group', NULL, 26, 23, '2022-09-18 00:00:00', 20, 9, 8, 0, 'y', 'n', 'Eligendi praesentium autem earum beatae.', 'Nihil vel corporis tempore est.', NULL, NULL, NULL),
	(64, 237143549, 'group', NULL, 22, 24, '2022-09-19 00:00:00', 15, 16, 2, 2, 'n', 'n', 'Doloribus nisi illo esse iure qui.', 'Provident illum et dicta consequatur libero.', NULL, NULL, NULL),
	(65, 237143549, 'group', NULL, 27, 21, '2022-09-20 00:00:00', 13, 1, 0, 3, 'n', 'n', 'Aut id quam omnis quos.', 'Nesciunt et vitae porro quos hic veniam exercitationem rerum.', NULL, NULL, NULL),
	(66, 560409287, 'group', NULL, 9, 28, '2022-09-16 00:00:00', 16, 2, 0, 2, 'n', 'n', 'Quibusdam corporis optio corporis dolores eos rerum.', 'Iure molestiae qui pariatur fugit rerum amet.', NULL, NULL, NULL),
	(67, 560409287, 'group', NULL, 11, 2, '2022-09-17 00:00:00', 6, 3, 7, 3, 'y', 'n', 'Laborum sint vel porro quam ut.', 'Dignissimos voluptas dolorum ab id qui ut.', NULL, NULL, NULL),
	(68, 560409287, 'gugur', NULL, 24, 9, '2022-09-18 00:00:00', 15, 15, 2, 8, 'n', 'y', 'Eos suscipit voluptas et magni nostrum sit modi distinctio.', 'Voluptatem aut perspiciatis nesciunt mollitia autem et perferendis.', NULL, NULL, NULL),
	(69, 560409287, 'gugur', NULL, 8, 2, '2022-09-19 00:00:00', 11, 10, 4, 9, 'n', 'y', 'Vel mollitia quod eligendi id et dolorum.', 'Ea blanditiis doloremque et debitis.', NULL, NULL, NULL),
	(70, 560409287, 'group', NULL, 13, 4, '2022-09-20 00:00:00', 11, 17, 2, 8, 'n', 'y', 'In iste quia beatae qui.', 'Unde quisquam odit quasi est amet.', NULL, NULL, NULL),
	(71, 560409287, 'group', NULL, 15, 14, '2022-09-21 00:00:00', 7, 13, 4, 6, 'n', 'n', 'Quis totam et beatae occaecati consectetur.', 'Et nemo quia et voluptas mollitia voluptas ipsam.', NULL, NULL, NULL),
	(72, 69516987, 'group', NULL, 23, 5, '2022-09-16 00:00:00', 13, 3, 4, 5, 'y', 'y', 'A est neque alias et sunt deserunt.', 'Et consectetur iure alias saepe rerum.', NULL, NULL, NULL),
	(73, 69516987, 'gugur', NULL, 18, 23, '2022-09-17 00:00:00', 10, 9, 0, 7, 'n', 'y', 'Delectus sit ab ut.', 'Dolorem cum et vel inventore aut.', NULL, NULL, NULL),
	(74, 69516987, 'group', NULL, 6, 21, '2022-09-18 00:00:00', 2, 14, 5, 3, 'y', 'n', 'Recusandae eum pariatur omnis delectus omnis sapiente.', 'Consequatur quae totam accusantium et autem.', NULL, NULL, NULL),
	(75, 69516987, 'gugur', NULL, 28, 3, '2022-09-19 00:00:00', 14, 19, 3, 1, 'n', 'y', 'Voluptatem necessitatibus dolor nesciunt maiores voluptatem harum magni voluptas.', 'Illo commodi assumenda sapiente at officiis sit.', NULL, NULL, NULL),
	(76, 69516987, 'gugur', NULL, 5, 16, '2022-09-20 00:00:00', 4, 3, 4, 8, 'y', 'n', 'Eligendi asperiores incidunt at tempora expedita aut ut.', 'Sunt perspiciatis aut quia velit rerum possimus hic.', NULL, NULL, NULL),
	(77, 69516987, 'gugur', NULL, 17, 25, '2022-09-21 00:00:00', 16, 16, 7, 1, 'n', 'n', 'Eos quis assumenda beatae corrupti laudantium sint.', 'Cupiditate eligendi perferendis eaque possimus laborum esse cumque.', NULL, NULL, NULL),
	(78, 69516987, 'gugur', NULL, 26, 7, '2022-09-22 00:00:00', 13, 14, 0, 5, 'n', 'y', 'Consectetur vel eum ut facilis minima labore dolores et.', 'Rem aut voluptas et ea voluptates.', NULL, NULL, NULL),
	(79, 806637701, 'group', NULL, 15, 7, '2022-09-16 00:00:00', 5, 17, 5, 8, 'n', 'y', 'Distinctio nobis officiis ut omnis veniam vitae et quam.', 'Tenetur qui quia sapiente aut exercitationem voluptatem.', NULL, NULL, NULL),
	(80, 806637701, 'gugur', NULL, 19, 11, '2022-09-17 00:00:00', 8, 18, 2, 4, 'y', 'n', 'Qui commodi omnis atque error aut aliquid quaerat.', 'Quis doloremque quia laborum neque fugiat quis.', NULL, NULL, NULL),
	(81, 806637701, 'gugur', NULL, 16, 1, '2022-09-18 00:00:00', 5, 14, 2, 2, 'y', 'y', 'Et rem voluptate quis.', 'Ad aut quod molestiae voluptatem molestiae id.', NULL, NULL, NULL),
	(82, 806637701, 'group', NULL, 2, 27, '2022-09-19 00:00:00', 16, 2, 1, 4, 'y', 'y', 'Asperiores voluptatem non dolorem sit voluptatibus velit velit.', 'Ut eos eaque in beatae fuga dolorem eaque et.', NULL, NULL, NULL),
	(83, 806637701, 'group', NULL, 25, 18, '2022-09-20 00:00:00', 7, 4, 7, 7, 'n', 'n', 'Eius error et velit labore aliquid sapiente.', 'Sint quidem repellendus a alias aut voluptatem aut.', NULL, NULL, NULL),
	(84, 806637701, 'group', NULL, 11, 13, '2022-09-21 00:00:00', 8, 8, 0, 2, 'n', 'y', 'Sapiente minus id non nam.', 'Minima exercitationem similique veniam ut sapiente explicabo officiis.', NULL, NULL, NULL),
	(85, 806637701, 'group', NULL, 13, 10, '2022-09-22 00:00:00', 12, 8, 5, 2, 'y', 'n', 'Consectetur dicta illo nesciunt ut totam.', 'Sequi dignissimos rem reiciendis.', NULL, NULL, NULL),
	(86, 138748301, 'gugur', NULL, 14, 23, '2022-09-16 00:00:00', 2, 19, 2, 1, 'y', 'y', 'Omnis qui dolorem veniam eligendi sit.', 'Rerum aspernatur ratione facere dolorum ut.', NULL, NULL, NULL),
	(87, 138748301, 'gugur', NULL, 11, 21, '2022-09-17 00:00:00', 18, 10, 3, 1, 'y', 'y', 'Iusto consequuntur dolore illo facilis laboriosam dignissimos.', 'Aut eos corrupti qui voluptatem.', NULL, NULL, NULL),
	(88, 138748301, 'gugur', NULL, 24, 1, '2022-09-18 00:00:00', 20, 14, 5, 2, 'n', 'y', 'Magni fugit sint eum est mollitia asperiores.', 'Deserunt et ipsa ducimus exercitationem ab voluptates dolorum.', NULL, NULL, NULL),
	(89, 138748301, 'group', NULL, 12, 11, '2022-09-19 00:00:00', 18, 4, 6, 7, 'n', 'n', 'Officiis maxime possimus nostrum non sint minus.', 'Reiciendis aut eum tempora officiis voluptatem consectetur quia.', NULL, NULL, NULL),
	(90, 138748301, 'gugur', NULL, 15, 10, '2022-09-20 00:00:00', 18, 6, 5, 3, 'n', 'y', 'Rem esse sunt nemo explicabo error harum.', 'Ut provident dolorem reiciendis minus maiores.', NULL, NULL, NULL),
	(91, 138748301, 'group', NULL, 1, 28, '2022-09-21 00:00:00', 1, 5, 3, 6, 'y', 'n', 'Neque temporibus velit corporis eum eos.', 'Ea vero fugit et sed.', NULL, NULL, NULL),
	(92, 138748301, 'group', NULL, 20, 30, '2022-09-22 00:00:00', 16, 10, 1, 7, 'y', 'n', 'Id dolor temporibus velit architecto.', 'Et distinctio ut occaecati assumenda excepturi quidem sed.', NULL, NULL, NULL),
	(93, 804814205, 'group', NULL, 10, 29, '2022-09-16 00:00:00', 20, 2, 6, 7, 'n', 'n', 'Porro sunt et dignissimos magnam illum eveniet dolorum.', 'Voluptatibus voluptatibus delectus inventore.', NULL, NULL, NULL),
	(94, 804814205, 'group', NULL, 19, 11, '2022-09-17 00:00:00', 19, 18, 6, 8, 'n', 'n', 'Incidunt aperiam quo illo quo assumenda libero.', 'Sed quidem id et dolore recusandae.', NULL, NULL, NULL),
	(95, 804814205, 'gugur', NULL, 18, 26, '2022-09-18 00:00:00', 17, 17, 6, 6, 'y', 'n', 'Ut tempore consequatur quo quo vel repellendus qui illo.', 'Vero neque provident numquam autem accusamus.', NULL, NULL, NULL),
	(96, 804814205, 'gugur', NULL, 17, 23, '2022-09-19 00:00:00', 9, 5, 1, 7, 'y', 'y', 'Sequi totam quo earum rerum neque quis.', 'Tempore fugiat eum quidem accusantium dolor.', NULL, NULL, NULL),
	(97, 804814205, 'group', NULL, 8, 22, '2022-09-20 00:00:00', 11, 6, 3, 7, 'y', 'n', 'Sed rerum excepturi ex qui ipsum amet omnis.', 'Dolor dolorem perspiciatis dolorem autem rerum voluptatem sapiente.', NULL, NULL, NULL),
	(98, 804814205, 'group', NULL, 25, 15, '2022-09-21 00:00:00', 3, 13, 6, 3, 'y', 'y', 'Quibusdam inventore quae in in voluptas sint.', 'Sit dicta ipsa sit repellendus sit.', NULL, NULL, NULL),
	(99, 804814205, 'gugur', NULL, 3, 27, '2022-09-22 00:00:00', 20, 14, 1, 7, 'y', 'y', 'Voluptas quis pariatur harum.', 'Qui accusantium impedit minima excepturi.', NULL, NULL, NULL),
	(100, 167687652, 'gugur', NULL, 21, 27, '2022-09-16 00:00:00', 12, 2, 0, 7, 'y', 'n', 'Quaerat atque odio temporibus eum consequatur ipsum ad.', 'Occaecati eum quam ad rem ducimus.', NULL, NULL, NULL),
	(101, 167687652, 'group', NULL, 28, 15, '2022-09-17 00:00:00', 1, 20, 5, 6, 'y', 'n', 'Qui suscipit aut et deserunt qui et.', 'Qui labore omnis corporis dolores distinctio hic sunt autem.', NULL, NULL, NULL),
	(102, 167687652, 'group', NULL, 20, 21, '2022-09-18 00:00:00', 8, 12, 5, 5, 'n', 'y', 'Et nisi perferendis deserunt itaque eum velit dolore sit.', 'Et enim similique doloremque voluptatem quo quo.', NULL, NULL, NULL),
	(103, 167687652, 'gugur', NULL, 11, 16, '2022-09-19 00:00:00', 4, 8, 6, 4, 'n', 'n', 'Voluptatem tempora eaque dignissimos.', 'Dolores mollitia eum deleniti et provident voluptatem voluptatem.', NULL, NULL, NULL),
	(104, 167687652, 'gugur', NULL, 23, 16, '2022-09-20 00:00:00', 15, 20, 7, 4, 'y', 'y', 'Sunt totam consequatur provident maiores suscipit debitis numquam.', 'Veritatis ducimus perspiciatis rerum odit architecto quia aut.', NULL, NULL, NULL),
	(105, 167687652, 'group', NULL, 11, 3, '2022-09-21 00:00:00', 20, 5, 7, 6, 'n', 'y', 'Quasi dolores consectetur enim asperiores dolor dolores.', 'Impedit ipsum tenetur doloribus saepe.', NULL, NULL, NULL),
	(106, 54680823, 'gugur', NULL, 24, 3, '2022-09-16 00:00:00', 17, 10, 3, 6, 'y', 'n', 'Veritatis saepe autem consequuntur voluptatem.', 'Aut nulla aliquam sed rerum atque doloribus quia hic.', NULL, NULL, NULL),
	(107, 54680823, 'group', NULL, 11, 22, '2022-09-17 00:00:00', 13, 14, 4, 0, 'y', 'n', 'Ut possimus nulla voluptas voluptatum sit illo est laborum.', 'Nostrum consequatur doloremque et et.', NULL, NULL, NULL),
	(108, 54680823, 'gugur', NULL, 10, 18, '2022-09-18 00:00:00', 18, 7, 5, 9, 'n', 'y', 'Consectetur quia aut sed ad quidem.', 'Nobis porro amet ut dicta perspiciatis delectus.', NULL, NULL, NULL),
	(109, 54680823, 'group', NULL, 8, 15, '2022-09-19 00:00:00', 14, 3, 8, 8, 'y', 'n', 'Et suscipit distinctio temporibus ut tempora libero.', 'Atque aut accusantium ut.', NULL, NULL, NULL),
	(110, 54680823, 'group', NULL, 6, 15, '2022-09-20 00:00:00', 10, 19, 8, 3, 'y', 'y', 'Sunt exercitationem hic omnis corrupti aut fugiat.', 'Et illum non odit pariatur quas.', NULL, NULL, NULL),
	(111, 334778285, 'gugur', NULL, 7, 8, '2022-09-16 00:00:00', 15, 9, 3, 8, 'y', 'y', 'Possimus consequatur eveniet enim sequi.', 'Voluptas quae illum quas pariatur illo doloribus est.', NULL, NULL, NULL),
	(112, 334778285, 'gugur', NULL, 19, 29, '2022-09-17 00:00:00', 14, 14, 4, 6, 'n', 'y', 'Esse illum eligendi magni tempora rerum similique.', 'Totam deleniti inventore magnam et perspiciatis et occaecati.', NULL, NULL, NULL),
	(113, 334778285, 'group', NULL, 21, 3, '2022-09-18 00:00:00', 17, 11, 2, 9, 'n', 'n', 'Ut quibusdam commodi aperiam commodi quidem exercitationem.', 'Harum tempore omnis dolor.', NULL, NULL, NULL),
	(114, 334778285, 'gugur', NULL, 28, 12, '2022-09-19 00:00:00', 20, 2, 9, 4, 'n', 'y', 'Sunt tempora ut quae cumque.', 'Aut eveniet deserunt et est omnis et molestiae.', NULL, NULL, NULL),
	(115, 334778285, 'gugur', NULL, 9, 9, '2022-09-20 00:00:00', 6, 8, 2, 1, 'y', 'y', 'Dolorem facere autem perferendis deserunt consequatur aut dolores.', 'Sit nobis vitae perferendis non consequatur molestiae.', NULL, NULL, NULL),
	(116, 334778285, 'gugur', NULL, 25, 1, '2022-09-21 00:00:00', 10, 2, 1, 2, 'y', 'n', 'Ducimus esse velit quo culpa earum occaecati explicabo.', 'Inventore tenetur quia autem.', NULL, NULL, NULL),
	(117, 311564827, 'gugur', NULL, 20, 2, '2022-09-16 00:00:00', 2, 15, 6, 2, 'y', 'n', 'Illum fuga ipsa et.', 'Qui et praesentium numquam dolorem qui vitae.', NULL, NULL, NULL),
	(118, 311564827, 'group', NULL, 16, 6, '2022-09-17 00:00:00', 10, 16, 7, 3, 'n', 'n', 'Expedita dolore quibusdam placeat.', 'Ea aut expedita animi magni dolorem.', NULL, NULL, NULL),
	(119, 311564827, 'gugur', NULL, 5, 13, '2022-09-18 00:00:00', 5, 7, 3, 3, 'y', 'n', 'Eligendi sit quis voluptatum corporis sit quidem.', 'Vel quibusdam placeat deserunt sed.', NULL, NULL, NULL),
	(120, 311564827, 'group', NULL, 1, 29, '2022-09-19 00:00:00', 5, 12, 8, 7, 'n', 'y', 'Dolorem quam similique eum aut aliquid.', 'Reprehenderit sit animi sit similique.', NULL, NULL, NULL),
	(121, 311564827, 'group', NULL, 18, 26, '2022-09-20 00:00:00', 19, 5, 2, 2, 'y', 'y', 'Laboriosam voluptates similique excepturi dolores voluptatibus omnis sint.', 'Voluptatem deleniti nesciunt eum commodi.', NULL, NULL, NULL),
	(122, 311564827, 'group', NULL, 5, 18, '2022-09-21 00:00:00', 2, 10, 3, 7, 'n', 'y', 'Qui molestiae qui quas harum delectus eaque et.', 'Exercitationem suscipit voluptates dolorum sed.', NULL, NULL, NULL),
	(123, 817337716, 'gugur', NULL, 15, 14, '2022-09-16 00:00:00', 17, 11, 5, 8, 'n', 'y', 'Velit et dolorem ut impedit.', 'Nesciunt sapiente repellat repellendus vero.', NULL, NULL, NULL),
	(124, 817337716, 'group', NULL, 6, 4, '2022-09-17 00:00:00', 18, 10, 2, 3, 'y', 'y', 'Explicabo tempora sit maiores id reiciendis et.', 'Et provident amet soluta nihil placeat commodi sit.', NULL, NULL, NULL),
	(125, 817337716, 'gugur', NULL, 27, 12, '2022-09-18 00:00:00', 10, 17, 1, 3, 'n', 'y', 'Est explicabo tempore qui laudantium similique.', 'Nostrum alias voluptas ex ab.', NULL, NULL, NULL),
	(126, 817337716, 'gugur', NULL, 28, 29, '2022-09-19 00:00:00', 17, 15, 9, 0, 'n', 'y', 'Minus provident consequatur ducimus necessitatibus.', 'Laborum et ut doloribus voluptatem autem nihil qui.', NULL, NULL, NULL),
	(127, 817337716, 'gugur', NULL, 9, 6, '2022-09-20 00:00:00', 19, 10, 3, 0, 'n', 'y', 'Quisquam repellat assumenda et fugit consequuntur dolorem eveniet.', 'Id perspiciatis animi cupiditate in voluptas expedita nisi.', NULL, NULL, NULL),
	(128, 817337716, 'group', NULL, 15, 12, '2022-09-21 00:00:00', 11, 1, 1, 9, 'n', 'n', 'Pariatur quo et est voluptatibus totam atque occaecati.', 'Odio et soluta natus dicta illum.', NULL, NULL, NULL),
	(129, 817337716, 'gugur', NULL, 21, 7, '2022-09-22 00:00:00', 11, 3, 3, 0, 'n', 'n', 'A repellat consequatur in voluptatem mollitia id.', 'Et culpa qui ipsa nulla.', NULL, NULL, NULL),
	(130, 536203988, 'group', NULL, NULL, 31, '2022-09-20 20:40:00', 23, 24, 10, 0, 'y', 'n', NULL, 'Hello', '2022-09-20 04:41:53', '2022-09-20 04:43:39', NULL),
	(131, 536203988, 'group', NULL, NULL, 0, '2022-09-23 18:29:00', 23, 23, 0, 0, 'n', 'n', NULL, NULL, '2022-09-20 07:59:00', '2022-09-20 07:59:00', NULL);
/*!40000 ALTER TABLE `match_schedules` ENABLE KEYS */;

-- Dumping structure for table bolasoft.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.migrations: ~0 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table bolasoft.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.oauth_access_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;

-- Dumping structure for table bolasoft.oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.oauth_auth_codes: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;

-- Dumping structure for table bolasoft.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.oauth_clients: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;

-- Dumping structure for table bolasoft.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.oauth_personal_access_clients: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;

-- Dumping structure for table bolasoft.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.oauth_refresh_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;

-- Dumping structure for table bolasoft.paguyubans
CREATE TABLE IF NOT EXISTS `paguyubans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `province_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci,
  `telp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `thumbnail_image` longblob,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `paguyubans_telp_unique` (`telp`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.paguyubans: ~11 rows (approximately)
/*!40000 ALTER TABLE `paguyubans` DISABLE KEYS */;
INSERT INTO `paguyubans` (`id`, `province_id`, `name`, `desc`, `telp`, `address`, `thumbnail_image`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 1, 'Purwokerto', NULL, '085747767270', 'Pasir Kulon', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(2, 33, 'Dare, Erdman and Smith', NULL, '(336) 550-5232 x7530', '739 Keeling Mill', NULL, NULL, NULL, NULL),
	(3, 18, 'Spinka and Sons', NULL, '1-361-943-2828 x466', '4017 Easton Spring Suite 810', NULL, NULL, NULL, NULL),
	(4, 15, 'Wiza and Sons', NULL, '1-456-307-1843', '303 Stan Place Suite 056', NULL, NULL, NULL, NULL),
	(5, 25, 'Pfannerstill, Glover and Batz', NULL, '+1-402-833-3679', '55586 Marisa Brook Apt. 118', NULL, NULL, NULL, NULL),
	(6, 29, 'Schoen-Hammes', NULL, '+1.619.376.8688', '41708 Lina Corners Suite 055', NULL, NULL, NULL, NULL),
	(7, 29, 'Funk and Sons', NULL, '774-828-7722', '252 Hegmann Dale Suite 884', NULL, NULL, NULL, NULL),
	(8, 10, 'Lockman-Kulas', NULL, '1-852-327-7981', '362 Johnny Stream', NULL, NULL, NULL, NULL),
	(9, 6, 'Beatty, Roberts and Lubowitz', NULL, '+1 (907) 394-9755', '67853 Hassie Parkways', NULL, NULL, NULL, NULL),
	(10, 2, 'Wehner Group', NULL, '591-237-1164 x10436', '6085 Kuhic Drives', NULL, NULL, NULL, NULL),
	(11, 16, 'Sporer-Wintheiser', NULL, '491.474.1260 x844', '9790 Ledner Groves Apt. 537', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `paguyubans` ENABLE KEYS */;

-- Dumping structure for table bolasoft.paguyuban_assets
CREATE TABLE IF NOT EXISTS `paguyuban_assets` (
  `id_images` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paguyuban_id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` longblob,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_images`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.paguyuban_assets: ~0 rows (approximately)
/*!40000 ALTER TABLE `paguyuban_assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `paguyuban_assets` ENABLE KEYS */;

-- Dumping structure for table bolasoft.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table bolasoft.payments
CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_schedule_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `whitelist` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.payments: ~0 rows (approximately)
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;

-- Dumping structure for table bolasoft.payment_schedules
CREATE TABLE IF NOT EXISTS `payment_schedules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `club_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.payment_schedules: ~0 rows (approximately)
/*!40000 ALTER TABLE `payment_schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_schedules` ENABLE KEYS */;

-- Dumping structure for table bolasoft.provinces
CREATE TABLE IF NOT EXISTS `provinces` (
  `id_propinsi` int(11) NOT NULL AUTO_INCREMENT,
  `nama_propinsi` varchar(50) NOT NULL,
  PRIMARY KEY (`id_propinsi`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

-- Dumping data for table bolasoft.provinces: ~34 rows (approximately)
/*!40000 ALTER TABLE `provinces` DISABLE KEYS */;
INSERT INTO `provinces` (`id_propinsi`, `nama_propinsi`) VALUES
	(1, 'Aceh'),
	(2, 'Sumatera Utara'),
	(3, 'Sumatera Barat'),
	(4, 'Riau'),
	(5, 'Jambi'),
	(6, 'Sumatera Selatan'),
	(7, 'Bengkulu'),
	(8, 'Lampung'),
	(9, 'Kepulauan Bangka Belitung'),
	(10, 'Kepulauan Riau'),
	(11, 'DKI Jakarta'),
	(12, 'Jawa Barat'),
	(13, 'Jawa Tengah'),
	(14, 'DI Yogyakarta'),
	(15, 'Jawa Timur'),
	(16, 'Banten'),
	(17, 'Bali'),
	(18, 'Nusa Tenggara Barat'),
	(19, 'Nusa Tenggara Timur'),
	(20, 'Kalimantan Barat'),
	(21, 'Kalimantan Tengah'),
	(22, 'Kalimantan Selatan'),
	(23, 'Kalimantan Timur'),
	(24, 'Kalimantan Utara'),
	(25, 'Sulawesi Utara'),
	(26, 'Sulawesi Tengah'),
	(27, 'Sulawesi Selatan'),
	(28, 'Sulawesi Tenggara'),
	(29, 'Gorontalo'),
	(30, 'Sulawesi Barat'),
	(31, 'Maluku'),
	(32, 'Maluku Utara'),
	(33, 'Papua'),
	(34, 'Papua Barat');
/*!40000 ALTER TABLE `provinces` ENABLE KEYS */;

-- Dumping structure for table bolasoft.ref_scorings
CREATE TABLE IF NOT EXISTS `ref_scorings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` enum('y','n') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.ref_scorings: ~6 rows (approximately)
/*!40000 ALTER TABLE `ref_scorings` DISABLE KEYS */;
INSERT INTO `ref_scorings` (`id`, `name`, `is_deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Point', 'n', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(2, 'Goal Advantage', 'n', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(3, 'Produktivitas', 'n', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(4, 'Head to Head', 'n', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(5, 'Sportifitas', 'n', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(6, 'Panitia', 'n', '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL);
/*!40000 ALTER TABLE `ref_scorings` ENABLE KEYS */;

-- Dumping structure for table bolasoft.schedules
CREATE TABLE IF NOT EXISTS `schedules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `club_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `saved` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.schedules: ~0 rows (approximately)
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` (`id`, `date`, `club_id`, `class_id`, `user_id`, `saved`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, '2022-09-15 12:12:00', 1, 1, 5, 1, '2022-09-15 10:02:55', '2022-09-15 10:03:15', NULL);
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;

-- Dumping structure for table bolasoft.scorings
CREATE TABLE IF NOT EXISTS `scorings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `competition_id` int(11) NOT NULL,
  `ref_scoring_id` int(11) NOT NULL,
  `is_deleted` enum('y','n') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.scorings: ~9 rows (approximately)
/*!40000 ALTER TABLE `scorings` DISABLE KEYS */;
INSERT INTO `scorings` (`id`, `competition_id`, `ref_scoring_id`, `is_deleted`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 732257390, 1, 'n', '2022-09-13 09:42:52', '2022-09-13 09:42:52', NULL),
	(2, 732257390, 6, 'n', '2022-09-13 09:42:52', '2022-09-13 09:42:52', NULL),
	(3, 732257390, 4, 'n', '2022-09-15 04:06:11', '2022-09-15 04:06:11', NULL),
	(4, 619364427, 1, 'n', '2022-09-15 08:44:24', '2022-09-15 08:44:24', NULL),
	(5, 619364427, 6, 'n', '2022-09-15 08:44:24', '2022-09-15 08:44:24', NULL),
	(6, 536203988, 1, 'n', '2022-09-20 04:24:37', '2022-09-20 04:24:37', NULL),
	(7, 536203988, 6, 'n', '2022-09-20 04:24:37', '2022-09-20 04:24:37', NULL),
	(8, 489677458, 1, 'n', '2022-09-20 04:25:31', '2022-09-20 04:25:31', NULL),
	(9, 489677458, 6, 'n', '2022-09-20 04:25:31', '2022-09-20 04:25:31', NULL);
/*!40000 ALTER TABLE `scorings` ENABLE KEYS */;

-- Dumping structure for table bolasoft.students
CREATE TABLE IF NOT EXISTS `students` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `club_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `nik` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nis` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nick_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place_of_birth` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `weight` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_playing` enum('n','y') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `thumbnail_image` longblob,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nik` (`nik`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.students: ~200 rows (approximately)
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` (`id`, `club_id`, `class_id`, `nik`, `nis`, `name`, `nick_name`, `address`, `place_of_birth`, `date_of_birth`, `weight`, `height`, `parent_name`, `email`, `is_playing`, `thumbnail_image`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 22, 22, '0004997469', '1010', 'Garfield Daniel', 'Sibyl', '405 Dietrich Ports\nEast Florianville, AL 18190-5271', 'Luxembourg', '2011-03-06', '58', '162', 'Desiree Simonis I', 'dokuneva@gmail.com', 'n', NULL, '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(2, 8, 8, '0004781364', '1010', 'Murray White', 'Fidel', '252 Karl Mountain\nSchoenshire, OK 77041-5247', 'Thailand', '2012-05-02', '89', '160', 'Sonia Hills', 'jerald91@veum.biz', 'y', NULL, '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(3, 10, 10, '0004310982', '1010', 'Arden Pacocha', 'Idella', '6954 Cordie Cape Suite 888\nWest Ardith, MS 04098', 'Equatorial Guinea', '2012-08-14', '62', '182', 'Zetta Kihn', 'jalon57@sipes.biz', 'n', NULL, '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(4, 26, 26, '0003468459', '1010', 'Terrence Nikolaus', 'Kenny', '8392 Krajcik Ferry Apt. 281\nLake Dominique, UT 03831-4622', 'Kuwait', '2012-07-18', '40', '177', 'Fannie Effertz', 'dedric.hane@gmail.com', 'y', NULL, '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(5, 16, 16, '0005420284', '1010', 'Zoila Lindgren', 'Tremayne', '148 Cletus Manors\nPort Theronville, IN 72683', 'Tanzania', '2008-07-05', '74', '168', 'Alexys Leffler', 'mario89@gmail.com', 'n', NULL, '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(6, 28, 28, '0004750218', '1010', 'Paige Predovic', 'Prince', '486 Hill Meadow Suite 832\nRosannastad, WA 46293', 'Andorra', '2010-12-29', '85', '178', 'Esteban Schultz', 'micheal78@yahoo.com', 'n', NULL, '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(7, 17, 17, '0003131480', '1010', 'Mateo Treutel', 'Kenna', '22590 Reina Street Suite 392\nDelfinaton, HI 62781-9746', 'Belgium', '2011-11-29', '78', '184', 'Colt Hirthe', 'virgie.blanda@yahoo.com', 'n', NULL, '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(8, 24, 24, '0005269716', '1010', 'Lexus Pollich', 'Micah', '219 Blaise Ports\nSouth Dwightside, NH 89339-9402', 'British Indian Ocean Territory (Chagos Archipelago)', '2009-10-30', '72', '167', 'Jessyca Farrell', 'jess25@rodriguez.com', 'y', NULL, '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(9, 18, 18, '0005485740', '1010', 'Verna Reichert', 'Angelina', '28884 Emilia Plains Suite 018\nIrvingshire, ME 79275', 'Niue', '2009-02-08', '51', '161', 'Gia Torp V', 'stamm.estefania@gmail.com', 'y', NULL, '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(10, 7, 7, '0004686991', '1010', 'Dell Wisoky', 'Rosalyn', '4662 Lebsack Via Apt. 955\nMaximillialand, ID 71604', 'Niue', '2011-07-13', '100', '126', 'Alexandrea Greenfelder', 'aschmitt@okon.com', 'n', NULL, '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(11, 18, 18, '0004730831', '1010', 'Fernando Mosciski', 'Frederic', '461 Caterina Camp Apt. 317\nWest Alize, MO 91841-0042', 'Jersey', '2009-07-18', '61', '140', 'Kelsie Okuneva', 'grimes.alverta@cartwright.com', 'y', NULL, '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(12, 13, 13, '0003460382', '1010', 'Nathanael Labadie', 'Rachelle', '210 Weimann Locks\nJeanetteborough, VT 99589-7095', 'Niger', '2007-12-16', '91', '161', 'Nathaniel Labadie', 'cullen.waelchi@mcglynn.com', 'y', NULL, '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(13, 12, 12, '0003387488', '1010', 'Burnice Kshlerin', 'Braden', '5980 Lola Vista Suite 540\nEast Augustaside, ND 04732-0150', 'Portugal', '2007-12-28', '63', '187', 'Melissa Lehner', 'uparker@yahoo.com', 'n', NULL, '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(14, 29, 29, '0005815729', '1010', 'Kieran Reilly', 'Kaley', '8039 Nitzsche Brooks Apt. 543\nEast Camille, UT 97062-6714', 'Cambodia', '2008-12-29', '65', '183', 'Trent Kuphal', 'luettgen.jed@raynor.com', 'n', NULL, '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(15, 12, 12, '0004903023', '1010', 'Bill Wintheiser', 'Benjamin', '857 Lesch Street\nWest Llewellynburgh, IN 79405-1032', 'British Indian Ocean Territory (Chagos Archipelago)', '2012-01-04', '99', '170', 'Jaquan Wyman Sr.', 'fahey.burdette@toy.org', 'y', NULL, '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(16, 22, 22, '0005200715', '1010', 'Tad Von', 'Pat', '106 Lawson Mission Apt. 560\nBrakusside, MI 70155-3574', 'Norway', '2011-11-26', '100', '140', 'Arianna Powlowski', 'shyann14@hotmail.com', 'y', NULL, '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(17, 1, 1, '0004450276', '1010', 'Ahmad Moore', 'Haylee', '3086 Schiller Shores Apt. 032\nGreenland, WI 64414-7662', 'Turkey', '2009-12-26', '41', '161', 'Shanna Hagenes PhD', 'schaden.rozella@corkery.com', 'y', NULL, '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(18, 27, 27, '0005087226', '1010', 'Royce Pollich', 'Giovanna', '840 Zachariah Mountains Apt. 429\nPort Ileneport, OH 38946-2312', 'Greece', '2011-01-19', '69', '127', 'Cristobal Jerde Sr.', 'botsford.kellie@hotmail.com', 'y', NULL, '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(19, 23, 23, '0005065345', '1010', 'Rhoda Dibbert', 'Tyler', '558 Conrad Ford Apt. 928\nNorth Rosalee, OK 16533', 'Guinea', '2011-08-27', '48', '172', 'Gina Witting IV', 'aurelio87@murphy.com', 'y', NULL, '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(20, 13, 13, '0004176197', '1010', 'Nelda Batz', 'Loy', '480 Savion Meadow\nMuhammadfort, ID 27218', 'Lithuania', '2009-03-07', '71', '189', 'Dr. Isabelle Bosco', 'orpha.braun@murphy.biz', 'n', NULL, '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(21, 21, 21, '0003602740', '1010', 'Raegan Rutherford', 'Haylee', '385 Andy Turnpike\nOdiebury, CO 50198-1232', 'Sri Lanka', '2009-02-01', '50', '122', 'Dr. Hudson Gorczany', 'xturner@gmail.com', 'n', NULL, '2022-09-15 09:31:43', '2022-09-15 09:31:43', NULL),
	(22, 20, 20, '0003342995', '1010', 'Esteban McClure', 'Jayce', '9625 Jordane Landing Apt. 487\nGerardfort, KS 04669-9951', 'Benin', '2008-07-16', '59', '144', 'Berta Prohaska', 'scotty25@johnston.org', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(23, 6, 6, '0004307292', '1010', 'Rosemarie D\'Amore', 'Herminio', '135 Junior Grove Suite 756\nBoscomouth, CA 04257-7592', 'Sudan', '2012-04-13', '44', '198', 'Mr. Adonis Becker', 'mertz.kenna@becker.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(24, 19, 19, '0005853025', '1010', 'Roscoe Bins', 'Monte', '28919 Kuhn Circles Suite 384\nJoanstad, ME 35027', 'Mauritius', '2012-01-16', '54', '180', 'Grady Smitham DVM', 'darryl.kozey@conroy.biz', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(25, 3, 3, '0005302323', '1010', 'Coby Collins', 'Derrick', '18666 Jacobson River Suite 651\nSouth Ivah, CA 66151-6136', 'Greenland', '2009-09-28', '52', '152', 'Prof. Edward O\'Connell Jr.', 'brendan.funk@russel.org', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(26, 10, 10, '0005657582', '1010', 'Dennis King', 'Claire', '55249 Mayer Street Apt. 927\nSouth Carol, IN 16145-8202', 'Vanuatu', '2007-09-19', '73', '150', 'Dr. Jerome Kassulke PhD', 'albert83@ankunding.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(27, 27, 27, '0005167212', '1010', 'Arjun Kilback', 'Alice', '81068 Fritsch Club Apt. 827\nLake Quinton, VA 91284-2945', 'Equatorial Guinea', '2012-01-08', '40', '125', 'Nicholas Larkin', 'liliana93@yahoo.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(28, 1, 1, '0003971280', '1010', 'Alberta Cummerata', 'Sasha', '230 Lindgren Station\nHermannville, NE 72926-1333', 'Montserrat', '2009-12-03', '59', '140', 'Dr. Mckenna Kihn', 'rafaela17@gmail.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(29, 23, 23, '0005328327', '1010', 'Dean Quitzon', 'Leonor', '52324 Hermann Court Suite 659\nPort Daytonburgh, AL 61904-4798', 'Western Sahara', '2011-03-03', '73', '182', 'Jaeden Feest', 'bergstrom.johnnie@kemmer.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(30, 28, 28, '0004699849', '1010', 'Rodger Cormier', 'Shaun', '30926 Kuhic Summit Suite 350\nNew Rosellastad, NV 80663', 'Grenada', '2008-10-15', '68', '174', 'Wendell Hintz', 'paige97@monahan.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(31, 24, 24, '0005709426', '1010', 'Bette Bashirian', 'Avery', '52320 Kuvalis Creek\nPort Arnoldo, CT 69336-2564', 'South Africa', '2011-04-10', '59', '192', 'Leanna Johns Jr.', 'dhoeger@yahoo.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(32, 22, 22, '0004611342', '1010', 'Jefferey Zemlak', 'Gustave', '13216 Rosenbaum Extensions Apt. 457\nDavechester, OR 65058-6954', 'Djibouti', '2009-01-20', '53', '189', 'Dr. Drake Rau PhD', 'leannon.doris@yahoo.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(33, 1, 1, '0004976924', '1010', 'Elian Yundt', 'Gregoria', '393 Bogisich Stream\nKurtport, VT 99481', 'Chad', '2011-02-09', '47', '130', 'Prof. Terry Homenick Sr.', 'maryam.rempel@yahoo.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(34, 7, 7, '0003196008', '1010', 'Neha Crona', 'Pat', '946 Johns Knolls Suite 531\nNorth Antoinettestad, SC 72715-9805', 'Rwanda', '2008-12-09', '100', '131', 'Oral Paucek', 'vdicki@yahoo.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(35, 27, 27, '0005187244', '1010', 'Rhianna Lakin', 'Brenda', '7488 Hermann Stravenue Suite 417\nCormierborough, TN 70392', 'Brunei Darussalam', '2008-01-14', '47', '167', 'Mrs. Lucie Cole', 'dickens.delphine@hotmail.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(36, 15, 15, '0004550087', '1010', 'Shirley Smith', 'Ivory', '8053 Alysson Port\nMaiamouth, DC 85276', 'Croatia', '2011-01-16', '57', '128', 'Baby Labadie I', 'bradly45@strosin.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(37, 14, 14, '0005267228', '1010', 'Lenora Halvorson', 'Leopold', '36028 Stacy Shoals Apt. 659\nPort Daijaland, CA 03985', 'United States of America', '2011-04-08', '77', '171', 'River Nitzsche Jr.', 'faye.gaylord@yahoo.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(38, 2, 2, '0005703276', '1010', 'Alessia Schulist', 'Dorcas', '3093 Christine Gardens\nHammesbury, MT 54008-5446', 'Philippines', '2008-10-04', '75', '190', 'Maya Kulas', 'cassandra78@gmail.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(39, 26, 26, '0004886999', '1010', 'Lisa Moore', 'Kiel', '179 Kuphal Pike\nEast Garland, SC 47890-6753', 'Latvia', '2011-05-24', '75', '137', 'Winnifred Kautzer', 'quigley.ericka@hotmail.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(40, 19, 19, '0003645051', '1010', 'Valentina Hegmann', 'Ellie', '8398 Padberg Station Suite 736\nMolliemouth, WY 13419', 'United States Virgin Islands', '2010-08-28', '83', '191', 'Prof. Audreanne Krajcik', 'bahringer.zechariah@johnson.biz', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(41, 8, 8, '0005634007', '1010', 'Catherine Heidenreich', 'Reinhold', '7187 Homenick Drives\nNew Macey, RI 64260-8828', 'Gibraltar', '2011-12-30', '91', '183', 'Della Miller', 'hagenes.skylar@hotmail.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(42, 13, 13, '0004032836', '1010', 'Ova Kemmer', 'Vida', '60832 Lemke Bridge\nSouth Layla, AZ 54240-8995', 'Monaco', '2008-10-29', '53', '158', 'Dr. Leo Mayer', 'geovanni45@hotmail.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(43, 1, 1, '0004023170', '1010', 'Daisy Hills', 'Kian', '14784 Olson Pines\nFarrellstad, AK 69885-5596', 'Wallis and Futuna', '2010-06-23', '81', '167', 'Sallie Ratke', 'rframi@crona.org', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(44, 4, 4, '0003133460', '1010', 'Sarina Torp', 'Stacey', '7363 Fadel Wells Suite 388\nNyahton, TN 43256-1933', 'Macedonia', '2011-03-11', '60', '126', 'Prof. Nikita Stehr', 'beer.evan@yahoo.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(45, 13, 13, '0005777002', '1010', 'Kaleigh Leannon', 'Daryl', '6126 Magali Lane\nEast Jeremyborough, AZ 19957', 'Burundi', '2009-01-06', '67', '184', 'Dr. Robbie Batz II', 'qroob@gmail.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(46, 24, 24, '0004843572', '1010', 'Zane Prohaska', 'Raoul', '90933 Jaeden Ridges\nEast Lutherfort, FL 09506', 'Morocco', '2010-10-15', '78', '193', 'Kirsten Pouros MD', 'velva.swift@gmail.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(47, 9, 9, '0003902885', '1010', 'Blake Jakubowski', 'Eriberto', '757 Kreiger Meadows\nStrosinshire, WV 59957', 'Isle of Man', '2009-11-26', '55', '133', 'Jed Yundt', 'cordie53@yahoo.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(48, 22, 22, '0004390331', '1010', 'Laney Kuhn', 'Herman', '1398 Kaelyn Port\nSimonisside, NJ 71289', 'Luxembourg', '2012-06-07', '49', '182', 'Mr. Allan Bartoletti', 'lfriesen@ledner.info', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(49, 7, 7, '0004708575', '1010', 'Itzel Champlin', 'Conor', '247 Neal Avenue Suite 248\nNew Claudie, MA 51163-1566', 'Saint Barthelemy', '2009-09-28', '52', '160', 'Mertie Kilback', 'chyna84@beier.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(50, 13, 13, '0003255722', '1010', 'Libby Wilkinson', 'Orin', '9404 Santiago Islands\nNew Donatoview, IN 90646-8691', 'Bermuda', '2009-02-05', '63', '161', 'Prof. Lester Nienow Sr.', 'kuphal.scot@yahoo.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(51, 19, 19, '0005868693', '1010', 'Cornelius Schneider', 'Coleman', '695 Douglas Overpass\nWest Emilberg, TX 35263', 'Senegal', '2008-07-17', '72', '128', 'Haylie Dare', 'laverne.crooks@feeney.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(52, 22, 22, '0003339490', '1010', 'Elroy Wolf', 'Jaqueline', '57213 Elias Isle\nSouth Randiville, MT 65847-7798', 'Belize', '2008-03-04', '74', '148', 'Reyna Sauer', 'haley.blair@gmail.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(53, 25, 25, '0003609805', '1010', 'Kaycee Fay', 'Bret', '3658 Nienow Creek Suite 132\nNorth Donmouth, ME 95619', 'Botswana', '2007-12-31', '82', '151', 'Yvette Walsh', 'turner.armstrong@gibson.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(54, 27, 27, '0003400179', '1010', 'Celestine Larkin', 'Miles', '9699 Littel Courts Suite 624\nNorth Makenzieland, NH 13024', 'Saint Kitts and Nevis', '2011-04-21', '73', '148', 'Kitty Moen', 'jerome.bins@thompson.org', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(55, 26, 26, '0005757533', '1010', 'Brycen Howe', 'Jamaal', '8814 Elmira Meadows Suite 926\nFeeneyville, DE 78079-2668', 'Australia', '2010-08-21', '52', '189', 'Ramona Macejkovic Sr.', 'arvilla61@yahoo.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(56, 7, 7, '0004962584', '1010', 'Haylee Deckow', 'Keanu', '443 Letha Lights\nNew Sigridchester, HI 09406', 'Afghanistan', '2008-07-27', '94', '151', 'Madisyn Buckridge', 'mann.ernesto@bednar.org', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(57, 21, 21, '0005779573', '1010', 'Mose Wisoky', 'Chaim', '157 Kris Run\nLake Adell, TX 12380-6825', 'Peru', '2011-11-26', '66', '194', 'Margarette Parisian', 'gregorio53@wiza.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(58, 29, 29, '0004119593', '1010', 'Haskell Toy', 'Andreane', '76045 Cronin Streets\nLizafurt, NH 11041-2900', 'Zimbabwe', '2011-08-16', '51', '186', 'Loma Smitham', 'xpfannerstill@hotmail.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(59, 18, 18, '0004402443', '1010', 'Ciara Stamm', 'Ressie', '487 Roel Springs\nSouth Alexannestad, MI 58314', 'Madagascar', '2008-05-23', '95', '165', 'Prof. Frederic Monahan', 'mathias.murazik@vonrueden.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(60, 27, 27, '0005414365', '1010', 'Patience Wintheiser', 'Myah', '2620 Reyna Drives\nIsidroburgh, NJ 44239-5746', 'Bulgaria', '2007-12-23', '65', '176', 'Elton Gerhold', 'terry.eden@gmail.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(61, 11, 11, '0005362572', '1010', 'Miles Veum', 'Serenity', '899 Augustine Station Suite 978\nMaziemouth, CO 16663-2200', 'Gibraltar', '2010-10-17', '96', '127', 'Mr. Kole Miller MD', 'drake.hand@yahoo.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(62, 2, 2, '0003932919', '1010', 'Alexie Walsh', 'Ocie', '9253 Francesca Meadow\nNorth Arnaldoland, MI 70233-4006', 'Tokelau', '2009-07-09', '84', '144', 'Ms. Yessenia Runolfsson V', 'raven.christiansen@hotmail.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(63, 5, 5, '0004124929', '1010', 'Maxie Herzog', 'Louisa', '236 Leta Parks Suite 894\nO\'Konmouth, TN 76932', 'Botswana', '2011-10-23', '91', '170', 'Daija Kub', 'lilian58@kozey.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(64, 13, 13, '0005643761', '1010', 'Forrest Hilpert', 'Madilyn', '4620 Johanna Springs\nJamesonfort, OR 24384', 'Korea', '2011-12-21', '52', '138', 'Mrs. Holly Baumbach DDS', 'vwatsica@rutherford.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(65, 1, 1, '0004443106', '1010', 'Lenna Sporer', 'Roma', '27161 Casper Crescent Apt. 864\nSouth Ollie, WI 70574', 'Mauritania', '2011-04-22', '63', '123', 'Ms. Neha Smith DVM', 'kunde.tara@lueilwitz.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(66, 20, 20, '0003604987', '1010', 'Maryjane Murphy', 'Albina', '5251 Streich Inlet\nLake Carolinafurt, OH 21511-9366', 'Indonesia', '2010-10-23', '74', '170', 'Ebony King', 'fschroeder@gorczany.biz', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(67, 4, 4, '0003689151', '1010', 'Winston Paucek', 'Edwardo', '47274 Streich Tunnel\nEast Sage, MI 58823-1005', 'Guyana', '2012-07-01', '90', '127', 'Morgan Farrell', 'brady50@gmail.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(68, 3, 3, '0005739515', '1010', 'Ella Mitchell', 'Nina', '7588 Stanton Place\nSouth Jovani, PA 13160', 'Azerbaijan', '2011-03-30', '43', '140', 'Mrs. Annie Abernathy', 'emily61@douglas.net', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(69, 17, 17, '0004155453', '1010', 'Otilia Gibson', 'Lulu', '47820 Lockman Plaza Suite 657\nThompsonfurt, ID 26245-8500', 'Palestinian Territories', '2009-01-24', '85', '120', 'Miss Charlene Bergstrom Sr.', 'lynch.ryley@yahoo.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(70, 2, 2, '0005329255', '1010', 'Kaden Abernathy', 'Bianka', '159 Therese Crossing Apt. 436\nBernadinetown, MI 72072-5250', 'Australia', '2008-01-02', '44', '154', 'Eleanora Brekke IV', 'niko50@gmail.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(71, 29, 29, '0003642694', '1010', 'Sabina O\'Keefe', 'Dallin', '1436 Jana Shores\nPort Sid, DE 42361', 'Myanmar', '2008-12-07', '94', '128', 'Kellie Crist', 'beatty.elisha@stanton.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(72, 6, 6, '0003906288', '1010', 'Elmer Fritsch', 'Adah', '7553 Cassidy Union\nEunahaven, TN 46157', 'Isle of Man', '2007-12-18', '44', '147', 'Mrs. Prudence Willms', 'maegan15@hotmail.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(73, 25, 25, '0003374625', '1010', 'Don Kovacek', 'Jose', '607 Schiller Island Apt. 682\nFeilberg, RI 45530', 'Cameroon', '2009-09-23', '49', '130', 'Mrs. Janae O\'Kon', 'rosenbaum.claud@gmail.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(74, 10, 10, '0004101898', '1010', 'Judd Shields', 'Beth', '19405 Emmitt Spurs\nWest Cathrine, SD 48618-8246', 'Qatar', '2010-01-13', '49', '165', 'Roxane Haley I', 'barton.araceli@gmail.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(75, 15, 15, '0005512546', '1010', 'May Ebert', 'Jazmin', '7164 Burdette Extension\nWest Gerdaton, PA 64056-7652', 'Venezuela', '2009-12-02', '43', '185', 'Mr. Prince Gleichner DVM', 'white.maurice@moore.biz', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(76, 6, 6, '0005211571', '1010', 'Zoila Aufderhar', 'Oleta', '55463 Senger Stream\nMyrlchester, WA 68816', 'Nicaragua', '2008-09-12', '91', '156', 'Mallie Rosenbaum', 'boyle.casandra@bergnaum.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(77, 24, 24, '0004648288', '1010', 'Salvador Feeney', 'Riley', '2221 Chauncey Alley\nLake Ernesto, SC 10328-7747', 'Guinea', '2008-08-27', '88', '136', 'Mrs. Dorothy Huel IV', 'friesen.brant@yahoo.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(78, 20, 20, '0004979557', '1010', 'Jennings Stiedemann', 'Amelie', '91554 Eldora Flat\nAmericaberg, DC 13018-2457', 'Marshall Islands', '2008-10-04', '46', '128', 'Oran Muller', 'vanessa75@schaden.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(79, 23, 23, '0004040940', '1010', 'Camylle Champlin', 'Reginald', '2692 Skiles Forks\nCorineland, MS 67868', 'Dominican Republic', '2011-08-07', '70', '165', 'Shyann Treutel', 'bosco.felicia@gmail.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(80, 5, 5, '0004431678', '1010', 'Maurine Runolfsson', 'Mabel', '7300 Adolf Common\nWest Staceyland, OH 58552', 'Saudi Arabia', '2010-07-31', '72', '186', 'Prof. Delmer Haag II', 'buckridge.chasity@yahoo.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(81, 12, 12, '0003205876', '1010', 'Daphne Schiller', 'Ella', '904 Mraz Key\nRomagueraview, OR 82136', 'Suriname', '2011-08-12', '94', '135', 'Bill Parker', 'felicity45@frami.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(82, 3, 3, '0003501086', '1010', 'Leonardo Witting', 'Anjali', '90353 Hermann Union Suite 740\nPredovicstad, HI 57231-2915', 'Cameroon', '2011-06-01', '67', '191', 'Elinor Schmidt I', 'fanny.huels@yahoo.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(83, 28, 28, '0004311542', '1010', 'Chelsey Rolfson', 'Isac', '6285 Tito Circle Suite 444\nNew Mariannemouth, NE 90982', 'Burundi', '2008-01-21', '76', '182', 'Ms. Edythe Olson DDS', 'bnikolaus@gmail.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(84, 1, 1, '0005708557', '1010', 'Juvenal Dickinson', 'Laury', '79083 Schoen Orchard\nNew Richard, NM 38482-2201', 'Saint Lucia', '2007-12-23', '69', '185', 'Joany Terry', 'laury.kautzer@reinger.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(85, 7, 7, '0004119087', '1010', 'Skylar Brakus', 'Laverna', '528 Wolff Mountains Suite 205\nStromanville, SC 32938-5763', 'Nepal', '2008-01-24', '55', '166', 'Noemy Mann', 'cummings.niko@jerde.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(86, 13, 13, '0003633259', '1010', 'Horacio Stark', 'Tess', '1410 Muller Estate\nStefanieburgh, NE 69972', 'Grenada', '2011-11-04', '81', '188', 'Elias Murphy', 'smitchell@bergstrom.info', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(87, 20, 20, '0004077204', '1010', 'Lester Satterfield', 'Tracy', '422 Kristin Bypass\nConnton, IL 34207', 'Ireland', '2011-12-08', '47', '190', 'Jesse Lang', 'jedidiah.kunze@yahoo.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(88, 27, 27, '0005209270', '1010', 'Bert Nolan', 'Solon', '14054 Osinski Freeway Apt. 775\nLake Corbin, NH 97051', 'Guadeloupe', '2008-10-02', '79', '185', 'Tyson Roob', 'jones.shaylee@baumbach.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(89, 17, 17, '0003968281', '1010', 'Rubye Hammes', 'Annette', '995 Herzog Mountains Apt. 968\nLake Johanna, PA 15160', 'Solomon Islands', '2008-05-11', '58', '153', 'Antonetta Wiza', 'schimmel.arlo@koch.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(90, 6, 6, '0003323949', '1010', 'Golden Jones', 'Angelica', '85539 Ericka Coves Apt. 498\nJohnsshire, AK 78092', 'Dominican Republic', '2012-02-24', '53', '190', 'Marguerite Gutkowski', 'mpollich@yahoo.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(91, 15, 15, '0005519662', '1010', 'Lucinda Schuster', 'Ollie', '18954 Greenholt Unions\nWolftown, VA 06827', 'Bermuda', '2010-09-08', '81', '199', 'Jesus Casper DDS', 'smann@yahoo.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(92, 28, 28, '0003412060', '1010', 'Elwyn Marvin', 'Ressie', '8581 Marjorie Pine\nNorth Martyfort, ID 46209', 'Guatemala', '2011-03-15', '68', '184', 'Dr. Mariane Mosciski I', 'oschumm@hotmail.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(93, 11, 11, '0005677341', '1010', 'Alvina O\'Keefe', 'Vernie', '1541 Leonardo Parkways\nBartolettiside, WY 46035-4919', 'Israel', '2009-06-01', '95', '162', 'Arturo Welch', 'chaim73@gmail.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(94, 17, 17, '0003334560', '1010', 'Chanel Langworth', 'Buddy', '9816 Brown Field Suite 653\nMcKenzieborough, NJ 12756', 'Sierra Leone', '2011-09-04', '55', '157', 'Mrs. Ruthie Gulgowski DDS', 'beer.otha@trantow.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(95, 29, 29, '0003614869', '1010', 'Quinn Wolf', 'Kendra', '23170 Doyle Heights Suite 205\nWest Lionel, LA 90085-0782', 'British Indian Ocean Territory (Chagos Archipelago)', '2010-06-29', '83', '142', 'Dr. Doris Schmidt I', 'arely10@reichert.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(96, 15, 15, '0003771270', '1010', 'Rafaela Gutkowski', 'Arnaldo', '6527 Trycia Drive\nNorth Alvina, AL 67295', 'Hungary', '2010-09-28', '90', '177', 'Ms. Nova Ward V', 'anita46@jacobs.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(97, 11, 11, '0004647188', '1010', 'Adam Leffler', 'Gianni', '2820 Schoen Trail Apt. 360\nPort Davonte, MO 27486-4329', 'Saint Martin', '2009-06-26', '41', '150', 'Dulce O\'Hara III', 'cummings.gavin@hotmail.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(98, 1, 1, '0003947628', '1010', 'Lelah McLaughlin', 'Neha', '9834 Maiya Ports\nGreenfelderfort, IN 25056-5903', 'Georgia', '2009-08-01', '56', '150', 'Dr. Meredith Harris', 'daniella.hayes@yahoo.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(99, 15, 15, '0003142290', '1010', 'Germaine McKenzie', 'Paris', '80853 Witting Crossroad Apt. 726\nJanietown, IL 09693', 'Cote d\'Ivoire', '2010-01-24', '66', '164', 'Alvah Veum', 'kassandra.orn@gulgowski.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(100, 9, 9, '0003603993', '1010', 'Marilou Farrell', 'Gunnar', '36188 Vivienne Hill\nPadbergmouth, NH 88780', 'Puerto Rico', '2008-05-13', '62', '196', 'Iliana O\'Conner DVM', 'kirstin19@yahoo.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(101, 14, 14, '0003867139', '1010', 'Piper Smitham', 'Colleen', '1473 Langworth Islands\nRandalberg, NC 17005', 'Saint Pierre and Miquelon', '2011-07-16', '81', '126', 'Lydia Gutkowski II', 'morar.ila@monahan.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(102, 11, 11, '0003462127', '1010', 'Kasandra Rodriguez', 'Reina', '965 Watson Mews Suite 750\nPort Maria, NV 45556', 'Saudi Arabia', '2009-04-11', '76', '186', 'Arlo Gleason I', 'carmelo.willms@mccullough.net', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(103, 20, 20, '0004697985', '1010', 'Lamar Schaden', 'Reed', '623 Hayes Rest Suite 563\nEast Chayahaven, VT 49047', 'Isle of Man', '2012-06-25', '72', '164', 'Greyson Hand', 'kautzer.dario@bradtke.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(104, 1, 1, '0005211312', '1010', 'Hattie Farrell', 'George', '6499 Beulah Mills\nLake Michel, NC 08693', 'Bahamas', '2012-03-26', '42', '165', 'Jazmyn Price', 'devante71@gmail.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(105, 3, 3, '0004017157', '1010', 'Josiane Von', 'Naomi', '75974 Stanton Lights\nNew Velda, OK 63521-7186', 'Paraguay', '2009-10-22', '87', '157', 'Marcia Brown', 'kozey.dorothy@yahoo.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(106, 6, 6, '0003785144', '1010', 'Virgie Schumm', 'Vivian', '68641 Pablo Stream Suite 211\nChaimstad, DE 85890-9203', 'Spain', '2010-12-12', '57', '164', 'Maxwell Bauch', 'columbus.reilly@yahoo.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(107, 17, 17, '0005624858', '1010', 'Leonard Terry', 'Betsy', '8705 Rebeca Ranch Suite 012\nNorth Gardnermouth, SC 24799', 'Samoa', '2009-09-07', '94', '145', 'Jonas Bartoletti', 'maynard.towne@gmail.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(108, 23, 23, '0004745224', '1010', 'Caden Pagac', 'Oscar', '1904 Carole Creek\nEast Lauryville, OK 81299-4538', 'Canada', '2008-01-31', '75', '166', 'Mr. Nils Turner', 'zmedhurst@yahoo.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(109, 16, 16, '0004521335', '1010', 'Werner Lang', 'Aurelie', '3798 Feeney Mountain Suite 026\nEphraimshire, ND 49016-7261', 'Guernsey', '2010-10-23', '96', '127', 'Kade Emard', 'khand@hotmail.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(110, 6, 6, '0004592170', '1010', 'Abigayle Denesik', 'Eloise', '68132 Conroy Divide Apt. 071\nCassidybury, NH 12999', 'Tonga', '2011-11-03', '87', '172', 'Mrs. Mireille Mante I', 'hvolkman@yahoo.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(111, 22, 22, '0003894390', '1010', 'Ines Herman', 'Johnson', '633 Jenkins Turnpike Apt. 027\nEmmittberg, AK 84764', 'Sao Tome and Principe', '2010-05-22', '80', '199', 'Kira Leuschke', 'liam96@ziemann.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(112, 4, 4, '0004646632', '1010', 'Lavina Barton', 'Myrl', '688 Schoen Estate\nNew Warren, MA 93263', 'Switzerland', '2008-07-10', '94', '149', 'Cindy Johnston', 'botsford.sydney@herman.net', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(113, 12, 12, '0004737988', '1010', 'Arden Murphy', 'Eleanora', '485 Carolyne Trail Suite 278\nWest Dallas, TX 79966-4089', 'Lesotho', '2010-04-21', '47', '172', 'Dr. Arnulfo Goyette', 'kennith21@walker.org', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(114, 26, 26, '0004083171', '1010', 'Donavon Marvin', 'Carolina', '686 Matilda Stravenue Apt. 371\nRachaelstad, GA 65834-5808', 'Luxembourg', '2009-11-22', '100', '120', 'Jarvis Runte', 'hickle.sammy@yahoo.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(115, 25, 25, '0005342714', '1010', 'Karley Heathcote', 'Eloisa', '91807 Towne Squares Apt. 244\nEast Jacquelyn, LA 24373-4713', 'Botswana', '2009-08-04', '51', '182', 'Juwan Kub', 'tia.muller@baumbach.net', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(116, 24, 24, '0003618754', '1010', 'Marlen Stokes', 'Mervin', '313 Stamm Causeway\nTheresiamouth, KS 26371-0817', 'Moldova', '2009-04-15', '93', '189', 'Prof. Lorenzo Beahan', 'etha.ledner@hotmail.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(117, 4, 4, '0003746989', '1010', 'Madison Wilderman', 'Kaylin', '79441 Nathan Springs Apt. 254\nEast Chet, FL 91159', 'Wallis and Futuna', '2011-09-16', '76', '170', 'Dr. Nelson Johns', 'mdurgan@schumm.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(118, 24, 24, '0004263619', '1010', 'Carley Kshlerin', 'Mckayla', '3666 Tatyana Rapids\nMireillechester, WY 10101-4405', 'Korea', '2012-06-09', '68', '178', 'Dr. Ignatius Lockman', 'mturcotte@yahoo.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(119, 8, 8, '0005692708', '1010', 'Arnaldo Heidenreich', 'Branson', '610 Sipes Meadows\nPort Nettie, ID 42118-1813', 'Congo', '2009-01-26', '50', '174', 'Okey Kautzer', 'darien00@vandervort.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(120, 2, 2, '0004006132', '1010', 'Bridgette Lehner', 'Billy', '9222 Emilie Junction\nEast Denachester, MO 19344-0622', 'Uzbekistan', '2009-01-02', '43', '175', 'Mauricio Buckridge', 'ulises40@schuppe.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(121, 4, 4, '0004706241', '1010', 'Laila Jast', 'Joanie', '640 Anne Brooks\nWest Aidan, MA 15289', 'Christmas Island', '2010-12-03', '78', '126', 'Dr. Abigail Conroy DDS', 'cullen.buckridge@adams.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(122, 23, 23, '0003257939', '1010', 'Janet Heathcote', 'Colby', '52559 Dion Greens Suite 298\nWest Lilaport, FL 20113', 'Saint Vincent and the Grenadines', '2012-05-02', '77', '151', 'Darrick Kirlin DDS', 'leuschke.reymundo@hotmail.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(123, 25, 25, '0003611352', '1010', 'Samir Gutmann', 'Eula', '396 Andre Unions\nArnemouth, RI 37316', 'Senegal', '2011-01-17', '64', '147', 'Jerry Mosciski', 'terrance16@larson.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(124, 21, 21, '0004596777', '1010', 'Madilyn Doyle', 'Adolphus', '1674 Windler Mountain Suite 159\nPort Russellhaven, MO 02413-3611', 'Belize', '2010-12-04', '58', '121', 'Dr. Bert Homenick', 'mertz.jeff@gmail.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(125, 17, 17, '0003737426', '1010', 'Athena Simonis', 'Marcelo', '60352 Bernier Crossroad\nRohantown, FL 07731', 'Holy See (Vatican City State)', '2008-11-11', '89', '123', 'Lane Jast', 'noconner@olson.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(126, 18, 18, '0004187861', '1010', 'Wyman Feest', 'Shana', '673 Dickinson Ford\nWest Lydiaton, AZ 12282-8887', 'Netherlands Antilles', '2007-12-10', '64', '168', 'Caesar Terry', 'akeem60@ullrich.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(127, 19, 19, '0004546528', '1010', 'Jayce Pfannerstill', 'Myra', '425 Dario Canyon\nNorth Moses, VT 87375-5308', 'Kiribati', '2009-11-10', '99', '161', 'Mr. Kenny Emard V', 'veum.vince@hotmail.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(128, 22, 22, '0005652911', '1010', 'Paxton Dicki', 'Paige', '10308 Beryl Lodge Suite 374\nShaniatown, AZ 03238', 'Korea', '2010-06-15', '96', '143', 'Mr. Peter Zboncak V', 'ularson@yahoo.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(129, 20, 20, '0004557051', '1010', 'Charlene Reichert', 'Tyler', '198 Kautzer Neck Suite 179\nEast Augustmouth, OR 51506-4193', 'Turks and Caicos Islands', '2011-06-01', '48', '177', 'Dr. Randall Kautzer', 'kohler.antwan@yahoo.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(130, 5, 5, '0004286693', '1010', 'Griffin Tromp', 'Miles', '88684 Raynor Expressway Apt. 940\nPort Harmon, PA 06026', 'Puerto Rico', '2009-07-03', '61', '178', 'Korey Pfeffer IV', 'vmueller@harris.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(131, 2, 2, '0005766386', '1010', 'Dustin Lang', 'Ona', '75287 Hill Mews\nNew Alvertabury, SD 71886', 'Syrian Arab Republic', '2010-11-02', '87', '151', 'Eleonore Frami', 'bogan.malachi@hotmail.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(132, 7, 7, '0004606651', '1010', 'Sigurd Crist', 'Margie', '14454 Hessel Mission\nEast Ashlynnchester, KS 11486', 'Sierra Leone', '2011-12-14', '94', '143', 'Ocie Ziemann', 'jpredovic@steuber.info', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(133, 10, 10, '0004409439', '1010', 'Citlalli Hessel', 'Verdie', '21386 Reichel Stravenue Suite 082\nLake Austentown, LA 95992', 'Kyrgyz Republic', '2010-12-06', '51', '182', 'Mr. Federico Bailey', 'cleta70@hotmail.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(134, 6, 6, '0003256796', '1010', 'Zita Bechtelar', 'Nyasia', '3094 Thompson Springs Suite 744\nAlyssonhaven, WA 72665-2487', 'Myanmar', '2012-03-11', '59', '177', 'Anastasia McKenzie', 'bdaniel@gmail.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(135, 1, 1, '0004411072', '1010', 'Thomas Feeney', 'Kay', '33075 Wehner Bridge\nEast Pedro, MO 75467-1980', 'Oman', '2011-06-19', '69', '171', 'Kenny Jacobi', 'larry.dooley@kuhn.net', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(136, 14, 14, '0003602309', '1010', 'Louvenia Dickinson', 'Dylan', '89975 Johnston Ridges Apt. 337\nAliyahfort, GA 18788', 'Poland', '2007-09-26', '86', '142', 'Pascale Mohr III', 'sbode@gmail.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(137, 1, 1, '0003448391', '1010', 'Lambert Dach', 'Jammie', '1353 Waino Mill\nEast Wendell, PA 56865-6418', 'Saint Helena', '2009-11-04', '67', '160', 'Dr. Kamron Quigley PhD', 'ned.conroy@koepp.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(138, 22, 22, '0003637505', '1010', 'Elvis Roob', 'Jennyfer', '968 Nolan Mills Suite 466\nEast Kylafort, OK 70748', 'Belgium', '2010-12-21', '72', '194', 'Kory Ortiz', 'cabbott@hand.org', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(139, 2, 2, '0003565418', '1010', 'Leslie Hirthe', 'Jarred', '75051 Dayne Club Suite 511\nCatalinamouth, SD 06015-1004', 'Ecuador', '2010-03-01', '44', '170', 'Kitty Adams DVM', 'jessy70@emard.info', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(140, 14, 14, '0005752806', '1010', 'Irwin Conroy', 'Albertha', '733 Wehner Spring Suite 357\nIsabellhaven, LA 63973', 'Guam', '2011-06-18', '72', '178', 'Deron McGlynn', 'ava79@hotmail.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(141, 21, 21, '0003380393', '1010', 'Wyman Harber', 'Maryse', '89530 Ward Lodge\nLake Moses, VA 83228', 'Bolivia', '2011-08-29', '79', '189', 'Trey Wolf', 'domingo23@mayer.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(142, 11, 11, '0003765755', '1010', 'Carter Purdy', 'Leon', '645 Germaine Knolls Suite 075\nCollinston, WV 01469-1957', 'American Samoa', '2008-04-02', '54', '121', 'Mr. Antonio Mayert MD', 'conor.king@larkin.biz', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(143, 1, 1, '0004795416', '1010', 'Shanel Runolfsdottir', 'Monserrate', '4461 Mylene Port Apt. 050\nNew Marlin, ME 33964-4086', 'Bosnia and Herzegovina', '2010-10-20', '88', '162', 'Mr. Robbie Ondricka', 'mia75@gmail.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(144, 3, 3, '0005029302', '1010', 'Daphnee Goyette', 'Zoila', '6792 Torp Landing Suite 313\nErniemouth, DC 35151', 'South Africa', '2009-08-28', '66', '184', 'Arnoldo Halvorson', 'colleen.dibbert@hotmail.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(145, 3, 3, '0003701816', '1010', 'Gudrun Farrell', 'Dejon', '16903 Cartwright Pine\nAmosfurt, NJ 96270', 'Tanzania', '2012-01-11', '92', '120', 'Collin Daugherty', 'zkozey@lang.net', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(146, 1, 1, '0004226093', '1010', 'Ernie Langworth', 'Dejah', '6832 Haag Brook Apt. 341\nGradyside, MD 24401', 'Micronesia', '2010-12-01', '96', '122', 'Armand Kirlin', 'izaiah74@skiles.info', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(147, 19, 19, '0005699420', '1010', 'Dorian Luettgen', 'Fleta', '767 Lueilwitz Lights Apt. 896\nLake Rainaberg, NJ 59582-1334', 'Senegal', '2010-11-13', '81', '154', 'Camilla Bogisich', 'kendra.botsford@gmail.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(148, 29, 29, '0003448444', '1010', 'Marlene Hill', 'Vilma', '76812 Murphy Loaf Apt. 891\nKoeppberg, DC 94436-3493', 'Montserrat', '2010-12-28', '99', '136', 'Hermann Schmidt', 'chaag@gmail.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(149, 8, 8, '0003201440', '1010', 'Royal Bechtelar', 'Gage', '15939 Okuneva Ranch Apt. 995\nWest Letha, KY 58967-0764', 'Ethiopia', '2009-02-24', '80', '158', 'Columbus Koelpin', 'lawrence44@bechtelar.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(150, 11, 11, '0003716221', '1010', 'Dorian Nienow', 'Otis', '186 Jaskolski Meadow Suite 758\nSouth Kristian, PA 03741', 'Bouvet Island (Bouvetoya)', '2011-01-27', '66', '194', 'Mr. Lance Mosciski', 'vreichel@gmail.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(151, 3, 3, '0005299259', '1010', 'Jensen Hoeger', 'Marlee', '1360 Laisha Cape Suite 839\nLemkeport, ID 95829-3021', 'Micronesia', '2010-08-05', '95', '198', 'Keanu Carroll', 'sim54@yahoo.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(152, 18, 18, '0005138606', '1010', 'Cloyd Mueller', 'Halle', '493 Eryn Hills\nNew Maceyville, NH 63138', 'Iran', '2012-06-25', '100', '199', 'Lucy Moen II', 'mallie.reichel@waelchi.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(153, 11, 11, '0003581153', '1010', 'Colton McDermott', 'Luna', '2011 Sawayn Dale\nAnseltown, MS 76020', 'Cambodia', '2008-06-12', '87', '160', 'Dr. Chanelle Volkman II', 'eroob@prohaska.biz', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(154, 6, 6, '0004685582', '1010', 'Myrtie Gislason', 'Leanna', '353 Lavada Squares Apt. 173\nNew Kristin, WV 93277', 'Spain', '2009-03-25', '59', '200', 'Felipe Blick', 'hailey.mertz@moore.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(155, 23, 23, '0005311596', '1010', 'Rubie Konopelski', 'Cheyenne', '2766 Guadalupe Knoll\nSouth Destinichester, WA 59874-8699', 'Palau', '2008-07-22', '76', '181', 'Mr. Leonard Carroll', 'lela14@gmail.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(156, 5, 5, '0003636801', '1010', 'Rory Dach', 'Liam', '1786 Alvera Vista\nPort Lourdes, PA 65173', 'Slovenia', '2008-10-30', '66', '193', 'Elva Lang I', 'okeefe.danyka@gislason.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(157, 2, 2, '0004779426', '1010', 'Cheyenne Berge', 'Fausto', '561 Harris Road Apt. 152\nSouth Clovisland, MN 66814-0420', 'Monaco', '2009-08-09', '95', '189', 'Bernard Carroll III', 'jjacobson@yahoo.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(158, 11, 11, '0003626252', '1010', 'Arden Murray', 'Raleigh', '22539 Maurine Roads\nKutchborough, NM 53291', 'Macao', '2009-02-14', '70', '138', 'Mr. Orin Johns', 'zdubuque@gmail.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(159, 13, 13, '0005724931', '1010', 'Romaine Mayer', 'Jerrell', '92834 Camille Inlet Suite 015\nNew Generaltown, MD 21582', 'Seychelles', '2010-07-03', '87', '123', 'Mr. Graham Rutherford III', 'goyette.wilford@gmail.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(160, 13, 13, '0003122614', '1010', 'Jaunita Hill', 'Michele', '49022 Windler Throughway Suite 456\nLeannaborough, DC 35873-1658', 'Colombia', '2008-09-05', '87', '136', 'Earnestine Osinski', 'corkery.courtney@farrell.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(161, 9, 9, '0004741554', '1010', 'Darlene Hintz', 'Alphonso', '399 Schuppe Centers Apt. 950\nRyanside, MI 59926', 'Saint Lucia', '2010-04-29', '92', '154', 'Kyla Champlin DVM', 'alaina25@hotmail.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(162, 20, 20, '0004252342', '1010', 'Monserrate Morar', 'Melvin', '743 Afton Walks Suite 111\nMiracleshire, MD 76215', 'Italy', '2009-08-31', '92', '124', 'Britney Cronin', 'goyette.lorenz@hotmail.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(163, 22, 22, '0003322232', '1010', 'Lina Rutherford', 'Alexa', '3396 Boyle Tunnel Suite 901\nEast Leopoldo, DE 44825', 'Bangladesh', '2008-12-30', '58', '153', 'Dr. Nicolas Lakin', 'mafalda40@kozey.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(164, 6, 6, '0004137695', '1010', 'Mose Fay', 'Ambrose', '159 Pouros Run\nFeeneystad, NH 89293', 'Bermuda', '2012-08-06', '65', '192', 'Verona Koepp', 'zhaley@kreiger.org', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(165, 5, 5, '0005245820', '1010', 'David Barrows', 'Chandler', '51977 Fahey Alley\nEast Petra, AR 59679-4975', 'Portugal', '2008-10-28', '61', '169', 'Coleman Weber IV', 'jlockman@franecki.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(166, 8, 8, '0004048650', '1010', 'Miller Jacobson', 'Elian', '8192 Gia Crossroad Apt. 644\nNorth Furmanborough, AL 76441', 'Comoros', '2011-09-09', '62', '198', 'Santina Swaniawski', 'fstokes@yahoo.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(167, 19, 19, '0005370407', '1010', 'Orrin Jerde', 'Dion', '10103 King Parkways Suite 234\nWillamouth, KS 72687-7632', 'Lao People\'s Democratic Republic', '2008-05-23', '40', '128', 'Mr. Frankie Jast DDS', 'nolan.rita@ernser.org', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(168, 24, 24, '0005626445', '1010', 'Berry Graham', 'Marcelo', '2023 Beier Run\nPort Fanniebury, AK 23440-5956', 'Barbados', '2011-02-18', '54', '122', 'Barry Pollich', 'ignatius83@purdy.org', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(169, 17, 17, '0004930570', '1010', 'Juliana Tillman', 'Courtney', '27824 Kassulke Streets Apt. 200\nFrankiefurt, HI 25194', 'Maldives', '2011-05-20', '80', '176', 'Prof. Keyshawn Rau', 'djakubowski@marks.biz', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(170, 7, 7, '0004114749', '1010', 'Elliott Kub', 'Marques', '7979 Anahi Village Apt. 881\nSouth Autumnland, CO 46725-6480', 'India', '2011-02-28', '69', '154', 'Mr. Simeon Braun', 'tremaine36@yahoo.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(171, 5, 5, '0003897312', '1010', 'Idell Eichmann', 'Daphney', '395 Gutkowski Club Apt. 490\nHeidenreichbury, CO 98454-9888', 'Guinea-Bissau', '2012-04-25', '41', '169', 'Ola Farrell', 'cathrine66@bruen.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(172, 14, 14, '0004974787', '1010', 'Violet Gaylord', 'Mia', '739 Batz Ports\nLake Liatown, MI 87462-9638', 'Jamaica', '2011-11-02', '51', '133', 'Mrs. Makenzie Anderson', 'dickinson.liana@yahoo.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(173, 26, 26, '0003233769', '1010', 'Edna Ferry', 'Devonte', '838 Dietrich Vista Suite 057\nLake Jairofurt, PA 62954-2159', 'Bolivia', '2012-07-09', '54', '137', 'Jules Durgan PhD', 'vhowe@gmail.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(174, 26, 26, '0005662613', '1010', 'Miracle Hoppe', 'Elwin', '42299 Stroman Field Suite 765\nCronintown, KS 23328-2891', 'Papua New Guinea', '2011-07-09', '61', '199', 'Mrs. Antonina Marquardt', 'juvenal09@marks.biz', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(175, 1, 1, '0003756139', '1010', 'Edwin Lebsack', 'Marcelo', '38487 Rosenbaum Orchard Suite 255\nWest Davontestad, AR 71014-5765', 'Barbados', '2009-04-23', '77', '180', 'Carlie Gorczany', 'simonis.vicky@deckow.net', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(176, 2, 2, '0005674398', '1010', 'Nash Beatty', 'Bruce', '6329 Hayes Dale Suite 581\nWest Pamelabury, PA 65148', 'French Guiana', '2009-11-18', '53', '169', 'Alanis Tremblay', 'schmitt.ali@hermiston.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(177, 27, 27, '0004056538', '1010', 'Nayeli Turner', 'Jewell', '178 Nienow Flats Apt. 932\nPort Damionhaven, KY 07172', 'Trinidad and Tobago', '2007-11-04', '68', '132', 'Marquise Douglas', 'kilback.raleigh@gmail.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(178, 20, 20, '0003272841', '1010', 'Dejah Hudson', 'Monty', '8725 Tatyana Roads Apt. 130\nTyriquestad, KS 74713', 'Mali', '2011-05-14', '71', '183', 'Ms. Kelly Larkin MD', 'cayla.gleichner@gmail.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(179, 8, 8, '0004139222', '1010', 'Russel Veum', 'Avery', '2391 Lane Cliff Apt. 135\nEast Jordon, DC 39989-3033', 'Bouvet Island (Bouvetoya)', '2009-06-27', '50', '182', 'Chyna Graham II', 'schneider.layne@hotmail.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(180, 5, 5, '0005775060', '1010', 'Richard Corkery', 'Ernestina', '707 Stoltenberg Island Apt. 915\nNorth Annabell, AK 99447', 'Belize', '2011-04-25', '65', '131', 'David Bednar DDS', 'jane10@gmail.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(181, 17, 17, '0003697634', '1010', 'Mateo Wilderman', 'Lyla', '29283 Greenholt Points Apt. 610\nMauricioview, WY 20293-4804', 'Switzerland', '2012-08-25', '81', '130', 'Ezekiel Ruecker DVM', 'ondricka.lexi@yahoo.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(182, 2, 2, '0003753502', '1010', 'Brock Mann', 'Laurence', '11871 Wiegand Coves\nWymantown, NM 60694-5770', 'United States Minor Outlying Islands', '2008-06-04', '53', '184', 'Davon Kirlin', 'wolf.sarina@hotmail.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(183, 17, 17, '0005058519', '1010', 'Rosalia Nicolas', 'Valentina', '13389 Morissette Circle Suite 564\nMalloryton, SC 60234', 'Ghana', '2010-02-12', '90', '149', 'Jimmy Borer', 'murazik.breanne@hotmail.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(184, 27, 27, '0003712370', '1010', 'Pauline Gulgowski', 'Sid', '3599 Chanel Haven\nLake Rickey, CA 17783-8751', 'United States Minor Outlying Islands', '2009-04-08', '91', '172', 'Keith Schneider', 'alysa06@yahoo.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(185, 20, 20, '0003604757', '1010', 'Frederik Zulauf', 'Lonzo', '34420 Kiehn Vista Apt. 686\nWest Eloisatown, SC 06457', 'United States Minor Outlying Islands', '2010-12-07', '84', '153', 'Pansy Cruickshank', 'sunny00@kerluke.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(186, 28, 28, '0004397817', '1010', 'Tyshawn Stark', 'Margarete', '6546 Sammie Extensions\nPort Nanniemouth, WV 94323-3820', 'Guyana', '2009-05-19', '76', '127', 'Cristopher Conn', 'erich.bauch@schneider.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(187, 3, 3, '0004750908', '1010', 'Candice Larson', 'Raegan', '80802 Keeley Mall Apt. 913\nHarveychester, TN 52437', 'Ukraine', '2012-01-06', '85', '138', 'Ollie Hill Jr.', 'uconsidine@gmail.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(188, 12, 12, '0004054371', '1010', 'Reagan Kilback', 'Laurianne', '711 Brown Light\nGreenholtburgh, WI 56669', 'Honduras', '2012-01-04', '74', '136', 'Justine Stiedemann', 'elyssa.macejkovic@gmail.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(189, 13, 13, '0003978309', '1010', 'Kian McLaughlin', 'Maryjane', '7604 Price Burg Apt. 825\nEast Jordystad, WA 78321-1769', 'Lao People\'s Democratic Republic', '2010-11-20', '52', '157', 'Ken Hauck Jr.', 'vbartell@hotmail.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(190, 20, 20, '0003247566', '1010', 'Lyda Nader', 'Diana', '64305 Jacklyn Glens Apt. 465\nWest Heber, NH 26965', 'Croatia', '2009-11-23', '71', '193', 'Murl Heaney Jr.', 'morgan.hessel@oberbrunner.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(191, 3, 3, '0003261783', '1010', 'Idell Rempel', 'Amari', '38881 Nora Ramp\nPort Neoma, ME 36694-4503', 'China', '2008-08-07', '86', '149', 'Nya Rice', 'wiza.annette@hotmail.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(192, 3, 3, '0005422574', '1010', 'Delphia Murazik', 'Antonetta', '20775 Spencer Skyway Suite 869\nNorth Lola, MD 91684', 'French Guiana', '2009-11-30', '67', '172', 'Prof. Rose Spencer', 'austyn.franecki@gmail.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(193, 10, 10, '0003620584', '1010', 'Micheal Halvorson', 'Nicholas', '573 Schoen Forest\nKovacekchester, AR 03412-5391', 'Grenada', '2008-03-13', '63', '121', 'Berry Reinger I', 'ransom18@gmail.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(194, 19, 19, '0005664780', '1010', 'Theodora Deckow', 'Eleonore', '7577 Kristopher Place\nPort Brodyburgh, NM 33674-9673', 'Puerto Rico', '2008-04-10', '48', '169', 'Kristian Stoltenberg', 'beau.konopelski@hotmail.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(195, 11, 11, '0005233769', '1010', 'Kellen Bashirian', 'Syble', '70314 Bechtelar Walk Suite 542\nMarcellamouth, ID 72989-0990', 'Colombia', '2009-04-29', '99', '142', 'Cedrick Ledner', 'scasper@beahan.info', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(196, 24, 24, '0005523882', '1010', 'Gus Weissnat', 'Gardner', '54411 Shany Ford\nHerzogland, MD 99367', 'Malawi', '2008-01-13', '92', '190', 'Claude Hermiston', 'cronin.brooklyn@hotmail.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(197, 23, 23, '0003390435', '1010', 'Georgianna Cremin', 'Quentin', '81455 Jones Branch\nSouth Elizastad, MA 63074-1380', 'Bahrain', '2012-05-06', '86', '127', 'Miss Greta Morar', 'sbeatty@hotmail.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(198, 8, 8, '0004014442', '1010', 'Wilhelmine Price', 'Casandra', '2227 Anderson Fords\nWest Carleton, VA 18476', 'Belize', '2009-07-05', '59', '168', 'Carolyne Treutel', 'logan29@funk.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(199, 12, 12, '0004625756', '1010', 'Coby Schultz', 'Claire', '7682 Arnold Forks Apt. 748\nKeithport, ME 72651', 'Cayman Islands', '2009-05-22', '91', '151', 'Frederik Welch DVM', 'mayert.juliana@schaefer.com', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(200, 23, 23, '0005263464', '1010', 'Donnell Gaylord', 'Gavin', '33380 Rosalyn Coves Apt. 324\nLake Jewelchester, KS 26528', 'Iceland', '2007-10-06', '51', '167', 'Miss River Ward V', 'zora13@mueller.com', 'n', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(201, 1, 1, '1234567', NULL, 'Anak Keren', 'Anak', 'Jl. Aja dulu', 'Cilacap', '2004-09-09', '60', '170', 'Boby', 'boby@gmail.com', 'n', NULL, '2022-09-16 03:37:46', '2022-09-16 03:37:46', NULL);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;

-- Dumping structure for table bolasoft.student_assets
CREATE TABLE IF NOT EXISTS `student_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `mime` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pasphoto','akta_lahir','ijasah','kartu_keluarga') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` longblob,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.student_assets: ~4 rows (approximately)
/*!40000 ALTER TABLE `student_assets` DISABLE KEYS */;
INSERT INTO `student_assets` (`id`, `student_id`, `name`, `mime`, `status`, `file`, `created_at`, `updated_at`) VALUES
	(1, 201, NULL, NULL, 'pasphoto', NULL, '2022-09-16 03:37:46', '2022-09-16 03:37:46'),
	(2, 201, NULL, NULL, 'akta_lahir', NULL, '2022-09-16 03:37:46', '2022-09-16 03:37:46'),
	(3, 201, NULL, NULL, 'kartu_keluarga', NULL, '2022-09-16 03:37:46', '2022-09-16 03:37:46'),
	(4, 201, NULL, NULL, 'ijasah', NULL, '2022-09-16 03:37:46', '2022-09-16 03:37:46');
/*!40000 ALTER TABLE `student_assets` ENABLE KEYS */;

-- Dumping structure for table bolasoft.student_cards
CREATE TABLE IF NOT EXISTS `student_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `kode` text NOT NULL,
  `is_deleted` enum('y','n') DEFAULT 'n',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table bolasoft.student_cards: ~0 rows (approximately)
/*!40000 ALTER TABLE `student_cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_cards` ENABLE KEYS */;

-- Dumping structure for table bolasoft.team_ssbs
CREATE TABLE IF NOT EXISTS `team_ssbs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_club` int(11) NOT NULL,
  `name_team` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_playing` enum('y','n') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.team_ssbs: ~0 rows (approximately)
/*!40000 ALTER TABLE `team_ssbs` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_ssbs` ENABLE KEYS */;

-- Dumping structure for table bolasoft.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `detail_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `paguyuban_id` int(11) NOT NULL DEFAULT '0',
  `club_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wa_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('super','region','manager','coach','admin','bendahara','turnamen','wasit','officer','student') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'coach',
  `confirmed` enum('y','n','p') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'p',
  `is_active` enum('y','n') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bolasoft.users: ~12 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `detail_id`, `paguyuban_id`, `club_id`, `name`, `email`, `wa_number`, `password`, `role`, `confirmed`, `is_active`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, '0', 0, 0, 'super', 'php@gmail.com', NULL, '$2y$10$mMPb8x7fIAfBf0842ylmkOJkrtuR9So0qE6udUC.UXWyNf0jJAG72', 'super', 'p', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(2, '0', 0, 0, 'officer', 'officer@bolasoft.id', NULL, '$2y$10$A5AZSUyvxSXkx4cI/vTm2O/3il9TH0Bs1Ons9k8pLoGfzXbwGFQBu', 'officer', 'p', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(3, '0', 1, 0, 'region', 'region@gmail.com', NULL, '$2y$10$mMPb8x7fIAfBf0842ylmkOJkrtuR9So0qE6udUC.UXWyNf0jJAG72', 'region', 'p', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(4, '0', 1, 1, 'coach', 'coach@gmail.com', NULL, '$2y$10$UPoBzqYCNpM23nzA0f/kW.nGAvrXa2nBW1B/QuuATdExDvDUm07tS', 'coach', 'p', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(5, '0', 1, 1, 'admin', 'admin@gmail.com', NULL, '$2y$10$mMPb8x7fIAfBf0842ylmkOJkrtuR9So0qE6udUC.UXWyNf0jJAG72', 'admin', 'p', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(6, '0', 1, 1, 'bendahara', 'bendahara@gmail.com', NULL, '$2y$10$FdN2MUQUy67WoHLC72ifMuoNROgjtKoNFs7w6i.tHIziiC.zGlC3K', 'bendahara', 'p', 'y', NULL, '2022-09-15 09:31:44', '2022-09-15 09:31:44', NULL),
	(7, '18102222222222', 10, 24, 'Rey', 'r@mail.id', '081234567890', '$2y$10$CYYZm.qZT3l03qSA6vdOTuBpzDG5KhWZkN9bNH8lOTUlgNG7eOGqK', 'student', 'y', 'y', NULL, '2022-09-15 09:51:17', '2022-09-15 09:51:17', NULL),
	(8, '1', 1, 1, 'Hello World', 'hello.world@gmail.com', '1234', '$2y$10$uFTZKM.xclva9CveXGLGT.XIC73AwFj.xPYRdly7/5Rcy41OOsb7q', 'student', 'y', 'y', NULL, '2022-09-16 03:08:10', '2022-09-16 03:27:45', NULL),
	(9, '1', 1, 1, 'heheheh', 'heheh@gmail.com', '23232', '$2y$10$uFTZKM.xclva9CveXGLGT.XIC73AwFj.xPYRdly7/5Rcy41OOsb7q', 'student', 'y', 'y', NULL, '2022-09-16 03:10:11', '2022-09-16 03:22:12', NULL),
	(10, '201', 1, 1, 'Anak Keren', 'anak.keren@gmail.com', '123', '$2y$10$mMPb8x7fIAfBf0842ylmkOJkrtuR9So0qE6udUC.UXWyNf0jJAG72', 'student', 'y', 'y', NULL, '2022-09-16 03:34:24', '2022-09-16 03:37:46', NULL),
	(11, '987654321', 1, 1, 'Anak Gaul', 'anak.gaul@gmail.com', '18273947', '$2y$10$DRTbxlH8VH4P.QkpAMu4euQd6bDIB.QTLhQ6jHxfr6he5.a1k3FxW', 'student', 'y', 'y', NULL, '2022-09-16 03:41:15', '2022-09-20 09:45:46', NULL),
	(14, '0', 0, 0, 'C Ronaldo', 'ronaldo@bolasoft.id', '1234567', '$2y$10$gRNEQbSoX0LMT3ZSBIGgzOSoazotrYpttgUGjgfuSAR25IcmXO58.', 'student', 'p', 'n', NULL, '2022-09-21 11:09:24', '2022-09-21 11:09:24', NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table bolasoft.user_histories
CREATE TABLE IF NOT EXISTS `user_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `job` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table bolasoft.user_histories: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_histories` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
