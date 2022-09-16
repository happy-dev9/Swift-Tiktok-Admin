-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 23, 2019 at 01:11 PM
-- Server version: 5.6.43
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bring_tictic`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `pass` varchar(250) NOT NULL COMMENT 'password should be md5()'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `pass`) VALUES
(1, 'admin@admin.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `fav_sound`
--

CREATE TABLE `fav_sound` (
  `id` int(11) NOT NULL,
  `fb_id` varchar(50) NOT NULL,
  `sound_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fav_sound`
--

INSERT INTO `fav_sound` (`id`, `fb_id`, `sound_id`, `created`) VALUES
(1, '116005413870313287609', 2, '2019-05-13 04:08:58'),
(2, '116005413870313287609', 7, '2019-05-13 04:09:08'),
(3, '104497290910943627741', 9, '2019-05-13 08:03:27'),
(4, '112623859081837169693', 12, '2019-05-13 10:13:20'),
(5, '112623859081837169693', 7, '2019-05-13 10:13:33'),
(6, '112623859081837169693', 16, '2019-05-13 10:13:46'),
(7, '2242369099426659', 10, '2019-05-13 12:49:44'),
(8, '2242369099426659', 10, '2019-05-13 12:49:46'),
(9, '2242369099426659', 10, '2019-05-13 12:49:47'),
(10, '2242369099426659', 10, '2019-05-13 12:49:48'),
(11, '2242369099426659', 10, '2019-05-13 12:49:49'),
(12, '2242369099426659', 11, '2019-05-13 12:49:54'),
(13, '2242369099426659', 11, '2019-05-13 12:49:56'),
(14, '2242369099426659', 2, '2019-05-13 13:04:29'),
(15, '2242369099426659', 11, '2019-05-13 13:29:58'),
(16, '2242369099426659', 14, '2019-05-13 13:36:24'),
(17, '2242369099426659', 14, '2019-05-13 13:36:25'),
(18, '2242369099426659', 9, '2019-05-13 13:39:23'),
(19, '2242369099426659', 9, '2019-05-13 13:39:25'),
(20, '2242369099426659', 10, '2019-05-13 13:39:26'),
(21, '2242369099426659', 11, '2019-05-13 13:39:27'),
(22, '299602824304247', 9, '2019-05-13 23:08:02'),
(23, '299602824304247', 9, '2019-05-13 23:08:06'),
(24, '10205616981299669', 7, '2019-05-14 03:53:24'),
(25, '10205616981299669', 7, '2019-05-14 03:53:28'),
(26, '117365659720107490265', 9, '2019-05-14 10:22:54'),
(27, '112623859081837169693', 16, '2019-05-15 01:18:24'),
(28, '112623859081837169693', 1, '2019-05-15 01:18:30'),
(29, '111836292501820047721', 9, '2019-05-15 06:18:45'),
(30, '111836292501820047721', 10, '2019-05-15 06:19:14'),
(31, '2381879105378369', 9, '2019-05-16 01:21:14'),
(32, '2381879105378369', 9, '2019-05-16 01:21:21'),
(33, '2381879105378369', 9, '2019-05-16 01:22:26'),
(34, '101742687799605791646', 9, '2019-05-16 02:08:16'),
(35, '115418552759761035062', 10, '2019-05-16 15:17:15'),
(36, '108044568058530188130', 2, '2019-05-16 15:20:19'),
(37, '107931454282867713108', 2, '2019-05-17 12:17:56'),
(38, '2318220481571558', 2, '2019-05-17 13:16:51'),
(39, '117765670124992149803', 9, '2019-05-17 17:45:28'),
(40, '117765670124992149803', 9, '2019-05-17 17:45:30'),
(41, '111575457087266133936', 7, '2019-05-17 20:24:05'),
(42, '111346791448699939066', 7, '2019-05-17 21:43:09'),
(43, '10155983465277312', 2, '2019-05-17 22:09:33'),
(44, '111055645156763865342', 10, '2019-05-18 03:17:08'),
(45, '2752966871412431', 9, '2019-05-18 05:55:53'),
(46, '2752966871412431', 9, '2019-05-18 05:56:04'),
(47, '2752966871412431', 15, '2019-05-18 06:00:05'),
(48, '2752966871412431', 2, '2019-05-18 06:00:15'),
(49, '115059736784586241651', 2, '2019-05-18 10:24:58'),
(50, '115059736784586241651', 2, '2019-05-18 10:25:04'),
(51, '115059736784586241651', 2, '2019-05-18 10:25:24'),
(52, '115059736784586241651', 10, '2019-05-18 10:25:56'),
(53, '115059736784586241651', 10, '2019-05-18 10:26:02'),
(54, '115059736784586241651', 15, '2019-05-18 10:26:10'),
(55, '115059736784586241651', 49, '2019-05-18 10:26:13'),
(56, '115059736784586241651', 1, '2019-05-18 10:29:19'),
(57, '839773369722513', 7, '2019-05-18 14:19:36'),
(58, '101576559478984642547', 2, '2019-05-18 16:43:09'),
(59, '105143683150156669508', 2, '2019-05-19 02:59:44'),
(60, '105143683150156669508', 2, '2019-05-19 02:59:51'),
(61, '105143683150156669508', 2, '2019-05-19 02:59:52'),
(62, '101576559478984642547', 58, '2019-05-19 10:57:13'),
(63, '101576559478984642547', 58, '2019-05-19 10:57:14'),
(64, '101576559478984642547', 9, '2019-05-19 10:57:19'),
(65, '101576559478984642547', 10, '2019-05-19 10:57:39'),
(66, '101576559478984642547', 10, '2019-05-19 10:57:41'),
(67, '101576559478984642547', 10, '2019-05-19 10:57:50'),
(68, '101576559478984642547', 11, '2019-05-19 10:57:52'),
(69, '101576559478984642547', 11, '2019-05-19 10:57:53'),
(70, '101576559478984642547', 11, '2019-05-19 10:57:53'),
(71, '105590184970297859152', 10, '2019-05-20 05:15:16'),
(72, '105590184970297859152', 10, '2019-05-20 05:15:18'),
(73, '184955195825920', 12, '2019-05-20 08:54:15'),
(74, '184955195825920', 13, '2019-05-20 08:54:17'),
(75, '184955195825920', 2, '2019-05-20 08:54:19'),
(76, '184955195825920', 9, '2019-05-20 09:05:45'),
(77, '184955195825920', 10, '2019-05-20 09:05:47'),
(78, '184955195825920', 9, '2019-05-20 09:05:57'),
(79, '184955195825920', 7, '2019-05-20 09:11:05'),
(80, '184955195825920', 10, '2019-05-20 09:11:07'),
(81, '184955195825920', 1, '2019-05-20 09:11:08'),
(82, '101376349701383169161', 2, '2019-05-20 10:39:18'),
(83, '117765670124992149803', 15, '2019-05-21 05:27:15'),
(84, '117105642468827525449', 9, '2019-05-21 06:14:43'),
(85, '117105642468827525449', 9, '2019-05-21 06:14:46'),
(86, '114465710100068566774', 11, '2019-05-22 10:19:22'),
(87, '114465710100068566774', 10, '2019-05-22 10:19:38'),
(88, '114465710100068566774', 9, '2019-05-22 10:20:52'),
(89, '114465710100068566774', 10, '2019-05-22 10:20:57'),
(90, '105498668494680537403', 9, '2019-05-22 12:35:35'),
(91, '107798859190073095139', 9, '2019-05-23 01:16:00');

-- --------------------------------------------------------

--
-- Table structure for table `follow_users`
--

CREATE TABLE `follow_users` (
  `id` int(11) NOT NULL,
  `fb_id` varchar(250) NOT NULL,
  `followed_fb_id` varchar(250) NOT NULL COMMENT 'a person who follow by other'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `follow_users`
--

INSERT INTO `follow_users` (`id`, `fb_id`, `followed_fb_id`) VALUES
(3, '105535624113910802597', '2116671305090123'),
(4, '105535624113910802597', '2116671305090123'),
(5, '105535624113910802597', '2116671305090123'),
(6, '105535624113910802597', '2116671305090122'),
(10, '2242369099426659', '2116671305090122'),
(9, '112623859081837169693', '2116671305090122'),
(11, '2242369099426659', '2116671305090122'),
(12, '2242369099426659', '2116671305090122'),
(13, '2242369099426659', '2116671305090122'),
(14, '2242369099426659', '107462987899781702662'),
(15, '2242369099426659', '107462987899781702662'),
(16, '2242369099426659', '107462987899781702662'),
(17, '2242369099426659', '1211841378968009'),
(18, '2242369099426659', '101746089750832575414'),
(19, '2242369099426659', '101746089750832575414'),
(20, '2242369099426659', '101746089750832575414'),
(21, '2242369099426659', '101746089750832575414'),
(22, '2242369099426659', '101746089750832575414'),
(25, '143254096805139', '2116671305090122'),
(36, '109484766734053464757', '2116671305090122'),
(35, '109484766734053464757', '2116671305090122'),
(29, '1278672522302309', '1211841378968009'),
(30, '1278672522302309', '1211841378968009'),
(31, '1278672522302309', '1211841378968009'),
(37, '109484766734053464757', '2116671305090122'),
(38, '109484766734053464757', '2116671305090122'),
(39, '109484766734053464757', '2116671305090122'),
(40, '109484766734053464757', '109472306929980995570'),
(41, '109484766734053464757', '109472306929980995570'),
(42, '109484766734053464757', '109472306929980995570'),
(43, '', '105137970237338569578'),
(45, '113343654655618618699', '2116671305090122'),
(46, '113343654655618618699', '2116671305090122'),
(93, '106427326473352727123', '105137970237338569578'),
(50, '102690303703235411886', '109484766734053464757'),
(51, '102690303703235411886', '109484766734053464757'),
(52, '102690303703235411886', '109484766734053464757'),
(53, '102690303703235411886', '102453302604622060552'),
(54, '2455880558001087', '2116671305090123'),
(55, '2455880558001087', '2116671305090123'),
(57, '2455880558001087', '111836292501820047721'),
(58, '116463866688883806464', '109484766734053464757'),
(59, '116463866688883806464', '109484766734053464757'),
(60, '2455880558001087', '105137970237338569578'),
(62, '2455880558001087', '109472306929980995570'),
(63, '101742687799605791646', '2116671305090122'),
(64, '101742687799605791646', '2116671305090122'),
(65, '', '101746089750832575414'),
(66, '', '101746089750832575414'),
(67, '', '111836292501820047721'),
(68, '112917566223960912754', '111430713700433887310'),
(69, '112917566223960912754', '111430713700433887310'),
(70, '112917566223960912754', '111430713700433887310'),
(71, '112917566223960912754', '111430713700433887310'),
(72, '112917566223960912754', '104838988347219099578'),
(73, '112917566223960912754', '104838988347219099578'),
(75, '117765670124992149803', '116252993663584317563'),
(76, '117765670124992149803', '116252993663584317563'),
(77, '117765670124992149803', '116252993663584317563'),
(79, '', '101742687799605791646'),
(80, '', '101742687799605791646'),
(81, '', '101742687799605791646'),
(82, '', '101742687799605791646'),
(83, '', '101742687799605791646'),
(84, '', '101742687799605791646'),
(85, '', '101742687799605791646'),
(86, '', '101742687799605791646'),
(113, '101576559478984642547', '109484766734053464757'),
(89, '', '641847346227610'),
(90, '', '103360100352126357021'),
(91, '', '103360100352126357021'),
(92, '', '105535624113910802597'),
(94, '', '2116671305090123'),
(95, '', '2116671305090123'),
(103, '2269247600059671', '2116671305090123'),
(102, '2269247600059671', '2116671305090123'),
(101, '', '111575457087266133936'),
(100, '102550924251171177215', '2116671305090122'),
(104, '2269247600059671', '2116671305090123'),
(105, '2269247600059671', '107462987899781702662'),
(106, '2269247600059671', '107462987899781702662'),
(107, '111710332762394904579', '111575457087266133936'),
(108, '111710332762394904579', '111575457087266133936'),
(109, '111575457087266133936', '112623859081837169693'),
(110, '111575457087266133936', '112623859081837169693'),
(111, '111575457087266133936', '112623859081837169693'),
(112, '111575457087266133936', '10157093326730821'),
(114, '101576559478984642547', '109484766734053464757'),
(115, '101576559478984642547', '109484766734053464757'),
(116, '101576559478984642547', '109484766734053464757'),
(117, '101576559478984642547', '2116671305090122'),
(118, '101576559478984642547', '105137970237338569578'),
(119, '', '300918857522166'),
(120, '113343654655618618699', '111575457087266133936'),
(121, '113343654655618618699', '111575457087266133936'),
(122, '113343654655618618699', '111575457087266133936'),
(123, '113343654655618618699', '111575457087266133936'),
(124, '113343654655618618699', '111575457087266133936'),
(125, '113343654655618618699', '111575457087266133936'),
(126, '113343654655618618699', '111575457087266133936'),
(127, '117105642468827525449', '104838988347219099578'),
(128, '117105642468827525449', '104838988347219099578'),
(129, '', '419160295585261'),
(130, '', '419160295585261'),
(131, '', '419160295585261'),
(132, '137583790643026', '105535624113910802597'),
(133, '137583790643026', '2116671305090122'),
(136, '117765670124992149803', '105535624113910802597'),
(137, '117765670124992149803', '105535624113910802597'),
(138, '112623859081837169693', '111575457087266133936'),
(139, '103754705679172752583', '107462987899781702662'),
(140, '103754705679172752583', '107462987899781702662'),
(141, '109870290838380756193', '117765670124992149803'),
(142, '109870290838380756193', '117765670124992149803');

-- --------------------------------------------------------

--
-- Table structure for table `sound`
--

CREATE TABLE `sound` (
  `id` int(11) NOT NULL,
  `sound_name` varchar(250) NOT NULL,
  `description` varchar(150) NOT NULL,
  `thum` varchar(500) NOT NULL,
  `section` varchar(250) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sound`
--

INSERT INTO `sound` (`id`, `sound_name`, `description`, `thum`, `section`, `created`) VALUES
(2, 'Orignal Song', 'by hero', '', 'Remix', '2019-05-23 08:01:17'),
(7, 'Baby Shark', 'baby shark english dance song', '', 'Remix', '2019-05-23 08:01:22'),
(1, 'My Outfit ', 'english so', '', 'Remix', '2019-05-23 08:01:26'),
(9, 'jao le jao', 'indian son', '', 'Trending', '2019-05-12 12:13:40'),
(10, 'kia bat hai', 'tera mukhr', '', 'Trending', '2019-05-12 12:35:28'),
(11, 'New indian songs', 'indian son', '', 'Trending', '2019-05-12 12:35:28'),
(12, 'Level up', '5 4 3 2 1 ', '', 'Trending', '2019-05-12 12:35:28'),
(13, 'Orignal English song', 'English so', '', 'Trending', '2019-05-12 12:35:28'),
(14, 'barbie girl', 'im barbie ', '', 'Trending', '2019-05-12 12:35:29'),
(15, 'English song', 'English so', '', 'Trending', '2019-05-12 12:35:29'),
(16, 'Mai nikla gadii leky', 'india song', '', 'Remix', '2019-05-12 12:35:29'),
(17, 'In My Feelings', 'Drake', '', 'Remix', '2019-05-15 13:39:16');

-- --------------------------------------------------------

--
-- Table structure for table `sound_section`
--

CREATE TABLE `sound_section` (
  `id` int(11) NOT NULL,
  `section_name` varchar(150) NOT NULL,
  `created` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sound_section`
--

INSERT INTO `sound_section` (`id`, `section_name`, `created`) VALUES
(1, 'Trending', '2019-05-11 23:15:28.000000'),
(2, 'Remix', '2019-05-11 23:15:28.000000'),
(3, 'Popular', '2019-05-11 23:15:28.000000');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fb_id` varchar(150) NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(150) NOT NULL,
  `bio` varchar(150) NOT NULL,
  `profile_pic` varchar(250) NOT NULL,
  `block` varchar(100) NOT NULL DEFAULT '0',
  `version` varchar(15) DEFAULT '0',
  `device` varchar(25) NOT NULL,
  `signup_type` varchar(110) NOT NULL,
  `tokon` varchar(500) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fb_id`, `username`, `first_name`, `last_name`, `gender`, `bio`, `profile_pic`, `block`, `version`, `device`, `signup_type`, `tokon`, `created`) VALUES
(22, '2116671305090123', 'anzu_bb', 'AnZu', 'Bhandari', 'Female', 'My Name is AnZu', 'https://p16.muscdn.com/img/musically-maliva-obj/1631401730715653~c5_100x100.jpeg', '0', '1.0', 'android', 'facebook', 'Null', '2019-05-05 19:04:06'),
(35, '2375541086024960', 'Bijay1540598507', 'Bijay', 'Nayak', 'Male', '', 'https://graph.facebook.com/2375541086024960/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'cwftMahCHn4:APA91bGOpFvIOCM3lmaxMk0lb8hrkOe1044uIbTv7lz2wq-Lvx9h-V_4sZyjsBn2GE8xHoa25JBO4vKSE8mJcF6DrirOZ_wPaeUUQGVYp6FUasuT-9DPgHAMh0MtHOHrIldbMh7m0F8A', '2019-05-13 04:41:49'),
(34, '101746089750832575414', 'Emily1917874243', 'Emily', 'Larson', 'm', '', 'null', '0', '1.0', 'android', 'gmail', 'cJKCoMjaHAw:APA91bEktF6KoXPcQPQoSpDbRLz73LlttEgw0tqgjYjIcb0U1vgkXGTAfYvMcu28rjbLr9zajA20eMwFXZi9xnjHg4fWvHoRtg1txWpts0otEMob9e64JQkOk0w4aGXV9G_QcpC2ODvk', '2019-05-23 05:28:04'),
(31, '105137970237338569578', 'Bringthings1705765032', 'Bringthings', 'Inc', 'm', '', 'null', '0', '1.0', 'android', 'gmail', 'fSXqbtUzWk8:APA91bGnfVGOnW5N1QKMTZCjUfSSxcJkUxIFSPlgqUx9_zh5fA_go5AY9L5py3KTGqcln3oPfVGtoP10hXq-Bb_qwpIJlrVJcFSoF42-LrSHtPl4iAh7KOMIMe5wMRa6IcJTe6R1lpFf', '2019-05-13 11:58:16'),
(7, '1211841378968009', '0.8963160737383329', 'Muhammad', 'Akeel', 'Male', 'this is my biography', 'https://graph.facebook.com/1211841378968009/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'Null', '2019-04-27 07:18:01'),
(30, '107462987899781702662', 'ajay474318980', 'ajay', 'singh', 'Male', 'just a demo test', 'https://lh3.googleusercontent.com/-Cta11wBrSOQ/AAAAAAAAAAI/AAAAAAAAAqo/KZql_dMkHFc/photo.jpg', '0', '1.0', 'android', 'gmail', 'e5Lwhqb1OAk:APA91bHrHLE_nl4JaQyi5e2QdgXmaBto2TkLUWOROE1NyRYITaV6AF4agfijXZ8tHAUJ6XpNYE0VuriBhe7n5EESU8NhDBLMMUk74r3TP7EKjyX2NYvat3IO2e59hgbtFuDDCL8V3pKZ', '2019-05-14 15:03:55'),
(28, '2457533987599041', 'HaSsan609198880', 'HaSsan', 'BouTannoura', 'm', '', 'https://graph.facebook.com/2457533987599041/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'fX2xUyRwurE:APA91bESDnImE6vKs0UPKVAr2y2csO3Au6ITb5DMb_tlPj_QEpqbhrAoUT_8JS1wj7uv6EVj65BKnaepE8urnMdZR7UP8tJElN6AtVAWqM9Cajy4JcpM32Kcg9yffPanOJSlB2tpnBFu', '2019-05-12 17:36:11'),
(29, '113140814516458347130', 'Enes461350725', 'Enes', 'UTKUv2', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mCz8gxWe1kJ23-FYBhcrSam2-LphCEGMH2gCEqr4w', '0', '1.0', 'android', 'gmail', 'cptgJszEJGQ:APA91bGyzloCNqVw_wBaqoZ0fz2inAYBNkSbM7F-8KcxCGzHi1Zy8snEUjFBwMdNyFcOKN2dHRMdyzJEiiBkmXDF-3dJp3ldrRakhdHTz8IY5FbiqnqoHZmj9yiNspB22QN91Xnhe_lN', '2019-05-12 17:47:00'),
(21, '2116671305090122', 'bijju3210', 'Bijay', 'baniya', 'Male', 'My name is bijy', 'https://p16.muscdn.com/img/musically-maliva-obj/1631023668972549~c5_100x100.jpeg', '0', '1.0', 'android', 'facebook', '', '2019-05-14 10:49:08'),
(27, '1660136404131412', 'Chirag189618608', 'Chirag', 'Isotiya', 'Female', '', 'https://graph.facebook.com/1660136404131412/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'dV_Ve3h2rGI:APA91bEYndumclD-6HMnSdkFPdLcpYHTGpe1XiZ7z5Xd45KEgd6I2lKgeC__w7paNS-VmTbl_ab2NcJ55AUbIaii_CRNer7lf7JlbbzcQhIa_Rf-FChqiNimx4y0Hzqb1hEhkSRcN123', '2019-05-13 07:01:37'),
(32, '104569786821536255006', 'ysrcp1732627913', 'ysrcp', 'elections2019', 'm', '', 'null', '0', '1.0', 'android', 'gmail', '', '2019-05-12 19:43:53'),
(33, '107333919063265747082', 'testing440796295', 'testing', 'yasham', 'Male', '', 'null', '0', '1.0', 'android', 'gmail', '', '2019-05-12 21:22:19'),
(25, '102970476542908425990', 'Muhammad1765360025', 'Muhammad', 'Akeel', 'Male', 'hy', 'https://lh3.googleusercontent.com/a-/AAuE7mChpklp0-OzCx5WoUynPYb1cED4s21BoeoxpGhLlw', '0', '1.0', 'android', 'gmail', 'Null', '2019-05-12 18:52:04'),
(26, '105535624113910802597', 'time1266777042', 'mani', 's', 'Male', '30', 'https://lh3.googleusercontent.com/a-/AAuE7mCnSVWwQwxxr2bPawm89XP6a39b6hqV5zQwFUpw', '0', '1.0', 'android', 'gmail', 'dSVcrLtBnHo:APA91bG73EHRZQ08N010PZbvzDQRT7oySP6l6QOOGyrdCCyLqKR2dYK-_ES_IL387P_riR9HQnvuLGakBbtLxdulZyeqXZcLa-TGlzz1QTitLWRP5bumt4TCCt5i3shzoS4nIXk5Lr54', '2019-05-13 17:02:15'),
(36, '841263249573111', 'Hem250774776', 'Hem', 'Hema', 'm', '', 'https://graph.facebook.com/841263249573111/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'e4EyGV8KxSQ:APA91bEBRjHimz3eYhD9AqUkED5R30O0yLRJ6L4e_nBV810JOVJ9wt_7or7dvkFZEkz6Aa4KrREqBHwaMpxp0pcFE-OKyqrmp0bHEHwFOPejk8mujH3eIoUrQTC-WbZQaPVVUsMYuuoH', '2019-05-13 03:34:32'),
(37, '116005413870313287609', 'shaju2094293732', 'shaju', 'ss', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mCnxK7McRtpMl999c8fTEyA64tnvB6P3oyRNbQbuQ', '0', '1.0', 'android', 'gmail', '', '2019-05-13 04:07:09'),
(38, '110137565310289760427', 'Right1887421357', 'Right', 'Deal', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mB3YI4KyXGH2Q_lmaDo1kD_DQWcpTw4gXzuUpWH', '0', '1.0', 'android', 'gmail', '', '2019-05-13 04:29:47'),
(39, '850281352039370', 'Jio1199702453', 'Jio', 'Rock', 'm', '', 'https://graph.facebook.com/850281352039370/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', '', '2019-05-13 05:24:16'),
(40, '3010798255644320', 'Dhaval1841305331', 'Dhaval', 'Tailor', 'm', '', 'https://graph.facebook.com/3010798255644320/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'epZOm6H9So8:APA91bFsdx7l9T8lreYN4-pyLA_jK0WViO_hR_ZCdoSfTVdn6u9pc56Y7TVpEhchRXZBtMCcbiO3nvlR-GJHN148k9hVMHTr77nqBa0vLvIj-EXbDNjPXTMNwGDjfQbcKL6SyZhgkm7a', '2019-05-13 06:38:22'),
(41, '2280115835378045', 'Loganathan909860415', 'Loganathan', 'Muthumani', 'm', '', 'https://graph.facebook.com/2280115835378045/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', '', '2019-05-13 07:07:55'),
(42, '114081304844785150453', 'Biju1913315106', 'Biju', 'S', 'm', '', 'null', '0', '1.0', 'android', 'gmail', 'eQV8A6Xn3jM:APA91bFwzfySBkJyoiqGV8zsJvt9v-IRx4q67-t2OBxiA9Ob7LyIfB-V3OI3eCVyv4lPKxGSs-Z9bsrJQ4Z_jjdMqNY3w6P0XMeshrzkQl8uwlKxIoJaDZlxS3qYZwOmtWJK7z6mo2ro', '2019-05-13 07:13:12'),
(43, '100057147047925377476', 'denny1092380375', 'denny', 'Denny', 'm', '', 'null', '0', '1.0', 'android', 'gmail', '', '2019-05-13 07:50:09'),
(44, '104497290910943627741', 'Indrapal1178211504', 'Indrapal', 'Kushwaha', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mC7A8uBb2TmzjMcZCfhzQ8ODyHwwn4YIDGAcnG0UQ', '0', '1.0', 'android', 'gmail', 'Null', '2019-05-14 01:02:57'),
(65, '10205616981299669', 'Kulub983236924', 'Kulub', 'Negara', 'm', '', 'https://graph.facebook.com/10205616981299669/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'fk-_NV47jm4:APA91bG0QyNFlIplWJUYoGZ1FGLrzfZNtwbH1S5NXVzcP85FEE27h3nQXwjzcgvwpkPInn7MuzDQLZh4Qofprkr0l0dMNgvbL-OJJFUCT1kaEyZmkHUYY1Z3gIdd1BEpdBkVTRSDTxj9', '2019-05-14 03:51:33'),
(45, '10213923477497850', 'Emrah1598068540', 'Emrah', 'Akkoyun', 'Female', '', 'https://graph.facebook.com/10213923477497850/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'cOIeaNAM7bE:APA91bHx4sst3jhrhDqU2l8G62K_jqMuvDmKtsbSIJAjXsD4ULnsN3js2q5Pu91Pa55ZXuc7r29IWH0xQdGUYQNPK3PQ9MjydkowowOwaPKJFDUmKxfUPvsxowlPpOvuA2_Js9Lp92hb', '2019-05-13 09:56:18'),
(46, '112623859081837169693', 'Canalde192604940', 'Marcos', 'Santos', 'Male', 'Fundador e CEO Tic Tic Compartilhamento de VÃ­deo Online. ðŸŽ¥', 'https://lh3.googleusercontent.com/a-/AAuE7mAya4D6zqolr1kqgDfkXGUbJOSqMaxQuiwjQf3IPA', '0', '1.0', 'android', 'gmail', 'Null', '2019-05-14 12:46:52'),
(79, '641847346227610', 'DjeinsAristote1270481828', 'DjeinsAristote', 'Bakala', 'Female', '', 'https://graph.facebook.com/641847346227610/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'ftrg_CC3ZCg:APA91bEHHIfYv-KHYsQL2zEaLhEC_PCc1wkY9tH80owoBEcSmAZ5s64ZjKEv6hMIGjG4-l37TqQc3BxgIJ-pTDZC5jwqJ2mkpT8PNbaxoeCgioPtV7AKyTWBB0fIA0N4hm0OYcOLT4QX', '2019-05-14 12:58:26'),
(47, '105230605566633837430', 'All2102615898', 'All', 'Inone', 'm', '', 'null', '0', '1.0', 'android', 'gmail', '', '2019-05-13 10:28:17'),
(48, '687120591724159', 'Rahul1500351032', 'Rahul', 'Modanval', 'm', '', 'https://graph.facebook.com/687120591724159/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', '', '2019-05-13 10:31:35'),
(49, '100955866994459314048', 'rakesh701706520', 'rakesh', 'gowda', 'Male', '', 'https://lh3.googleusercontent.com/a-/AAuE7mAjSbVUixVfI10q0G_EBaMBRl8VIFgSALQUhj3jCA', '0', '1.0', 'android', 'gmail', '', '2019-05-13 10:37:15'),
(50, '2242369099426659', 'Sherah584157358', 'Sherah', 'Jaan', 'Female', '', 'https://graph.facebook.com/2242369099426659/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'e6wN9uLtFpQ:APA91bFtkVVgHjjLDOxdKXIPDeppxUa1jRvI5Jt1qkBaiUJvmqFxN9bE-PnAjY_-4EsSdUsN3fUilxZMl0K181JB__6taFeDcEA-vhKVteceJmqS0XD889rjypnIZhLEjbO44olZzjDK', '2019-05-13 12:29:29'),
(51, '102629219591550681665', 'Travel928605480', 'Travel', 'Guide', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mAzC3qyDY-7q5x15UUnF5PuRJ7R_RaEDl9waBsTwg', '0', '1.0', 'android', 'gmail', '', '2019-05-13 12:57:59'),
(52, '101576559478984642547', 'LucÃ­a1306563361', 'LucÃ­a', 'DÃ­az', 'm', '', 'null', '0', '1.0', 'android', 'gmail', 'Null', '2019-05-19 10:54:36'),
(166, '101754024611045377673', 'OliveiraJordan1574927669', 'OliveiraJordan', 'Kery', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mDjp6rLK5m45UkTFAvndjDAt6GGmhplFpOtKWz-', '0', '1.0', 'android', 'gmail', '', '2019-05-19 12:18:55'),
(53, '107893313342445979619', 'Rasim362819153', 'Rasim', 'Dikici', 'Male', '', 'https://lh3.googleusercontent.com/a-/AAuE7mBeZiOHQbyihMCaimILmbeRu6Ka-tWWn2HpoTFr', '0', '1.0', 'android', 'gmail', '', '2019-05-13 15:19:27'),
(54, '108044568058530188130', 'Rajesh1126130954', 'Rajesh', 'Kushwaha', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mBN1oKfuVTm1-XbcjjCo3IT8GmsSH8SPNamo5R5eQ', '0', '1.0', 'android', 'gmail', 'Null', '2019-05-16 14:15:24'),
(115, '115418552759761035062', 'Sanjana1890667362', 'Sanjana', 'Kushwaha', 'm', '', 'null', '0', '1.0', 'android', 'gmail', 'c2Pcwtoo1Pg:APA91bEeZ6YE9ZqT0hhDdm2KbHAYffBTEvIquH7Aa9oZheK3z6nZ9TS6k7ptbqJ5UyQfhcgp64xy6uhLLB_dGRIuGx41Cys0N_cjujydqVhADBVhYKwj25dndlNUi8D-8cY8G-Y3Wokp', '2019-05-16 15:06:21'),
(55, '114537108460036352838', 'divyam209048920', 'divyam', 'Mav', 'm', '', 'null', '0', '1.0', 'android', 'gmail', '', '2019-05-13 15:26:40'),
(56, '143254096805139', 'Ayaan372765548', 'Ayaan', 'Alden', 'm', '', 'https://graph.facebook.com/143254096805139/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', '', '2019-05-13 15:27:30'),
(57, '104033992924839960389', 'JaspreetSingh520992849', 'JaspreetSingh', 'Khakh', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mCVndKan_oT5GT7-wVjrKjh0wYcpcYArm1uh0YtBw', '0', '1.0', 'android', 'gmail', 'e22IwMnQM4M:APA91bEw6GCsQeDIEgGcCYNL-zcyyz-cB9K6C7ZlkeiX5crHoxoeUlWE9galcT9de09pwpWFNXGs2M4W_hiiZMWO8YoYwkO6rYo37AV7uKEjK5u2vkB7EQGq-cYr2K4Yxzrc_vuKH12Z', '2019-05-13 15:34:47'),
(58, '101664785551420611062', 'asif1059907553', 'asif', 'sabir', 'm', '', 'null', '0', '1.0', 'android', 'gmail', 'eyrnUBeVyuo:APA91bEiXoI1-Lx6Y_J0rI9Aol9QGWnLi1Jv600od2sGphsRmfXVRMM0-hIRrgW1j0t0E07nyzBZ-wWqbJXQjKkIM17mHY4MykYwH0PpGO2jE63-PRc45bUumXTYWq_hA1KsVK09WmoT', '2019-05-13 19:05:21'),
(59, '419160295585261', 'Djassa1538430319', 'Djassa', 'Dy', 'Male', '', 'https://graph.facebook.com/419160295585261/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'eT_Fi5INfBM:APA91bHezrhyNuOMeHudvMD4Tpp5kHzIAK3hnU26bQyOoMj4gTK0nP5TS0908KtZioz-OhuuqX2XFBdp47mEFKyzPHxqNh1euSOh9KZHhYJzyAddZ2GkHOIt1j75CY4wbxt3UG5TyuXm', '2019-05-13 19:12:09'),
(60, '118334265995883891752', 'bhanwar366752797', 'bhanwar', 'lal', 'm', '', 'https://lh3.googleusercontent.com/a-/AN66SAzn_MN-JCww-IqE5nyPXG0n0A8IEvMEgJ4aYImP_w', '0', '1.0', 'android', 'gmail', 'dPStPwxMuts:APA91bHVSzOSLkKfZ3yp7AoFdDtARInoCGjJDI_V9WLuq68S8_M1DkAN5U7FqJdTZc2h8Hu0iFBFJaZfvp7q0HauGGkLdbnhd0TF23e8qyj8hTxS49LPma7YHovDrScRHu5FpM9cSh2T', '2019-05-13 19:55:44'),
(61, '109472306929980995570', 'Tanveer2019746147', 'Tanveer', 'ahmad', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mDwlJxnTfztZ-ad6lEWpYg9Agtae3tCpU-oVJZH', '0', '1.0', 'android', 'gmail', 'cZHcBa3xues:APA91bFFpKqlTUw84N1YNaT_FmAi-rCg0y5FB4-IqiMIXCdfqoB30RQeowMBzIDMO6sRMnHl5FlsR8Kh1nwID8AJ_-fm-Xi0cHV1Xg1_oZrC81XW0_fGZatICPeFsAQsun7QAEPu6i2H', '2019-05-13 19:52:33'),
(62, '100160715877046437879', 'Kenny711917992', 'Kenny', 'Baldoz', 'm', '', 'null', '0', '1.0', 'android', 'gmail', 'd3zdF_xIRGg:APA91bGSwSDLuoxdMyqC8lWqCW9Jut240dCC-RQ7nznmD1rfkHly0DXYFBp-HoBNzPYxyR0RgsVjtzOtVnigjuS5MRoAqiNA9SYfaVPa2fGKAnIAyLtXmmKjzZLn_E8gLyNXlzzLXWU-', '2019-05-13 20:23:02'),
(63, '102453302604622060552', 'Valdir910562384', 'Valdir', 'Correia', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mBpZXO2PurJLjxnpPslZx1mHb-xgbbRmSEUA7XTMg', '0', '1.0', 'android', 'gmail', 'eQyQlr6rTOw:APA91bF5v6hlpJe5AndGnbaPWQ5dVLeuRrvnztNZ0igaFbabfVDorrFCC5SVKr67IvrSRLWKGBKHOxo9k3rrzn4EUteOdtu8s3fQ4J4WSCe8gdWmWwLwxdtjHLXLR-wQDVpDCFl3h503', '2019-05-13 22:37:49'),
(64, '299602824304247', 'Loco1062121869', 'Loco', 'Kerala', 'm', '', 'https://graph.facebook.com/299602824304247/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'dyW2g1ynGas:APA91bGdHWe-OZCAaqcW7A3iIb9DvHt_JoJ-_5p75gQGMR47u3AwXsg3SNhVi2442HzKlL8nLOQqVqaMoFexvURH2gO3Db0efy2LU06yr_v9kAaEryO2lqWXgiUB_llu3e7YcqJTkpg7', '2019-05-13 23:07:19'),
(66, '111428984709236943243', 'Priya133969650', 'Priya', 'Patel', 'm', '', 'null', '0', '1.0', 'android', 'gmail', 'cESHgbqUDlk:APA91bENv7P50gI9JWi1rdgqHuu2O4P4u8Fg3FuzngHBIzGZQ6nWy5XlUULOtjh5ImnbUO835j8GuBseOwbyJleZSmuIPSeS5-1riyDmnNBUKnnhL0O5n5nrw4jbpJrMLP9-psqtryfP', '2019-05-14 05:36:56'),
(67, '116283513896699433236', 'Ravi1628939879', 'Ravi', 'mevada', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mB6mcac9POnu7PifoxCEy81mtol7h7jWGrnVmLOiw', '0', '1.0', 'android', 'gmail', 'cesi9J86pdk:APA91bEJyDfS7LFOg_TVmCu12op0bVwD6cPPO3_NhXKKh8XSw8freMzw7FTc2_-Z3n6MBp7zwNFKDRQtRJNiM7BOhGo79YH_BvinAEhhtfvkdDXSv_9pXGTi6cPcLqy97Ov1hkdN1Jl3', '2019-05-14 10:15:03'),
(68, '106894120434553568951', 'Sandeep518402455', 'Sandeep', 'Rao', 'm', '', 'null', '0', '1.0', 'android', 'gmail', 'cBcxzOpqwhk:APA91bFWiBVAZXfMgswf64OBlauXGBevA83SKvitcDA22EzxJJhvEuCaQhqDKMvmAalOF8tG1OkN5HYs61MTSJe1A6Q5dge0RXtHx8zikpMzPLqpLNwXNFBbaxrxdVPPX-3_7npqL3aR', '2019-05-14 06:53:14'),
(69, '113373186812074233522', 'Naina1240217431', 'Naina', 'Kumari', 'm', '', 'null', '0', '1.0', 'android', 'gmail', '', '2019-05-14 06:55:02'),
(70, '579028445940601', 'Neto2117945750', 'Neto', 'Bsinfo', 'm', '', 'https://graph.facebook.com/579028445940601/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'eATuXVjdwes:APA91bHJnL6Dl3WEF32EGqODh0rSfQKEplVTeWQNQBGQak4jeGqo7aaFAMj3RtRthZbX71HpIB5Vigp7zKwQ32c0lnRRbfeLsvGKdXjm_OvRLliRKxHuBtWmn3JtQrE4ovdeDEpFr30R', '2019-05-14 07:17:48'),
(71, '104900015141423624767', 'Theoryofeverything2068863', 'Theoryofeverything', 'null', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mCojrwXRM86UHef1S8sr2MlL5l9tLemFdKJ1m9ySw', '0', '1.0', 'android', 'gmail', 'dd5fI3k5vpY:APA91bFMuYzyluF3YfQf2Zh2aITbS_2uhDKlnBGOuyeMS3d1CrY7U2yTXNqd5tCLWFpV8xcYkbRzxQErhIx-qrpw22gHzxb5S0nSD_TxRifl9_8xHFWh12k87F-EMP_tJn7ddKGXh4-G', '2019-05-14 07:16:52'),
(72, '104764583382921188101', 'Dekho798626330', 'Dekho', 'India', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mDMFTjNKscg0MFk9sGFfz0tv5NzhycVykltsMQl', '0', '1.0', 'android', 'gmail', 'eV9m8OpLaSE:APA91bH_KouDmZjQahob5qoL_Xb3lw8e1-nqeU04PMruWrGKELb1LRiz4l3AE4FrnUERtdLoTQsqUyXsk410fo6fsq1_Jmw6YbI7RUgIHtx5gjUMGzvTg3jeLXABc9t28fNmmYySM8TG', '2019-05-14 07:48:51'),
(73, '111430713700433887310', 'Boss594763931', 'Boss', 'Ambitions', 'Male', 'is this thing on?', 'null', '0', '1.0', 'android', 'gmail', 'cF-ezVCHUQc:APA91bF3p2rsZbzuWIejU9ru7sxgndkOmoctobeXgKK0doarebWmD1Euw62Y85WtvVoho1cLuMz0fekp8xOSflapbE5414Zu1y7v72xGr-VRSnM6rB4U3ajgoDsX6qX_EsvxcTVsDZYW', '2019-05-14 08:31:15'),
(74, '118080588494615423100', 'aditya1310660718', 'aditya', 'singh', 'm', '', 'null', '0', '1.0', 'android', 'gmail', 'dEEhq48h47Y:APA91bG3ytNj6VommpqE9Ku-wCwRd6_mnSseik0pYNWxegshb1SXptj6tMruvjSi0ZkVoQZj-5oVcPEBfnlHOltjVe8vEvM8kWYcN6G4wcg_FDJBZhZ8OwelJA1oJBpVDLfcazb71HPO', '2019-05-23 07:45:54'),
(75, '113343654655618618699', 'hit496918697', 'hit', 'hitesh', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mA2iQHIS0bypOlvXE2Oitz6QO0ABoqJ7PwvnKdl', '0', '1.0', 'android', 'gmail', 'eKQnhvb5y5g:APA91bFII0lM3Y8z86atg5kYKOCMPxU-G0vaPmFGdJQ4ymixgbkpk_m612TdlxEBc2suszRGTw1SvtteSiaDsEjadGAQ5AMObYi3ghNBx-IDpDVM1A996IpVviFrQOBjCECHCr6RCh7I', '2019-05-14 08:58:05'),
(76, '110189398456352255409', 'Conscript1465628956', 'Lloyd', 'Banks', 'Male', 'Lorin ipsum', 'https://lh3.googleusercontent.com/a-/AAuE7mCdQ9B9I-ipRVTdayqYKBjl7jx-vVBubddCQ2ZydGw', '0', '1.0', 'android', 'gmail', 'f1n67NIIGGI:APA91bF4vb9bssyVtbS34b0RrUhFVCQfVWxQzQ_xjzHreoJKI2V39bv-MBTRvWCDEHtsJd0plED52YqvTvOKOvy0dg6x-qa6JN2eVPrEjuC-UH19FQwS-lWvYBYqEtPxhEcVweGQeQbF', '2019-05-14 10:08:47'),
(77, '117365659720107490265', 'Editor1659722043', 'Editor', 'Vivasayam', 'm', '', 'null', '0', '1.0', 'android', 'gmail', 'cZ7ygors0co:APA91bF5RctHDlDfC0R1hUJSmadcONNgh9qcayyQ8vNDMe-i_mLYhdE_LekliSDvkV_JevuZZotYa7oWYeB_zpmuGaDhas6pdfOzcr0sTpuMWNoMCn91y-gPcKIIsxs2x4OqJ8VybkOY', '2019-05-14 10:28:25'),
(78, '105810996077870318835', 'About1223084021', 'About', 'Phone', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mDEhzu3Qho7FRd0gZAqT0Tlc6Or1N6n_YLM9tHPug', '0', '1.0', 'android', 'gmail', 'cP33QOa7dAU:APA91bFTZdRGMT1i0ycXIGJ9X5HXxisefDkB8vUntgTldTLHuCcC5Ngiep8l_romdyFqWbDqFkJhJ84ajJVGOUYUpYOalik7Zf9wTURndBx89S2eCcyDsevBSWRoH7TamHDSNcsEsnqa', '2019-05-14 16:34:05'),
(80, '103360100352126357021', 'Quiz328479284', 'Quiz', 'Guruji', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mDjCqSY-h6ye-92tgm-oqMR_iGNIFD-O7suEt0a', '0', '1.0', 'android', 'gmail', 'dZ3g9eYjhiY:APA91bFN4rahxt8JFsQJviCx015IYuCV4dNV_361pTEtmP5eo8OCjBsntvwnQkDRH70fxZEuuzDTU-uP0ioVJhm0u00T4V0X0NESJb2qApDC4JhwO2827fXjmG1N2Gtlde2FZwQYns1o', '2019-05-14 13:05:37'),
(81, '1281788841971932', 'Remy1269188403', 'Remy', 'Max', 'm', '', 'https://graph.facebook.com/1281788841971932/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'dhKrJAx4J4I:APA91bEXK_W44u-Bm-YDtO0o0dgHV6C-0JmrhtjWJQQRGTSaqNb48KPnvLATlzuVpsz7hL1eJNG4754qLf-u6keKgm_Lk38ZAkdL-abU8dT2Ud8q3uRdMjFt0UZAs03unt4haCB2CxvP', '2019-05-15 14:16:47'),
(82, '109484766734053464757', 'Hiral1453828396', 'Hiral', 'Goti', 'm', '', 'null', '0', '1.0', 'android', 'gmail', 'fcKEY2_0Lic:APA91bHeiVYpk9qqAPkIBlOL-41EYfiEsXiDV7jq3NHhwNc7ffSHLrDJXy9hu94os52BxaEEclZaH-7BLJswh7iQeHKg8GLbbpuSbDL3PjNd3mudIF5n6-_mmINN5d5kpmQ3qcdkcQqx', '2019-05-14 16:28:01'),
(83, '101205398020258801325', 'manoj552027941', 'manoj', 'Kargar', 'm', '', 'null', '0', '1.0', 'android', 'gmail', 'e6yKtqzAGB0:APA91bE8v-kRkJR8_WOzXXxH55hIdMGIj5WluXy9OBysoVMFWwc5ZQJaOYvBNCP2Uy9Q3rlLxcjWJDGDkTbLmGQobNBSjYHGxKRk9cs3oRav9OPxudfxXSB2cE06F-OILjB6qDXdqIwl', '2019-05-14 16:29:57'),
(84, '406513346859283', 'Robik1442499836', 'Robik', 'Dianto', 'm', '', 'https://graph.facebook.com/406513346859283/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', '', '2019-05-14 17:26:04'),
(85, '2286322401624299', 'à¤°à¤®à¤£à¤¸à¤¿à¤‚à¤¹8565', 'à¤°à¤®à¤£à¤¸à¤¿à¤‚à¤¹', 'à¤ªà¤°à¤®à¤¾à¤°', 'm', '', 'https://graph.facebook.com/2286322401624299/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'eHhXwhcG85k:APA91bEg1lBLBcAT0T3SYHDn-tmDvlIaeOEikmNSpGzQbSIDgYG6MqSty6aCcZ6CtsIJyU8B5gK220eqhn4p2X1v2hdnm4o-aPR0O6XyxpA0GtYPShBvIewMtEc-dnxnqiXfxO8m1AYp', '2019-05-14 18:11:19'),
(86, '115814058806209681825', 'Lindooo163625030', 'Lindooo', 'Spotlight', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mCOifl9jPzfv1yq8R6mb9Gt6FGlF-54wkj_tYL38g', '0', '1.0', 'android', 'gmail', 'cNcWdyLJl4Y:APA91bGVDGLrXrCwPfJ2IAzElkFD-jQjWcfW3_oJMe3flFKQLgzxSrVTB3mAYxGRELnAwIRCpfo4yv8YAPn7iDA7PQExNqOnHMPFQe0IEkPHHqVsbOzmRJWIoXlzf-a6lSrzgb-ATNGX', '2019-05-14 18:52:23'),
(87, '2455880558001087', 'Juris1927343999', 'Juris', 'KÄ¼ova', 'm', '', 'https://graph.facebook.com/2455880558001087/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'dMFwQWdx_DQ:APA91bEB1FzCAY7K_m6YtloaCX6Duxu-t03-q5AG6Vk7jLJfrkkBRsf4d8lZKEIMg8X1BOnZ4G679HYiFVga06B9Cd-9Qkx1rr3WBRsM9XOUpX2k3ODqulE5Poestgoadi_3vNnX1fTl', '2019-05-15 22:06:44'),
(88, '103803294847331418082', 'TREND1700964398', 'TREND', 'LER', 'm', '', 'null', '0', '1.0', 'android', 'gmail', 'cG-L_HxqD_8:APA91bHHs7bYr3KwaWkp291qPQ3lYkj-zL9OoMNQm4nmt4bjCoZkSIgi1MSXyc25s0aCDUTBl1RHZ810vT-Qg3y122FtiK6ixxrpNnr6i7lTFlK9Pmr9QB5F0iwpqwRwVJ0h27sGhh0J', '2019-05-14 22:30:25'),
(89, '10216307919745525', 'Helen853945914', 'Helen', 'Ssl', 'm', '', 'https://graph.facebook.com/10216307919745525/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', '', '2019-05-15 04:13:06'),
(90, '108275609694229396292', 'Johnny907605274', 'Johnny', 'Depp', 'm', '', 'null', '0', '1.0', 'android', 'gmail', 'fJEr7VZWoF4:APA91bHtM0NMkxtUOb-iQd1qufTfcjUvavj7xZivZajzzqDZ6R_o6oHAlUfSVT1MwZ8MbMCuwIbiZEAkal_Kok5AvCkEpP6qsLlHs5rSkM7pNOt1K60D0Xo2y8BONYDlnSeJk6JHG5XW', '2019-05-15 05:01:40'),
(91, '111836292501820047721', 'Unlimited139216302', 'Unlimited', 'Bd', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mCDmrBPXE12a6qFDdhkvpOGRc3s6Q-jc7N28WCE', '0', '1.0', 'android', 'gmail', 'fCWcMK01fuc:APA91bFP7ctIxqGL_qcbYJYmVCSWsHr8eUTsiNYyWrAN_s8S0oKoqKieIQBfq1AKHDxkyyiR-07mAxBg0vqDhzC5SNy3hB02NlrMxYQmRdpCUsZ0vtuCsGticZ_jLl0kvvDrlntKMHxP', '2019-05-15 06:25:22'),
(92, '2752966871412431', 'Saddam1289421115', 'Saddam', 'Hossein', 'Female', '', 'https://graph.facebook.com/2752966871412431/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'fPttexzWySA:APA91bEAMf5n__fEy0HmVGTV40VUu-j27k4bN0Qoh0CmX9mlXRVC8UgnZtUegoD4RuWzJUI5qubZJqIZuXrum9mwd-oihtsI9SCzCqlVjk_QeY-flMNy9e4Xa3NUAVCeSG6VSy1b-9t2', '2019-05-18 07:25:27'),
(93, '115599696054956358440', 'Ak471510605079', 'Ak47', 'Playing', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mAiA-G7ovE7ZDRWS5KRXkSchZSzSTjThmrbFXZxAA', '0', '1.0', 'android', 'gmail', 'dtkHpI0kcWs:APA91bGQ6S4xnE8IcNtie_B5vKSfsAFLEDunK0awvihuPG04VEMb_A56lkT_qv2dHmpwI6FOQA_ZEi2iWDO-tIabH82flUlgUj3NSx0SqIXSsTBjdINpPcPnxwJruAz9UXG407q6xrrg', '2019-05-15 06:55:24'),
(94, '881951018820751', 'Surya1943021007', 'Surya', 'Thakur', 'm', '', 'https://graph.facebook.com/881951018820751/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'fuDBPhVFlqc:APA91bEw6aO7QgWEtrFsfbBNpXjPfAXkEO4RbzUp_nfOEp9RecvT69GFPPR29OnS0rIPHHeI8DEa3IC7LNULN0ok_0xIfEOgU39-sEjC6GIW_FiUVLTBAgWc7-qVRyH95mOla3wL1WYi', '2019-05-15 13:07:24'),
(95, '1255148284648963', 'Amit136178033', 'Amit', 'Rai', 'm', '', 'https://graph.facebook.com/1255148284648963/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'cxI8Dok0oFA:APA91bGC5FGvnSfSfNUIZ9BgjUXtSOHvCQzSoqeFM--dHcnBcZPiI6DPpXX7rTXerDD9JK7dL6MYjZaPpIWc4CoeZhsRGwdmBch05JpftE5r3IucOYJ3tKGQennSthOMNyPSKcIVclYr', '2019-05-16 01:54:53'),
(96, '104838988347219099578', 'Rao1308901694', 'Rao', 'Mudassar', '', '', 'https://lh4.googleusercontent.com/-cOO-DoA7i8A/AAAAAAAAAAI/AAAAAAAAAKI/-37sGHU2alI/s100/photo.jpg', '0', '1.0', 'iOS', 'google', '', '2019-05-15 08:59:42'),
(97, '2360441567522223', 'Rao1211973968', 'Rao', 'Khalil', '', '', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2360441567522223&height=200&width=200&ext=1560503808&hash=AeRjCyqFeQq8rFWa', '0', '1.0', 'iOS', 'facebook', '', '2019-05-15 09:17:00'),
(98, '111844319920919368573', 'alpesh537745030', 'alpesh', 'vora', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mBaYbwDUL9tVgDaOkXCcVQ5KrrR5WOEENEk7RLNdA', '0', '1.0', 'android', 'gmail', '', '2019-05-15 09:29:01'),
(99, '100984634790380595471', 'Harmanpreet1762296039', 'Harmanpreet', 'Singh', 'm', '', 'null', '0', '1.0', 'android', 'gmail', '', '2019-05-15 11:30:31'),
(100, '108609473325526152065', 'RAFAEL1713880482', 'RAFAEL', 'SILVA', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mDRHDDuQ3JD3r5YBzXcs91vGoM9WDYQ8eJPbuk7FQ', '0', '1.0', 'android', 'gmail', 'eIsV-4bSNeg:APA91bGXqhC_NUCXkME4TikVXoBlNiuildAW1LgSmXlA9-ZEfFhJduJGA7_7oiwkgyxqyCsM3cc8vEwW-dlHV3w4R9Dk2KP-V3xnMdjgjzLNKEa46BqYQhf0Xo5nUhgUBHidOpmzgeUn', '2019-05-15 14:26:00'),
(101, '111557579780364743962', 'bhavna471938674', 'bhavna', 'deb', 'm', '', 'null', '0', '1.0', 'android', 'gmail', '', '2019-05-15 14:00:59'),
(102, '2277778302282525', 'Victor225951835', 'Victor', 'Alex', 'Male', '', 'https://graph.facebook.com/2277778302282525/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'dujZmMfHNDM:APA91bE4I54kqb3u2VaU79CnHghWZSQgSaoAmOvVLhBh67vkW--Ra7okaRSXQA67gl6JyN0YkRqeRwlfzyQ8W_a0R4Ls72R7kPYULQp_ZKvzGOoenqEm0P3CGrIS25koz50-QS-dz-JI', '2019-05-15 16:48:27'),
(103, '102690303703235411886', 'MdHasan1707926250', 'MdHasan', 'Latif', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mDwCeT1NablNmaxVeFGf-eB5STILINS5mUQH-lX', '0', '1.0', 'android', 'gmail', '', '2019-05-15 20:06:25'),
(104, '116463866688883806464', 'FOX918431424', 'FOX', 'NET', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mBKTbgbk-ohjXcyRcFs2tGIbzctD4vPfkEW7buStg', '0', '1.0', 'android', 'gmail', 'eohZmdQLCsg:APA91bGe4-ramK4n88FCidabIT23wybjnVB_SBGbK8ixLficpXgNQThy2MeIP1NNG4oJ74EvjFNOjm_Fp3gOb1iOLXM9BLVLypBhdKFWxTS6wDzgd-RxNacVqZ6fBfWLuM77qgLNhZot', '2019-05-15 22:11:38'),
(105, '2381879105378369', 'Bharmal1724907480', 'Bharmal', 'Ram', 'm', '', 'https://graph.facebook.com/2381879105378369/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'dq4ivXTWbfc:APA91bH_b1a82poPYU-h27WnQO09AHWDHruFmOXGsWK6HB1Xb766VuYiRSQ8Nt47Ig_9eh6cEVs0kc6CvNE27r5fE19uc-2M4Bvww-XFk-1ucdKwYWvRZ-pU_gdSYUd-0gCoh613fvfu', '2019-05-16 01:25:01'),
(106, '101742687799605791646', 'Sohel2063340714', 'Sohel', 'Rana', 'Male', '', 'https://lh3.googleusercontent.com/a-/AAuE7mDukMDAhOG_84UCKGkpnv4ZCLgV-Tayf8EARn6A', '0', '1.0', 'android', 'gmail', 'c2duSBOarqI:APA91bGnGuZGOnPO7SkR1MoJ-83R3BUzYTd4gY49wuxT-L3Lhbtj9r1I3mkMb-73iSAxJjyv3DpXFfQZJ3H1Vj5Oi2r6wqFMKD8f8E0rSbgf-FjEIQaNBpc8WqMpiakxLbJrq8DFRyQN', '2019-05-16 02:10:41'),
(107, '113790709986153698125', 'curious1777337033', 'curious', 'Fire', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mDm5gCLS-WX90Njw1HJzOv1u9yXJMpt9sAoLW8', '0', '1.0', 'android', 'gmail', 'eGmJ2-xMt0s:APA91bHgfKU4sgcnCYS3ZKMgt33GbiT6h2Y7W5QSstlZt8op_ULe1CPXcvlb0uzSC1lSEuLJ6NXPNZVJ97TdenoYMoNBsWuN8vv_WYOW9bG8ywlCamGMpTE-1zIse4NCAv9hdKYkfZNM', '2019-05-16 03:47:15'),
(108, '111246073095409051692', 'Dynamic81107105', 'Dynamic', 'Games', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mAjWxCdZiLVj5b7zRrsvadn7gfzHwXCPKZcsX4Drg', '0', '1.0', 'android', 'gmail', '', '2019-05-16 04:04:14'),
(109, '105449938228106792485', 'popkg1642735241', 'popkg', 'kg', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mDuksjQDwm6eFO4PrAq_PbbHzJAuSFHaRhqGYmERg', '0', '1.0', 'android', 'gmail', '', '2019-05-16 05:08:14'),
(110, '109677458155998350120', 'Maharshay1993901102', 'Maharshay', 'Golakiya', 'm', '', 'null', '0', '1.0', 'android', 'gmail', 'cLJPg72WweQ:APA91bFbOkztHWksmb-BsuQ_UfZgm0b5gCiSWrKJQXAnI8-AXQFFBLLC_hEbB04xI6YzZVY3FnG2jetnVQXveeIQoqQ4U7ukXrMU26TjzlHKme8o-83wezfhZuAoHP_U6ZiHjv6keKBg', '2019-05-16 05:41:15'),
(111, '101779538183501132899', 'Milan634193351', 'Milan', 'Pambhar', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mBFcYpC29mb98A8yxo70luvq4wyLvlfvvIxD_rfDw', '0', '1.0', 'android', 'gmail', 'fsdvWKAz79M:APA91bEaceF1XXZa32phoTzlCw69Z_oEEoYsPx8odIQBHg52Kpjurnx00qC8XeGvjPAPnZwNq_KuSHvoz6XIPAZ8YWZJ8wOdauMBzRCILx2GvopUYCKCH5mK_zy6bIn8lsND4pjxjH6g', '2019-05-16 10:57:23'),
(112, '2709569132446647', 'Md435222995', 'Md', 'Mohsin', 'm', '', 'https://graph.facebook.com/2709569132446647/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', '', '2019-05-16 12:07:40'),
(113, '114973921628200008769', 'Akshay1410837199', 'Akshay', 'Bhosale', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mBQfxjVLybUIJnlrYzbpzI02DWfR5x_GhxFALQ19g', '0', '1.0', 'android', 'gmail', 'f-cD90ymICY:APA91bHiAsVJU3f77DOHAzxJliYl5TpYdHmSkBnZxRAijy4RqbMYRNnvPtERl-bse9q-xCq1ASinJQbvjzmU11fDcJBHPG1GkpPL-H9RWx7mDIdz-GwHEm3cqNVdTtvVe7qqYOdiAPSZ', '2019-05-16 12:51:35'),
(114, '2429836417252906', 'Carmen2065748983', 'Carmen', 'Petrescu', 'm', '', 'https://graph.facebook.com/2429836417252906/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'emWI141jfEc:APA91bHM8VFvIJPNT7jiWuVF2yushCuBZBu7_gs4fYWXWFA23CJiLYh1nwmdbXfoiBA5bj4_rwvQiSSz0n37Oc2H4JWwOk4pSevCDGtMpxwPLFtDab9yG3PSi1Gjy42iAWBz71nIrVMv', '2019-05-16 18:20:23'),
(116, '431248927421888', 'Nisha1081931730', 'Nisha', 'Nisha', 'm', '', 'https://graph.facebook.com/431248927421888/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', '', '2019-05-16 15:30:59'),
(117, '300918857522166', 'Thomas1127495358', 'Thomas', 'Lahti', 'm', '', 'https://graph.facebook.com/300918857522166/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'fmALF6Lzc5Q:APA91bGsCFtuNnNhmo246lSM41afxBeZwF3U4HCcH7QptVWJFrdl1KDTlrClcSKCqQWIYdjRGEe75nZdAZQHVTiyAHA59ILmjDQl-rzEOIcQlbqJbl9ZLlJUH44ebQREjZFuQUNsPap0', '2019-05-16 16:44:42'),
(118, '2339409799481028', 'Sagar1276814839', 'Sagar', 'Ugale', 'm', '', 'https://graph.facebook.com/2339409799481028/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'deMG3Cfkn3A:APA91bHp1j_Thc0F5Ms5hlL-W1YJvHeUB-KgpVn_-P85bVgEA3owqicwzhWQ-lL7O1ZB4sVxPzLzKQAmrBIMCGSvoNgkpDGDlcNYVlsIy-6wZz7weXljYoEODh2c2bQoYRGc9VtqWoQw', '2019-05-16 16:46:29'),
(119, '108628604027147172576', 'Old562407486', 'Old', 'Serials', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mBitkHkRz2cLZvcEtLt_YqGHaDFM-HeIZwN83ITOg', '0', '1.0', 'android', 'gmail', '', '2019-05-16 17:22:22'),
(120, '112917566223960912754', 'Bhargavkumar354303301', 'Bhargavkumar', 'Kalluru', 'm', '', 'null', '0', '1.0', 'android', 'gmail', '', '2019-05-16 19:00:47'),
(121, '118217556396905451518', 'Shazili1762770634', 'Shazili', 'Abdallah', 'm', '', 'null', '0', '1.0', 'android', 'gmail', 'Null', '2019-05-22 04:44:55'),
(196, '103670064127433618706', 'EMOVIES262077671', 'EMOVIES', 'TUBE', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mCvJKqQja1qoTj37PJO0ypS0XXviIrHCh1fRviO', '0', '1.0', 'android', 'gmail', '', '2019-05-22 05:31:31'),
(122, '10156127934366196', 'Mostafa847792122', 'Mostafa', 'ElNadi', 'm', '', 'https://graph.facebook.com/10156127934366196/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'cpnclWJJGRU:APA91bGb2JyYd3Zo4xQh7VLUvDtkx_8Zj6-5IPrFI_bnNwb9iq8AcbIZFLZCm_9JJwbnFSoDwMQ3liZUAWZGdliQqUol3AgzFvbQ1sDhOu01aW_y8Srau7O6QOT_tnX-Oz3Gi6q0LZzE', '2019-05-17 00:26:06'),
(123, '117441205820346588753', 'Techyexplorer1475270418', 'Techyexplorer', 'null', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mBCrzFyQZWg3XyX2AcZdXSpRPyVBVPIpmUKaN-11w', '0', '1.0', 'android', 'gmail', '', '2019-05-17 01:59:58'),
(124, '110442299866629723088', 'Yuva1826689328', 'Yuva', 'Gen', 'm', '', 'null', '0', '1.0', 'android', 'gmail', '', '2019-05-17 07:00:54'),
(125, '116811224554381924819', 'Ganesh2145278798', 'Ganesh', 'Patel', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mCZHQhKgN5tkoNAryftKg5kTRrJPkIr0twOmB67kg', '0', '1.0', 'android', 'gmail', 'eW2vUtQIq9I:APA91bEfFz_D2e1puxtcfQXmUEyeZWmAQbAmw0iqEs8iK_nYOKEFj-1ZvS7K2iyhSL2m2w1WSXTq619L7hCjQpW6Fg-hU_jc3HLeq4qNdE1QlKF6AvMWoxbUFW6ORCuEjQsNUeLDYxxJ', '2019-05-17 07:25:04'),
(126, '101535212090119880994', 'Rasilaben1431172963', 'Rasilaben', 'Hirapara', 'm', '', 'null', '0', '1.0', 'android', 'gmail', '', '2019-05-17 09:04:55'),
(127, '101376349701383169161', 'Tripix2034251863', 'Tripix', 'Infotech', 'Female', 'So am week so so ', 'null', '0', '1.0', 'android', 'gmail', 'Null', '2019-05-17 11:25:49'),
(128, '100921187624256299980', 'RK372553665', 'RK', 'P', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mAj2YT3TAEawFs66f9MY2NzJ2FhrXjT-56rMNcPLA', '0', '1.0', 'android', 'gmail', 'fDYqCJwp6zM:APA91bHVTA4_wB4LHPmI5kWMN8koolbsxKI2a8KicS8yTvn4KLFw64PAPmYG4StknjMz7erwXT8RfekAfG0jRFIUH-PWWkwQ8gVJK-UTgAmT1PH4_gc4HPL9jrs84QujI4k8djnF9Vzk', '2019-05-17 09:32:33'),
(129, '107931454282867713108', 'WWE1066127423', 'WWE', 'HINDI', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mC1oS2eZ-Okh7RYBwO-BLGZ0MWVPjG-ynBHyq6L', '0', '1.0', 'android', 'gmail', '', '2019-05-17 12:17:31'),
(130, '103693664621491292066', 'leo7440652', 'leo', 'mark', 'm', '', 'null', '0', '1.0', 'android', 'gmail', '', '2019-05-17 12:31:50'),
(131, '116252993663584317563', 'Abhishek2105433914', 'Abhishek', 'Agrawal', 'm', '', 'null', '0', '1.0', 'android', 'gmail', 'dA3yk3u47wY:APA91bFxGbDtP-n4Hmxgrkwo2qTJHavwqYKslepFV3MhejAef-6JAM_48iSyJekNII0JaaXrPk2d5bfVStj1rYl5FDJNyvUzCTxFXhwq7RWqenKcMwJdZoWvNgKBqcFo_a1D6WVePUOD', '2019-05-17 12:33:15'),
(132, '2318220481571558', 'Karthik336250683', 'Karthik', 'Karthik', 'm', '', 'https://graph.facebook.com/2318220481571558/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'dpoT0DmeKGw:APA91bFUkAcUVoIvEa8N2C7XlGYbBtTcsZLDKrx948tFPiIVGDjI29TclgKHzjMuX0GJilT55eY3Ai6MqQqwSJxAyvpZFP9D8bZs0cgek23HL4BZk6Zld9fvrDoHNEtnEBAPoMRPzLvp', '2019-05-17 13:31:56'),
(133, '102550924251171177215', 'A1651580527', 'A', 'GmBH', 'm', '', 'null', '0', '1.0', 'android', 'gmail', 'ez6IydDj9TQ:APA91bEG6E5RCe9I_FFPLI-j7BwsokKBI4zG9MwCwj5crUwVFt5-FJloeTuIA8pQ6CJEpSlK5sniGemNyvA89TmDwdJOljA4EiSlNNP45QD7FiXd0Gpo7Q8FoJr8J57yFEsfCAhuM0rL', '2019-05-17 14:34:03'),
(134, '109294050928576373238', 'Nayan280358148', 'Nayan', 'das', 'm', '', 'null', '0', '1.0', 'android', 'gmail', '', '2019-05-17 15:27:20'),
(135, '108276412563106655509', 'SUBODH227357427', 'SUBODH', 'KUMAR', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mASPJVpIA3Nmz8Ts5xKFQ-5kuBxmPcH85oGZ3m5ww', '0', '1.0', 'android', 'gmail', 'f2OJLcOs5ME:APA91bGEKexwwmGq18ZOoVTpl4dYEFKwGBAKPDhFzJn0hgnckKrPP8AeYyMj51fUN3I3zY3qI8z4_y_25zHg7TBWGV_mzZTndu8KiclEw6h37ExGO07uAydELSyqxm2XfJo4ZwQ3X_jG', '2019-05-17 15:41:33'),
(136, '117825360736827357988', 'PrasantKumar1707126244', 'PrasantKumar', 'Sahoo', 'm', '', 'null', '0', '1.0', 'android', 'gmail', 'd-qjBWaHcuw:APA91bFVFvgt-qVSqptrbEqHnLqSbxNjAcoCOGUXup9M9zsRBWftWd5akNMPgbxqtXC6e4X4k3g_p_jS_F_9ESoEjnJYb4oZrynx9R4bhwFD46TBRgKXhGB_yoGqFQ67pl-JYT_lwJDI', '2019-05-18 13:12:45'),
(137, '117765670124992149803', 'FAQBOT1004779326', 'FAQBOT', 'Clash', 'Male', 'lslsld', 'null', '0', '1.0', 'android', 'gmail', 'e9eUxwaKtUg:APA91bEeOYzRl0NSCRn3IFDHW5lEjtB2G7fqW6D6vOolxNNCwLmj1VD41o9YNbOpsZuCD5wzGgEtuPqj8F2eecvc1i2EXrrWNRPlBmdGvkYrRHnD66nsFOIpvOMb_41ylM5lxJQsZTH0', '2019-05-23 06:19:36'),
(138, '10157093326730821', 'Venteens849314796', 'Venteens', 'Production', 'm', '', 'https://graph.facebook.com/10157093326730821/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'dKikfkaciiM:APA91bGs-U7tJEru1k1ognY5jwziLzoBzPVOiEzy_8N9p37GWlNQW51JI6EjI97uGUYuAz3HIKephX1c9vcUsnOT1gP-3S8AgLwZFp_4cwJfpd9I38CdIx_Fg7ydyiq6gStJrpHXozcK', '2019-05-17 17:30:35'),
(142, '111346791448699939066', 'Xp1905505984', 'Xp', 'Men99', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mCL7aX_pzD4zqQ483kz54QgdbmAMaW77IKphPaa', '0', '1.0', 'android', 'gmail', '', '2019-05-17 21:42:06'),
(139, '118281227828103821077', 'discover166833368', 'discover', 'everything', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mAWIROnd05jxUwudmUQYaQY_BYBgIkOu06HpYvm5g', '0', '1.0', 'android', 'gmail', 'dweJN0kIKw4:APA91bEZPl4mQMBJOGBQq5ji0ON0WEnaDdi5pA5go31e8O88xA5JCh5ix0q19GiDi_CunZvyVf75_5PDFyj667ff5lXl6nV0lijbzK09bLho0HM-HN45UOx21_HDolcZPrN3SMI5ikjE', '2019-05-17 18:57:02'),
(140, '110033491124502282775', 'Nasnas797719249', 'N', 'K', 'Male', '', 'https://lh3.googleusercontent.com/a-/AAuE7mA5IHKbFxyauivMN-ZBYoEaxQB5-vL5PftrnROt', '0', '1.0', 'android', 'gmail', '', '2019-05-17 20:13:52'),
(141, '111575457087266133936', 'Ariel163210032', 'Ariel', 'Soto', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mDlf6IzDaMsdc6MUe-lUGPu0dMxkn0RTgJ7uz5l1Q', '0', '1.0', 'android', 'gmail', 'cnUEv74dn7o:APA91bFTVTMUl0j2gcXpe40RuUOVOaAOeRnRKJX5Fh9-BDdXNv1Jl9Mk0-VpoRCD-Z6R7UADpF3ozwXrzJSpCNf1Lh2Xn_hCujs9K_Rn5rS7jiPo23LgvCzUz1HNOx5s7mHqtJS-Fh8u', '2019-05-17 20:22:13'),
(143, '10155983465277312', 'Paul996342237', 'Paul', 'John', 'm', '', 'https://graph.facebook.com/10155983465277312/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'eUt7tGNNgvc:APA91bHeohLEGM2A-ZhZ_SZJKFf2eH9OK88JImVGsYk-_EIjgIQUhvJSkXb-LiFX5MCDEokKNPuKfV76KIX0qQ67X6gRsHTQ0dG-22L6uSiNQb0ALLmHzdwdtUYlegzNLrjSRkyJuliP', '2019-05-17 22:11:38'),
(144, '102172599680215410497', 'Mayank2105230064', 'Mayank', 'Agrawal', 'm', '', 'null', '0', '1.0', 'android', 'gmail', '', '2019-05-18 02:51:16'),
(145, '111055645156763865342', 'duda696986973', 'duda', 'deal', 'Male', 'maksksmans\nmakskak\nkakaksks\nlalalsla\nlslslalsl\nkskakak', 'null', '0', '1.0', 'android', 'gmail', 'emMKoBJFqpo:APA91bHwCWvZVs8Pimhw3MwdJwyIf0sgWJllJxKSJwgEKjsqCvgME5QNlZgH4-2gooxh0ZLmx26VFRLvRBS8hMG1aAUH1F2MZ89__CXzaeqN1F9UNgUzUNzcT5_tjcfUSQCSs2ccU-xi', '2019-05-18 03:30:33'),
(146, '106427326473352727123', 'chirag2132742843', 'chirag', 'kothari', 'm', '', 'null', '0', '1.0', 'android', 'gmail', '', '2019-05-18 03:22:05'),
(147, '107459579798796779359', 'Tripix1334805165', 'Tripix', 'Staff', 'm', '', 'null', '0', '1.0', 'android', 'gmail', 'Null', '2019-05-23 04:43:20'),
(148, '1226416044191135', 'Ldr353440584', 'Ldr', 'FÃ¢Å•á»‡ÅŸÃŸáº·Å„iIÅŸÅŸáº·', 'm', '', 'https://graph.facebook.com/1226416044191135/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'dlCG1b7GmAQ:APA91bEDJ_hiFjMtV00CIuu-Y33aA1rqCKkfVdjD8G1HtxHWhGIENiX9IsfQG5qpkd7LQmBxPnhDXOkFgHkuJkW2uoXDJCrtJIwPeU1DS1CDnozxg6mnV5NCQ1uyqcmYBjWVW3C9P987', '2019-05-21 15:05:15'),
(149, '105540811318096670053', 'CocMaster1342078487', 'CocMaster', 'Attack', 'm', '', 'null', '0', '1.0', 'android', 'gmail', '', '2019-05-18 07:22:59'),
(150, '109779122840410945809', 'Zippy1445795863', 'test', 'Box', 'Male', '', 'null', '0', '1.0', 'android', 'gmail', 'cgTcMynbGJM:APA91bHoG53UTC1QxJJtsEDAdwGJAsPzSKba7z7MsUPjK1IwP2k6xaQP2dBQiY2D_zdnf7XqgyxN7ZLA2JFSQ11HuRdJfGOZjudT4uUWqfAEOuDSk8IAV1k3WPpz5PAKKnQXT2N_MbZu', '2019-05-18 09:43:42'),
(154, '115059736784586241651', 'expert325087486', 'ex', 'pee', 'Male', '', 'null', '0', '1.0', 'android', 'gmail', 'cKrmlpoMpds:APA91bE-GCuBpyXeBbjLcK9NVSSH7V6lm2FISoMOCSfIf6WqgRiJeCSa4NSOR1jgfScequ87A1ek7mFTTUY2RJmkL7SQfyluCT_MlOrAMMe7hvre5EI7NTFj8xQafoW3cf8eNyRBRIss', '2019-05-18 10:31:52'),
(151, '106852854502264699302', 'Mukesh627460010', 'Mukesh', 'Nishad', 'm', '', 'null', '0', '1.0', 'android', 'gmail', 'dndKHMnw1Ko:APA91bH6kD7rA3dv8sCaLeeaIel0wQUpEMkq15D3r5FdKkXDLfRKvBDpKmjkR1NZh_hLqfMax-AnyKNHSajrCANzRcPsWFUlIbICxXnGywTs086SksXqtjnW8a0c1veQYqklTJ9FIEtg', '2019-05-18 08:51:04'),
(152, '106587336028114910038', 'Hardik1175439059', 'Hardik', 'Patel', 'Male', '', 'null', '0', '1.0', 'android', 'gmail', '', '2019-05-18 08:56:23'),
(153, '115813004196293379368', 'Sexy970085599', 'Sexy', 'Bhabhi', 'm', '', 'null', '0', '1.0', 'android', 'gmail', 'efVgCYN_ZsE:APA91bHfuWmMXD_himhYZ0NCNS1mlHMsdYMFdGjMIQ9tgnGznv4Tzl4qo5yrF7oHAxJCmlOoFO6Ln1UIrhOwkrr-66M7a65l0m5-ZUicJn8-cG7N17ilelrLeZ0k4y63zybX41Jimrtx', '2019-05-18 09:31:19'),
(155, '2269247600059671', 'Ø£ÙŠÙ‡Ù…617724411', 'Ø£ÙŠÙ‡Ù…', 'Ø¬Ù…Ø§Ù„', 'm', '', 'https://graph.facebook.com/2269247600059671/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'fRaZ0dX7Hcs:APA91bHZ1cQTt6sWq5mI92NPXEybYYMv1OWYSF4VdlRVaqvopndLKYUOuyhI3Esfo7EZH6AAjlBkfp2UVkUw_YH-Pa8981lZU5_B2xY4MRFgdfVgMf7D1l_LhZRZESs7MPewJdGnn28h', '2019-05-18 12:04:18'),
(156, '117372204121480596463', 'Adhik1334736578', 'Eddie', 'James', 'Female', '', 'https://lh3.googleusercontent.com/a-/AAuE7mCHyaf-4reJZuIAVt1lqWNLJW-Kv0-V_m3gJzbnJg', '0', '1.0', 'android', 'gmail', 'Null', '2019-05-18 14:19:35'),
(158, '116427355924095420684', 'eddie738071711', 'eddie', 'j', 'm', '', 'null', '0', '1.0', 'android', 'gmail', 'cf8kxx1Vyw0:APA91bFzPyk4cKXlVILGdk4zy9PMsjJugAdClXYBt5ILIuldphMrqDWoWUCvgCtlfHXhhwW-gtLOPwuy7GPvyIejAVeai4WHkGdJTbUXDCRBMKSgl3mR7T-R4Wa-ocY2sbzZ2KwPDAUh', '2019-05-18 14:42:48'),
(157, '839773369722513', 'AbdElrhman460150876', 'AbdElrhman', 'Sadek', 'm', '', 'https://graph.facebook.com/839773369722513/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', '', '2019-05-18 14:19:15'),
(159, '111710332762394904579', 'Fausto1349696943', 'Fausto', 'Polanco', 'm', '', 'null', '0', '1.0', 'android', 'gmail', 'feTsBGfOY2g:APA91bEm93-x8taUpCNhILMcQShgLnxpA_OgcG5c5oU7amnXCrQOReZ3vpXbWbkAl_oOMYTMh3CSLvy3xf40QeyLEBi7gFbxZLiHfc0Gcuwmo6i2YhsGzemQWUhM60L2p3EOnig2WRSj', '2019-05-18 17:33:49'),
(160, '10211173702298581', 'Pablo745925787', 'Pablo', 'Harry', 'm', '', 'https://graph.facebook.com/10211173702298581/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', '', '2019-05-18 19:01:01'),
(161, '107487983153003773560', 'Deepak1215014630', 'Deepak', 'Gaur', 'm', '', 'null', '0', '1.0', 'android', 'gmail', 'fA_goE0B3uw:APA91bGAikhuFmtodn5X-KSe2Wih6HzLHlOi_SZ-aaicqBGnzyO9qN_v3AY6TmmfMv50qSZCuRVlaoJVebqvgzyH60HIC3OclfrHpzcwrxVLgdLJ6XsdTGrmNNm1iDvqlxYtkGHaGMeQ', '2019-05-18 20:41:51'),
(162, '10157393914464388', 'Mamun2068993498', 'Mamun', 'Sheriff', 'm', '', 'https://graph.facebook.com/10157393914464388/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', '', '2019-05-18 21:23:59'),
(163, '10219402599003656', 'Ã„dÃ¯l203408417', 'Ã„dÃ¯l', 'Twabe', 'm', '', 'https://graph.facebook.com/10219402599003656/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', '', '2019-05-19 02:08:06'),
(164, '105143683150156669508', 'Lei787885676', 'Lei', 'Zixian', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mCf07Oy2BBD2ECy7YicBhtwtr3DFsD6OLOk1YU9', '0', '1.0', 'android', 'gmail', 'cucXEn0QhfU:APA91bHWs8zDNgWidD6d1ZgjnQIlqEoAySs6DV9ibTQH6nnVYoeOV_LQBbTSBAYlfAeZ9E5NPk2COcvDrH-UIoNHVwt3auWPIekJ1F2oFMglS6l5Bq-55lBQB9-3h1jRF8UfFyTjWsOu', '2019-05-19 03:02:06'),
(165, '103184562963360642567', 'ecwid2109252182', 'ecwid', 'shops', 'm', '', 'null', '0', '1.0', 'android', 'gmail', '', '2019-05-19 05:57:42'),
(167, '105885774288069274520', 'Aman535939844', 'Aman', 'Bhardwaj', 'm', '', 'null', '0', '1.0', 'android', 'gmail', '', '2019-05-19 12:45:03'),
(168, '102051552328642344523', 'funny2098810939', 'funny', 'video', 'm', '', 'null', '0', '1.0', 'android', 'gmail', '', '2019-05-19 16:42:41'),
(169, '111600182630068249462', 'realrrahul1367025011', 'realrrahul', 'singh', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mC-3GV2cOpOcLHokBimxLxmxb2px2mvGIF7G3ty', '0', '1.0', 'android', 'gmail', 'dquUHdb4T4E:APA91bHdUFrsdfzczu8sGP1N9DlyzCsrOjVIn9lgzINQ-nkmatW__zzPTDlwUYc1o4sVH4PWk1pBoodLECS-xOpTTYEgDIWss7-dc23ciEMvqNMHu5ZVUaVnZAt-1pZVgnOoduTNRNCw', '2019-05-19 19:32:29'),
(170, '436635773803857', 'Suman1313940778', 'Suman', 'Singh', 'm', '', 'https://graph.facebook.com/436635773803857/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', '', '2019-05-19 19:34:09'),
(171, '108802155685762704948', 'Born690387573', 'Born', 'Rusher', 'm', '', 'null', '0', '1.0', 'android', 'gmail', '', '2019-05-19 19:39:48'),
(172, '105590184970297859152', 'Cognisance1686583531', 'Cognisance', 'Sciences', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mB_bQ5MhfstESLnL9E9fEMvWDNSyjvfp_qhKCyI', '0', '1.0', 'android', 'gmail', 'c_PJ_-ChEW0:APA91bFg5RFy2xgE4iw4BsAyQ-iZmZkX256SalAiFMn3yvrgt56IOrQfj1cQ51BJPWFutgwGb9dS8u9cfwj1iv4SFrqE7lIIVr5vUfnLsKZ-s-IRO_qLbn7wbCaaW5JdzTW73IlI3Siy', '2019-05-20 05:16:30'),
(173, '184955195825920', 'Tripix1688878496', 'Tripix', 'Staff', 'm', '', 'https://graph.facebook.com/184955195825920/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'Null', '2019-05-20 05:25:25'),
(174, '118124160650033462792', 'Shivam1139271510', 'Shivam', 'Pandey', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mA45xrRheJib3tmC6ygGLSloMuyPCic-eZEB0u_YQ', '0', '1.0', 'android', 'gmail', 'dmX3qt6-gc4:APA91bHdsShtoq8iV50saRFr3zq1A7FV9BiYJYsG-h-0D-Spqt5JGP-M-KDjqAwpBq4RLCVTx4TNna8b1C9O4eXENkIEyrsOghUAmkmRLL8BcMkrwX9rhtwpZ54c_jUORbcHmdN_2oTC', '2019-05-20 07:26:55'),
(175, '104126487360617116522', 'sam1946374239', 'sam', 'rawat', 'm', '', 'null', '0', '1.0', 'android', 'gmail', '', '2019-05-20 09:21:20'),
(176, '118357603241346188507', 'Brain2119429345', 'Brain', 'TreeIMS', 'm', '', 'null', '0', '1.0', 'android', 'gmail', 'c2J-H24eRdM:APA91bHoPkPn13Mm68euMQRUVANDTNQ9hgh_XKQ_W2GXe3qwVxVQHFYBIL-ONow4-gxtjjAbdMA5uGq1ija4_FVngB1oIVFR26NzlCcR6UNkCANn-6vpqmYtAQNkcTmsjB2WqsAarA3M', '2019-05-20 10:36:46'),
(177, '111669326768951028889', 'narendra91296069', 'narendra', 'sharma', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mBL8j57ndtiKCx33dbBYrog5o6RRfC0n5ITsmEuxA', '0', '1.0', 'android', 'gmail', 'eztTtM9edC4:APA91bHt6h93c_PcopBkmQKXj3OfIM-VyuHuBy9MJ7xHYjX7mz_5sV6mVuXk2wqCWgA_Hx09v0l-QTkBiZ7Pkq78xwEAyZoqN51JgUBcqqU_eTSfKTwxa7FMIb_IZCbSRcoRhT1KqFl1', '2019-05-20 10:43:00'),
(178, '101944233910220343544', 'Nk371504602', 'Nk', 'Studio', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mAU3UsTZSBD9Tedb1mEPA2pL3LlP56i3YyN3Gw5', '0', '1.0', 'android', 'gmail', 'fYSOMZTM5LY:APA91bF60yPJG2-COBLx-pi6rCI3xP13Qk70aDgWGo4KEXBBz3kMhhYfnIPLq-CWgUnSGUbsVh21UkXo3chl7mswUXCImJ0CaFhw7n9iq9F7GgTxwJ9sbyUkNb6kr4Q6aCS4dL9psttT', '2019-05-20 11:10:16'),
(179, '3245819705443866', 'Jaka671913586', 'Jaka', 'Suganda', 'm', '', 'https://graph.facebook.com/3245819705443866/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'f7keMuTtTg0:APA91bF_NM7OlsRkOdZjGciFsaZ_kZa6eM1BU14NFmlamNkjk3EwXYmXP50HCoCcyAaJo56EDp1YaNEHlzE6dXJXe-I7RoKsiV7eF3FaRRWeX08FbOlZDv7RAnREGuUigAcwGjW-09wt', '2019-05-20 13:20:33'),
(180, '10205994873986907', 'Akinbobola1885323707', 'Akinbobola', 'Oludotun', 'Male', '', 'https://graph.facebook.com/10205994873986907/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'dOuMheNzdig:APA91bEWO7c-cjHzcrqW5H3IMtiXV52YMtJbBQ_fggXhWxnM-mbx9FZNjqeLlLzlaBNIquGcKdfTibkw8epFEozd_4VvIxahpy__QEKPeqnSOJRxkrqTDhlqSYFS0-NLafhfhxw-nYEe', '2019-05-20 15:51:08'),
(181, '108259289978159547436', 'Allan1232505543', 'Allan', 'Junior', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mAPVsiPZt5jyGFu7N4IW5X7D4ahPpF504pUp7Jecg', '0', '1.0', 'android', 'gmail', '', '2019-05-20 19:21:55'),
(182, '111614430227328039977', 'Kampus531512962421', 'Kampus53', 'SosyalPaylaÅŸÄ±m', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mCLNnagIXnXJ9nIqka8fU5-HxOZ5DZiXNTgjOEo', '0', '1.0', 'android', 'gmail', 'cbmzL52qn_s:APA91bGWGkMjCmGwLqCdH3puq8xOjG_aia3WA1CHLgzEgAIHVwJ5e7wDMz0_PevE4Ln1yBWKC4L3FqrfbwPwQ9jqHxOX5ZBBHVzN6aOSmCZDjCdW44xFZk7ub5qlaPtZNGIScM0zNR61', '2019-05-21 00:26:21'),
(183, '117105642468827525449', 'Rakesh184856799', 'Rakesh', 'Antil', 'm', '', 'null', '0', '1.0', 'android', 'gmail', 'f6QJd_ziXvk:APA91bG-UMzx_RQG2GzqXE62KFUtHKULXQPQcsrt9LnfwcSAjl_9W2LcAI357OBPRVsUT19soXvyhApmGtQzaWmspMsou2qJQt-_qCqyhDqQGosLwKgefs5rbBBYl6dn1pwUZzLP5tG6', '2019-05-21 07:17:29'),
(184, '137583790643026', 'Kainaat1654050920', 'Kainaat', 'Sayyed', 'm', '', 'https://graph.facebook.com/137583790643026/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'do25jPcK0To:APA91bHlEcYBD6vvjDo7IUOkPKIsp1v6ypnqRB1UnvSHg4KmD7opgRGCZjYhClWkyNZEHVt-t1Na0f33E7re1-egyUZW7WMasMZjR9uWVuFcEzlnZw-ibYm8kUwiZOhK3FdWGwjZNhmJ', '2019-05-21 06:56:29'),
(185, '103808786859591736031', 'Nick1889400118', 'Nick', 'Hacker', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mD6n6BBoCmdBmqnNk2UmIwpNAnOHAXMgr2i-TSY', '0', '1.0', 'android', 'gmail', '', '2019-05-21 07:56:04'),
(186, '109393958109531649185', 'ka1614198597', 'first', 'tik', 'Male', '', 'https://lh3.googleusercontent.com/a-/AAuE7mCSKWIHeulPm4GM_Z0p5v4Glw3iakmK9Q5tVIJH', '0', '1.0', 'android', 'gmail', 'dbSP4CucpAs:APA91bEjSIkrJY262jU01wPUwi2_h3hWMyBhvhg57sumG9YozlVE7TXOf2lESmEXypFnMjBkXCxoHCb_Us01eDb_5_OYdJMCRqtpn9ljMq6FT2o3TgS95sNtv324BlseSiybMK2DJYfu', '2019-05-21 08:28:13'),
(187, '113210228441586370357', 'bilal1422378361', 'bilal', 'ahmad', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mCf0CPB5IphP7Z8OqYF7Lv5k6Qmks2RkGOGNg-yiA', '0', '1.0', 'android', 'gmail', '', '2019-05-21 11:43:20'),
(188, '2356681047883298', 'Wycliff1776290383', 'Wycliff', 'Mahero', 'm', '', 'https://graph.facebook.com/2356681047883298/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', '', '2019-05-21 12:53:40'),
(189, '117954349812898953710', 'Channel971844754', 'Channel', 'MTO', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mBFI7hcG8KNkVetRwah2NaexEikxFygE6B4MZRz', '0', '1.0', 'android', 'gmail', '', '2019-05-21 13:47:14'),
(190, '112549402447261705176', 'Ak578153293', 'Ak', 'Tech', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mAa2hHICTshT4mQ0F03GUpr1hwJ3IZnhYTkGHc9Yw', '0', '1.0', 'android', 'gmail', 'c_-_ZxWU8ug:APA91bGJs1YtsLBVeyvroZlOxtX_LBt1-LpUXTaCVXmdQV8N7jNua5sR2VRxeF40wVN9Hkp4omQqHZU4uM9ST1kg3I3B643V9HORJstoiu1jWr_BITvBQ9he3Y_3eE1pjxI8UQT0d61f', '2019-05-21 17:56:40'),
(191, '102201688590532690199', 'Pradeep1347092658', 'Pradeep', 'jyo', 'm', '', 'null', '0', '1.0', 'android', 'gmail', '', '2019-05-21 17:04:00'),
(192, '2239659289421034', 'Mini1012347678', 'Mini', 'Bisht', 'm', '', 'https://graph.facebook.com/2239659289421034/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'deFjD0GSOtc:APA91bGvvZaBqxaNX9q0XzEYF4MhdT6IhYM82pRYScXt-IsMdfeFHaJMbx3t81E5OemkBY3FZHQ8eFSWbDoQ_PJzgr3XxrrJczqYa0JuWbpCwWgeN9UyXxR7CBALdThckH9BwqZ9JrcE', '2019-05-21 17:06:36'),
(193, '104364137674459266892', 'Rajasthani1093056975', 'Rajasthani', 'Songs', 'm', '', 'null', '0', '1.0', 'android', 'gmail', '', '2019-05-21 18:47:30'),
(194, '111222674130123606413', 'Mera18133647', 'Mera', 'Template', 'm', '', 'null', '0', '1.0', 'android', 'gmail', 'c4QWSYuOfyU:APA91bESDTtyHhOZNZAmOzXZDrVAn-6vTAZXSpUFcsmOz5b8yJbrijlTBxJe4VPXN5QhXARSeVLYL1UrVmNS-DDt79-jEEFhHTE4zf4OpGk2slAs7cauJEB3lELKeC0R9BFfj9ZHRqpd', '2019-05-21 18:53:15'),
(195, '115786203612682924309', 'Ps1912800575', 'Ps', 'Sahoo', 'm', '', 'null', '0', '1.0', 'android', 'gmail', '', '2019-05-22 01:41:51'),
(197, '100826212148807925153', 'Oye265713878', 'Oye', 'Banarasi', 'Male', '', 'https://lh3.googleusercontent.com/a-/AAuE7mBDmoSPsQtpyIspTEtaaUdst9wy79lrRyqgFS-3JQ', '0', '1.0', 'android', 'gmail', 'dDu3C2zo0ds:APA91bFNrUrNxQHtsq9FkJZ0T88wvN2L2q-Fo8Tw2LOZzcfgKDDaz8efGvSAobnfsUf4u2YrYLWs8zXyJLDk30JKMSt1MWd8C8yh8fnzL7wQv7CWVb7v9Fi5biK4jqX7MwNrsymL-fXH', '2019-05-22 06:09:16');
INSERT INTO `users` (`id`, `fb_id`, `username`, `first_name`, `last_name`, `gender`, `bio`, `profile_pic`, `block`, `version`, `device`, `signup_type`, `tokon`, `created`) VALUES
(198, '104584377730036479349', 'Anshu981731417', 'Anshu', 'kumar', 'Male', '', 'https://lh3.googleusercontent.com/a-/AAuE7mB94bA4uk9Rwk416LMnl7cpAq5RkPWzRDp8waCo', '0', '1.0', 'android', 'gmail', '', '2019-05-22 09:27:09'),
(199, '114478019776248', 'Raj1378447653', 'Raj', 'Raj', 'Male', '', 'https://graph.facebook.com/114478019776248/picture?width=500&width=500', '0', '1.0', 'android', 'facebook', 'e827g7l3eHQ:APA91bGL1nM2EbJWmtXOtXLgfcYx7Kz107EpYWqtmjWNdmFTFck986tROy-0xb1DtUy0Y6rblQ6Hh8bjx3klcbtqJ4IHX_fxYTFwOfJsu4hkjqaZrmaUWTjAHYuIv65c-dhnMDrr_uAd', '2019-05-23 07:24:26'),
(200, '114465710100068566774', 'Buy472134234', 'Buy', 'Clues', 'Female', '', 'https://www.google.com/s2/photos/private/AIbEiAIAAABECPaN-JKY1qHgyAEiC3ZjYXJkX3Bob3RvKigxNzFlZmRhMTdjYWE2NjNlOWViZmUwMDdlYWI3YTU2ODMyOWI2ZWQ2MAHwZrIjnKUkNP8i1BOKo08yS85XjA', '0', '1.0', 'android', 'gmail', 'cnhMZITWBt0:APA91bGkAkX98t5-OB91fOaw5Rov9wu_Q_uZC76_mfKq-XtiWI-IIfoiUos1KpMbCfsfxGgqT94HJuazXBaCwEag7_3pBYhs3LkGfPM1ImA6Qlp9mc3EytjrAso2aWHYZRWioem6BTXC', '2019-05-22 10:31:38'),
(201, '105498668494680537403', 'harsh200920668', 'harsh', 'rai', 'm', '', 'null', '0', '1.0', 'android', 'gmail', 'cAj5TV3wLlc:APA91bG7o9BcX1E273gAsfaxTrKji90wXjPmC9olKnNck8YXxzFnhoH6W5x-C9eYnP6dQ3QWyrHPD9ev9GkDfQP2fjt41V9s6Blu_v29wCljO99urcdvxBvIPA1BSY-wTAlsKSIapm4E', '2019-05-22 12:34:21'),
(202, '109870290838380756193', 'VIJAY2043471765', 'VIJAY', 'KUMAR', 'm', '', 'null', '0', '1.0', 'android', 'gmail', 'f3UoGfIdMFs:APA91bHe5qfzoa1sUgnfVBrTLeN72QQ2iyDQxWYup3s-NBjMqJSGVbKcqHsQExsE2yFipEg8W_TE4j_RZEilHJy5kWr-kJxC3CEkJJwrbXoz_j9rzqZNmUCNo6DBrTNrIPuO0qKzF6BY', '2019-05-22 13:04:13'),
(203, '103754705679172752583', 'Cash101897449554', 'Cash10', 'ParaKazan', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mATznShYArcL-Zn9Jt48pCUxKMdMxHHgYbnqOqq', '0', '1.0', 'android', 'gmail', 'fMoOEF6RhNw:APA91bHfhJLnaaEPygfaBtIqOWc07oGUC27d-qxYFbNgL1eTQM-KgPaLVRHPR3mSicO1q5Jwajsy47DZO8ne5lttf-XNueDBRT_pIhgQ23eSpLGGsyGW9zugOqJzOZVGbsQtxe01CPNs', '2019-05-22 15:22:05'),
(204, '109376264006595636954', 'MOHAMED84046883', 'MOHAMED', 'ALI', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mBuCNrEI5TayffiSM75wtelcDuXB0jp2p8iay4T', '0', '1.0', 'android', 'gmail', 'eNX6atigeTE:APA91bE3HIw3qGxcaEhJQV02aUkOIU2qG6jErZdLsjaTlVCAincmo6QppH3KmZ9DORKpj2noCN9tvuf9D_ZxbjzAn8ywk896SNTf5vHlE5IB6LoL0u9IVOs2iZDkrESr6TeKsTMpEJQh', '2019-05-22 17:47:17'),
(205, '113620403104155819000', 'Melissa790564232', 'Melissa', 'Cengiz', 'm', '', 'https://lh3.googleusercontent.com/a-/AAuE7mB307J-8exHcrxHNFiu7RqQqQIcZJrWJyyBLXj8kA', '0', '1.0', 'android', 'gmail', 'e9IBJ8gBV-s:APA91bGMGfhToIGeb2x2CcKj7wSrcpEqhJk7rkYyxXCXa73Ofe48ZhVJQ2vhKJbehSiMqB2PK_yggt8e--He5h_TFF6SJEi29nRlX06n3UQc4vBryUEOr12yxa09S-xIGQYBrUebtmtS', '2019-05-22 17:40:31'),
(206, '107798859190073095139', 'Gaurav536918905', 'Gaurav', 'Raj', 'm', '', 'null', '0', '1.0', 'android', 'gmail', '', '2019-05-23 01:14:42');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `fb_id` varchar(50) NOT NULL,
  `video` varchar(500) NOT NULL DEFAULT 'NULL',
  `thum` varchar(500) NOT NULL DEFAULT 'NULL',
  `gif` varchar(500) NOT NULL DEFAULT 'NULL',
  `view` int(11) NOT NULL,
  `section` varchar(250) NOT NULL DEFAULT '0',
  `sound_id` int(11) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `fb_id`, `video`, `thum`, `gif`, `view`, `section`, `sound_id`, `created`) VALUES
(124, '2116671305090122', 'upload/video/23.mp4', 'upload/thum/23.jpg', 'upload/gif/23.gif', 119, 'Talent', 7, '2019-05-22 05:32:06'),
(123, '2116671305090122', 'upload/video/22.mp4', 'upload/thum/098765423456789.jpg', 'upload/gif/22.gif', 115, 'Talent', 7, '2019-05-22 15:47:41'),
(122, '2116671305090122', 'upload/video/21.mp4', 'upload/thum/098765423456789.jpg', 'upload/gif/21.gif', 112, 'Talent', 7, '2019-05-22 09:43:57'),
(121, '2116671305090122', 'upload/video/20.mp4', 'upload/thum/098765423456789.jpg', 'upload/gif/20.gif', 121, 'Global Pop', 7, '2019-05-23 07:13:42'),
(116, '2116671305090122', 'upload/video/15.mp4', 'upload/thum/098765423456789.jpg', 'upload/gif/15.gif', 91, 'Global Pop', 7, '2019-05-22 22:07:14'),
(117, '2116671305090122', 'upload/video/16.mp4', 'upload/thum/098765423456789.jpg', 'upload/gif/16.gif', 110, 'Global Pop', 7, '2019-05-23 05:09:32'),
(118, '2116671305090122', 'upload/video/17.mp4', 'upload/thum/098765423456789.jpg', 'upload/gif/17.gif', 103, 'Remix', 7, '2019-05-22 09:41:04'),
(119, '2116671305090122', 'upload/video/18.mp4', 'upload/thum/098765423456789.jpg', 'upload/gif/18.gif', 131, 'Remix', 7, '2019-05-22 10:32:06'),
(120, '2116671305090122', 'upload/video/19.mp4', 'upload/thum/098765423456789.jpg', 'upload/gif/19.gif', 122, 'Remix', 7, '2019-05-23 06:19:57'),
(112, '2116671305090122', 'upload/video/11.mp4', 'upload/thum/098765423456789.jpg', 'upload/gif/11.gif', 104, 'Electronic Music', 7, '2019-05-22 22:09:43'),
(113, '2116671305090122', 'upload/video/12.mp4', 'upload/thum/098765423456789.jpg', 'upload/gif/12.gif', 99, 'Electronic Music', 7, '2019-05-23 05:29:43'),
(115, '2116671305090122', 'upload/video/14.mp4', 'upload/thum/098765423456789.jpg', 'upload/gif/14.gif', 120, 'Electronic Music', 7, '2019-05-22 23:36:44'),
(114, '2116671305090122', 'upload/video/13.mp4', 'upload/thum/098765423456789.jpg', 'upload/gif/13.gif', 106, 'Fashion', 7, '2019-05-23 05:09:36'),
(91, '1211841378968009', 'upload/video/1.mp4', 'upload/thum/7894273438284.jpg', 'upload/gif/1.gif', 144, 'Fashion', 2, '2019-05-22 22:06:57'),
(90, '2116671305090123', 'upload/video/2.mp4', 'upload/thum/3454354345.jpg', 'upload/gif/2.gif', 150, 'Fashion', 2, '2019-05-21 14:26:58'),
(111, '2116671305090122', 'upload/video/10.mp4', 'upload/thum/098765423456789.jpg', 'upload/gif/10.gif', 106, 'Popular', 7, '2019-05-21 16:09:20'),
(89, '2116671305090123', 'upload/video/3.mp4', 'upload/thum/12345654454345.jpg', 'upload/gif/3.gif', 140, 'Popular', 2, '2019-05-23 07:42:38'),
(88, '2116671305090122', 'upload/video/4.mp4', 'upload/thum/782349742350293.jpg', 'upload/gif/4.gif', 136, 'Popular', 7, '2019-05-21 16:09:03'),
(87, '2116671305090122', 'upload/video/5.mp4', 'upload/thum/9345o57454535.jpg', 'upload/gif/5.gif', 132, 'Trending', 7, '2019-05-22 22:19:11'),
(86, '2116671305090122', 'upload/video/6.mp4', 'upload/thum/4562899457.jpg', 'upload/gif/6.gif', 126, 'Trending', 7, '2019-05-23 05:28:06'),
(85, '2116671305090122', 'upload/video/7.mp4', 'upload/thum/98723656756.jpg', 'upload/gif/7.gif', 108, 'Trending', 7, '2019-05-22 20:31:33'),
(84, '2116671305090122', 'upload/video/8.mp4', 'upload/thum/87632366350238.jpg', 'upload/gif/8.gif', 131, 'Remix', 7, '2019-05-21 05:28:15'),
(83, '2116671305090122', 'upload/video/9.mp4', 'upload/thum/098765423456789.jpg', 'upload/gif/9.gif', 117, 'Talent', 7, '2019-05-22 20:32:04');

-- --------------------------------------------------------

--
-- Table structure for table `video_comment`
--

CREATE TABLE `video_comment` (
  `id` int(11) NOT NULL,
  `video_id` varchar(50) NOT NULL,
  `fb_id` varchar(50) NOT NULL,
  `comments` varchar(250) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video_comment`
--

INSERT INTO `video_comment` (`id`, `video_id`, `fb_id`, `comments`, `created`) VALUES
(23, '130', '2242369099426659', 'hi', '2019-05-13 12:37:02'),
(22, '133', '2242369099426659', 'hi', '2019-05-13 12:35:54'),
(21, '87', '2242369099426659', 'ko', '2019-05-13 12:33:52'),
(20, '87', '112623859081837169693', 'Essa foi foda kkkk', '2019-05-13 12:03:30'),
(19, '124', '112623859081837169693', 'Melhor video â¤', '2019-05-13 12:03:12'),
(18, '116', '2116671305090122', 'g', '2019-05-13 11:08:29'),
(17, '116', '2116671305090122', 'hi', '2019-05-13 10:04:39'),
(16, '116', '2116671305090122', 'hello', '2019-05-13 10:04:35'),
(24, '129', '2242369099426659', 'hggjj', '2019-05-13 12:44:39'),
(25, '112', '107462987899781702662', 'hi', '2019-05-13 13:23:38'),
(26, '88', '2242369099426659', 'ðŸ¬ðŸ’žðŸ‡¦ðŸ‡¨ðŸ’žðŸŽ‚ðŸ¤·â€â™€ï¸', '2019-05-13 13:43:14'),
(27, '88', '2242369099426659', 'yhvg\n', '2019-05-13 13:43:29'),
(28, '117', '105535624113910802597', ',ðŸ˜ðŸ˜ðŸ˜', '2019-05-13 16:38:15'),
(29, '124', '0', 'lol', '2019-05-13 17:10:39'),
(30, '136', '112623859081837169693', 'Lets GO', '2019-05-13 18:55:02'),
(31, '120', '101664785551420611062', 'ðŸ˜‚ ðŸ˜‚ ðŸ˜‚ ', '2019-05-13 19:06:41'),
(32, '124', '0', 'Excellent ', '2019-05-13 19:09:30'),
(33, '90', '109472306929980995570', 'hi', '2019-05-13 19:53:33'),
(34, '91', '0', 'hhh', '2019-05-14 07:46:26'),
(35, '123', '0', 'fhfgh\n', '2019-05-14 09:21:53'),
(36, '121', '0', 'wow', '2019-05-14 09:22:28'),
(37, '124', '110189398456352255409', 'lol', '2019-05-14 10:17:24'),
(38, '152', '102453302604622060552', 'oia', '2019-05-14 15:03:56'),
(39, '133', '101205398020258801325', 'nice', '2019-05-15 03:36:24'),
(40, '133', '2242369099426659', 'it,ya  I KNOW  you', '2019-05-15 15:51:57'),
(41, '133', '2242369099426659', 'ðŸ˜ðŸ˜ðŸ˜ðŸ˜ðŸ˜ðŸ˜‚ðŸ˜‚ðŸ’”ðŸ’”', '2019-05-15 15:52:13'),
(42, '91', '2277778302282525', 'good', '2019-05-15 16:52:11'),
(43, '91', '2277778302282525', 'good', '2019-05-15 16:52:23'),
(44, '116', '0', 'ji', '2019-05-15 20:05:48'),
(45, '88', '2455880558001087', 'hfghj\n', '2019-05-15 22:08:18'),
(46, '122', '101742687799605791646', 'good', '2019-05-16 02:16:37'),
(47, '119', '103360100352126357021', 'j', '2019-05-16 03:43:27'),
(48, '127', '0', 'good', '2019-05-16 04:20:37'),
(49, '123', '0', 'h', '2019-05-16 07:07:04'),
(50, '90', '118217556396905451518', 'hi', '2019-05-16 21:55:53'),
(51, '85', '118217556396905451518', 'test', '2019-05-17 04:22:51'),
(52, '117', '0', 'hello', '2019-05-17 12:25:38'),
(53, '89', '0', 'Ok', '2019-05-17 14:19:33'),
(54, '83', '0', 'ksld', '2019-05-17 17:18:49'),
(55, '83', '0', 'lol', '2019-05-17 17:18:56'),
(56, '83', '0', 'hahakale', '2019-05-17 17:19:06'),
(57, '88', '117765670124992149803', 'Ä±sks', '2019-05-17 17:29:55'),
(58, '146', '10157093326730821', 'ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘', '2019-05-17 17:31:34'),
(59, '114', '0', 'Nn', '2019-05-17 18:39:51'),
(60, '140', '0', 'text ', '2019-05-17 18:55:15'),
(61, '176', '117765670124992149803', 'first video', '2019-05-17 21:34:38'),
(62, '151', '0', 'Ø±Ø§Ø¦Ø¹', '2019-05-17 22:58:11'),
(63, '89', '117765670124992149803', 'vay amk ya', '2019-05-17 23:21:38'),
(64, '89', '117765670124992149803', 'lolllll', '2019-05-18 00:02:41'),
(65, '178', '111055645156763865342', 'hsisjsjs', '2019-05-18 03:13:35'),
(66, '120', '111055645156763865342', 'hey', '2019-05-18 03:22:13'),
(67, '168', '2752966871412431', 'hi', '2019-05-18 07:24:45'),
(68, '180', '109779122840410945809', 'no video delete option', '2019-05-18 08:50:09'),
(69, '263', '106587336028114910038', 'bnk', '2019-05-18 08:57:08'),
(70, '129', '115813004196293379368', 'hhj', '2019-05-18 09:31:39'),
(71, '85', '102550924251171177215', 'Ok', '2019-05-18 09:49:07'),
(72, '85', '102550924251171177215', 'Ok', '2019-05-18 09:49:17'),
(73, '183', '115059736784586241651', 'hee', '2019-05-18 10:36:08'),
(74, '89', '2269247600059671', 'ðŸ¤£', '2019-05-18 12:03:57'),
(75, '115', '117372204121480596463', 'comment', '2019-05-18 14:17:33'),
(76, '182', '117372204121480596463', 'hey there', '2019-05-18 14:21:48'),
(77, '89', '0', 'klk', '2019-05-18 17:31:36'),
(78, '88', '0', 'klk', '2019-05-18 17:31:58'),
(79, '186', '111710332762394904579', 'klk', '2019-05-18 17:34:36'),
(80, '185', '111710332762394904579', 'klk', '2019-05-18 17:34:53'),
(81, '185', '111710332762394904579', 'dime a ver', '2019-05-18 17:35:10'),
(82, '176', '117765670124992149803', 'kajsod', '2019-05-18 18:48:09'),
(83, '176', '117765670124992149803', 'kskdpd', '2019-05-18 18:48:13'),
(84, '180', '0', 'hjghj', '2019-05-18 21:23:17'),
(85, '136', '111575457087266133936', 'lol', '2019-05-18 22:07:05'),
(86, '136', '111575457087266133936', 'my friend', '2019-05-18 22:07:12'),
(87, '188', '105143683150156669508', 'woooooww', '2019-05-19 03:02:32'),
(88, '120', '0', 'hey', '2019-05-19 08:53:07'),
(89, '119', '0', 'Hhh', '2019-05-19 09:44:31'),
(90, '119', '0', 'Hjds', '2019-05-19 09:47:47'),
(91, '152', '101576559478984642547', 'Dhhdhhd', '2019-05-19 10:42:23'),
(92, '138', '', 'Dhdj', '2019-05-19 10:47:19'),
(93, '191', '101576559478984642547', 'Hola', '2019-05-19 11:01:08'),
(94, '135', '0', 'hi', '2019-05-19 12:15:47'),
(95, '118', '0', 'hang', '2019-05-19 12:18:13'),
(96, '190', '0', 'q', '2019-05-21 03:43:20'),
(97, '192', '117105642468827525449', 'nice\n', '2019-05-21 06:27:59'),
(98, '137', '0', 'hello', '2019-05-21 06:52:39'),
(99, '123', '0', 'hi', '2019-05-21 08:23:34'),
(100, '83', '137583790643026', 'gud', '2019-05-21 08:44:01'),
(101, '124', '0', 'hi', '2019-05-22 03:21:37'),
(102, '204', '100826212148807925153', 'nice', '2019-05-22 06:09:27'),
(103, '111', '114478019776248', 'nice\n', '2019-05-22 09:29:53'),
(104, '112', '0', 'à¤¬à¤µà¤µà¤µà¤µ', '2019-05-22 10:14:33'),
(105, '136', '112623859081837169693', 'Hello Friend @Ariel ðŸ˜', '2019-05-22 11:14:51'),
(106, '84', '0', 'vbvvbb', '2019-05-22 12:27:41'),
(107, '123', '1226416044191135', '.. ', '2019-05-22 15:47:14'),
(108, '123', '1226416044191135', 'Ù‡Ù„ÙˆÙˆ', '2019-05-22 15:47:24'),
(109, '211', '112623859081837169693', 'Tik', '2019-05-22 23:41:26'),
(110, '86', '101746089750832575414', 'hjkk', '2019-05-23 05:29:17'),
(111, '118', '0', 'hi', '2019-05-23 06:35:26'),
(112, '211', '0', 'bbb', '2019-05-23 07:35:05');

-- --------------------------------------------------------

--
-- Table structure for table `video_like_dislike`
--

CREATE TABLE `video_like_dislike` (
  `id` int(11) NOT NULL,
  `video_id` varchar(50) NOT NULL,
  `fb_id` varchar(50) NOT NULL,
  `action` int(11) NOT NULL COMMENT '1= like ',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video_like_dislike`
--

INSERT INTO `video_like_dislike` (`id`, `video_id`, `fb_id`, `action`, `created`) VALUES
(354, '189', '0', 1, '2019-05-22 06:05:40'),
(288, '185', '111710332762394904579', 1, '2019-05-18 17:34:20'),
(15, '123', '0', 1, '2019-05-12 22:43:47'),
(331, '123', '0', 1, '2019-05-21 08:23:43'),
(284, '115', '117372204121480596463', 1, '2019-05-18 14:17:24'),
(207, '117', '2242369099426659', 1, '2019-05-16 19:58:28'),
(225, '167', '107462987899781702662', 1, '2019-05-17 06:25:33'),
(343, '141', '117765670124992149803', 1, '2019-05-21 15:52:56'),
(340, '89', '137583790643026', 1, '2019-05-21 08:45:11'),
(38, '132', '112623859081837169693', 1, '2019-05-13 09:59:36'),
(362, '112', '0', 1, '2019-05-22 10:14:26'),
(45, '122', '0', 1, '2019-05-13 11:42:26'),
(355, '121', '100826212148807925153', 1, '2019-05-22 06:07:18'),
(125, '120', '0', 1, '2019-05-14 19:01:43'),
(282, '88', '117825360736827357988', 1, '2019-05-18 13:12:52'),
(195, '162', '2242369099426659', 1, '2019-05-16 19:51:55'),
(199, '86', '2242369099426659', 1, '2019-05-16 19:56:27'),
(281, '85', '2269247600059671', 1, '2019-05-18 12:06:59'),
(259, '180', '109779122840410945809', 1, '2019-05-18 08:46:41'),
(61, '128', '143254096805139', 1, '2019-05-13 15:31:23'),
(111, '151', '103360100352126357021', 1, '2019-05-14 13:05:54'),
(366, '197', '0', 1, '2019-05-22 12:40:57'),
(147, '123', '2242369099426659', 1, '2019-05-15 15:49:18'),
(253, '169', '101376349701383169161', 1, '2019-05-18 06:05:56'),
(83, '116', '0', 1, '2019-05-14 06:23:07'),
(280, '134', '2269247600059671', 1, '2019-05-18 12:06:54'),
(82, '120', '102970476542908425990', 1, '2019-05-14 06:10:18'),
(92, '145', '111430713700433887310', 1, '2019-05-14 08:35:49'),
(228, '161', '0', 1, '2019-05-17 11:50:04'),
(97, '137', '113343654655618618699', 1, '2019-05-14 08:58:28'),
(365, '84', '0', 1, '2019-05-22 12:27:47'),
(123, '116', '406513346859283', 1, '2019-05-14 17:28:09'),
(238, '135', '117765670124992149803', 1, '2019-05-17 17:53:54'),
(277, '89', '2269247600059671', 1, '2019-05-18 12:04:06'),
(105, '147', '2116671305090122', 1, '2019-05-14 11:13:24'),
(109, '136', '112623859081837169693', 1, '2019-05-14 12:48:06'),
(325, '91', '113343654655618618699', 1, '2019-05-21 05:52:04'),
(174, '156', '103360100352126357021', 1, '2019-05-16 03:42:50'),
(369, '209', '103754705679172752583', 1, '2019-05-22 20:29:47'),
(341, '152', '0', 1, '2019-05-21 13:46:23'),
(224, '151', '113343654655618618699', 1, '2019-05-17 05:27:06'),
(126, '123', '103803294847331418082', 1, '2019-05-14 22:30:36'),
(350, '127', '0', 1, '2019-05-21 19:39:59'),
(364, '185', '112623859081837169693', 1, '2019-05-22 11:16:57'),
(130, '156', '111836292501820047721', 1, '2019-05-15 06:28:45'),
(131, '156', '0', 1, '2019-05-15 06:59:35'),
(332, '121', '0', 1, '2019-05-21 08:24:37'),
(133, '143', '115814058806209681825', 1, '2019-05-15 07:52:53'),
(330, '154', '0', 1, '2019-05-21 08:22:06'),
(258, '156', '109779122840410945809', 1, '2019-05-18 08:44:07'),
(257, '88', '0', 1, '2019-05-18 07:29:50'),
(137, '122', '113343654655618618699', 1, '2019-05-15 09:39:58'),
(233, '148', '117765670124992149803', 1, '2019-05-17 17:44:42'),
(261, '115', '106587336028114910038', 1, '2019-05-18 08:56:32'),
(140, '145', '0', 1, '2019-05-15 10:46:21'),
(208, '120', '2242369099426659', 1, '2019-05-16 19:58:31'),
(143, '116', '1281788841971932', 1, '2019-05-15 14:20:02'),
(204, '90', '2242369099426659', 1, '2019-05-16 19:57:55'),
(249, '176', '117765670124992149803', 1, '2019-05-17 21:34:14'),
(190, '114', '115418552759761035062', 1, '2019-05-16 15:22:40'),
(151, '151', '2242369099426659', 1, '2019-05-15 15:54:37'),
(271, '178', '115813004196293379368', 1, '2019-05-18 09:32:27'),
(189, '86', '0', 1, '2019-05-16 14:21:20'),
(305, '135', '0', 1, '2019-05-19 12:15:40'),
(159, '90', '102690303703235411886', 1, '2019-05-15 20:06:43'),
(289, '185', '111710332762394904579', 1, '2019-05-18 17:35:40'),
(161, '116', '108609473325526152065', 1, '2019-05-15 22:05:12'),
(163, '90', '2455880558001087', 1, '2019-05-15 22:07:28'),
(270, '178', '115813004196293379368', 1, '2019-05-18 09:32:24'),
(172, '122', '101742687799605791646', 1, '2019-05-16 02:13:49'),
(177, '159', '2381879105378369', 1, '2019-05-16 06:49:36'),
(294, '136', '111575457087266133936', 1, '2019-05-18 22:07:20'),
(179, '155', '0', 1, '2019-05-16 07:04:57'),
(180, '162', '0', 1, '2019-05-16 08:15:49'),
(278, '170', '2269247600059671', 1, '2019-05-18 12:06:25'),
(273, '169', '115599696054956358440', 1, '2019-05-18 10:11:15'),
(247, '135', '', 1, '2019-05-17 20:16:25'),
(317, '193', '118124160650033462792', 1, '2019-05-20 07:27:13'),
(185, '90', '0', 1, '2019-05-16 12:06:08'),
(188, '117', '114973921628200008769', 1, '2019-05-16 12:51:56'),
(293, '113', '0', 1, '2019-05-18 21:22:56'),
(212, '86', '2242369099426659', 1, '2019-05-16 19:59:43'),
(213, '114', '2242369099426659', 1, '2019-05-16 20:00:07'),
(263, '135', '106587336028114910038', 1, '2019-05-18 08:56:41'),
(215, '133', '2242369099426659', 1, '2019-05-16 20:00:30'),
(216, '116', '2242369099426659', 1, '2019-05-16 20:01:01'),
(217, '122', '2242369099426659', 1, '2019-05-16 20:01:26'),
(304, '121', '0', 1, '2019-05-19 12:15:15'),
(251, '151', '0', 1, '2019-05-17 22:58:03'),
(291, '187', '117765670124992149803', 1, '2019-05-18 18:48:00'),
(298, '120', '0', 1, '2019-05-19 08:53:59'),
(299, '128', '101576559478984642547', 1, '2019-05-19 10:39:14'),
(363, '189', '112623859081837169693', 1, '2019-05-22 11:16:29'),
(339, '122', '137583790643026', 1, '2019-05-21 08:44:21'),
(307, '119', '0', 1, '2019-05-19 12:18:24'),
(308, '138', '111600182630068249462', 1, '2019-05-19 19:32:11'),
(309, '136', '111600182630068249462', 1, '2019-05-19 19:32:32'),
(368, '146', '0', 1, '2019-05-22 17:10:55'),
(328, '137', '0', 1, '2019-05-21 06:52:29'),
(353, '184', '0', 1, '2019-05-22 04:09:58'),
(320, '193', '10205994873986907', 1, '2019-05-20 15:50:29'),
(321, '120', '108044568058530188130', 1, '2019-05-21 00:14:54'),
(326, '192', '117105642468827525449', 1, '2019-05-21 06:27:06'),
(333, '200', '109393958109531649185', 1, '2019-05-21 08:25:39'),
(334, '202', '109393958109531649185', 1, '2019-05-21 08:30:07'),
(338, '83', '137583790643026', 1, '2019-05-21 08:43:53'),
(351, '194', '115814058806209681825', 1, '2019-05-21 23:23:59'),
(367, '116', '103754705679172752583', 1, '2019-05-22 15:24:50'),
(357, '152', '0', 1, '2019-05-22 09:26:04'),
(361, '141', '0', 1, '2019-05-22 10:01:07'),
(370, '211', '112623859081837169693', 1, '2019-05-22 23:41:22'),
(372, '210', '0', 1, '2019-05-23 06:34:43'),
(373, '118', '0', 1, '2019-05-23 06:35:16'),
(374, '120', '118080588494615423100', 1, '2019-05-23 07:43:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fav_sound`
--
ALTER TABLE `fav_sound`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follow_users`
--
ALTER TABLE `follow_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sound`
--
ALTER TABLE `sound`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sound_section`
--
ALTER TABLE `sound_section`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `section_name` (`section_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `fb_id` (`fb_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_comment`
--
ALTER TABLE `video_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_like_dislike`
--
ALTER TABLE `video_like_dislike`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fav_sound`
--
ALTER TABLE `fav_sound`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `follow_users`
--
ALTER TABLE `follow_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `sound`
--
ALTER TABLE `sound`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sound_section`
--
ALTER TABLE `sound_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `video_comment`
--
ALTER TABLE `video_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `video_like_dislike`
--
ALTER TABLE `video_like_dislike`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=375;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
