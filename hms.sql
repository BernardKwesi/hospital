-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 11, 2023 at 09:31 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `admin_credentials`
--

CREATE TABLE `admin_credentials` (
  `USERNAME` varchar(50) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `admin_credentials`
--

INSERT INTO `admin_credentials` (`USERNAME`, `PASSWORD`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(3, 'Demo test', 7, 6, 600, '2019-06-29', '9:15 AM', '2019-06-23 18:31:28', 1, 0, '0000-00-00 00:00:00'),
(4, 'Ayurveda', 5, 5, 8050, '2019-11-08', '1:00 PM', '2019-11-05 10:28:54', 1, 1, '0000-00-00 00:00:00'),
(5, 'Dermatologist', 9, 7, 500, '2019-11-30', '5:30 PM', '2019-11-10 18:41:34', 1, 0, '2019-11-10 18:48:30'),
(6, 'Physician', 11, 2, 2000, '2020-07-14', '10:15 AM', '2020-07-05 02:12:37', 1, 1, NULL),
(7, 'General Physician', 3, 2, 1200, '2020-07-05', '10:15 AM', '2020-07-05 02:14:49', 1, 1, NULL),
(8, 'General Physician', 3, 2, 1200, '2023-10-12', '6:45 AM', '2023-10-10 06:24:26', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `CONTACT_NUMBER` varchar(10) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `DOCTOR_NAME` varchar(20) NOT NULL,
  `DOCTOR_ADDRESS` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`ID`, `NAME`, `CONTACT_NUMBER`, `ADDRESS`, `DOCTOR_NAME`, `DOCTOR_ADDRESS`) VALUES
(4, 'Kiran Suthar', '1234567690', 'Andheri East', 'Anshari', 'Andheri East'),
(6, 'Aditya', '7365687269', 'Virar West', 'Xyz', 'Virar West'),
(11, 'Shivam Tiwari', '6862369896', 'Dadar West', 'Dr Kapoor', 'Dadar East'),
(13, 'Varsha Suthar', '7622369694', 'Rani Station', 'Dr Ramesh', 'Rani Station'),
(14, 'Prakash Bhattarai', '9802851472', 'Pokhara-16, Dhikidada', 'Hari Bahadur', 'Matepani-12');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Dentist', 'Lyndon Bermoy', 'New Delhi', '500', 8285703354, 'anuj.lpu1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-29 06:25:37', '2020-07-05 01:53:19'),
(2, 'Homeopath', 'Sarita Pandey', 'Varanasi', '600', 2147483647, 'sarita@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-29 06:51:51', '0000-00-00 00:00:00'),
(3, 'General Physician', 'Nitesh Kumar', 'Ghaziabad', '1200', 8523699999, 'nitesh@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:43:35', '0000-00-00 00:00:00'),
(4, 'Homeopath', 'Vijay Verma', 'New Delhi', '700', 25668888, 'vijay@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:45:09', '0000-00-00 00:00:00'),
(5, 'Ayurveda', 'Sanjeev', 'Gurugram', '8050', 442166644646, 'sanjeev@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:47:07', '0000-00-00 00:00:00'),
(6, 'General Physician', 'Amrita', 'New Delhi India', '2500', 45497964, 'amrita@test.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:52:50', '0000-00-00 00:00:00'),
(7, 'Demo test', 'abc ', 'New Delhi India', '200', 852888888, 'test@demo.com', '25d55ad283aa400af464c76d713c07ad', '2017-01-07 08:08:58', '2023-10-07 20:06:45'),
(8, 'Ayurveda', 'Test Doctor', 'Xyz Abc New Delhi', '600', 1234567890, 'test@test.com', '25d55ad283aa400af464c76d713c07ad', '2019-06-23 17:57:43', '2023-10-10 05:43:38'),
(11, 'Physician', 'Jonah Juarez', 'Surigao Philippines', '2000', 123456789, 'jjuarez@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2020-07-05 02:06:00', '2020-07-05 02:06:48');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(20, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-07-05 01:50:01', NULL, 1),
(21, NULL, 'juarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:02:51', NULL, 0),
(22, NULL, 'juarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:03:03', NULL, 0),
(23, NULL, 'jjuarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:04:02', NULL, 0),
(24, NULL, 'jjuarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:04:38', NULL, 0),
(25, 11, 'jjuarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:06:19', NULL, 1),
(26, 11, 'jjuarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:06:38', NULL, 1),
(27, 11, 'jjuarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:08:18', NULL, 1),
(28, 11, 'jjuarez@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:15:25', NULL, 1),
(29, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2023-10-07 18:48:59', NULL, 0),
(30, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2023-10-07 20:06:56', NULL, 1),
(31, NULL, 'test@test.com', 0x3a3a3100000000000000000000000000, '2023-10-10 05:43:17', NULL, 0),
(32, 8, 'test@test.com', 0x3a3a3100000000000000000000000000, '2023-10-10 05:43:47', '10-10-2023 11:41:58 AM', 1),
(33, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2023-10-10 06:12:28', '10-10-2023 11:47:59 AM', 1),
(34, 8, 'test@test.com', 0x3a3a3100000000000000000000000000, '2023-10-10 06:25:12', NULL, 1),
(35, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2023-10-10 06:29:40', '10-10-2023 12:32:07 PM', 1),
(36, 8, 'test@test.com', 0x3a3a3100000000000000000000000000, '2023-10-11 06:06:06', '11-10-2023 11:46:48 AM', 1),
(37, 8, 'test@test.com', 0x3a3a3100000000000000000000000000, '2023-10-11 06:17:26', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2016-12-28 06:37:25', '0000-00-00 00:00:00'),
(2, 'General Physician', '2016-12-28 06:38:12', '0000-00-00 00:00:00'),
(3, 'Dermatologist', '2016-12-28 06:38:48', '0000-00-00 00:00:00'),
(4, 'Homeopath', '2016-12-28 06:39:26', '0000-00-00 00:00:00'),
(5, 'Ayurveda', '2016-12-28 06:39:51', '0000-00-00 00:00:00'),
(6, 'Dentist', '2016-12-28 06:40:08', '0000-00-00 00:00:00'),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2016-12-28 06:41:18', '0000-00-00 00:00:00'),
(9, 'Demo test', '2016-12-28 07:37:39', '0000-00-00 00:00:00'),
(10, 'Bones Specialist demo', '2017-01-07 08:07:53', '0000-00-00 00:00:00'),
(11, 'Test', '2019-06-23 17:51:06', '2019-06-23 17:55:06'),
(12, 'Dermatologist', '2019-11-10 18:36:36', '2019-11-10 18:36:50'),
(13, 'Physician', '2020-07-05 01:59:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `INVOICE_ID` int(11) NOT NULL,
  `NET_TOTAL` double NOT NULL DEFAULT 0,
  `INVOICE_DATE` date NOT NULL DEFAULT current_timestamp(),
  `CUSTOMER_ID` int(11) NOT NULL,
  `TOTAL_AMOUNT` double NOT NULL,
  `TOTAL_DISCOUNT` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`INVOICE_ID`, `NET_TOTAL`, `INVOICE_DATE`, `CUSTOMER_ID`, `TOTAL_AMOUNT`, `TOTAL_DISCOUNT`) VALUES
(1, 30, '2021-10-19', 14, 30, 0),
(2, 2626, '2021-10-19', 6, 2626, 0);

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `PACKING` varchar(20) NOT NULL,
  `GENERIC_NAME` varchar(100) NOT NULL,
  `SUPPLIER_NAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`ID`, `NAME`, `PACKING`, `GENERIC_NAME`, `SUPPLIER_NAME`) VALUES
(1, 'Nicip Plus', '10tab', 'Paracetamole', 'BDPL PHARMA'),
(2, 'Crosin', '10tab', 'Hdsgvkvajkcbja', 'Kiran Pharma'),
(4, 'Dolo 650', '15tab', 'paracetamole', 'BDPL PHARMA'),
(5, 'Gelusil', '10tab', 'mint fla', 'Desai Pharma');

-- --------------------------------------------------------

--
-- Table structure for table `medicines_stock`
--

CREATE TABLE `medicines_stock` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `BATCH_ID` varchar(20) NOT NULL,
  `EXPIRY_DATE` varchar(10) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `MRP` double NOT NULL,
  `RATE` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `medicines_stock`
--

INSERT INTO `medicines_stock` (`ID`, `NAME`, `BATCH_ID`, `EXPIRY_DATE`, `QUANTITY`, `MRP`, `RATE`) VALUES
(1, 'Crosin', 'CROS12', '12/34', 2, 2626, 26),
(2, 'Gelusil', 'G327', '12/42', 0, 15, 12),
(3, 'Dolo 650', 'DOLO327', '01/23', 3, 30, 24),
(4, 'Nicip Plus', 'NI325', '05/22', 3, 32.65, 28);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `SUPPLIER_NAME` varchar(100) NOT NULL,
  `INVOICE_NUMBER` int(11) NOT NULL,
  `VOUCHER_NUMBER` int(11) NOT NULL,
  `PURCHASE_DATE` varchar(10) NOT NULL,
  `TOTAL_AMOUNT` double NOT NULL,
  `PAYMENT_STATUS` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `index_no` varchar(200) NOT NULL,
  `name` varchar(400) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `index_no`, `name`, `dob`, `gender`, `address`, `contact`, `email`) VALUES
(1, '04/2023/2901D', 'Fabiola Terry', '2003-06-19', 'female', '6796 Juliet Wall\nPort Edmundfurt, VA 01448-2375', '379-715-2381', 'fadel.elva@hotmail.com'),
(2, '04/2023/2902D', 'Winfield Baumbach', '1972-09-12', 'male', '863 Weimann Ford Suite 912\nNew Buster, MO 02875', '814-646-2076 x50500', 'herminio64@yahoo.com'),
(3, '04/2023/2903D', 'Boyd Anderson', '1981-12-02', 'male', '353 Murazik Gardens\nWest Donald, TX 82438', '(406) 748-8824', 'verdie.raynor@gmail.com'),
(4, '04/2023/2904D', 'Maida Runolfsdottir', '1972-12-22', 'female', '893 Luigi Neck Suite 244\nZoietown, VA 14350-9868', '(705) 548-7318 x7154', 'bradley.hoppe@friesen.com'),
(5, '04/2023/2905D', 'Maritza Swaniawski', '1986-07-20', 'female', '9861 Wolff Row\nEast Jaydefort, MT 72944-8154', '+1 (743) 844-6712', 'carli.carter@emmerich.biz'),
(6, '04/2023/2906D', 'Eloy Erdman', '1999-07-14', 'male', '94658 Nya Valley Suite 793\nHamillmouth, RI 99209', '330.803.9278 x5975', 'marvin.jedediah@gmail.com'),
(7, '04/2023/2907D', 'Jaeden Kozey', '1984-06-17', 'male', '76222 Braun Point\nSouth Sydnimouth, NJ 45917', '663-486-0946 x3792', 'santos.abernathy@hilpert.com'),
(8, '04/2023/2909D', 'Marshall Lindgren', '1978-07-29', 'male', '584 Aufderhar Spring Suite 407\nWest Brycenland, IA 63930-9021', '505.280.0783 x6388', 'schulist.aron@boehm.info'),
(9, '04/2023/29010D', 'Odie Spencer', '1984-03-12', 'female', '927 Mills Camp Apt. 196\nSouth Zander, CA 07292-2228', '1-627-912-6404 x868', 'michael.kohler@gmail.com'),
(10, '04/2023/29011D', 'Kaleb Schiller', '1981-06-12', 'male', '591 Patrick Drives\nPeteton, AK 13454', '802-278-2114', 'breitenberg.kassandra@hodkiewicz.info'),
(11, '04/2023/29012D', 'Elenora Dickens', '1972-02-27', 'female', '69672 Freeman Mission\nLake Elizabeth, AZ 27412', '(857) 377-0769', 'hegmann.caroline@kulas.net'),
(12, '04/2023/29013D', 'Otto Dickens', '1978-05-20', 'male', '618 Rolfson Neck Apt. 898\nNew Chaya, ME 52309', '517-365-4728', 'keeling.lyla@russel.com'),
(13, '04/2023/29014D', 'Elinor Morar', '2000-11-30', 'female', '1107 Titus Junctions\nStehrstad, OH 11777', '328.933.7692', 'terrell45@wisozk.biz'),
(14, '04/2023/29015D', 'Columbus Bins', '1982-06-20', 'male', '261 Rod Parks Apt. 516\nSouth Gissellemouth, UT 21889', '(997) 547-9179', 'ilangworth@carter.com'),
(15, '04/2023/29016D', 'Freddie Mraz', '1975-11-28', 'male', '1120 Littel Union Apt. 593\nNorth Luisatown, KS 59265', '+1-514-774-6704', 'tavares.kemmer@yahoo.com'),
(16, '04/2023/29018D', 'Cory Ritchie', '1984-10-22', 'male', '7508 Trantow Wall Suite 132\nEast Nona, AZ 53451', '913.653.6701 x8128', 'bode.arno@gerhold.com'),
(17, '04/2023/29019D', 'Jarvis Stoltenberg', '1993-04-08', 'male', '51488 Alexandro Valleys\nLake Emmyfurt, LA 15641', '390-638-3980', 'estelle.kuhic@kemmer.com'),
(18, '04/2023/29020D', 'Felipa Blanda', '2004-10-31', 'female', '1443 Morar Pass\nWest Armani, NV 70982-8921', '532-784-1420 x473', 'schmeler.estell@yahoo.com'),
(19, '04/2023/29021D', 'Gerhard Mohr', '2000-12-16', 'male', '5642 Bayer Summit\nWest Zellahaven, AK 65102-9535', '637.537.3122', 'autumn.lockman@dare.biz'),
(20, '04/2023/29022D', 'Krystal Lubowitz', '1979-05-17', 'female', '202 Jewell Ways Apt. 501\nBartport, MT 84636', '496.323.2454', 'glover.dennis@hotmail.com'),
(21, '04/2023/29023D', 'Oma Casper', '1975-06-05', 'female', '90291 Deion Road\nWest Davonburgh, CO 04195-8060', '(616) 667-0732', 'nona.braun@yahoo.com'),
(22, '04/2023/29024D', 'Missouri Gorczany', '1988-10-22', 'female', '74210 Patricia Extension\nSouth Marcobury, MD 92756', '339.825.4102', 'afadel@turcotte.com'),
(23, '04/2023/29025D', 'Aiyana Strosin', '1973-12-29', 'female', '4245 Narciso Path Apt. 746\nEast Sylvesterville, IN 78987', '316-304-0795', 'susana98@bergstrom.com'),
(24, '04/2023/29026D', 'Millie Torp', '1988-02-13', 'female', '881 Herzog Parkways Apt. 706\nNicostad, AL 83455-5369', '+1.529.359.3698', 'wdenesik@bins.org'),
(25, '04/2023/29027D', 'Izaiah Ullrich', '1974-01-01', 'male', '394 Nicolas Inlet Suite 478\nEast Roberta, SC 62654-6661', '(654) 684-7056', 'ihilpert@legros.com'),
(26, '04/2023/29028D', 'Kari Howell', '1971-12-08', 'female', '7628 Kemmer Cliff\nLangoshbury, NC 63229-6433', '542.847.9362 x36109', 'wintheiser.vinnie@bogisich.com'),
(27, '04/2023/29029D', 'Eulah Tremblay', '1971-12-29', 'female', '5874 Rippin Highway Suite 651\nPort Maurice, OK 07247-4769', '+1-920-596-6121', 'euna80@hotmail.com'),
(28, '04/2023/29030D', 'Tracy Corkery', '1995-08-04', 'female', '88439 Bartell Square\nIsaiville, MS 69863-6655', '446.381.0623', 'chaya.schroeder@yahoo.com'),
(29, '04/2023/29032D', 'Vada Hirthe', '1988-10-14', 'female', '789 Greenholt Forks\nWest Ray, MD 82159-0451', '(668) 957-3561', 'kweimann@hotmail.com'),
(30, '04/2023/29033D', 'Laverna Schaden', '1998-07-22', 'male', '338 Davis Stravenue Apt. 680\nWest Hilarioville, VT 96089-4961', '(560) 894-5274', 'nolan28@yahoo.com'),
(31, '04/2023/29034D', 'Lelia Morissette', '2001-01-09', 'female', '203 Elmore Track\nRaymondmouth, AK 88120-2258', '1-389-382-4371', 'vlittel@russel.org'),
(32, '04/2023/29036D', 'Haskell Hermiston', '1986-05-04', 'male', '95047 Sonia Turnpike Suite 660\nSouth Carleton, NY 29747-4149', '+1 (968) 357-0588', 'lyla72@russel.com'),
(33, '04/2023/29037D', 'Sophia Kemmer', '1997-07-15', 'female', '363 Emilio Turnpike\nPort Dorcasfurt, NM 75160', '846-686-0392', 'prohaska.dimitri@leffler.com'),
(34, '04/2023/29038D', 'Anderson Stracke', '1980-04-22', 'male', '501 Monahan Ports\nManuelahaven, NY 29427-5261', '+1-361-425-1895', 'emilia00@will.com'),
(35, '04/2023/29039D', 'Grover Turcotte', '2000-03-17', 'male', '6578 Treutel Burgs\nBahringerbury, AR 68896', '+1.775.400.6867', 'whartmann@gleichner.biz'),
(36, '04/2023/29040D', 'Christy Frami', '1974-06-21', 'female', '21727 Kris Mill Apt. 141\nWest Lornabury, RI 29218', '319.555.5004', 'collier.shanon@hotmail.com'),
(37, '04/2023/29041D', 'Ramona Brakus', '2002-04-10', 'female', '900 Altenwerth Rest\nElmiramouth, MT 22818-6521', '516.287.3225 x720', 'rupert.gusikowski@stracke.com'),
(38, '04/2023/29042D', 'Eileen Collier', '1971-12-10', 'female', '724 Emmalee Meadow\nNorth Samport, OR 97608-7034', '895-941-1239 x000', 'jones.samara@barton.com'),
(39, '04/2023/29043D', 'Joelle Jerde', '1976-03-16', 'female', '152 Mohr Run Apt. 150\nBalistrerimouth, NV 23533', '+17652272884', 'ndeckow@koelpin.com'),
(40, '04/2023/29044D', 'Jordyn Crona', '1978-12-30', 'male', '20887 Gaylord Canyon Suite 400\nKaylinport, FL 52041', '618.941.1205', 'fcummings@yahoo.com'),
(41, '04/2023/29046D', 'Marge Jacobs', '1989-11-21', 'female', '312 Bernier Point\nNew Favianton, IL 28899-8720', '451-381-4890 x23559', 'leichmann@wintheiser.info'),
(42, '04/2023/29047D', 'Johnson Lowe', '1977-12-14', 'male', '83100 Cleta Land Suite 961\nNew Sagefurt, ND 46913-4000', '(576) 334-0489 x879', 'sipes.dayton@yahoo.com'),
(43, '04/2023/29048D', 'Trinity Herzog', '1990-10-22', 'female', '9393 Rempel Locks\nEast Onie, MI 64605', '+1 (830) 992-1854', 'effertz.emory@hotmail.com'),
(44, '04/2023/29049D', 'Larry Davis', '1991-12-17', 'male', '53867 Tiana Ridges\nLake Corastad, NE 34635', '363-616-9864 x1010', 'golden67@mcclure.info'),
(45, '04/2023/29050D', 'Shayne Lindgren', '2001-08-18', 'male', '576 Sterling Forge\nEast Thaddeus, SC 15685-0486', '+1-389-991-7477', 'erunte@klein.com'),
(46, '04/2023/29051D', 'Barry Welch', '1984-11-21', 'male', '698 Thalia Park Apt. 104\nBinstown, RI 86884', '(261) 437-8543 x558', 'kutch.johann@yahoo.com'),
(47, '04/2023/29052D', 'Bryana Hoppe', '2004-06-03', 'female', '81397 Walsh Garden Apt. 873\nTadside, OH 94612', '439-984-6192 x1789', 'roxane81@gmail.com'),
(48, '04/2023/29053D', 'Jalen Kris', '1989-02-04', 'male', '23168 Sandra Crossing\nSouth Zoie, TX 81843', '+1-318-387-0205', 'qmcglynn@boyer.com'),
(49, '04/2023/29054D', 'Erica Hintz', '2001-03-05', 'female', '6524 Kohler Park Apt. 974\nGaylordhaven, ME 51682', '554-298-4735 x83832', 'qbogan@hotmail.com'),
(50, '04/2023/29055D', 'Rozella Doyle', '1992-12-16', 'female', '154 Stroman Fields\nBalistreriside, CA 95057', '+1 (457) 553-3123', 'zemlak.edmund@lockman.com'),
(51, '04/2023/29056D', 'Cecile Douglas', '1989-02-28', 'female', '881 Euna Lake\nParisianbury, FL 48798-3496', '1-815-533-3084 x413', 'lind.herta@reinger.net'),
(52, '04/2023/29057D', 'Kaitlin Padberg', '1987-05-08', 'female', '13025 Brigitte Loop\nKamillefort, CT 94761-2088', '857.369.4912', 'kemmer.luigi@crist.org'),
(53, '04/2023/29058D', 'Demetris Cassin', '2002-12-27', 'female', '303 Kolby Run Apt. 136\nNorth Tremayneborough, CA 60342-2494', '520.909.0197', 'mkirlin@johnson.com'),
(54, '04/2023/29059D', 'Modesta Stamm', '2000-02-22', 'female', '938 Cyrus Camp\nKaydenmouth, NY 63823', '885-658-7419', 'tina.hintz@hessel.com'),
(55, '04/2023/29060D', 'Chandler Lindgren', '2001-06-10', 'male', '26284 Reynolds View Suite 052\nErnestinefort, ME 96180-5317', '487.273.9568 x824', 'lubowitz.yasmin@gmail.com'),
(56, '04/2023/29061D', 'Willow Homenick', '2001-03-08', 'female', '624 Wisozk Shores Apt. 870\nJoechester, IN 54518', '+14843249519', 'tschowalter@gmail.com'),
(57, '04/2023/29062D', 'Elyse Orn', '1992-03-10', 'female', '675 Elisa Glens\nLennafurt, ME 87652-4391', '(852) 700-6593', 'amelia.hudson@yahoo.com'),
(58, '04/2023/29063D', 'Alphonso Watsica', '1979-09-24', 'male', '3080 Goldner Union\nMertiechester, MA 74825', '+1.987.388.3078', 'mcole@tremblay.biz'),
(59, '04/2023/29065D', 'Jillian Purdy', '1995-11-28', 'male', '873 Schamberger Route Suite 365\nSouth Kayden, VT 87468', '+1.283.502.8986', 'mjohnson@gmail.com'),
(60, '04/2023/29066D', 'Victoria Prosacco', '2001-02-20', 'female', '26047 Hessel Drive Apt. 178\nDaremouth, NH 45228-6284', '1-978-368-4360 x5718', 'fgorczany@hettinger.info'),
(61, '04/2023/29067D', 'Jeramie Mante', '1978-01-22', 'male', '109 Fausto Light\nOrlandberg, ND 11820-5945', '1-743-932-5749', 'xthompson@yahoo.com'),
(62, '04/2023/29068D', 'Monte Mraz', '1975-08-26', 'male', '43789 Zulauf Mews\nSouth Breana, AZ 09342-6510', '(385) 433-1773', 'rwiza@herzog.com'),
(63, '04/2023/29070D', 'Krystal Pouros', '1984-11-10', 'female', '6339 Hackett Branch Apt. 015\nWest Idellaport, IN 21717-2697', '(475) 769-0976 x754', 'corwin.columbus@lynch.com'),
(64, '04/2023/29071D', 'Nicholas Johnson', '1994-01-19', 'male', '2339 Hane Landing\nWest Herminiomouth, WI 22783', '395-515-2703 x82089', 'kaitlyn73@gmail.com'),
(65, '04/2023/29072D', 'Dovie Gerlach', '1987-09-02', 'female', '576 Leif Mount\nBoehmburgh, MT 31128', '924.754.1073 x636', 'gregoria26@jerde.net'),
(66, '04/2023/29073D', 'America Ebert', '1988-07-07', 'female', '3280 Opal Stream\nPort Yadiraview, WI 63940', '323-809-6473 x13733', 'labadie.ted@considine.com'),
(67, '04/2023/29074D', 'Gillian Feest', '1978-12-19', 'male', '56728 Zboncak Pike\nNorth Jedidiahport, ID 19206-7300', '+1 (887) 545-6506', 'hudson.elliot@hotmail.com'),
(68, '04/2023/29075D', 'Aleen Metz', '2004-08-03', 'female', '779 Swaniawski Mill Apt. 454\nNorth Juddchester, IA 06821', '713.354.4600 x80703', 'skyla.pfeffer@hotmail.com'),
(69, '04/2023/29076D', 'Zack Wintheiser', '1992-10-24', 'male', '655 Nolan Forges Apt. 170\nHoldenland, ND 79755-1368', '1-512-392-7750 x545', 'peggie.reinger@yahoo.com'),
(70, '04/2023/29077D', 'Ofelia Hessel', '1989-11-09', 'female', '661 Daugherty Stravenue Apt. 310\nPort Americo, AR 60524', '(292) 451-9150 x2345', 'ocremin@von.net'),
(71, '04/2023/29078D', 'Abraham Langosh', '1984-01-08', 'male', '853 Orion Views\nEast Jenifer, NV 93921-4841', '1-724-938-0684 x334', 'moen.myrtie@davis.info'),
(72, '04/2023/29079D', 'Jeanne Kuhn', '1980-11-21', 'female', '36361 Tillman Ridge\nLake Roselynside, IL 10843', '649-952-4934 x5057', 'stroman.cruz@moore.com'),
(73, '04/2023/29080D', 'Rickie Kuhn', '1997-08-22', 'male', '12577 Bahringer Ranch Suite 591\nLake Stevie, OK 86453', '+14968927258', 'ervin10@hilpert.biz'),
(74, '04/2023/29081D', 'Michael Ankunding', '1987-07-14', 'male', '484 Bashirian Springs Apt. 946\nWest Barney, OH 40692', '1-205-943-7389', 'rau.craig@hotmail.com'),
(75, '04/2023/29082D', 'Darrell Zulauf', '1978-08-01', 'male', '588 Volkman Road\nLorenzview, NH 36077', '1-494-353-9794 x659', 'maurice56@berge.com'),
(76, '04/2023/29083D', 'Bertha Reichel', '1994-05-27', 'male', '8529 Bogan Extensions Apt. 736\nNorth Tamara, CO 23766-8427', '280.415.9436', 'conn.monica@davis.com'),
(77, '04/2023/29084D', 'Turner Beer', '1985-11-06', 'male', '3544 Pagac Spurs Apt. 678\nPort Else, IL 99415', '+14199760246', 'dennis70@boyer.com'),
(78, '04/2023/29085D', 'Else Gleason', '1983-09-17', 'female', '662 Schultz Knoll Apt. 976\nWisozkborough, OR 57545', '(937) 559-6026 x817', 'aaltenwerth@hotmail.com'),
(79, '04/2023/29086D', 'Damaris Hartmann', '1996-05-28', 'female', '66345 Swaniawski Crescent\nMarcelton, AZ 66390-8414', '201-474-8687 x5672', 'bernhard.madalyn@yahoo.com'),
(80, '04/2023/29087D', 'Barrett Grant', '1995-05-01', 'male', '681 Gusikowski Ridges\nBrookland, NC 51707', '331-322-9798', 'madeline.gleichner@hotmail.com'),
(81, '04/2023/29088D', 'Edwardo Robel', '1975-09-01', 'male', '349 Legros Island Apt. 968\nNorth Talia, AL 20045-6034', '926.484.2157', 'dmclaughlin@gmail.com'),
(82, '04/2023/29089D', 'Brody Altenwerth', '1975-12-09', 'male', '2553 Ward Cape Suite 683\nLake Chance, NY 88845', '1-703-722-2173 x9381', 'uriah55@kunde.biz'),
(83, '04/2023/29090D', 'Mandy Stehr', '1973-11-19', 'female', '3658 Leilani Street Apt. 911\nLake Mario, OR 13723', '615.753.5704', 'hodkiewicz.ford@hettinger.org'),
(84, '04/2023/29091D', 'Dennis Maggio', '2002-10-27', 'male', '918 Vivienne Dale Apt. 180\nWest Brauliofort, DC 87688-8820', '409-372-2299 x490', 'berenice.bergnaum@yahoo.com'),
(85, '04/2023/29092D', 'Gerson Hahn', '1994-06-06', 'male', '64722 Schulist Rapid Suite 152\nNew Davontefurt, NJ 97011', '635.547.3305', 'oberbrunner.colby@boehm.org'),
(86, '04/2023/29093D', 'Derrick McDermott', '1973-10-07', 'male', '902 Guido Plaza Apt. 828\nEast Haylie, WV 83616-3333', '+1 (847) 885-8972', 'ludwig.dare@carter.org'),
(87, '04/2023/29094D', 'Rhiannon Sanford', '2001-08-20', 'male', '97860 Daphne Streets Suite 407\nHermannville, TN 02982', '+1-513-763-3931', 'lwalker@gmail.com'),
(88, '04/2023/29095D', 'Harry Willms', '1976-01-27', 'male', '857 David Dale Apt. 153\nEast Cassandreview, RI 04872', '+1 (994) 989-6193', 'neil.champlin@hotmail.com'),
(89, '04/2023/29096D', 'Rosalia Grimes', '1989-06-04', 'female', '742 Walter Pike Suite 831\nWest Gust, NC 02730', '835-700-6616', 'treutel.lolita@yahoo.com'),
(90, '04/2023/29098D', 'Eric Ebert', '1995-11-25', 'male', '2585 Connelly Manor\nNew Delia, AL 86491', '+1.468.261.1419', 'xdubuque@hyatt.net'),
(91, '04/2023/29099D', 'Jett Prohaska', '1970-09-23', 'male', '8879 Hintz Loaf\nNew Martaland, KS 57381-8752', '261.646.4293', 'hettie.kling@streich.biz'),
(92, '04/2023/290100D', 'Buck Berge', '1981-06-16', 'male', '97692 Ofelia Lake Apt. 923\nChandlerstad, IL 53590', '294-920-3232', 'katlynn25@hotmail.com'),
(93, '04/2023/290101D', 'Cathrine Stehr', '1996-11-28', 'female', '58732 Friesen Forge\nAdamsside, IN 46301', '780-929-6867', 'wfeest@yahoo.com'),
(94, '04/2023/290102D', 'Orie West', '1980-09-26', 'female', '7418 Hudson Court\nBoylemouth, TN 04051-9371', '768.677.1306 x50766', 'dhickle@greenholt.info'),
(95, '04/2023/290103D', 'Weston Wisoky', '1988-11-21', 'male', '332 Kemmer Mountain\nEast Garryfort, ID 79038', '664-301-7440 x1345', 'brekke.stewart@krajcik.com'),
(96, '04/2023/290105D', 'Hollis Aufderhar', '1985-12-30', 'male', '198 Kiel Canyon Suite 211\nLake Violette, ND 37311-8147', '(238) 227-9955', 'madelynn.jenkins@hettinger.com'),
(97, '04/2023/290106D', 'Darian Lebsack', '1979-11-11', 'male', '1659 Ryleigh Village\nWest Guyfurt, WY 31467-2650', '236.743.7093', 'monique.stehr@hotmail.com'),
(98, '04/2023/290107D', 'Reginald Ferry', '1973-04-21', 'male', '54320 Granville Locks Apt. 226\nEast Mekhi, DC 50985-7782', '+1-234-650-0901', 'wyman.einar@hotmail.com'),
(99, '04/2023/290108D', 'Mariane Okuneva', '1980-08-01', 'female', '7500 Nona Springs\nGastonton, RI 13905-2527', '(728) 402-7540 x986', 'gordon47@hotmail.com'),
(100, '04/2023/290109D', 'General Torphy', '1977-05-14', 'male', '612 Kovacek Gardens Suite 108\nEast Dwight, PA 07793-8179', '+17627431402', 'abernathy.arlo@cummings.org'),
(101, '04/2023/290110D', 'Maybell Howe', '2001-02-10', 'female', '8277 Roob Crossing\nQuigleyfurt, WY 17328', '(975) 358-5536', 'jovan.purdy@gmail.com'),
(102, '04/2023/290112D', 'Koby Zulauf', '1991-11-30', 'male', '4551 Rosenbaum Vista Suite 107\nBlickville, KY 57443-5415', '+18977848759', 'veronica52@hamill.info'),
(103, '04/2023/290113D', 'Muriel Parisian', '2002-12-25', 'female', '923 Ardella Square\nWest Janelleshire, MA 65781', '821.369.1024 x486', 'schowalter.roman@gmail.com'),
(104, '04/2023/290114D', 'Elizabeth Kilback', '1996-11-27', 'female', '654 Tromp Oval\nGilbertoside, VA 81926', '1-785-369-0509', 'felicity64@bogan.com'),
(105, '04/2023/290115D', 'Tyson Heller', '1991-11-11', 'male', '30553 Otis Keys\nLake Melanyborough, CA 13442-0799', '(867) 837-7092', 'alden.fisher@gmail.com'),
(106, '04/2023/290116D', 'Antoinette Beier', '2001-04-24', 'female', '58667 Bruen Ferry\nNew Fanny, OH 79770-2590', '1-928-284-6994 x3441', 'kshlerin.brittany@hotmail.com'),
(107, '04/2023/290117D', 'Kenyon Price', '1995-03-08', 'male', '3027 Quinton Ford\nTryciabury, NM 01160-4031', '1-518-426-5928 x9044', 'dayton.jones@gerlach.com'),
(108, '04/2023/290118D', 'Camille Blick', '1978-02-12', 'female', '912 Leffler Unions Suite 104\nEast Agustinashire, MT 51951', '(753) 931-3447 x4985', 'sylvan75@yahoo.com'),
(109, '04/2023/290119D', 'Jorge Kemmer', '1975-05-25', 'male', '974 Gunner Valley\nLake Anabellehaven, NE 97803', '539-496-9672 x9591', 'elizabeth10@hotmail.com'),
(110, '04/2023/290120D', 'Moriah Nader', '2003-10-16', 'male', '76958 Friesen Prairie Apt. 472\nWatersfurt, ME 37172', '(656) 372-0843', 'gilbert.weber@auer.biz'),
(111, '04/2023/290121D', 'Claire Turcotte', '2002-07-30', 'female', '403 Clifton Gardens\nDevantebury, WY 22880-8916', '906.738.8682 x32944', 'marianna59@gmail.com'),
(112, '04/2023/290122D', 'Sadie Fisher', '1975-11-26', 'female', '2748 Wilderman Key Apt. 465\nRhiannaton, UT 31799', '+1-847-599-6754', 'zzemlak@rempel.biz'),
(113, '04/2023/290123D', 'Oliver Ullrich', '1971-03-06', 'male', '705 Gunner Trafficway Suite 251\nLake Kade, MT 92944', '983-405-4954 x45295', 'romaguera.britney@zboncak.org'),
(114, '04/2023/290124D', 'Janet Block', '2000-04-19', 'female', '10803 Cummerata Summit Suite 547\nNorth Kolbyville, CA 20597', '534-693-9739 x895', 'phoebe44@altenwerth.biz'),
(115, '04/2023/290125D', 'Beth McGlynn', '1998-03-12', 'female', '27615 Margie Dam\nWest Earleneberg, MI 96144', '225-396-0928 x08962', 'xblanda@gmail.com'),
(116, '04/2023/290126D', 'Ellis Hegmann', '1982-12-24', 'male', '849 Colton Cape Apt. 544\nEast Maidabury, TN 39347-6970', '+18389517047', 'ibradtke@yahoo.com'),
(117, '04/2023/290127D', 'Tristian Blick', '1994-03-15', 'male', '935 Thompson Court\nWalterborough, HI 71261', '(576) 699-2363', 'lucile.ebert@gmail.com'),
(118, '04/2023/290128D', 'Eliseo Kerluke', '1981-10-29', 'male', '3334 Ruecker Locks Suite 237\nPort Lindsey, WA 01531', '+14326601218', 'aidan.nolan@hotmail.com'),
(119, '04/2023/290129D', 'Sadie Kshlerin', '1972-07-20', 'female', '3965 Stiedemann Squares Suite 367\nNew Helene, VT 39720', '624-416-4752 x224', 'paul81@yahoo.com'),
(120, '04/2023/290130D', 'Nannie VonRueden', '1985-07-28', 'female', '68000 Waino Groves Suite 242\nKoreyfurt, IA 18819', '787.402.8405 x89844', 'mariam.schroeder@gmail.com'),
(121, '04/2023/290131D', 'Robbie Donnelly', '1970-04-12', 'male', '6039 Doyle Neck\nNew Shyanne, NV 45005', '309.808.3033 x3244', 'lavern08@ankunding.com'),
(122, '04/2023/290134D', 'Holden McKenzie', '1986-03-31', 'male', '276 Cielo Ridges Suite 257\nSydniehaven, CA 68116-3412', '901.717.8864 x26660', 'mitchell.kub@blanda.com'),
(123, '04/2023/290135D', 'Harrison Roberts', '2000-05-05', 'male', '216 Cara Freeway Suite 584\nLake Jovanyberg, RI 87617-1549', '1-542-481-4103 x6386', 'vena91@flatley.biz'),
(124, '04/2023/290136D', 'Kailyn Stokes', '1972-06-26', 'female', '33354 Gorczany Valley\nNew Rogelioside, FL 54447-1551', '(909) 221-4637 x0804', 'dovie.crona@walsh.com'),
(125, '04/2023/290137D', 'Lafayette Hirthe', '2000-01-20', 'male', '78657 Della Wall\nJamiemouth, PA 79870', '264-259-0428 x08846', 'savanna54@yahoo.com'),
(126, '04/2023/290138D', 'Lorenza Konopelski', '1986-10-14', 'male', '767 Murray Alley\nGislasonland, MN 51426', '+1-628-737-2212', 'collier.helena@borer.info'),
(127, '04/2023/290139D', 'Dallin Feil', '1974-06-27', 'male', '669 Pink Ranch Suite 874\nOsbaldomouth, AR 98448-8738', '531-910-9058 x695', 'heller.elisabeth@sipes.info'),
(128, '04/2023/290140D', 'Aliyah McGlynn', '1982-11-09', 'female', '4787 Marjolaine Extensions Suite 632\nGeneton, NC 34867', '(246) 904-0696 x6959', 'joany63@hotmail.com'),
(129, '04/2023/290142D', 'Callie Barrows', '2000-05-12', 'female', '4354 Gleason Road Suite 633\nCartermouth, PA 36834-5366', '374.297.5913', 'kuhlman.randy@thiel.com'),
(130, '04/2023/290143D', 'Mazie Morissette', '1979-11-06', 'female', '329 Roxanne Loop Apt. 523\nOrentown, CA 35802-9308', '+15135883464', 'gislason.shana@gmail.com'),
(131, '04/2023/290145D', 'Anya Ziemann', '1998-05-09', 'female', '70736 Connor Lodge\nCorkerychester, NM 70809', '(775) 948-7420', 'xnader@senger.com'),
(132, '04/2023/290146D', 'Glennie Wunsch', '1977-12-22', 'male', '3938 Kaylin Bridge\nSouth Carole, IN 21200-0436', '(351) 791-5465 x1479', 'johnson.hipolito@gmail.com'),
(133, '04/2023/290147D', 'Garrett Marks', '1998-08-12', 'male', '4199 Mayer Pine\nPricemouth, WA 61461', '(824) 925-5502 x784', 'oswaldo74@gmail.com'),
(134, '04/2023/290148D', 'Jasper Okuneva', '2001-02-06', 'male', '10224 Schumm Estates Suite 066\nParkerfurt, NY 22421-7712', '+1-668-346-0355', 'ratke.cindy@davis.com'),
(135, '04/2023/290149D', 'Teagan Carter', '1975-03-08', 'female', '90877 Braeden Gateway Suite 690\nLake Albertha, CT 41482', '215-250-0042 x53128', 'paucek.greta@hotmail.com'),
(136, '04/2023/290150D', 'Conner Lang', '1992-07-13', 'male', '326 Pollich Mission Suite 096\nCorkeryfurt, ND 63467-9629', '1-968-433-3989 x770', 'milford65@rempel.biz'),
(137, '04/2023/290151D', 'Helene Franecki', '1998-12-07', 'female', '9855 Dion Tunnel Suite 962\nSierrabury, ID 68152', '258.428.0209 x2312', 'lilyan29@yahoo.com'),
(138, '04/2023/290152D', 'Lula Stark', '1988-10-01', 'male', '86222 Altenwerth Circle Apt. 548\nWest Samson, TX 89130', '(478) 738-9327', 'adella.maggio@dach.com'),
(139, '04/2023/290153D', 'Ed Ferry', '2004-04-29', 'male', '6562 Ebony Mall Suite 305\nBashirianton, KS 94137-5585', '608.388.9627', 'bert.flatley@funk.net'),
(140, '04/2023/290154D', 'Elta Kozey', '1973-07-21', 'female', '1339 Carlo Springs\nWest Vidaview, MN 71156-2387', '1-778-763-1906', 'jordan.goyette@gmail.com'),
(141, '04/2023/290155D', 'Graham Spencer', '2003-03-20', 'male', '1875 Dickinson Estate\nSouth Alexandrotown, AZ 44072-3719', '+15148738579', 'roberts.haylee@schneider.com'),
(142, '04/2023/290156D', 'Bo Greenfelder', '2000-10-04', 'male', '5692 Remington Trace Apt. 360\nLake Reuben, TX 20852', '1-436-823-0655', 'howell.weimann@yahoo.com'),
(143, '04/2023/290157D', 'Hattie Luettgen', '2003-04-23', 'female', '63997 Barton Ville\nNorth Winnifred, KS 76542-2165', '395.938.7002', 'eunice.sawayn@gmail.com'),
(144, '04/2023/290158D', 'Dayna Russel', '1980-09-30', 'female', '7343 Angelina Spurs Apt. 576\nSwaniawskiville, IA 85135', '(624) 920-6933 x4010', 'casper.freda@rosenbaum.com'),
(145, '04/2023/290159D', 'Felicita Gusikowski', '2000-09-04', 'female', '78472 Eulah Shore Suite 879\nCarrollburgh, NC 95013', '(426) 925-8082', 'lynch.raphaelle@mohr.info'),
(146, '04/2023/290160D', 'Jayce Kling', '1993-05-01', 'male', '777 Kattie Mission\nBlancabury, TN 84420', '(889) 834-8966', 'jeanne60@gmail.com'),
(147, '04/2023/290161D', 'Ahmad Jones', '1992-03-28', 'male', '63844 Blanda Fort Suite 305\nEast Myrtis, MD 58864-6145', '1-628-723-8228 x5435', 'ed44@kunze.com'),
(148, '04/2023/290162D', 'Wade Sauer', '1975-11-21', 'male', '350 Botsford Viaduct Apt. 055\nEast Karine, AR 28004', '489-931-9843 x1644', 'monahan.nichole@cruickshank.info'),
(149, '04/2023/290163D', 'Delphia Schimmel', '1977-12-29', 'female', '26688 Lera Viaduct Apt. 611\nBreitenbergton, RI 99327-5467', '392.819.8729', 'ylittle@bednar.biz'),
(150, '04/2023/290164D', 'Giovani Paucek', '2004-07-24', 'male', '416 Will Avenue\nSouth August, SD 16375', '(245) 346-9138', 'naomi57@hotmail.com'),
(151, '04/2023/290165D', 'Jeffry Zulauf', '1983-06-10', 'male', '641 Ophelia Fall\nPort Adahburgh, MT 47892', '(709) 481-5704', 'jblock@hotmail.com'),
(152, '04/2023/290166D', 'Evans Daugherty', '1981-03-02', 'male', '980 Keebler Canyon\nPort Allene, TN 08399-8945', '765-477-2458 x165', 'abdullah.reichert@pfeffer.com'),
(153, '04/2023/290167D', 'Oswald Flatley', '1993-09-02', 'male', '95391 Mayert Shore\nSaraiburgh, CT 64192-6891', '941.625.7204 x7331', 'lavada76@schaden.com'),
(154, '04/2023/290168D', 'Boyd Corwin', '1983-03-04', 'male', '12130 Okuneva Junctions\nMcDermottburgh, NC 80230', '+1-951-755-4602', 'kbogisich@yahoo.com'),
(155, '04/2023/290169D', 'Adrianna Harris', '1970-06-29', 'female', '56682 Wiza Spur Apt. 899\nWisokyfurt, NM 51519-3343', '304-796-7647 x5189', 'mbergstrom@yahoo.com'),
(156, '04/2023/290170D', 'Cora Reichert', '1978-05-09', 'female', '504 Walter Row Suite 688\nLeschchester, NH 67440-4399', '+1-406-489-4994', 'dickens.maude@hotmail.com'),
(157, '04/2023/290171D', 'Branson Fisher', '1988-03-20', 'male', '592 Johnson Ford\nWest Jaidenport, TN 24430', '919-273-8095', 'marilyne67@collins.net'),
(158, '04/2023/290172D', 'Marjorie Powlowski', '1983-11-29', 'female', '9376 Harry Pine Apt. 490\nSouth Stefan, MT 91558', '(380) 980-6863', 'maud.mayert@morissette.com'),
(159, '04/2023/290173D', 'Cleta Bayer', '1984-11-27', 'female', '5043 Dusty Falls\nEast Carletonshire, MS 07473-6400', '1-826-973-3636', 'delta.dibbert@hotmail.com'),
(160, '04/2023/290174D', 'Monserrate Pouros', '1999-08-04', 'male', '385 Alba Inlet\nAufderharport, AR 24714-2620', '1-427-832-1027', 'lori64@kris.com'),
(161, '04/2023/290175D', 'Melody Parker', '1973-04-24', 'female', '6833 Vandervort Vista\nChamplinfurt, TN 63682-5302', '1-425-748-6551 x7434', 'adela69@yahoo.com'),
(162, '04/2023/290176D', 'Granville Kunde', '2004-08-08', 'male', '952 Fisher Ridge\nWest Curtisside, MS 32114-6802', '450-644-9377 x8711', 'cummerata.mable@gleason.com'),
(163, '04/2023/290177D', 'Maxie Krajcik', '1995-10-18', 'female', '69890 Yost Inlet\nNew Sincere, GA 05743-3819', '+1-865-723-2645', 'icremin@gmail.com'),
(164, '04/2023/290178D', 'Mervin Shields', '1983-12-07', 'male', '722 Reva Path\nNew Esther, CA 52802', '796-823-1219', 'hermann.amiya@gmail.com'),
(165, '04/2023/290179D', 'Jaylin Gutmann', '1989-08-26', 'male', '55653 Hermina Row Apt. 706\nKoepphaven, IN 21092-5581', '281-996-4053', 'boyer.rosetta@towne.com'),
(166, '04/2023/290180D', 'Lionel Von', '1996-03-22', 'male', '413 Dooley Burgs\nSouth Frederik, TN 81129', '(734) 843-9244 x140', 'bartell.armani@schiller.net'),
(167, '04/2023/290181D', 'Isaac Kuhlman', '1974-07-29', 'male', '6854 Leonie Circle\nLarsonport, WY 79730', '1-891-578-2846', 'fmueller@doyle.com'),
(168, '04/2023/290182D', 'Maria Schoen', '1973-12-10', 'female', '6923 Hettinger Court\nConnborough, FL 68002', '839-868-4547 x5150', 'kchamplin@yahoo.com'),
(169, '04/2023/290183D', 'Maud Koch', '1976-08-13', 'female', '4897 Ruecker Lights Suite 017\nPetermouth, MD 15376', '351.610.9473 x72192', 'emely58@deckow.com'),
(170, '04/2023/290184D', 'Marietta Schowalter', '1976-06-24', 'female', '27138 Hartmann Land Suite 891\nNorth Martinashire, OR 22167-1106', '+1 (739) 637-3667', 'anjali58@yahoo.com'),
(171, '04/2023/290185D', 'Adolf Murray', '1971-07-31', 'male', '4123 Kunde Summit\nWest Destany, RI 68289', '493.542.9520 x0470', 'serenity23@yahoo.com'),
(172, '04/2023/290186D', 'Zander Weimann', '1990-09-20', 'male', '7517 Lesly Union\nOkunevachester, SC 85317', '+1-301-474-6034', 'cathryn53@quigley.info'),
(173, '04/2023/290188D', 'Dawn Prohaska', '1970-01-24', 'female', '2734 Breitenberg Turnpike Suite 866\nRamonamouth, ND 17989', '1-812-545-7817 x1036', 'stephany.greenholt@hotmail.com'),
(174, '04/2023/290189D', 'Sandra Moore', '1990-05-03', 'female', '159 Amy Pass Suite 967\nHomenickbury, SC 87907', '+1.842.244.7191', 'welch.kassandra@smith.info'),
(175, '04/2023/290190D', 'Albin Sauer', '1994-02-11', 'male', '19033 Lacey Stream\nHamillland, NJ 46866', '291.489.4281 x55548', 'marc97@mckenzie.com'),
(176, '04/2023/290191D', 'Phyllis Prohaska', '1992-03-16', 'female', '469 Toy Circles\nEloisafurt, MI 42346', '260.739.5873 x87364', 'wiegand.vivien@gmail.com'),
(177, '04/2023/290192D', 'Juston White', '2001-03-30', 'male', '46086 Wiegand Shore\nNorth Ora, VT 64344-1674', '995.506.4020', 'queenie.halvorson@medhurst.net'),
(178, '04/2023/290193D', 'Julian Schneider', '1998-04-01', 'male', '241 Graham Bypass\nJohnstonmouth, LA 69603-7797', '771-608-2411 x224', 'jacinthe65@lueilwitz.com'),
(179, '04/2023/290194D', 'Jena Huels', '1996-02-01', 'female', '5142 Koch Streets\nMonserrateland, SD 42003', '+1 (761) 795-9196', 'julio.cartwright@nitzsche.net'),
(180, '04/2023/290195D', 'Cornelius Welch', '1999-02-07', 'male', '5857 Annabelle Cliff Suite 885\nEast Aylabury, NE 18775-7064', '945-312-9690 x676', 'jess.osinski@hotmail.com'),
(181, '04/2023/290196D', 'Alvis Marks', '1984-06-30', 'male', '8472 Heathcote Spring Suite 155\nEast Nicholaus, GA 32920-4347', '640-968-3979', 'jadyn94@hotmail.com'),
(182, '04/2023/290197D', 'Dominic Reilly', '1983-11-11', 'male', '744 Crist Mission Suite 490\nPort Generalport, MI 11126', '672.619.7390 x9398', 'rylee.witting@hermann.com'),
(183, '04/2023/290198D', 'Lucie Heathcote', '1978-03-03', 'female', '618 Lesch Rapids Apt. 805\nEast Cotyville, ND 25089-0185', '1-342-398-8368', 'cruz98@kerluke.info'),
(184, '04/2023/290199D', 'Osbaldo Miller', '1979-05-12', 'male', '545 Selina Centers\nHeidenreichfort, OR 10894-4349', '1-742-421-9994 x6761', 'grayce62@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `CONTACT_NUMBER` varchar(10) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`ID`, `NAME`, `EMAIL`, `CONTACT_NUMBER`, `ADDRESS`) VALUES
(1, 'Desai Pharma', 'desai@gmail.com', '9948724242', 'Mahim East'),
(2, 'BDPL PHARMA', 'bdpl@gmail.com', '8645632963', 'Santacruz West'),
(9, 'Kiran Pharma', 'kiranpharma@gmail.com', '7638683637', 'Andheri East'),
(10, 'Rsrnrnrndnn', 'ydj', '3737355538', '3fndfndfndndfnfdndfn'),
(11, 'Dfnsfndfndf', 'fnsn', '5475734385', 'Ndnss4yrhrhdhrdhrh'),
(12, 'SS Distributors', 'ssdis@gamil.com', '3867868752', 'Matunga West'),
(13, 'Avceve', 'ehh', '3466626226', 'Eteh266266262'),
(14, 'Hrshrhrjher', 'dzgdg', '4636347335', 'Rhrswjrnswjn'),
(15, 'Hmrxfmgtmt', 'trmtrm gm tr', '6553838835', '38ejtdjtdxetjdt'),
(20, 'Dtdxtkmtdshrrhhsrjrs', 'trmtrm gm tr', '6553838835', '38ejtdjtdxetjdt'),
(23, 'Fndn', 'nena ena', '3462462642', 'Ebsbsdbsdndsnsdfns'),
(24, 'Fndnbrwh', 'nena ena', '3462462642', 'Ebsbsdbsdndsnsdfns'),
(25, 'Jnentjrtj', 'nena ena', '3462462642', 'Ebsbsdbsdndsnsdfns'),
(26, 'Jerthjrtjtjr', 'nena ena', '3462462642', 'Ebsbsdbsdndsnsdfns'),
(28, 'Gahgkakbvkv', 'nena ena', '3462462642', 'Ebsbsdbsdndsnsdfns'),
(29, 'Hywhwhrhdw', 'nena ena', '3462462642', 'Ebsbsdbsdndsnsdfns');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'test user', 'test@gmail.com', 2523523522523523, ' This is sample text for the test.', '2019-06-29 19:03:08', 'Test Admin Remark', '2019-06-30 12:55:23', 1),
(2, 'Lyndon Bermoy', 'serbermz2020@gmail.com', 1111111111111111, ' This is sample text for testing.  This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing.', '2019-06-30 13:06:50', 'Answered', '2020-07-05 02:13:25', 1),
(3, 'fdsfsdf', 'fsdfsd@ghashhgs.com', 3264826346, 'sample text   sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  ', '2019-11-10 18:53:48', 'vfdsfgfd', '2019-11-10 18:54:04', 1),
(4, 'demo', 'demo@gmail.com', 123456789, ' hi, this is a demo', '2020-07-05 01:57:20', 'answered', '2020-07-05 01:57:46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(2, 3, '120/185', '80/120', '85 Kg', '101 degree', '#Fever, #BP high\r\n1.Paracetamol\r\n2.jocib tab\r\n', '2019-11-06 04:20:07'),
(3, 2, '90/120', '92/190', '86 kg', '99 deg', '#Sugar High\r\n1.Petz 30', '2019-11-06 04:31:24'),
(4, 1, '125/200', '86/120', '56 kg', '98 deg', '# blood pressure is high\r\n1.koil cipla', '2019-11-06 04:52:42'),
(5, 1, '96/120', '98/120', '57 kg', '102 deg', '#Viral\r\n1.gjgjh-1Ml\r\n2.kjhuiy-2M', '2019-11-06 04:56:55'),
(6, 4, '90/120', '120', '56', '98 F', '#blood sugar high\r\n#Asthma problem', '2019-11-06 14:38:33'),
(7, 5, '80/120', '120', '85', '98.6', 'Rx\r\n\r\nAbc tab\r\nxyz Syrup', '2019-11-10 18:50:23');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` varchar(100) DEFAULT NULL,
  `PatientIndexNo` varchar(30) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `PatientSymptoms` text DEFAULT NULL,
  `PatientPrescription` text DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientIndexNo`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `PatientSymptoms`, `PatientPrescription`, `CreationDate`, `UpdationDate`) VALUES
(19, 7, 'Fabiola Terry', '379-715-2381', '04/2023/2901D', 'fadel.elva@hotmail.com', 'Male', '6796 Juliet Wall\r\nPort Edmundfurt, VA 01448-2375', 20, 'None', 'None', 'Patient Prescription', '2023-10-08 13:52:45', '2023-10-11 07:26:56'),
(20, 8, 'Gerhard Mohr', '637.537.3122', '04/2023/29021D', 'autumn.lockman@dare.biz', 'male', '5642 Bayer Summit\r\nWest Zellahaven, AK 65102-9535', 22, 'Was a dancer', 'Headache , Shitting and Pissing ', NULL, '2023-10-11 06:15:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 01:50:24', NULL, 1),
(25, NULL, 'serbermz2020@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:09:18', NULL, 0),
(26, NULL, 'serbermz2020@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:11:05', NULL, 0),
(27, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:11:24', NULL, 0),
(28, NULL, 'serbermz2020@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:11:46', NULL, 0),
(29, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-07-05 02:12:00', NULL, 1),
(30, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2023-10-10 06:23:56', '10-10-2023 11:54:38 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(2, 'Demo User', 'Manila, Philippines', 'Delhi', 'female', 'test@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2016-12-30 05:34:39', '2023-10-10 06:23:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_credentials`
--
ALTER TABLE `admin_credentials`
  ADD PRIMARY KEY (`USERNAME`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`INVOICE_ID`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `medicines_stock`
--
ALTER TABLE `medicines_stock`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `BATCH_ID` (`BATCH_ID`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`VOUCHER_NUMBER`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `INVOICE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `medicines_stock`
--
ALTER TABLE `medicines_stock`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `VOUCHER_NUMBER` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
