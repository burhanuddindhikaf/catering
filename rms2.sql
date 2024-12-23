-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table rms2.about_us: ~0 rows (approximately)
INSERT INTO `about_us` (`id`, `title`, `description`, `image1`, `image2`, `image3`, `youtube_link`, `vd_image`, `created_at`, `updated_at`) VALUES
	(1, 'Novi Catering - Sajian Lezat untuk Demak Kota dan Sekitarnya', 'Novi Catering, berlokasi di Bango, Demak, adalah layanan catering terpercaya yang melayani Demak Kota dan sekitarnya. Kami menyediakan menu lezat, higienis, dan berkualitas untuk berbagai acara seperti syukuran, pesta, dan kebutuhan harian.\r\n\r\nDengan bahan-bahan segar dan pelayanan profesional, kami siap menjadikan setiap momen Anda lebih istimewa. Percayakan kebutuhan catering Anda kepada Novi Catering!', 'about-thumb-01.jpg', 'about-thumb-02.jpg', 'about-thumb-03.jpg', 'https://www.youtube.com/embed/eMF9tfxigGw', 'about-video-bg.jpg', NULL, NULL);

-- Dumping data for table rms2.banners: ~3 rows (approximately)
INSERT INTO `banners` (`id`, `image`, `created_at`, `updated_at`) VALUES
	(1, 'slide-01.jpg', NULL, NULL),
	(2, 'slide-02.jpg', NULL, NULL);

-- Dumping data for table rms2.carts: ~61 rows (approximately)
INSERT INTO `carts` (`id`, `user_id`, `product_id`, `name`, `price`, `quantity`, `subtotal`, `product_order`, `coupon_id`, `shipping_address`, `pay_method`, `invoice_no`, `delivery_time`, `purchase_date`, `created_at`, `updated_at`, `bukti_transfer`) VALUES
	(8, '3', 3, 'Blueberry Cake', 650, 1, 650, 'yes', NULL, 'Chawkbazar,Chittagong', 'Cash On Delivery', 'nxeio2qb', 'July 28, 2022, 15:55:00pm', '2022-07-20', NULL, NULL, NULL),
	(9, '3', 4, 'Klassy Cup Cake', 80, 1, 80, 'yes', NULL, 'Chawkbazar,Chittagong', 'Cash On Delivery', 'nxeio2qb', 'July 28, 2022, 15:55:00pm', '2022-07-20', NULL, NULL, NULL),
	(10, '3', 3, 'Blueberry Cake', 650, 1, 650, 'delivery', NULL, 'Chawkbazar,Chittagong', 'Cash On Delivery', '5fi3xq0a', 'July 28, 2022, 15:55:00pm', '2022-07-20', NULL, NULL, NULL),
	(11, '3', 3, 'Blueberry Cake', 650, 1, 650, 'yes', NULL, 'Chawkbazar,Chittagong', 'Cash On Delivery', 'x9hdnqzf', 'July 28, 2022, 15:55:00pm', '2022-07-20', NULL, NULL, NULL),
	(12, '3', 1, 'Chocolate Cake', 220, 1, 220, 'yes', NULL, NULL, 'Online Payment', 'of9h0n4e', 'July 28, 2022, 15:55:00pm', '2022-07-21', NULL, NULL, NULL),
	(14, '3', 3, 'Blueberry Cake', 650, 1, 650, 'yes', NULL, NULL, 'Online Payment', 'p5tk1wv6', 'July 28, 2022, 15:55:00pm', '2022-07-21', NULL, NULL, NULL),
	(16, '3', 3, 'Blueberry Cake', 650, 1, 650, 'cancel', NULL, '93 B, New Eskaton Road', 'Cash On Delivery', '0heotyb1', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL, NULL),
	(17, '3', 3, 'Blueberry Cake', 650, 2, 1300, 'cancel', NULL, '93 B, New Eskaton Road', 'Cash On Delivery', '0heotyb1', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL, NULL),
	(18, '3', 2, 'Klassy Pancake', 450, 7, 3150, 'cancel', NULL, '93 B, New Eskaton Road', 'Cash On Delivery', '0heotyb1', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL, NULL),
	(19, '3', 1, 'Chocolate Cake', 220, 1, 220, 'approve', NULL, NULL, 'Online Payment', 'kp79v4ta', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL, NULL),
	(20, '3', 3, 'Blueberry Cake', 650, 3, 1950, 'approve', NULL, NULL, 'Online Payment', 'kp79v4ta', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL, NULL),
	(21, '3', 4, 'Klassy Cup Cake', 80, 4, 320, 'approve', NULL, NULL, 'Online Payment', 'kp79v4ta', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL, NULL),
	(22, '3', 7, 'Orange Juice', 90, 3, 270, 'approve', NULL, NULL, 'Online Payment', 'kp79v4ta', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL, NULL),
	(23, '3', 8, 'Dollma Pire', 190, 2, 380, 'approve', NULL, NULL, 'Online Payment', 'kp79v4ta', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL, NULL),
	(24, '3', 5, 'Fresh Chicken Salad', 320, 2, 640, 'approve', NULL, NULL, 'Online Payment', 'kp79v4ta', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL, NULL),
	(25, '3', 3, 'Blueberry Cake', 650, 1, 650, 'yes', NULL, NULL, 'Online Payment', 'nogi0754', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL, NULL),
	(26, '3', 3, 'Blueberry Cake', 650, 1, 650, 'cancel', NULL, NULL, 'Online Payment', 'jxab5khm', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL, NULL),
	(27, '3', 3, 'Blueberry Cake', 650, 1, 650, 'approve', NULL, '93 B, New Eskaton Road', 'Cash On Delivery', 'm7ib0dw6', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL, NULL),
	(28, '3', 4, 'Klassy Cup Cake', 80, 1, 80, 'yes', NULL, '93 B, New Eskaton Road', 'Cash On Delivery', 'q0d6h42w', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL, NULL),
	(29, '3', 3, 'Blueberry Cake', 650, 1, 650, 'delivery', NULL, '93 B, New Eskaton Road', 'Cash On Delivery', '483pkznj', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL, NULL),
	(30, '3', 3, 'Blueberry Cake', 650, 1, 650, 'delivery', NULL, NULL, 'Online Payment', '58fsclp4', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL, NULL),
	(31, '3', 3, 'Blueberry Cake', 650, 1, 650, 'cancel', NULL, NULL, 'Online Payment', 'mqnd8t0b', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL, NULL),
	(32, '3', 3, 'Blueberry Cake', 650, 1, 650, 'approve', NULL, NULL, 'Online Payment', 'kxosm7rh', 'July 28, 2022, 15:55:00pm', '2022-07-22', NULL, NULL, NULL),
	(33, '5', 1, 'Chocolate Cake', 220, 5, 1100, 'no', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(37, '3', 1, 'Chocolate Cake', 220, 9, 1980, 'cancel', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', '4h1a2fij', 'July 28, 2022, 15:55:00pm', '2022-07-24', NULL, NULL, NULL),
	(38, '3', 1, 'Chocolate Cake', 220, 1, 220, 'delivery', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', 'x97q6lrf', 'July 28, 2022, 15:55:00pm', '2022-07-24', NULL, NULL, NULL),
	(39, '3', 2, 'Klassy Pancake', 450, 2, 900, 'delivery', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', 'x97q6lrf', 'July 28, 2022, 15:55:00pm', '2022-07-24', NULL, NULL, NULL),
	(40, '3', 2, 'Klassy Pancake', 450, 1, 450, 'cancel', NULL, '93 B, New Eskaton Road', 'Cash On Delivery', '4enzdl9h', 'July 28, 2022, 15:55:00pm', '2022-07-24', NULL, NULL, NULL),
	(41, '3', 2, 'Klassy Pancake', 450, 2, 900, 'yes', 'ED25', NULL, 'Online Payment', 'pdyeo6b5', 'July 28, 2022, 15:55:00pm', '2022-07-24', NULL, NULL, NULL),
	(42, '3', 1, 'Chocolate Cake', 220, 1, 220, 'yes', 'ED25', NULL, 'Online Payment', 'pdyeo6b5', 'July 28, 2022, 15:55:00pm', '2022-07-24', NULL, NULL, NULL),
	(43, '3', 1, 'Chocolate Cake', 220, 1, 220, 'cancel', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', 'l7pfcejb', 'July 28, 2022, 15:55:00pm', '2022-07-24', NULL, NULL, NULL),
	(45, '3', 4, 'Klassy Cup Cake', 80, 1, 80, 'approve', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', 'b9kic20v', 'July 28, 2022, 15:55:00pm', '2022-07-24', NULL, NULL, NULL),
	(46, '3', 2, 'Klassy Pancake', 450, 1, 450, 'cancel', 'ED25', NULL, 'Online Payment', '3amy2pik', 'July 28, 2022, 15:55:00pm', '2022-07-24', NULL, NULL, NULL),
	(47, '3', 1, 'Chocolate Cake', 220, 1, 220, 'cancel', 'ED25', NULL, 'Online Payment', '3amy2pik', 'July 28, 2022, 15:55:00pm', '2022-07-24', NULL, NULL, NULL),
	(48, '3', 4, 'Klassy Cup Cake', 80, 1, 80, 'delivery', 'ED25', NULL, 'Online Payment', 'cimkhv5t', 'July 28, 2022, 15:55:00pm', '2022-07-27', NULL, NULL, NULL),
	(49, '3', 4, 'Klassy Cup Cake', 80, 2, 160, 'delivery', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', 'efmyq64p', 'July 28, 2022, 15:55:00pm', '2022-07-27', NULL, NULL, NULL),
	(51, '3', 1, 'Chocolate Cake', 220, 1, 220, 'approve', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', '81wjgos5', 'July 28, 2022, 4:30:00pm', '2022-07-27', NULL, NULL, NULL),
	(52, '3', 4, 'Klassy Cup Cake', 80, 1, 80, 'approve', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', '81wjgos5', 'July 28, 2022, 4:30:00pm', '2022-07-27', NULL, NULL, NULL),
	(53, '3', 1, 'Chocolate Cake', 220, 2, 440, 'approve', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', 'e0dyhr29', 'July 28, 2022, 15:55:00pm', '2022-07-27', NULL, NULL, NULL),
	(54, '3', 4, 'Klassy Cup Cake', 80, 1, 80, 'approve', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', 'e0dyhr29', 'July 28, 2022, 15:55:00pm', '2022-07-27', NULL, NULL, NULL),
	(55, '3', 4, 'Klassy Cup Cake', 80, 1, 80, 'yes', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', 'exp9bi03', 'July 28, 2022, 15:55:00pm', '2022-07-27', NULL, NULL, NULL),
	(56, '3', 1, 'Chocolate Cake', 220, 2, 440, 'yes', 'ED25', '93 B, New Eskaton Road', 'Cash On Delivery', 'exp9bi03', 'July 28, 2022, 15:55:00pm', '2022-07-27', NULL, NULL, NULL),
	(57, '3', 1, 'Chocolate Cake', 220, 1, 220, 'approve', 'ED25', 'Bangladesh', 'Online Payment', 'joz1g237', 'July 31, 2022, 23:50:00pm', '2022-07-31', NULL, NULL, NULL),
	(59, '11', 4, 'Klassy Cup Cake', 80, 1, 80, 'yes', 'ED25', NULL, 'Online Payment', 'emw2jfl4', '3 hours', '2022-07-30', NULL, NULL, NULL),
	(60, '11', 1, 'Chocolate Cake', 220, 1, 220, 'yes', NULL, 'Bangladesh', 'Online Payment', 'q09vef8k', '3 hours', '2022-07-30', NULL, NULL, NULL),
	(61, '3', 4, 'Klassy Cup Cake', 80, 1, 80, 'approve', 'ED25', 'Bangladesh', 'Online Payment', 'joz1g237', 'July 31, 2022, 23:50:00pm', '2022-07-31', NULL, NULL, NULL),
	(62, '3', 1, 'Chocolate Cake', 220, 1, 220, 'yes', 'ED60', NULL, 'Online Payment', 'xi5ptgl7', '3 hours', '2022-08-27', NULL, NULL, NULL),
	(63, '3', 11, 'Pastry Cake', 120, 4, 480, 'delivery', 'ED60', 'Bogura', 'Cash On Delivery', 'x3w8ibaq', 'August 27, 2022, 16:50:00pm', '2022-08-27', NULL, NULL, NULL),
	(64, '3', 4, 'Klassy Cup Cake', 80, 1, 80, 'approve', 'ED26', NULL, 'Online Payment', 'horwqpen', 'September 23, 2022, 13:50:00pm', '2022-09-23', NULL, NULL, NULL),
	(65, '20', 4, 'Klassy Cup Cake', 80, 1, 80, 'approve', NULL, '93 B, New Eskaton Road', 'Cash On Delivery', 'orcf03k2', '3 hours', '2024-11-30', NULL, NULL, NULL),
	(66, '20', 1, 'Chocolate Cake', 220, 1, 220, 'approve', NULL, '93 B, New Eskaton Road', 'Cash On Delivery', 'orcf03k2', '3 hours', '2024-11-30', NULL, NULL, NULL),
	(67, '20', 1, 'Chocolate Cake', 220, 5, 1100, 'approve', NULL, '93 B, New Eskaton bcjdjjc', 'Cash On Delivery', '42y9c8h3', '3 hours', '2024-12-07', NULL, NULL, NULL),
	(68, '20', 2, 'Klassy Pancake', 450, 1, 450, 'approve', NULL, '93 B, New Eskaton bcjdjjc', 'Cash On Delivery', '42y9c8h3', '3 hours', '2024-12-07', NULL, NULL, NULL),
	(69, '20', 11, 'Pastry Cake', 120, 1, 120, 'approve', NULL, '93 B, New Eskaton bcjdjjc', 'Cash On Delivery', '42y9c8h3', '3 hours', '2024-12-07', NULL, NULL, NULL),
	(70, '20', 11, 'Pastry Cake', 120, 1, 120, 'approve', NULL, '93 B, New Eskaton Road', 'Cash On Delivery', '7b2trpg8', '3 hours', '2024-12-07', NULL, NULL, NULL),
	(72, '20', 1, 'Chocolate Cake', 2200, 1, 2200, 'approve', NULL, '93 B, New Eskaton Road', 'Cash On Delivery', 'yzx824aj', '3 hours', '2024-12-07', NULL, NULL, NULL),
	(74, '20', 1, 'Chocolate Cake', 2200, 2, 4400, 'yes', NULL, 'ADDFA', 'Cash On Delivery', '78fzatvw', '3 hours', '2024-12-20', NULL, NULL, 'bukti_transfer/DNOWTXZUOFDiLSC4c8L1MSvCRpDqdKq267ibfOtQ.jpg'),
	(75, '20', 11, 'Pastry Cake', 120, 1, 120, 'yes', NULL, 'dasF', 'Cash On Delivery', 'x0jwl2qt', '3 hours', '2024-12-20', NULL, NULL, 'bukti_transfer/9sEeVLacy3X1ldOPWOuFwpFaEHas8UDl79H52A10.png'),
	(76, '20', 4, 'Klassy Cup Cake', 80, 1, 80, 'no', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(78, '21', 1, 'Chocolate Cake', 2200, 1, 2200, 'no', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(84, '22', 1, 'ayam geprek', 25000, 1, 25000, 'no', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- Dumping data for table rms2.charges: ~2 rows (approximately)
INSERT INTO `charges` (`id`, `name`, `price`, `created_at`, `updated_at`) VALUES
	(1, '', '', NULL, NULL),
	(5, '', '', NULL, NULL);

-- Dumping data for table rms2.chefs: ~3 rows (approximately)
INSERT INTO `chefs` (`id`, `name`, `job_title`, `image`, `facebook_link`, `twitter_link`, `instragram_link`, `created_at`, `updated_at`) VALUES
	(1, 'Randy Walker', 'Pastry Chef', 'chefs-01.jpg', 'https://www.facebook.com/', 'https://twitter.com/?lang=en', 'https://www.instagram.com/', NULL, NULL),
	(2, 'David Martin', 'Cookie Chef', 'chefs-02.jpg', 'https://www.facebook.com/', 'https://twitter.com/?lang=en', 'https://www.instagram.com/', NULL, NULL),
	(3, 'Peter Perkson', 'Pancake Chef', 'chefs-03.jpg', 'https://www.facebook.com/', 'https://twitter.com/?lang=en', 'https://www.instagram.com/', NULL, NULL);

-- Dumping data for table rms2.coupons: ~3 rows (approximately)
INSERT INTO `coupons` (`id`, `name`, `details`, `code`, `percentage`, `validate`, `created_at`, `updated_at`) VALUES
	(1, 'Eid Offer', 'For Eid 20% Discount', 'ED25', '20', '2022-08-30', NULL, NULL),
	(7, 'Eid offer 2', '25% offer', 'ED26', '25', '2022-09-31', NULL, NULL),
	(9, 'Tresna offer', 'NSDFKJNAJFNAKJF', 'ED60', '60', '2022-08-31', NULL, NULL);

-- Dumping data for table rms2.failed_jobs: ~0 rows (approximately)

-- Dumping data for table rms2.migrations: ~15 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(9, '2014_10_12_000000_create_users_table', 1),
	(10, '2014_10_12_100000_create_password_resets_table', 1),
	(11, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
	(12, '2019_08_19_000000_create_failed_jobs_table', 1),
	(13, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(14, '2021_09_04_214714_create_sessions_table', 1),
	(15, '2022_03_30_074545_create_carts_table', 1),
	(16, '2022_03_31_094116_create_products_table', 1),
	(17, '2022_07_19_161104_create_chefs_table', 2),
	(18, '2022_07_19_161656_create_reservations_table', 3),
	(19, '2022_07_19_182521_create_about_us_table', 4),
	(20, '2022_07_19_182815_create_banners_table', 4),
	(21, '2022_07_21_053941_create_rate_table', 5),
	(23, '2022_07_24_050449_create_coupon_table', 6),
	(24, '2022_07_24_092615_create_charge_table', 7);

-- Dumping data for table rms2.orders: ~0 rows (approximately)
INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `amount`, `address`, `status`, `transaction_id`, `currency`) VALUES
	(7, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '6253289de6e6d', 'BDT'),
	(8, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '625328ad4732b', 'BDT'),
	(9, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '625328c0cba55', 'BDT'),
	(10, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '6255998383b32', 'BDT'),
	(11, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '625599c606193', 'BDT'),
	(12, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Processing', '62559a9a8d868', 'BDT'),
	(13, 'ro', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Processing', '62559b3b190e4', 'BDT'),
	(14, 'user', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Processing', '62559cdf6055b', 'BDT'),
	(15, 'user', 'vai@gmail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62559e9d33954', 'BDT'),
	(16, 'user', 'vai@gmail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62559eb3a5b05', 'BDT'),
	(17, 'user', 'vai@gmail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62559edae9f87', 'BDT'),
	(18, 'user', 'vai@gmail.com', '8801XXXXXXXXX', 0, 'Customer Address', 'Failed', '62559eebb8dde', 'BDT'),
	(19, 'user', 'vai@gmail.com', '8801XXXXXXXXX', 0, 'Customer Address', 'Failed', '62559f400624a', 'BDT'),
	(20, 'user', 'vai@gmail.com', '8801XXXXXXXXX', 0, 'Customer Address', 'Failed', '62559f7bca420', 'BDT'),
	(21, 'user', 'vai@gmail.com', '8801XXXXXXXXX', 0, 'Customer Address', 'Failed', '62559ffc6f87f', 'BDT'),
	(22, 'user', 'vai@gmail.com', '8801XXXXXXXXX', 0, 'Customer Address', 'Complete', '6255a06aba94b', 'BDT'),
	(23, 'user', 'vai@gmail.com', '8801XXXXXXXXX', 0, 'Customer Address', 'Complete', '6255a1ae03f38', 'BDT'),
	(24, 'user', 'vai@gmail.com', '8801XXXXXXXXX', 0, 'Customer Address', 'Complete', '6255b9d750314', 'BDT'),
	(25, 'user', 'vai@gmail.com', '8801XXXXXXXXX', 0, 'Customer Address', 'Complete', '6255beb9aec5c', 'BDT'),
	(27, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Processing', '6258fb4d5f4cf', 'BDT'),
	(28, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '6258fb934d02a', 'BDT'),
	(29, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '6258fc95a4e54', 'BDT'),
	(30, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Processing', '6258fd4d6c17d', 'BDT'),
	(31, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Processing', '6258fe0c33d6c', 'BDT'),
	(32, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '6258fe5bcf899', 'BDT'),
	(33, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '6258fe86ef143', 'BDT'),
	(34, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '6258ff5709cad', 'BDT'),
	(35, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '6258ff5a8067e', 'BDT'),
	(36, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Processing', '6259004a44c40', 'BDT'),
	(37, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Processing', '62d5af2789bfd', 'BDT'),
	(38, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62d5af8373a42', 'BDT'),
	(39, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62d5af8948b53', 'BDT'),
	(40, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Processing', '62d5d78cb5187', 'BDT'),
	(41, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62d5e2ec5fc13', 'BDT'),
	(42, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Processing', '62d9242c05d04', 'BDT'),
	(43, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62d9255abc6d3', 'BDT'),
	(44, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62d925939e6a4', 'BDT'),
	(45, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62d925e07f16a', 'BDT'),
	(46, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62d9271085531', 'BDT'),
	(47, NULL, 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62d8fb7e1224b', 'BDT'),
	(48, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62d8fb90c42af', 'BDT'),
	(49, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62d8fbb3cf1ba', 'BDT'),
	(50, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62d8fc21c9444', 'BDT'),
	(51, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62d8fcaf11ec7', 'BDT'),
	(52, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62d900bc83905', 'BDT'),
	(53, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62d900d7e12d7', 'BDT'),
	(54, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, NULL, 'Pending', '62d90176ec6fd', 'BDT'),
	(55, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 650, NULL, 'Pending', '62d903ddd075e', 'BDT'),
	(56, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 650, NULL, 'Pending', '62d904e841ae8', 'BDT'),
	(57, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 650, NULL, 'Pending', 'd2heczba', 'BDT'),
	(58, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 650, NULL, 'Pending', 'ank14e8y', 'BDT'),
	(59, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 650, NULL, 'Pending', 'of9h0n4e', 'BDT'),
	(60, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 650, NULL, 'Pending', 'p5tk1wv6', 'BDT'),
	(61, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 650, NULL, 'Failed', 'ovsw12c7', 'BDT'),
	(62, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 650, NULL, 'Pending', 'etmb2jxz', 'BDT'),
	(63, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 4430, NULL, 'Pending', '4qvm3iap', 'BDT'),
	(64, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 4430, NULL, 'Pending', 'tviy8nza', 'BDT'),
	(65, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 4430, NULL, 'Pending', 'kp79v4ta', 'BDT'),
	(66, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 650, NULL, 'Pending', 'nogi0754', 'BDT'),
	(67, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 650, NULL, 'Pending', 'jxab5khm', 'BDT'),
	(68, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 650, NULL, 'Pending', 'yabew1j5', 'BDT'),
	(69, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 650, NULL, 'Pending', '58fsclp4', 'BDT'),
	(70, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 650, NULL, 'Pending', 'mqnd8t0b', 'BDT'),
	(71, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 650, NULL, 'Pending', 'kxosm7rh', 'BDT'),
	(72, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 1120, NULL, 'Pending', '26qmh09l', 'BDT'),
	(73, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 896, NULL, 'Pending', 'pdyeo6b5', 'BDT'),
	(74, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 576, NULL, 'Pending', '3amy2pik', 'BDT'),
	(75, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 124, NULL, 'Pending', 'cimkhv5t', 'BDT'),
	(76, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 124, NULL, 'Pending', 'ryf2gnve', 'BDT'),
	(77, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 124, NULL, 'Pending', '5wroid91', 'BDT'),
	(78, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 124, NULL, 'Pending', 'o8zad49h', 'BDT'),
	(79, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 124, NULL, 'Pending', 'on19ra8l', 'BDT'),
	(80, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 124, NULL, 'Pending', '6k2qtrsm', 'BDT'),
	(81, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 124, NULL, 'Pending', 'emw2jfl4', 'BDT'),
	(82, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 280, NULL, 'Pending', 'h3rfl512', 'BDT'),
	(83, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 280, NULL, 'Pending', 'pam5ogri', 'BDT'),
	(84, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 280, NULL, 'Pending', 'k8nbhm4a', 'BDT'),
	(85, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 280, NULL, 'Pending', 'p8oy5rkj', 'BDT'),
	(86, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 280, NULL, 'Pending', 'e2v3sdnq', 'BDT'),
	(87, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 280, NULL, 'Pending', 'jynb2s4d', 'BDT'),
	(88, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 280, NULL, 'Pending', 'o5cdw8g9', 'BDT'),
	(89, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 280, NULL, 'Pending', 'vfn287cd', 'BDT'),
	(90, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'sorc9nal', 'BDT'),
	(91, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'bcfsd9az', 'BDT'),
	(92, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'hvymj6o8', 'BDT'),
	(93, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'jcr6h42n', 'BDT'),
	(94, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'k0owpr8e', 'BDT'),
	(95, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'agwvbkjz', 'BDT'),
	(96, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', '8f5grzo7', 'BDT'),
	(97, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'le9at0bm', 'BDT'),
	(98, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'fnr49g21', 'BDT'),
	(99, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'o7p93kc5', 'BDT'),
	(100, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', '1otyr8mh', 'BDT'),
	(101, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'nrdqe108', 'BDT'),
	(102, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'af7gc0zk', 'BDT'),
	(103, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'he0xwryb', 'BDT'),
	(104, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'hkp2bvni', 'BDT'),
	(105, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', '8s1amteq', 'BDT'),
	(106, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'i6fyr5ob', 'BDT'),
	(107, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'pjrd79vn', 'BDT'),
	(108, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'xarfbg06', 'BDT'),
	(109, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', '3y9k2qc7', 'BDT'),
	(110, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'sm1xl9i6', 'BDT'),
	(111, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', '3jsavhdb', 'BDT'),
	(112, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'q3hwfgrs', 'BDT'),
	(113, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', '98pl5v3r', 'BDT'),
	(114, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'e6ox5zct', 'BDT'),
	(115, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'bzq13n0m', 'BDT'),
	(116, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', 280, NULL, 'Pending', 'q09vef8k', 'BDT'),
	(117, 'robin', 'robincb.symphony@gmail.com', '01824072334', 300, NULL, 'Pending', 'rw0l9yfg', 'BDT'),
	(118, 'robin', 'robincb.symphony@gmail.com', '01824072334', 300, NULL, 'Pending', '2ig9ob3c', 'BDT'),
	(119, 'robin', 'robincb.symphony@gmail.com', '01824072334', 300, NULL, 'Pending', 'ie2mws1b', 'BDT'),
	(120, 'robin', 'robincb.symphony@gmail.com', '01824072334', 300, NULL, 'Pending', 'pqgc532i', 'BDT'),
	(121, 'robin', 'robincb.symphony@gmail.com', '01824072334', 300, NULL, 'Pending', 'jrtc8q1o', 'BDT'),
	(122, 'robin', 'robincb.symphony@gmail.com', '01824072334', 300, NULL, 'Pending', 'joz1g237', 'BDT'),
	(123, 'robin', 'robincb.symphony@gmail.com', '01824072334', 148, NULL, 'Pending', 'xi5ptgl7', 'BDT'),
	(124, 'robin', 'robincb.symphony@gmail.com', '01824072334', 110, NULL, 'Pending', 'horwqpen', 'BDT'),
	(125, 'bintangss', 'bin2610tang@gmail.com', '081', 1500, NULL, 'Pending', 'ivazetm6', 'BDT'),
	(126, 'bintangss', 'bin2610tang@gmail.com', '081', 1500, NULL, 'Pending', 'cvt1s64o', 'BDT');

-- Dumping data for table rms2.password_resets: ~0 rows (approximately)

-- Dumping data for table rms2.personal_access_tokens: ~0 rows (approximately)

-- Dumping data for table rms2.products: ~7 rows (approximately)
INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `catagory`, `session`, `available`, `created_at`, `updated_at`) VALUES
	(1, 'ayam geprek', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sedii do eiusmod teme.', '63914458.jpeg', '25000', NULL, 0, 'Stock', NULL, NULL),
	(2, 'telor balado', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sedii do eiusmod teme.', '612580414.jpeg', '15000', NULL, 0, 'Stock', NULL, NULL),
	(3, 'nasi kuning', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sedii do eiusmod teme.', '807586554.jpeg', '15000', NULL, 0, 'Out of Stock', NULL, NULL),
	(4, 'ayam goreng', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sedii do eiusmod teme.', '1626383571.jpeg', '20000', NULL, 0, 'Stock', NULL, NULL),
	(5, 'Salad ayam', 'Lorem ipsum dolor sit amet, consectetur koit adipiscing elit, sed do.', 'tab-item-01.png', '32000', NULL, NULL, 'Stock', NULL, NULL),
	(6, 'ayam bakar', 'Lorem ipsum dolor sit amet, consectetur koit adipiscing elit, sed do.', '1156824431.jpeg', '30000', NULL, 0, 'Stock', NULL, NULL);

-- Dumping data for table rms2.rates: ~13 rows (approximately)
INSERT INTO `rates` (`id`, `user_id`, `product_id`, `star_value`, `created_at`, `updated_at`) VALUES
	(23, '22', '2', '5', NULL, NULL);

-- Dumping data for table rms2.reservations: ~34 rows (approximately)
INSERT INTO `reservations` (`id`, `name`, `email`, `phone`, `no_guest`, `date`, `time`, `message`, `created_at`, `updated_at`) VALUES
	(1, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', '7', '21.07.2022', 'Breakfast', 'rgrghrhre', NULL, NULL),
	(2, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'gegeg', NULL, NULL),
	(3, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', '7', '28.07.2022', 'Lunch', 'dsvfdvb', NULL, NULL),
	(4, 'Sajeeb Chakraborty', 'robincb.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'ascasds', NULL, NULL),
	(5, 'Sajeeb Chakraborty', 'robincb.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'ascasds', NULL, NULL),
	(6, 'Sajeeb Chakraborty', 'robincb.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'ascasds', NULL, NULL),
	(7, 'Sajeeb Chakraborty', 'robincb.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'ascasds', NULL, NULL),
	(8, 'Sajeeb Chakraborty', 'robincb.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'ascasds', NULL, NULL),
	(9, 'Sajeeb Chakraborty', 'robincb.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'ascasds', NULL, NULL),
	(10, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', '7', '21.07.2022', 'Breakfast', 'vwvwvgf', NULL, NULL),
	(11, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', '7', '21.07.2022', 'Breakfast', 'vwvwvgf', NULL, NULL),
	(12, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', '7', '21.07.2022', 'Breakfast', 'vwvwvgf', NULL, NULL),
	(13, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', '7', '21.07.2022', 'Breakfast', 'vwvwvgf', NULL, NULL),
	(14, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', '7', '29.07.2022', 'Breakfast', 'sdsf', NULL, NULL),
	(15, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', '7', '29.07.2022', 'Breakfast', 'sdsf', NULL, NULL),
	(16, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', '7', '29.07.2022', 'Breakfast', 'sdsf', NULL, NULL),
	(17, 'Sajeeb Chakraborty', 'sajeebchakraborty.cse2000@gmail.com', '01824072334', '7', '29.07.2022', 'Breakfast', 'sdsf', NULL, NULL),
	(18, 'Sajeeb Chakraborty', 'sudarshan.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'sgfrgre', NULL, NULL),
	(19, 'Sajeeb Chakraborty', 'sudarshan.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'sgfrgre', NULL, NULL),
	(20, 'Sajeeb Chakraborty', 'sudarshan.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'sgfrgre', NULL, NULL),
	(21, 'Sajeeb Chakraborty', 'sudarshan.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'sgfrgre', NULL, NULL),
	(22, 'Sajeeb Chakraborty', 'sudarshan.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'sgfrgre', NULL, NULL),
	(23, 'Sajeeb Chakraborty', 'sudarshan.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'sgfrgre', NULL, NULL),
	(24, 'Sajeeb Chakraborty', 'sudarshan.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'sgfrgre', NULL, NULL),
	(25, 'Sajeeb Chakraborty', 'sudarshan.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'sgfrgre', NULL, NULL),
	(26, 'Sajeeb Chakraborty', 'sudarshan.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'sgfrgre', NULL, NULL),
	(27, 'Sajeeb Chakraborty', 'sudarshan.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'sgfrgre', NULL, NULL),
	(28, 'Sajeeb Chakraborty', 'sudarshan.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'sgfrgre', NULL, NULL),
	(29, 'Sajeeb Chakraborty', 'sudarshan.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'sgfrgre', NULL, NULL),
	(30, 'Sajeeb Chakraborty', 'sudarshan.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'sgfrgre', NULL, NULL),
	(31, 'Sajeeb Chakraborty', 'sudarshan.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'sgfrgre', NULL, NULL),
	(32, 'Sajeeb Chakraborty', 'sudarshan.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'sgfrgre', NULL, NULL),
	(33, 'Sajeeb Chakraborty', 'sudarshan.symphony@gmail.com', '01824072334', '7', '27.07.2022', 'Breakfast', 'sgfrgre', NULL, NULL),
	(34, 'Tresna Rani', 'tresna312@gmail.com', '01737336101', '12', '28.08.2022', 'Lunch', 'poribash zeno cool thaka', NULL, NULL);

-- Dumping data for table rms2.sessions: ~3 rows (approximately)
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('7G1rXVX0oorWxt48fdAF4WMaN97yxEcDUV8MHtcY', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib1NOS0taeFBQVXpObWlINVp3N01Vc1R4a3JwY1lwMUJST2lDSUE4SSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fX0=', 1662399583),
	('GXyK8hlrwC5b9J6gdxeKBXjl0NsyyZXaGGCJm4IR', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ2pOMWhiNHNBa3ViQTNrRFlUcXpiU3pZS0JZWlU4eEZkOUpoa1g3ZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fX0=', 1664097515),
	('m4uCOcwBmmLcNto3Zk4a95HDe2kd9MRClNRtwQl4', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoicmJHb2R4UDk0V3VCY3VmMjFmTDNzNWFLTEs5Um1nNnRDNUpyUmZCTiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9yYXRlL3NjcmlwdC5qcyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRNM21zRDdUZUFXcjZ0L1pmODQ5cU91Qk9XWWR2NUlpaXZiRG9uamN3WmkuQlY4WkJac05NYSI7czo1OiJ0b3RhbCI7ZDoxMTA7czoxMDoicHJvZHVjdF9pZCI7aToyO30=', 1663916059);

-- Dumping data for table rms2.users: ~7 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `phone`, `salary`, `usertype`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
	(3, 'robin', 'robincb.symphony@gmail.com', '01824072334', NULL, '0', NULL, '$2y$10$M3msD7TeAWr6t/Zf849qOuBOWYdv5IiivbDonjcwZi.BV8ZBZsNMa', NULL, NULL, '0dAZOIaT06cAyULOuzKBXC61XSUyOMMGXy801LDMdot5VpeYzfwPU5o2lUcC', NULL, NULL, NULL, '2022-07-24 06:56:10'),
	(11, 'Sajeeb Chakraborty', 'sajeebcb.cseru@gmail.com', '1554649447', '90000', '1', NULL, '$2y$10$hYD4ja7c3sjoHZr2uRVgVu4HS0na31TV0Nz.gHQAD8ve0P6ej82k.', NULL, NULL, NULL, NULL, '1250259143.jpg', NULL, NULL),
	(14, 'Sudarshan Chakraborty', 'sudarshan.symphony@gmail.com', '01770277098', '35000', '3', NULL, '$2y$10$xcWkHp3nGbvbj42NzRAupO.whJElFYcAxqfgIT31EmVMgRH5aeYf.', NULL, NULL, NULL, NULL, '2023444275.jpg', NULL, NULL),
	(18, 'Jakes', 'sajeebchakraborty.cse2000@gmail.com', '01325040309', '14000', '2', NULL, '$2y$10$9KlMk34Fq7EEdlU8/FifROxrBQMc/8Hfqozhc3rKtWyEx.PlgRAXS', NULL, NULL, NULL, NULL, '1266291463.jpg', NULL, NULL),
	(19, 'Tresna Rani', 'tresna312@gmail.com', '1737336069', '250000', '1', NULL, '$2y$10$pkC3xdN8rcrUVPhaH5klyOWwpYLEGZnu4WLKFKInGK3sBb6NcE1Fi', NULL, NULL, NULL, NULL, '900546987.png', NULL, NULL),
	(20, 'bintangsss', 'bin2610tang@gmail.com', '081', NULL, '1', NULL, '$2y$10$4QYu8AwcQL1X/ujnCIWgFeW2NIuFM3albpbAZvGx/A2O5Dd0icqDW', NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-07 01:28:04'),
	(21, 'ahmad', 'ahmad@mail.com', '12345678', NULL, '0', NULL, '$2y$10$WCMzEdAV4oQ6lxALSExb3.m8/iIDV/2qztD4YVjqK7dtLvrNTXEbu', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(22, 'asssa hahak', 'asd@adsf.com', '0899288322', NULL, '1', NULL, '$2y$10$lGTBGedKTjnlOxUhf4T1f.VnGjWkK05lBmfhLJYlO5lXUIkqMIkhK', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
