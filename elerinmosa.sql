-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2021 at 03:49 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elerinmonsa`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(100) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(2, 'admin', '12345'),
(3, 'fashben', 'ben'),
(4, 'fash', 'ade2'),
(5, 'raf', 'raf');

-- --------------------------------------------------------

--
-- Table structure for table `payment_history`
--

CREATE TABLE `payment_history` (
  `id` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `utme` varchar(255) NOT NULL,
  `sessions` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_history`
--

INSERT INTO `payment_history` (`id`, `trx_id`, `transaction_id`, `surname`, `firstname`, `middlename`, `payment_type`, `amount`, `utme`, `sessions`, `status`, `timestamp`) VALUES
(9, 'FDKHGK0.29921580170815987', '', 'alao', 'nafisat', 'yetunde', 'professional_student', '2000', '', '2019_2020', 'successful', '2020-01-06 10:53:27'),
(10, 'FDKHGK0.16749231974809642', '', 'OLAWUYI', 'BILIKIS', 'ABIMBOLA', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-01-06 11:41:11'),
(11, 'FDKHGK0.6575210721363449', '', 'MUSTAPHA', 'TAOFEEQ', 'AREMU', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-01-06 11:49:30'),
(12, 'FDKHGK0.5972833904537684', '', 'OLAWUYI', 'BILIKIS', 'ABIMBOLA', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-01-06 11:55:17'),
(14, 'FDKHGK0.4673658276487558', '', 'NYONG', 'JOSEPH', 'EDET', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-01-06 12:07:50'),
(15, 'FDKHGK0.7909278320830109', '', 'MUSTAPHA', 'TAOFEEQ', 'AREMU', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-01-06 12:22:43'),
(16, 'FDKHGK0.935361367615934', '', 'AMINULLAHI', 'SHAMSUDEEN', 'A', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-01-06 12:36:32'),
(17, 'FDKHGK0.13557115097867412', '', 'NYONG', 'JOSEPH', 'EDET', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-01-06 12:37:14'),
(18, 'FDKHGK0.004679806012638288', '', 'ADEKEYE', 'RIDWANULLAHI', 'ADEBUKOYE', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-01-06 12:46:08'),
(21, 'FDKHGK0.765180544287698', '', 'AMINULLAHI', 'SHAMSUDEEN', 'A', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-01-06 12:51:38'),
(23, 'FDKHGK0.10503477182276644', '', 'ADEKEYE', 'RIDWANULLAHI', 'ADEBUKOYE', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-01-06 12:56:59'),
(24, 'FDKHGK0.6307057955807944', '', 'MUZZAMIL', 'NIHIMATALLAHI', 'MORENIKEJI', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-01-06 13:05:04'),
(26, 'FDKHGK0.4656393493311912', '', 'BIDMUS', 'ISMAIL', 'DAMILARE', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-01-06 13:06:53'),
(28, 'FDKHGK0.9932634592639533', '', 'BIDMUS', 'ISMAIL', 'DAMILARE', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-01-06 13:16:38'),
(29, 'FDKHGK0.6843058203627199', '', 'MUZZAMIL', 'NIHIMATALLAHI', 'MORENIKEJI', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-01-06 13:22:39'),
(30, 'FDKHGK0.11990345263631652', '', 'ABDULAZEEZ', 'SHEU', 'AYOMIDE', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-01-06 13:23:56'),
(31, 'FDKHGK0.07504335056704359', '', 'ABDULAZEEZ', 'SHEU', 'AYOMIDE', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-01-06 13:37:41'),
(34, 'FDKHGK0.30177209955916306', '', 'BIDMUS', 'RUKAYAT', 'OYINDAMOLA', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-01-06 13:44:18'),
(35, 'FDKHGK0.8941479679482784', '', 'ADEMOLA', 'SAKIBU', 'ADETAYO', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-01-06 13:48:40'),
(36, 'FDKHGK0.5500561731145375', '', 'BIDMUS', 'RUKAYAT', 'OYINDAMOLA', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-01-06 13:57:44'),
(37, 'FDKHGK0.8941073519642326', '', 'ADEMOLA', 'SAKIBU', 'ADETAYO', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-01-06 14:00:04'),
(40, 'FDKHGK0.30872407587199846', '', 'jokotagba', 'paul', 'oreoluwa', 'professional_student', '75000', '', '2019_2020', 'successful', '2020-01-07 17:56:26'),
(41, 'FDKHGK0.3831135931611871', '', 'jokotagba', 'paul', 'oreoluwa', 'hostel_accommodatio', '50000', '', '2019_2020', 'successful', '2020-01-07 18:22:31'),
(42, 'FDKHGK0.9746202195282758', '', 'OLAWUYI', 'BILIKIS', 'ABIMBOLA', 'tuition_fee', '25000', '', '2019_2020', 'successful', '2020-01-08 12:01:28'),
(44, 'FDKHGK0.5452193078793859', '', 'ADEKEYE', 'RIDWANULLAHI', 'ADEBUKOYE', 'total_fees', '75000', '', '2019_2020', 'successful', '2020-01-08 12:06:40'),
(45, 'FDKHGK0.29002743362862105', '', 'DAHUNSI', 'OPEYEMI', 'SUNDAY', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-01-08 12:35:16'),
(46, 'FDKHGK0.09461297592767037', '', 'DAHUNSI', 'OPEYEMI', 'SUNDAY', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-01-08 12:46:42'),
(47, 'FDKHGK0.3595965441808522', '', 'ABIODUN', 'GBOLAHAN', 'RICHARD', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-01-08 12:56:00'),
(48, 'FDKHGK0.6380383761687509', '', 'ABIODUN', 'GBOLAHAN', 'RICHARD', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-01-08 13:16:26'),
(49, 'FDKHGK0.11925823498588728', '', 'ABIODUN', 'GBOLAHAN', 'RICHARD', 'tuition_fee', '25000', '', '2019_2020', 'successful', '2020-01-08 13:19:13'),
(50, 'FDKHGK0.9737589827007229', '', 'RAJI', 'ABDULRASHEED', 'ADETUNJI', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-01-08 13:28:39'),
(51, 'FDKHGK0.7884961142396525', '', 'RAJI', 'ABDULRASHEED', 'ADETUNJI', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-01-08 13:40:24'),
(52, 'FDKHGK0.7524683060518278', '', 'SALAMI', 'WARIS', 'GBOLABO', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-01-08 13:54:17'),
(53, 'FDKHGK0.837304449776147', '', 'RAJI', 'ABDULRASHEED', 'ADETUNJI', 'tuition_fee', '25000', '', '2019_2020', 'successful', '2020-01-08 13:55:40'),
(54, 'FDKHGK0.3850803514337371', '', 'SALAMI', 'WARIS', 'GBOLABO', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-01-08 14:18:04'),
(55, 'FDKHGK0.7924727435776104', '', 'OLADAPO', 'OLAOTAN', 'WAJEED', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-01-08 14:23:31'),
(56, 'FDKHGK0.685927873585505', '', 'OLADAPO', 'OLAOTAN', 'WAJEED', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-01-08 14:31:37'),
(57, 'FDKHGK0.9941049672566147', '', 'adesina', 'ridwan', 'ayofe', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-01-10 10:33:51'),
(58, 'FDKHGK0.39398067134327697', '', 'adesina', 'ridwan', 'ayofe', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-01-10 10:46:06'),
(59, 'FDKHGK0.5002943314410411', '', 'adesina', 'ridwan', 'ayofe', 'tuition_fee', '50000', '', '2019_2020', 'successful', '2020-01-10 10:51:58'),
(60, 'FDKHGK0.8053350296392996', '', 'alao', 'nafisat', 'yetunde', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-01-10 10:56:36'),
(61, 'FDKHGK0.9918889617546864', '', 'alao', 'nafisat', 'yetunde', 'tuition_fee', '25000', '', '2019_2020', 'successful', '2020-01-10 10:58:31'),
(62, 'FDKHGK0.12694121326527563', '', 'abdulazeez', 'ibrahim', 'olamilekan', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-01-10 11:06:48'),
(63, 'FDKHGK0.4357933793831601', '', 'abdulazeez', 'ibrahim', 'olamilekan', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-01-10 11:30:15'),
(64, 'FDKHGK0.6195243802724817', '', 'abdulazeez', 'ibrahim', 'olamilekan', 'hostel_accommodation', '25000', '', '2019_2020', 'successful', '2020-01-10 11:33:42'),
(65, 'FDKHGK0.2548524764927209', '', 'abdulazeez', 'ibrahim', 'olamilekan', 'tuition_fee', '25000', '', '2019_2020', 'successful', '2020-01-10 11:36:02'),
(66, 'FDKHGK0.5408092121936234', '', 'ADIGUN', 'FARUK', 'ALADE', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-01-10 11:50:23'),
(67, 'FDKHGK0.6059677532695058', '', 'ADIGUN', 'FARUK', 'ALADE', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-01-10 12:04:08'),
(68, 'FDKHGK0.49426155089560586', '', 'NYONG', 'JOSEPH', 'EDET', 'tuition_fee', '25000', '', '2019_2020', 'successful', '2020-01-10 12:10:09'),
(69, 'FDKHGK0.8336499248447975', '', 'ADENIYI', 'FARUQ', 'ADEOLA', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-01-10 12:20:03'),
(70, 'FDKHGK0.7428885031190033', '', 'ADENIYI', 'FARUQ', 'ADEOLA', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-01-10 12:43:35'),
(71, 'FDKHGK0.4691353499545172', '', 'OYETUNBI', 'KEHINDE', 'MUMINI', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-01-13 15:45:59'),
(72, 'FDKHGK0.5307402140354012', '', 'OYETUNBI', 'KEHINDE', 'MUMINI', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-01-13 16:10:39'),
(73, 'FDKHGK0.5307402140354013', '', 'AWONIYI', 'MUSILIUDEEN', 'ABIDEMI', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-01-15 12:21:47'),
(74, 'FDKHGK0.5307402140354013', '', 'AWONIYI', 'MUSILIUDEEN', 'ABIDEMI', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-01-15 12:21:47'),
(75, '', '', 'TALIATU', 'MUTAIRU', 'ABIODUN', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-01-17 12:08:13'),
(76, '', '', 'TALIATU', 'MUTAIRU', 'ABIODUN', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-01-17 12:08:13'),
(77, 'FDKHGK0.08843310861501090', '', 'Sulaiman', 'Ismail', 'Ayofe', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-01-22 12:53:41'),
(78, 'FDKHGK0.08843310861501092', '', 'Sulaiman', 'Ismail', 'Ayofe', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-01-22 12:53:41'),
(79, 'FDKHGK0.08843310861501094', '', 'Sulaiman', 'Ismail', 'Ayofe', 'tuition_fee', '25000', '', '2019_2020', 'successful', '2020-01-22 12:53:41'),
(80, 'FDKHGK0.08843310861501093', '', 'Sulaiman', 'Ismail', 'Ayofe', 'hostel_accommodation', '12500', '', '2019_2020', 'successful', '2020-01-22 12:53:41'),
(81, 'FDKHGK0.5307402140354010', '', 'Asore', 'Faruk', 'Abayomi', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-01-24 13:14:58'),
(82, 'FDKHGK0.5307402140354019', '', 'Asore', 'Faruk', 'Abayomi', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-01-24 13:14:58'),
(83, 'FDKHGK0.5307402140354017', '', 'Asore', 'Faruk', 'Abayomi', 'tuition_fee', '25000', '', '2019_2020', 'successful', '2020-01-24 13:14:58'),
(84, 'FDKHGK0.7551076950420488', '', 'Akinnusi', 'Joshua', 'Oluwatosin', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-01-27 12:11:38'),
(85, 'FDKHGK0.6530386758250393', '', 'Akinnusi', 'Joshua', 'Oluwatosin', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-01-27 12:23:26'),
(86, 'FDKHGK0.4695669023674953', '', 'Abdulsalam', 'Fadilulahi', 'Taiwo', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-01-27 12:34:23'),
(87, 'FDKHGK0.07806452859765756', '', 'Abdulsalam', 'Fadilulahi', 'Taiwo', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-01-27 12:52:48'),
(88, 'FDKHGK0.7681423872537085', '', 'Abdulsalam', 'Fadilulahi', 'Taiwo', 'tuition_fee', '25000', '', '2019_2020', 'successful', '2020-01-27 12:55:58'),
(89, 'FDKHGK0.7633586544391482', '', 'Abdulsalam', 'Fawaz', 'Kehinde', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-01-27 13:04:34'),
(90, 'FDKHGK0.8145843096139453', '', 'Abdulsalam', 'Fawaz', 'Kehinde', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-01-27 13:17:49'),
(91, 'FDKHGK0.44714502698813474', '', 'Abdulsalam', 'Fawaz', 'Kehinde', 'tuition_fee', '25000', '', '2019_2020', 'successful', '2020-01-27 13:21:12'),
(92, 'FDKHGK0.4759171600993737', '', 'Busari', 'Saheed', 'Ademola', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-01-27 13:34:55'),
(93, 'FDKHGK0.7718498933978828', '', 'Busari', 'Saheed', 'Ademola', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-01-27 13:51:14'),
(94, 'FDKHGK0.08753713557141007', '', 'OLADAPO', 'OLAOTAN', 'WAJEED', 'tuition_fee', '25000', '', '2019_2020', 'successful', '2020-01-27 15:29:41'),
(95, 'FDKHGK0.3427129665442483', '', 'Atoyebi', 'Abdulkhaleeq', 'Adekunle', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-01-28 15:49:08'),
(96, 'FDKHGK0.5991108177174425', '', 'Atoyebi', 'Abdulkhaleeq', 'Adekunle', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-01-28 16:14:08'),
(97, 'FDKHGK0.18974087156151387', '', 'Akanni', 'Ademola', 'Johnson', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-01-29 08:08:59'),
(98, 'FDKHGK0.6608231110566483', '', 'Akanni', 'Ademola', 'Johnson', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-01-29 08:23:10'),
(99, 'FDKHGK0.4628965338431512', '', 'Akanni', 'Ademola', 'Johnson', 'tuition_fee', '25000', '', '2019_2020', 'successful', '2020-01-29 08:30:20'),
(100, 'FDKHGK0.8068818993466642', '', 'TALIATU', 'MUTAIRU', 'ABIODUN', 'tuition_fee', '25000', '', '2019_2020', 'successful', '2020-01-31 11:10:46'),
(101, 'FDKHGK0.08741904162957548', '', 'AMINULLAHI', 'SHAMSUDEEN', 'A', 'tuition_fee', '25000', '', '2019_2020', 'successful', '2020-02-05 15:56:41'),
(103, 'FDKHGK0.12585958291115262', '', 'SALAMI', 'WARIS', 'GBOLABO', 'tuition_fee', '25000', '', '2019_2020', 'successful', '2020-02-05 16:03:23'),
(104, 'FDKHGK0.5219807439172923', '', 'ADIGUN', 'FARUK', 'ALADE', 'tuition_fee', '25000', '', '2019_2020', 'successful', '2020-02-05 16:50:45'),
(105, 'FDKHGK0.4022524281355184', '', 'Fadele', 'Yusuff', 'Olawale', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-02-07 12:00:31'),
(106, 'FDKHGK0.8488597035066765', '', 'Fadele', 'Yusuff', 'Olawale', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-02-07 12:16:54'),
(107, 'FDKHGK0.4113273934985364', '', 'Aroyehun', 'Aduragbemi', 'Oyebamiji', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-02-07 12:24:35'),
(108, 'FDKHGK0.4609785133319051', '', 'Aroyehun', 'Aduragbemi', 'Oyebamiji', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-02-07 12:39:44'),
(109, 'FDKHGK0.6386419318916825', '', 'Owolabi', 'Nurat', 'Adetutu', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-02-07 12:47:39'),
(110, 'FDKHGK0.004876494552434885', '', 'Owolabi', 'Nurat', 'Adetutu', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-02-07 13:08:33'),
(111, 'FDKHGK0.9872881540458771', '', 'Oloyede', 'Mustapha', 'Akolade', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-02-07 13:23:11'),
(112, 'FDKHGK0.3170088069741597', '', 'Oloyede', 'Mustapha', 'Akolade', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-02-07 13:38:35'),
(113, 'FDKHGK0.7663453917387779', '', 'Yusuf', 'Saoban', 'Olayimika', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-02-10 15:46:35'),
(114, 'FDKHGK0.8477769923067373', '', 'Yusuf', 'Saoban', 'Olayimika', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-02-10 16:02:42'),
(115, 'FDKHGK0.0821346488375283', '', 'Busari', 'Saheed', 'Ademola', 'tuition_fee', '25000', '', '2019_2020', 'successful', '2020-02-18 15:18:53'),
(116, 'FDKHGK0.920939366116742', '', 'DAHUNSI', 'OPEYEMI', 'SUNDAY', 'tuition_fee', '25000', '', '2019_2020', 'successful', '2020-02-28 10:14:09'),
(117, 'FDKHGK0.861715009366663', '', 'AWONIYI', 'MUSILIUDEEN', 'ABIDEMI', 'tuition_fee', '25000', '', '2019_2020', 'successful', '2020-02-28 10:17:58'),
(118, 'FDKHGK0.02578066988784844', '', 'ADEMOLA', 'SAKIBU', 'ADETAYO', 'tuition_fee', '25000', '', '2019_2020', 'successful', '2020-02-28 10:21:08'),
(119, 'FDKHGK0.16670413685170682', '', 'Oloyede', 'Mustapha', 'Akolade', 'tuition_fee', '25000', '', '2019_2020', 'successful', '2020-03-03 15:18:35'),
(120, 'FDKHGK0.9108759957121904', '', 'Afolabi', 'Elizabeth', 'Aanu', 'application_fee', '2000', '', '2019_2020', 'successful', '2020-03-11 12:31:50'),
(121, 'FDKHGK0.9545640891251972', '', 'Afolabi', 'Elizabeth', 'Aanu', 'acceptance_fee', '10000', '', '2019_2020', 'successful', '2020-03-11 12:48:38'),
(122, 'FDKHGK0.9545640891251973', '', 'Owolabi', 'Nurat ', 'Adetutu', 'tuition_fee', '25000', '', '2019_2020', 'successful', '2020-03-11 12:48:38'),
(123, 'FDKHGK0.9545640891251974', '', 'Bidmus', 'RUKAYAT', 'Oyindamola', 'tuition_fee', '25000', '', '2019_2020', 'successful', '2020-03-11 12:48:38'),
(124, 'FDKHGK0.9545640891251975', '', 'Muzzamil', 'Nihimatallahi', 'Morenikeji', 'tuition_fee', '25000', '', '2019_2020', 'successful', '2020-03-11 12:48:38'),
(125, 'FDKHGK0.9545640891251976', '', 'Fadele', 'Yusuff', 'Olawale', 'tuition_fee', '25000', '', '2019_2020', 'successful', '2020-03-11 12:48:38'),
(135, 'FDKHGK0.267204417944261', '1657136', 'OLAWUYI', 'BILIKIS', 'ABIMBOLA', 'tuition_fee', '25000', '', '2019_2020', 'successful', '2020-10-27 16:57:22'),
(136, 'FDKHGK0.47795844743652527', '1657143', 'OLAWUYI', 'BILIKIS', 'ABIMBOLA', 'hostel_accommodation', '25000', '', '2019_2020', 'successful', '2020-10-27 17:00:44'),
(138, 'FDKHGK0.9300833672568933', '1657167', 'ABDULAZEEZ', 'SHEU', 'AYOMIDE', 'tuition_fee', '50000', '', '2019_2020', 'successful', '2020-02-05 15:59:17'),
(142, 'FDKHGK0.7938195742855896', '1686404', '4', '4', '4', 'total_fees', '75000', '', '2019_2020', 'successful', '2020-11-09 15:28:03'),
(146, 'FDKHGK0.056468117395420236', '1686985', 'ola', 'ade', 'jesu', 'tuition_fee', '25000', '', '2019_2020', 'successful', '2020-11-09 21:58:23'),
(147, 'FDKHGK0.4962420263496685', '1686990', 'ola', 'ade', 'jesu', 'hostel_accommodation', '25000', '', '2019_2020', 'successful', '2020-11-09 22:07:20'),
(156, 'FDKHGK0.6372760104226292', '1701830', 'asq', 'asq', 'asq', 'application_fee', '5000', '', '2020_2021', 'successful', '2020-11-16 11:25:31'),
(157, 'FDKHGK0.5314370835478046', '1701842', 'asq', 'asq', 'asq', 'acceptance_fee', '10000', '', '2020_2021', 'successful', '2020-11-16 11:28:40'),
(158, '', '', 'RASAQ', 'AFEEZ', 'AJIBOLA', 'prospective_student', '20000', '', '2021', 'sucessful', '2021-01-05 21:47:00'),
(159, '', '', 'RASAQ', 'AFEEZ', 'AJIBOLA', 'professional_student', '120000', '', '', '', '2021-01-05 23:10:46'),
(160, '', '', 'kabir', 'faruk', 'taye', '', '23000', '', '', '', '2021-01-06 22:11:49'),
(161, '', '', 'kabir', 'faruk', 'taye', 'professional_student', '23000', '', '', '', '2021-01-06 22:14:04'),
(162, '', '', 'kabir', 'faruk', 'taye', 'professional_student', '23000', '', '', '', '2021-01-06 22:16:43'),
(163, '', '', 'kabir', 'faruk', 'taye', 'professional_student', '23000', '', '', '', '2021-01-06 22:20:08'),
(164, '', '', 'kabir', 'faruk', 'taye', 'professional_student', '23000', '', '', '', '2021-01-06 22:27:06'),
(165, '', '', 'kabir', 'faruk', 'taye', 'professional_student', '23000', '', '', '', '2021-01-06 23:02:17'),
(166, '', '', 'tola', 'ok', 'dayo', 'professional_student', '60000', '', '', 'successful', '2021-01-07 00:16:45'),
(167, '', '', '               ', '', '', 'professional_student', '', '', '', 'successful', '2021-01-07 01:08:21'),
(168, '', '', '', '', '', '', '', '', '', '', '2021-01-07 01:41:31'),
(169, '', '', '', '', '', '', '', '', '', '', '2021-01-07 01:43:44'),
(170, '', '', '', '', '', '', '', '', '', '', '2021-01-07 01:47:38'),
(171, '', '', '', '', '', 'professional_student', '', '', '', 'successful', '2021-01-07 03:31:20'),
(172, '', '', '', '', '', 'professional_student', '', '', '', 'successful', '2021-01-07 03:33:16'),
(173, '', '', 'aluku', 'kemi', 'soji', 'professional_student', '23000', '', '', 'successful', '2021-01-08 12:22:02'),
(174, '', '', 'tola', 'tobi', 'tope', '', '1000', '', '', '', '2021-01-10 11:37:39'),
(175, '', '', 'lateef', 'oluwadamire', 'a', '', '2100', '', '', '', '2021-01-10 13:34:25'),
(176, '', '', 'ajansare', 'ikoko', 'waabi', '', '12000', '', '', '', '2021-01-11 08:33:15'),
(177, '', '', 'rasaq', 'afeez', 'ajibola', '', '1000', '', '', '', '2021-01-11 11:52:31'),
(178, '', '', 'rasaq', 'afeez', 'ajibola', '', '1000', '', '', '', '2021-01-11 11:58:41'),
(179, '', '', 'rasaq', 'afeez', 'ajibola', '', '1000', '', '', '', '2021-01-11 12:01:51'),
(180, '', '', 'rasaq', 'afeez', 'ajibola', '', '15000', '', '', '', '2021-01-11 12:03:04'),
(181, '', '', 'jokotagba', 'paul', 'oreoluwa', '', '30000', '', '', '', '2021-01-11 13:59:41');

-- --------------------------------------------------------

--
-- Table structure for table `prospective_prof`
--

CREATE TABLE `prospective_prof` (
  `id` int(11) NOT NULL,
  `mode_of_entry` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `state` varchar(255) NOT NULL,
  `local_govt` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `doc_name` varchar(255) DEFAULT NULL,
  `application_status` int(11) NOT NULL DEFAULT '0',
  `home_address` varchar(255) DEFAULT NULL,
  `schedule_status` int(11) NOT NULL DEFAULT '0',
  `admission_approval` int(11) NOT NULL DEFAULT '0',
  `admission_time` varchar(255) DEFAULT NULL,
  `status` text,
  `start_date` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prospective_prof`
--

INSERT INTO `prospective_prof` (`id`, `mode_of_entry`, `surname`, `firstname`, `middlename`, `timestamp`, `state`, `local_govt`, `gender`, `phone_no`, `email`, `password`, `course`, `doc_name`, `application_status`, `home_address`, `schedule_status`, `admission_approval`, `admission_time`, `status`, `start_date`) VALUES
(2, 'DE', 'RASAQ', 'AFEEZ', 'AJIBOLA', '2021-01-04 17:29:56', 'OSUN', 'OSOGBO', 'MALE', '08062414730', 'rasaq@gmail.com', '9999', 'devops', NULL, 1, NULL, 0, 0, NULL, 'Select an Option', '2021-01-11 21:51:04.000000'),
(3, 'DE', 'SULAIMAN', 'OLAYINKA', 'KABIR', '2021-01-04 17:36:01', 'OSUN', '', 'MANE', '', '', '', 'WEB DEV', NULL, 0, NULL, 0, 0, NULL, NULL, '2021-01-08 17:04:07.598531'),
(6, '', '1111', '1111', '11111', '2021-01-06 21:09:27', 'tetgr', 't55yg', 'we', '', 'admin', '', '', NULL, 0, NULL, 0, 0, NULL, NULL, '2021-01-08 17:04:07.598531'),
(8, '', 'oluseseun', 'tobi', 'ema', '2021-01-06 21:37:19', 'ondo', 'akure', 'female', '', 'gf@jg.com', '', 'data', NULL, 0, NULL, 0, 0, NULL, NULL, '2021-01-08 17:04:07.598531'),
(9, '', 'Alfred Schmidt', 'rasaq', 'FAeee', '2021-01-06 21:50:15', 'ondo', 'akure', 'female', '090876666', 'gf@jg.com', '', 'data', NULL, 1, NULL, 0, 0, NULL, 'Expired', '2021-01-11 10:53:27.000000'),
(10, '', 'tola', 'ok', 'dayo', '2021-01-07 00:16:45', 'qqq', 'oso', '', '1235678', 'admin', '', '533t4', NULL, 1, NULL, 0, 0, NULL, 'Expaired', '2021-01-10 17:31:48.000000'),
(17, '', 'aluku', 'kemi', 'soji', '2021-01-08 12:22:02', 'osun', 't55yg', 'male', '08093736', 'rasaqajorke@gmail.com', '', 'coding', NULL, 1, NULL, 0, 0, NULL, 'Active', '2021-01-10 17:14:39.000000'),
(23, '', 'Adeleke', 'tolulope', 'shade', '2021-01-10 11:09:39', 'kwara', 'offa', 'female', '0812345677', 'rasaqajorke@gmail.com', '', 'Graphics', NULL, 0, NULL, 0, 0, NULL, NULL, '2021-01-10 11:09:39.656883'),
(27, '', 'Adeleke', 'tolulope', 'shade', '2021-01-10 11:21:52', 'kwara', 'offa', 'female', '0812345677', 'rasaqajorke@gmail.com', '', 'Graphics', NULL, 0, NULL, 0, 0, NULL, NULL, '2021-01-10 11:21:52.491759'),
(28, '', 'Adeleke', 'tolulope', 'shade', '2021-01-10 11:23:57', 'kwara', 'offa', 'female', '0812345677', 'rasaqajorke@gmail.com', '', 'Graphics', NULL, 0, NULL, 0, 0, NULL, NULL, '2021-01-10 11:23:57.158960'),
(29, '', 'Adeola', 'taye', 'ajibola', '2021-01-10 11:33:40', 'osun', 'akure', 'male', '1235678', '+2348062414730', '', 'Graphics', NULL, 0, NULL, 0, 0, NULL, NULL, '2021-01-10 11:33:40.972018'),
(30, '', 'tola', 'tobi', 'tope', '2021-01-10 11:37:39', 'osun', 'oso', 'male', '234566', 'rasaqajiborla@gmail.xom', '', 'Graphics', NULL, 1, NULL, 0, 0, NULL, 'Active', '2021-01-10 17:14:39.000000'),
(31, '', 'lateef', 'oluwadamire', 'a', '2021-01-10 13:34:24', 'ogun', 'akure', 'male', '123456', 'asd@gmai.com', '', 'data', NULL, 1, NULL, 0, 0, NULL, 'Select an Option', '2021-01-10 21:15:35.000000'),
(32, '', 'ajansare', 'ikoko', 'waabi', '2021-01-11 08:33:15', 'oyo', 'ibadan', 'male', '09087654', 'rasaqajiborla@gmail.com', '', 'math', NULL, 1, NULL, 0, 0, NULL, 'Expired', '2021-01-11 21:51:35.000000'),
(33, '', 'rasaq', 'afeez', 'ajibola', '2021-01-11 11:52:31', 'qqq', 't55yg', 'fff', '1235678', 'admin', '', 'coding', NULL, 1, NULL, 0, 0, NULL, 'Select an Option', '2021-01-11 21:51:04.000000'),
(34, '', 'rasaq', 'afeez', 'ajibola', '2021-01-11 11:58:41', 'qqq', 't55yg', 'fff', '1235678', 'admin', '', 'coding', NULL, 1, NULL, 0, 0, NULL, 'Select an Option', '2021-01-11 21:51:04.000000'),
(35, '', 'rasaq', 'afeez', 'ajibola', '2021-01-11 12:01:51', 'qqq', 't55yg', 'fff', '1235678', 'admin', '', 'coding', NULL, 1, NULL, 0, 0, NULL, 'Select an Option', '2021-01-11 21:51:04.000000'),
(36, '', 'rasaq', 'afeez', 'ajibola', '2021-01-11 12:03:04', 'osun', 't55yg', 'fff', '1235678', 'admin', '', 'grg', NULL, 1, NULL, 0, 0, NULL, 'Select an Option', '2021-01-11 21:51:04.000000'),
(37, '', 'jokotagba', 'paul', 'oreoluwa', '2021-01-11 13:59:41', 'ogun', 'odogbolu', 'male', '07036292257', 'pauljokotagba@gmail.com', '', 'big data analysis', NULL, 1, NULL, 0, 0, NULL, 'Active', '2021-01-11 14:08:59.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `payment_history`
--
ALTER TABLE `payment_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prospective_prof`
--
ALTER TABLE `prospective_prof`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment_history`
--
ALTER TABLE `payment_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `prospective_prof`
--
ALTER TABLE `prospective_prof`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
