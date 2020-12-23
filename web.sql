-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2020 at 12:07 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `web`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogintable`
--

CREATE TABLE IF NOT EXISTS `adminlogintable` (
`id` int(11) NOT NULL,
  `username1` varchar(255) NOT NULL,
  `password1` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlogintable`
--

INSERT INTO `adminlogintable` (`id`, `username1`, `password1`, `email`) VALUES
(1, 'admin', '123456', 'admin@admin.com');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE IF NOT EXISTS `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('558922894c453', '558922895ea0a'),
('558922899ccaa', '55892289aa7cf'),
('558923538f48d', '558923539a46c'),
('55892353f05c4', '55892354051be'),
('558973f4389ac', '558973f462e61'),
('558973f4c46f2', '558973f4d4abe'),
('558973f51600d', '558973f526fc5'),
('558973f55d269', '558973f57af07'),
('558973f5abb1a', '558973f5e764a'),
('5fc7964ae9669', '5fc7964b1b086'),
('5fc79a10e6f5a', '5fc79a1111997'),
('5fc79a83372b2', '5fc79a8358e17'),
('5fc7aaec1f294', '5fc7aaec5c00e'),
('5fc7aaec955b4', '5fc7aaec9d014'),
('5fc7ab642cc55', '5fc7ab644d7c9'),
('5fc7ab91633a9', '5fc7ab9176afd'),
('5fdd7bb2a7040', '5fdd7bb2c348f'),
('5fdd7bb320621', '5fdd7bb338f73'),
('5fddf42ad5d99', '5fddf42b032b0'),
('5fddf42b57aca', '5fddf42b64b75'),
('5fddf449f06fc', '5fddf44a195d7'),
('5fddfac0dd3d5', '5fddfac10b215'),
('5fddfac14e5de', '5fddfac155915'),
('5fddfca0c36e0', '5fddfca0ea104');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
`id` int(30) NOT NULL,
  `client_ip` varchar(20) NOT NULL,
  `user_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `client_ip`, `user_id`, `product_id`, `qty`) VALUES
(7, '', 3, 4, 1),
(31, '127.0.0.1', 0, 5, 1),
(37, '::1', 0, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE IF NOT EXISTS `category_list` (
`id` int(30) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `name`) VALUES
(1, 'Beverages'),
(3, 'Best Sellers'),
(4, 'Meals'),
(5, 'Snacks'),
(6, 'Ashraful Islam');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
`comment_id` int(10) NOT NULL,
  `comment_text` varchar(220) NOT NULL,
  `parent_id` int(10) NOT NULL,
  `comment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `comment_text`, `parent_id`, `comment_date`) VALUES
(3, 'how to solve the php data connection pblm?', 0, '2020-08-05 18:32:39'),
(4, 'what is pdo in php', 0, '2020-08-05 18:33:33'),
(5, 'its object orients', 4, '2020-08-05 18:34:30'),
(6, 'view data base tutorial', 3, '2020-08-05 18:34:54'),
(7, 'take help from google', 6, '2020-08-05 18:36:46'),
(8, 'wvkjwvkj qe', 0, '2020-08-20 14:13:34'),
(9, 'fbafbafbab', 0, '2020-08-20 14:13:40'),
(10, 'bdsbbdsbbd', 0, '2020-08-20 14:13:51'),
(11, 'vjf vf vkfdk kd ', 0, '2020-08-20 14:15:26'),
(12, 'gegegeggeegegg', 3, '2020-08-20 14:15:36'),
(13, 'savavav', 7, '2020-08-20 14:15:54'),
(14, 'vfabfbgbgaba', 0, '2020-08-20 14:16:02'),
(15, 'fndfhmfhdmdhm', 0, '2020-08-20 14:16:21'),
(16, 'vefbebeb', 0, '2020-08-20 14:17:06'),
(17, 'rqgrgrqgqg', 16, '2020-08-20 14:17:15'),
(18, 'qggrggegergrgqgrg', 6, '2020-08-20 14:17:25'),
(19, 'what is web', 0, '2020-08-25 19:06:17'),
(20, 'is a design', 19, '2020-08-25 19:06:31'),
(21, 'ok', 20, '2020-08-25 19:06:54'),
(22, 'whai  iis web', 0, '2020-08-27 13:59:40'),
(23, 'ok', 22, '2020-08-27 13:59:50');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
`id` int(10) NOT NULL,
  `name` varchar(40) NOT NULL,
  `comments` text NOT NULL,
  `date_publish` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `comments`, `date_publish`) VALUES
(2, 'ImrulImrul', 'my task', '2020-08-05 11:52:55'),
(3, 'amin', 'yeah', '2020-08-05 11:53:38');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('55846be776610', 'testing', 'sunnygkp10@gmail.com', 'testing', 'testing stART', '2015-06-19', '09:22:15pm'),
('5584ddd0da0ab', 'netcamp', 'sunnygkp10@gmail.com', 'feedback', ';mLBLB', '2015-06-20', '05:28:16am'),
('558510a8a1234', 'sunnygkp10', 'sunnygkp10@gmail.com', 'dl;dsnklfn', 'fmdsfld fdj', '2015-06-20', '09:05:12am'),
('5585509097ae2', 'sunny', 'sunnygkp10@gmail.com', 'kcsncsk', 'l.mdsavn', '2015-06-20', '01:37:52pm'),
('5586ee27af2c9', 'vikas', 'vikas@gmail.com', 'trial feedback', 'triaal feedbak', '2015-06-21', '07:02:31pm'),
('5fc8414b551d2', 'Ashraful Islam', 'ashrafulgt@gmail.com', 'FEEDBACK', 'FEEDBACK/REPORT A PROBLEMFEEDBACK/REPORT A PROBLEMFEEDBACK/REPORT A PROBLEMFEEDBACK/REPORT A PROBLEMFEEDBACK/REPORT A PROBLEMFEEDBACK/REPORT A PROBLEMFEEDBACK/REPORT A PROBLEMFEEDBACK/REPORT A PROBLEMFEEDBACK/REPORT A PROBLEMFEEDBACK/REPORT A PROBLEMFEEDBACK/REPORT A PROBLEMFEEDBACK/REPORT A PROBLEMFEEDBACK/REPORT A PROBLEMFEEDBACK/REPORT A PROBLEMFEEDBACK/REPORT A PROBLEMFEEDBACK/REPORT A PROBLEMFEEDBACK/REPORT A PROBLEMFEEDBACK/REPORT A PROBLEMFEEDBACK/REPORT A PROBLEMFEEDBACK/REPORT A PROBLEM', '2020-12-03', '02:37:15am'),
('5fdd7c090993b', 'Lemon Iced Tea', 'ashrafulgt@gmail.com', 'g', 'fdd', '2020-12-19', '05:05:29am'),
('5fdd81374bfdd', 'Lemon Iced Tea', 'ashrafulgt@gmail.com', 'g', 'ddd', '2020-12-19', '05:27:35am');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE IF NOT EXISTS `files` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `downloads` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `size`, `downloads`) VALUES
(9, 'exam-system.zip', 1214059, 0),
(10, 'exam-system.zip', 1214059, 0),
(11, 'onlineexamination.zip', 2587275, 0),
(12, 'Online Food Order System Project-1569244428.zip', 14784843, 0),
(13, 'Screenshot_5.png', 8181, 0);

-- --------------------------------------------------------

--
-- Table structure for table `forget`
--

CREATE TABLE IF NOT EXISTS `forget` (
`id` int(220) NOT NULL,
  `email` varchar(220) NOT NULL,
  `token` varchar(220) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forget`
--

INSERT INTO `forget` (`id`, `email`, `token`) VALUES
(1, 'prithapritha2006@gmail.com', 'e1c3eca59a85f41f99d224ca1ba72ed3'),
(2, 'prithapritha2006@gmail.com', 'e1c3eca59a85f41f99d224ca1ba72ed3'),
(3, 'prithapritha2006@gmail.com', 'e1c3eca59a85f41f99d224ca1ba72ed3'),
(4, 'prithapritha2006@gmail.com', 'e1c3eca59a85f41f99d224ca1ba72ed3'),
(5, 'prithapritha2006@gmail.com', 'e1c3eca59a85f41f99d224ca1ba72ed3'),
(6, 'prithapritha2006@gmail.com', 'e1c3eca59a85f41f99d224ca1ba72ed3'),
(7, 'prithapritha2006@gmail.com', 'e1c3eca59a85f41f99d224ca1ba72ed3'),
(8, 'prithapritha2006@gmail.com', 'e1c3eca59a85f41f99d224ca1ba72ed3'),
(9, 'prithapritha2006@gmail.com', 'e1c3eca59a85f41f99d224ca1ba72ed3'),
(10, 'prithapritha2006@gmail.com', 'e1c3eca59a85f41f99d224ca1ba72ed3'),
(11, 'prithapritha2006@gmail.com', 'e1c3eca59a85f41f99d224ca1ba72ed3'),
(12, 'prithapritha2006@gmail.com', 'e1c3eca59a85f41f99d224ca1ba72ed3'),
(13, 'prithapritha2006@gmail.com', 'e1c3eca59a85f41f99d224ca1ba72ed3'),
(14, 'imrulemon1997@gmail.com', '98311a9428d4bfb13bcb1a5b7c22671d'),
(15, 'prithapritha2006@gmail.com', 'e1c3eca59a85f41f99d224ca1ba72ed3');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('ashraful@gmail.com', '5fddfc9911ea4', -1, 1, 0, 1, '2020-12-20 10:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `notify`
--

CREATE TABLE IF NOT EXISTS `notify` (
`id` int(220) NOT NULL,
  `title` varchar(220) NOT NULL,
  `body` varchar(220) NOT NULL,
  `read_n` varchar(220) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notify`
--

INSERT INTO `notify` (`id`, `title`, `body`, `read_n`) VALUES
(12, 'vacation', '', '1'),
(14, 'ccccc', '', '1'),
(15, 'aa', '', '1'),
(19, 'office job', 'free', '1'),
(20, 'gggjj', '<img src="https://www.google.com/search?q=diu+logo&amp;rlz=1C1CHBF_enBD887BD887&amp;sxsrf=ALeKk00LfaNy-rrc7Gk50wdIrWixqRLrKA:1597504419944&amp;tbm=isch&amp;source=iu&amp;ictx=1&amp;fir=4HO9_p9mRFuHsM%252C6xBqzmw9bXSBlM%2', '1');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE IF NOT EXISTS `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('558922894c453', 'cin>>a;', '558922895ea0a'),
('558922894c453', 'cin<<a;', '558922895ea26'),
('558922894c453', 'cout>>a;', '558922895ea34'),
('558922894c453', 'cout<a;', '558922895ea41'),
('558922899ccaa', 'cout', '55892289aa7cf'),
('558922899ccaa', 'cin', '55892289aa7df'),
('558922899ccaa', 'print', '55892289aa7eb'),
('558922899ccaa', 'printf', '55892289aa7f5'),
('558923538f48d', '255.0.0.0', '558923539a46c'),
('558923538f48d', '255.255.255.0', '558923539a480'),
('558923538f48d', '255.255.0.0', '558923539a48b'),
('558923538f48d', 'none of these', '558923539a495'),
('55892353f05c4', '192.168.1.100', '5589235405192'),
('55892353f05c4', '172.168.16.2', '55892354051a3'),
('55892353f05c4', '10.0.0.0.1', '55892354051b4'),
('55892353f05c4', '11.11.11.11', '55892354051be'),
('558973f4389ac', 'containing root file-system required during bootup', '558973f462e44'),
('558973f4389ac', ' Contains only scripts to be executed during bootup', '558973f462e56'),
('558973f4389ac', ' Contains root-file system and drivers required to be preloaded during bootup', '558973f462e61'),
('558973f4389ac', 'None of the above', '558973f462e6b'),
('558973f4c46f2', 'Kernel', '558973f4d4abe'),
('558973f4c46f2', 'Shell', '558973f4d4acf'),
('558973f4c46f2', 'Commands', '558973f4d4ad9'),
('558973f4c46f2', 'Script', '558973f4d4ae3'),
('558973f51600d', 'Boot Loading', '558973f526f9d'),
('558973f51600d', ' Boot Record', '558973f526fb9'),
('558973f51600d', ' Boot Strapping', '558973f526fc5'),
('558973f51600d', ' Booting', '558973f526fce'),
('558973f55d269', ' Quick boot', '558973f57aef1'),
('558973f55d269', 'Cold boot', '558973f57af07'),
('558973f55d269', ' Hot boot', '558973f57af17'),
('558973f55d269', ' Fast boot', '558973f57af27'),
('558973f5abb1a', 'bash', '558973f5e7623'),
('558973f5abb1a', ' Csh', '558973f5e7636'),
('558973f5abb1a', ' ksh', '558973f5e7640'),
('558973f5abb1a', ' sh', '558973f5e764a'),
('5fc7964ae9669', 'dd', '5fc7964b1b07e'),
('5fc7964ae9669', 'dd', '5fc7964b1b086'),
('5fc7964ae9669', 'dd', '5fc7964b1b089'),
('5fc7964ae9669', 'dd', '5fc7964b1b08d'),
('5fc79a10e6f5a', 'one', '5fc79a1111997'),
('5fc79a10e6f5a', 'two', '5fc79a111199f'),
('5fc79a10e6f5a', 'three', '5fc79a11119a3'),
('5fc79a10e6f5a', 'four', '5fc79a11119a6'),
('5fc79a83372b2', 'one', '5fc79a8358e17'),
('5fc79a83372b2', 'two', '5fc79a8358e23'),
('5fc79a83372b2', 'three', '5fc79a8358e30'),
('5fc79a83372b2', 'four', '5fc79a8358e33'),
('5fc7aaec1f294', 'dd', '5fc7aaec5bffe'),
('5fc7aaec1f294', 'two', '5fc7aaec5c00e'),
('5fc7aaec1f294', 'three', '5fc7aaec5c015'),
('5fc7aaec1f294', 'four', '5fc7aaec5c01b'),
('5fc7aaec955b4', 'fd', '5fc7aaec9d005'),
('5fc7aaec955b4', 'dr', '5fc7aaec9d014'),
('5fc7aaec955b4', 'sf', '5fc7aaec9d01a'),
('5fc7aaec955b4', 'gf', '5fc7aaec9d021'),
('5fc7ab642cc55', 'one', '5fc7ab644d7c1'),
('5fc7ab642cc55', 'two', '5fc7ab644d7c9'),
('5fc7ab642cc55', 'three', '5fc7ab644d7cd'),
('5fc7ab642cc55', 'four', '5fc7ab644d7d0'),
('5fc7ab91633a9', 'one', '5fc7ab9176afd'),
('5fc7ab91633a9', 'two', '5fc7ab9176b05'),
('5fc7ab91633a9', 'three', '5fc7ab9176b09'),
('5fc7ab91633a9', 'four', '5fc7ab9176b0c'),
('5fdd7bb2a7040', '2', '5fdd7bb2c3485'),
('5fdd7bb2a7040', '2', '5fdd7bb2c348c'),
('5fdd7bb2a7040', '2', '5fdd7bb2c348f'),
('5fdd7bb2a7040', '3', '5fdd7bb2c3492'),
('5fdd7bb320621', '2', '5fdd7bb338f5b'),
('5fdd7bb320621', '2', '5fdd7bb338f68'),
('5fdd7bb320621', '3', '5fdd7bb338f6e'),
('5fdd7bb320621', '2', '5fdd7bb338f73'),
('5fddf42ad5d99', 'a', '5fddf42b032a5'),
('5fddf42ad5d99', 's', '5fddf42b032ad'),
('5fddf42ad5d99', 'd', '5fddf42b032b0'),
('5fddf42ad5d99', 'f', '5fddf42b032b4'),
('5fddf42b57aca', 'f', '5fddf42b64b68'),
('5fddf42b57aca', 'd', '5fddf42b64b75'),
('5fddf42b57aca', 's', '5fddf42b64b7b'),
('5fddf42b57aca', 'a', '5fddf42b64b80'),
('5fddf449f06fc', 'a', '5fddf44a195ce'),
('5fddf449f06fc', 's', '5fddf44a195d4'),
('5fddf449f06fc', 'asda', '5fddf44a195d7'),
('5fddf449f06fc', 'adfgs', '5fddf44a195da'),
('5fddfac0dd3d5', 'r', '5fddfac10b1fb'),
('5fddfac0dd3d5', 'wr', '5fddfac10b209'),
('5fddfac0dd3d5', 'wr', '5fddfac10b20f'),
('5fddfac0dd3d5', 'wr', '5fddfac10b215'),
('5fddfac14e5de', 'w', '5fddfac155909'),
('5fddfac14e5de', '4', '5fddfac155915'),
('5fddfac14e5de', 't', '5fddfac15591b'),
('5fddfac14e5de', 'w', '5fddfac155920'),
('5fddfca0c36e0', 'ddd', '5fddfca0ea0f6'),
('5fddfca0c36e0', 's', '5fddfca0ea104'),
('5fddfca0c36e0', 'fd', '5fddfca0ea10b'),
('5fddfca0c36e0', 'sd', '5fddfca0ea110');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
`id` int(30) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `mobile` text NOT NULL,
  `email` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `address`, `mobile`, `email`, `status`) VALUES
(1, 'Ashraful', 'Jhaudanga', '5674367567373', 'ashraful@gmail.com', 1),
(2, 'Mazid', 'Jhaudanga', '123456789', 'mazid@gmail.com', 1),
(3, 'Ashraful', 'Jhaudanga', '5674367567373', 'ashraful@gmail.com', 1),
(4, 'Ashraful islam', 'address', '05345454', 'ashrafulgt@gmail.com', 0),
(5, 'Ashraful ', 'Jhaudanga', '01715014240', 'ashraful@gmail.com', 0),
(6, 'Ashraful ', 'Jhaudanga', '01715014240', 'ashraful@gmail.com', 0),
(7, 'Ashraful ', 'Jhaudanga', '01715014240', 'ashraful@gmail.com', 0),
(8, 'Ashraful ', 'Jhaudanga', '01715014240', 'ashraful@gmail.com', 0),
(9, 'Ashraful', 'Jhaudanga', '01715014240', 'ashraful@gmail.com', 0),
(10, 'Ashraful ', 'Jhaudanga', '01715014240', 'ashraful@gmail.com', 0),
(11, 'Ashraful ', 'Jhaudanga', '01715014240', 'ashraful@gmail.com', 0),
(12, 'Ashraful ', 'Jhaudanga', '01715014240', 'ashraful@gmail.com', 0),
(13, 'Ashraful ', 'Jhaudanga', '01715014240', 'ashraful@gmail.com', 0),
(14, 'Md Maruf Khan ', 'Kamarbaisha', '8976389892', 'maruf@gmail.com', 0),
(15, 'newone ', 'satkhira sador', '98579833', 'new@gmail.cm', 0),
(16, 'Ashraful ', 'Jhaudanga', '01715014240', 'ashraful@gmail.com', 0),
(17, 'Ashraful ', 'Jhaudanga', '01715014240', 'ashraful@gmail.com', 0),
(18, 'Ashraful ', 'Jhaudanga', '01715014240', 'ashraful@gmail.com', 0),
(19, 'Ashraful ', 'Jhaudanga', '01715014240', 'ashraful@gmail.com', 0),
(20, 'ashraful ashraful@gmail.com', 'jhaudanga', '454524524', '4343', 0),
(21, 'ashraful ashraful@gmail.com', 'jhaudanga', '454524524', '54545', 0),
(22, 'ashraful ashraful@gmail.com', 'jhaudanga', '454524524', '', 0),
(23, 'ashraful ashraful@gmail.com', 'jhaudanga', '454524524', '', 0),
(24, 'ashraful ashraful@gmail.com', 'jhaudanga', '454524524', '', 0),
(25, 'ashraful ashraful@gmail.com', 'jhaudanga', '454524524', '', 0),
(26, 'ashraful ashraful@gmail.com', 'jhaudanga', '454524524', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE IF NOT EXISTS `order_list` (
`id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `order_id`, `product_id`, `qty`) VALUES
(1, 1, 3, 3),
(2, 2, 6, 1),
(3, 3, 4, 1),
(4, 3, 3, 1),
(5, 4, 6, 3),
(6, 5, 6, 1),
(7, 15, 6, 4),
(8, 15, 5, 1),
(9, 15, 6, 2),
(10, 15, 5, 1),
(11, 15, 5, 1),
(12, 4, 6, 1),
(13, 4, 6, 1),
(14, 4, 4, 1),
(15, 4, 4, 1),
(16, 10, 5, 1),
(17, 11, 4, 1),
(18, 13, 5, 1),
(19, 14, 5, 1),
(20, 15, 4, 1),
(21, 16, 3, 1),
(22, 17, 6, 1),
(23, 17, 4, 1),
(24, 18, 3, 1),
(25, 19, 6, 1),
(26, 24, 5, 1),
(27, 26, 6, 1),
(28, 26, 4, 1),
(29, 26, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
`id` int(220) NOT NULL,
  `title` varchar(220) NOT NULL,
  `body` varchar(220) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `body`) VALUES
(9, 'Blood Bank Management System', ''),
(10, 'MY CV', ''),
(11, 'job', ''),
(12, 'Mahamud', ''),
(13, 'zxzx', ''),
(14, 'vacation', ''),
(19, 's', ''),
(21, 'diu', ''),
(22, 'diu', 'off'),
(23, 'diu', 'off'),
(24, 'diu', 'off'),
(25, 'office job', 'free'),
(26, '', '<img src="https://www.google.com/search?q=diu+logo&amp;rlz=1C1CHBF_enBD887BD887&amp;sxsrf=ALeKk00LfaNy-rrc7Gk50wdIrWixqRLrKA:1597504419944&amp;tbm=isch&amp;source=iu&amp;ictx=1&amp;fir=4HO9_p9mRFuHsM%252C6xBqzmw9bXSBlM%2'),
(27, 'gggjj', '<img src="https://www.google.com/search?q=diu+logo&amp;rlz=1C1CHBF_enBD887BD887&amp;sxsrf=ALeKk00LfaNy-rrc7Gk50wdIrWixqRLrKA:1597504419944&amp;tbm=isch&amp;source=iu&amp;ictx=1&amp;fir=4HO9_p9mRFuHsM%252C6xBqzmw9bXSBlM%2'),
(28, 'gggjj', '<img src="https://www.google.com/search?q=diu+logo&amp;rlz=1C1CHBF_enBD887BD887&amp;sxsrf=ALeKk00LfaNy-rrc7Gk50wdIrWixqRLrKA:1597504419944&amp;tbm=isch&amp;source=iu&amp;ictx=1&amp;fir=4HO9_p9mRFuHsM%252C6xBqzmw9bXSBlM%2'),
(29, 'ffewefwef', '<ol><li><img src="bvzzfhfh">Submit your text post here...</li></ol>'),
(30, 'MY1', '.vsvsvfabafbfabfab'),
(31, 'www', 'ffffvv'),
(32, 'varsity', 'c c avavsvsa'),
(33, 'varsity', 'vfvfvfvfsdvfd'),
(34, 'class off', 'today is off day');

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE IF NOT EXISTS `product_list` (
`id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL DEFAULT '0',
  `img_path` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0= unavailable, 2 Available'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `category_id`, `name`, `description`, `price`, `img_path`, `status`) VALUES
(3, 3, 'Lemon Iced Tea', 'Sample', 15, '1600652520_lemon iced tea.jpg', 1),
(4, 4, 'Chicken', 'Sample only', 150, '1600652880_chicken.jpg', 1),
(5, 3, 'Steak', 'Sample 2', 200, '1600652880_steak.jpg', 1),
(6, 3, 'Chicken2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 250, '1600656600_checken2.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5fddfc9911ea4', '5fddfca0c36e0', 'ddd', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE IF NOT EXISTS `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('5fddfc9911ea4', 'Lemon Iced Tea', 1, 1, 1, 1, '1', '1', '2020-12-19 13:14:01');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE IF NOT EXISTS `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('ashraful@gmail.com', -1, '2020-12-20 10:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE IF NOT EXISTS `subscriber` (
`id` int(220) NOT NULL,
  `email` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE IF NOT EXISTS `system_settings` (
`id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Online Food Ordering System', 'info@sample.com', '+6948 8542 623', '1600654680_photo-1504674900247-0877df9cc836.jpg', '&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;ABOUT US&lt;/span&gt;&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;background: transparent; position: relative; font-size: 14px;&quot;&gt;&lt;span style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/b&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&amp;#x2019;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/span&gt;&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;background: transparent; position: relative; font-size: 14px;&quot;&gt;&lt;span style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400; text-align: justify;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;background: transparent; position: relative; font-size: 14px;&quot;&gt;&lt;span style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;&lt;h2 style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;Where does it come from?&lt;/h2&gt;&lt;p style=&quot;text-align: center; margin-bottom: 15px; padding: 0px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400;&quot;&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.&lt;/p&gt;&lt;/span&gt;&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(220) NOT NULL,
  `phone` varchar(220) NOT NULL,
  `email` varchar(220) NOT NULL,
  `password` varchar(220) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `phone`, `email`, `password`, `address`) VALUES
(1, 'ashraful', 'ashraful', '454524524', 'ashraful@gmail.com', '12345', 'jhaudanga');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
`user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address` varchar(300) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address`) VALUES
(1, 'James', 'Smith', 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', '4756463215', 'adasdasd asdadasd'),
(3, 'Imrujl', 'Kayes', 'admin@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '5739845798', 'satkhira sador'),
(4, 'Ashraful', 'islam', 'ashrafulgt@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '05345454', 'address');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogintable`
--
ALTER TABLE `adminlogintable`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
 ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forget`
--
ALTER TABLE `forget`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notify`
--
ALTER TABLE `notify`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriber`
--
ALTER TABLE `subscriber`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogintable`
--
ALTER TABLE `adminlogintable`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
MODIFY `comment_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `forget`
--
ALTER TABLE `forget`
MODIFY `id` int(220) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `notify`
--
ALTER TABLE `notify`
MODIFY `id` int(220) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
MODIFY `id` int(220) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `subscriber`
--
ALTER TABLE `subscriber`
MODIFY `id` int(220) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
