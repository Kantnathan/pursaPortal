-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 15 Novembre 2017 à 10:09
-- Version du serveur :  10.1.13-MariaDB
-- Version de PHP :  5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `pursaportal`
--

-- --------------------------------------------------------

--
-- Structure de la table `codes`
--

CREATE TABLE `codes` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `validity` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `codes`
--

INSERT INTO `codes` (`id`, `code`, `user_id`, `validity`) VALUES
(1, '8I6RSF', 17, 0),
(2, 'VYAO1M', 17, 1),
(3, 'JJCVFD', 17, 1),
(4, '5IVDKL', 18, 0),
(5, 'EUYNKH', 19, 1);

-- --------------------------------------------------------

--
-- Structure de la table `interests`
--

CREATE TABLE `interests` (
  `id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `payout` varchar(255) NOT NULL,
  `percentage` float NOT NULL,
  `contract_duration` int(11) NOT NULL,
  `min_amount` int(50) NOT NULL,
  `pool_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `interests`
--

INSERT INTO `interests` (`id`, `package_id`, `payout`, `percentage`, `contract_duration`, `min_amount`, `pool_id`) VALUES
(1, 1, 'monthly', 15, 0, 0, 0),
(3, 2, 'monthly', 3.5, 3, 150000, 1),
(6, 2, 'monthly', 5, 6, 100000, 1),
(8, 3, 'monthly', 20, 6, 25000, 1),
(10, 2, 'monthly', 10, 12, 50000, 1),
(12, 3, 'monthly', 17, 12, 30000, 1),
(13, 3, 'monthly', 35, 3, 15000, 1),
(14, 2, 'monthly', 15, 12, 40000, 2),
(15, 2, 'monthly', 15, 6, 35000, 2),
(16, 2, 'monthly', 5, 3, 100000, 2),
(17, 3, 'monthly', 20, 12, 25000, 2),
(18, 3, 'monthly', 25, 6, 20000, 2),
(19, 3, 'monthly', 40, 3, 15000, 2),
(20, 3, 'monthly', 30, 12, 100000, 3);

-- --------------------------------------------------------

--
-- Structure de la table `investments`
--

CREATE TABLE `investments` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `issue_date` varchar(255) NOT NULL,
  `package_type` varchar(255) NOT NULL,
  `duration` int(11) NOT NULL,
  `starting_date` varchar(255) NOT NULL,
  `payout` varchar(255) NOT NULL,
  `first_payout` varchar(255) NOT NULL,
  `last_payout` varchar(255) NOT NULL,
  `top_up_from` int(11) NOT NULL,
  `validity` tinyint(1) NOT NULL,
  `interest` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `investments`
--

INSERT INTO `investments` (`id`, `client_id`, `amount`, `issue_date`, `package_type`, `duration`, `starting_date`, `payout`, `first_payout`, `last_payout`, `top_up_from`, `validity`, `interest`) VALUES
(2, 18, 500000, 'Friday 03-11-2017 10:46:39am', 'business', 6, '28-09-2017', 'monthly', '28-10-2017', '28-03-2018', 0, 1, 17),
(5, 21, 500000, 'Friday 03-11-2017 10:53:57am', 'business', 6, '28-09-2017', 'monthly', '28-10-2017', '28-03-2018', 0, 1, 17),
(6, 22, 200000, 'Friday 03-11-2017 10:55:41am', 'business', 6, '28-09-2017', 'monthly', '28-10-2017', '28-03-2018', 0, 1, 16),
(9, 25, 100000, 'Friday 03-11-2017 10:03:28am', 'business', 12, '04-10-2017', 'monthly', '04-11-2017', '04-10-2018', 0, 1, 13),
(11, 20, 100000, 'Friday 03-11-2017 10:06:41am', 'business', 3, '04-10-2017', 'monthly', '04-11-2017', '04-01-2018', 0, 1, 5),
(12, 26, 1000000, 'Friday 03-11-2017 10:09:21am', 'business', 12, '11-10-2017', 'monthly', '11-11-2017', '11-10-2018', 0, 1, 15),
(13, 27, 100000, 'Friday 03-11-2017 10:11:02am', 'business', 12, '11-10-2017', 'monthly', '11-11-2017', '11-10-2018', 0, 1, 15),
(14, 28, 100000, 'Friday 03-11-2017 10:13:42am', 'business', 12, '11-10-2017', 'monthly', '11-11-2017', '11-10-2018', 0, 1, 13),
(15, 29, 125000, 'Friday 03-11-2017 10:15:19am', 'business', 6, '18-10-2017', 'monthly', '18-11-2017', '18-04-2018', 0, 1, 10),
(16, 30, 100000, 'Friday 03-11-2017 10:17:13am', 'business', 12, '18-10-2017', 'monthly', '18-11-2017', '18-10-2018', 0, 1, 15),
(17, 31, 2000000, 'Friday 03-11-2017 10:19:09am', 'business', 12, '18-10-2017', 'monthly', '18-11-2017', '18-10-2018', 0, 1, 15),
(18, 32, 500000, 'Friday 03-11-2017 10:28:40am', 'business', 6, '28-09-2017', 'monthly', '28-10-2017', '28-03-2018', 0, 1, 16),
(24, 20, 300000, 'Friday 10-11-2017 16:10:07pm', 'business', 6, '08-11-2017', 'monthly', '08-12-2017', '08-05-2018', 0, 1, 15),
(26, 23, 300000, 'Monday 13-11-2017 09:42:29am', 'business', 6, '13-11-2017', 'monthly', '13-12-2017', '13-05-2018', 0, 1, 5),
(31, 23, 700000, 'Monday 13-11-2017 13:27:42pm', '3', 6, '13-11-2017', 'monthly', '13-12-2017', '13-05-2018', 0, 1, 20);

-- --------------------------------------------------------

--
-- Structure de la table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `minimum_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `packages`
--

INSERT INTO `packages` (`id`, `name`, `minimum_amount`) VALUES
(2, 'ultimate', 100000),
(3, 'premium', 5000000);

-- --------------------------------------------------------

--
-- Structure de la table `pools`
--

CREATE TABLE `pools` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `pools`
--

INSERT INTO `pools` (`id`, `name`) VALUES
(1, 'Beneficiary'),
(2, 'Staff'),
(3, 'Share Holder');

-- --------------------------------------------------------

--
-- Structure de la table `profits`
--

CREATE TABLE `profits` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `investment_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `due_date` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `duration` varchar(11) NOT NULL,
  `validity` tinyint(1) NOT NULL,
  `datestamp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `profits`
--

INSERT INTO `profits` (`id`, `client_id`, `investment_id`, `amount`, `due_date`, `duration`, `validity`, `datestamp`) VALUES
(5, 18, 2, 85000, '28-10-2017', '1/7', 0, 1509141600),
(6, 18, 2, 85000, '28-11-2017', '2/7', 1, 1511823600),
(7, 18, 2, 85000, '28-12-2017', '3/7', 1, 1514415600),
(8, 18, 2, 85000, '28-01-2018', '4/7', 1, 1517094000),
(9, 18, 2, 85000, '28-02-2018', '5/7', 1, 1519772400),
(10, 18, 2, 85000, '28-03-2018', '6/7', 1, 1522188000),
(11, 18, 2, 500000, '28-03-2018', '7/7', 1, 1522188000),
(26, 21, 5, 85000, '28-10-2017', '1/7', 0, 1509141600),
(27, 21, 5, 85000, '28-11-2017', '2/7', 1, 1511823600),
(28, 21, 5, 85000, '28-12-2017', '3/7', 1, 1514415600),
(29, 21, 5, 85000, '28-01-2018', '4/7', 1, 1517094000),
(30, 21, 5, 85000, '28-02-2018', '5/7', 1, 1519772400),
(31, 21, 5, 85000, '28-03-2018', '6/7', 1, 1522188000),
(32, 21, 5, 500000, '28-03-2018', '7/7', 1, 1522188000),
(33, 22, 6, 31000, '28-10-2017', '1/7', 0, 1509141600),
(34, 22, 6, 31000, '28-11-2017', '2/7', 1, 1511823600),
(35, 22, 6, 31000, '28-12-2017', '3/7', 1, 1514415600),
(36, 22, 6, 31000, '28-01-2018', '4/7', 1, 1517094000),
(37, 22, 6, 31000, '28-02-2018', '5/7', 1, 1519772400),
(38, 22, 6, 31000, '28-03-2018', '6/7', 1, 1522188000),
(39, 22, 6, 200000, '28-03-2018', '7/7', 1, 1522188000),
(48, 25, 9, 13000, '04-11-2017', '1/13', 0, 1509750000),
(49, 25, 9, 13000, '04-12-2017', '2/13', 1, 1512342000),
(50, 25, 9, 13000, '04-01-2018', '3/13', 1, 1515020400),
(51, 25, 9, 13000, '04-02-2018', '4/13', 1, 1517698800),
(52, 25, 9, 13000, '04-03-2018', '5/13', 1, 1520118000),
(53, 25, 9, 13000, '04-04-2018', '6/13', 1, 1522792800),
(54, 25, 9, 13000, '04-05-2018', '7/13', 1, 1525384800),
(55, 25, 9, 13000, '04-06-2018', '8/13', 1, 1528063200),
(56, 25, 9, 13000, '04-07-2018', '9/13', 1, 1530655200),
(57, 25, 9, 13000, '04-08-2018', '10/13', 1, 1533333600),
(58, 25, 9, 13000, '04-09-2018', '11/13', 1, 1536012000),
(59, 25, 9, 13000, '04-10-2018', '12/13', 1, 1538604000),
(60, 25, 9, 100000, '04-10-2018', '13/13', 1, 1538604000),
(68, 20, 11, 5000, '04-11-2017', '1/4', 2, 1509750000),
(69, 20, 11, 5000, '04-12-2017', '2/4', 1, 1512342000),
(70, 20, 11, 5000, '04-01-2018', '3/4', 1, 1515020400),
(71, 20, 11, 100000, '04-01-2018', '4/4', 1, 1515020400),
(72, 26, 12, 150000, '11-11-2017', '1/13', 1, 1510354800),
(73, 26, 12, 150000, '11-12-2017', '2/13', 1, 1512946800),
(74, 26, 12, 150000, '11-01-2018', '3/13', 1, 1515625200),
(75, 26, 12, 150000, '11-02-2018', '4/13', 1, 1518303600),
(76, 26, 12, 150000, '11-03-2018', '5/13', 1, 1520722800),
(77, 26, 12, 150000, '11-04-2018', '6/13', 1, 1523397600),
(78, 26, 12, 150000, '11-05-2018', '7/13', 1, 1525989600),
(79, 26, 12, 150000, '11-06-2018', '8/13', 1, 1528668000),
(80, 26, 12, 150000, '11-07-2018', '9/13', 1, 1531260000),
(81, 26, 12, 150000, '11-08-2018', '10/13', 1, 1533938400),
(82, 26, 12, 150000, '11-09-2018', '11/13', 1, 1536616800),
(83, 26, 12, 150000, '11-10-2018', '12/13', 1, 1539208800),
(84, 26, 12, 1000000, '11-10-2018', '13/13', 1, 1539208800),
(85, 27, 13, 15000, '11-11-2017', '1/13', 1, 1510354800),
(86, 27, 13, 15000, '11-12-2017', '2/13', 1, 1512946800),
(87, 27, 13, 15000, '11-01-2018', '3/13', 1, 1515625200),
(88, 27, 13, 15000, '11-02-2018', '4/13', 1, 1518303600),
(89, 27, 13, 15000, '11-03-2018', '5/13', 1, 1520722800),
(90, 27, 13, 15000, '11-04-2018', '6/13', 1, 1523397600),
(91, 27, 13, 15000, '11-05-2018', '7/13', 1, 1525989600),
(92, 27, 13, 15000, '11-06-2018', '8/13', 1, 1528668000),
(93, 27, 13, 15000, '11-07-2018', '9/13', 1, 1531260000),
(94, 27, 13, 15000, '11-08-2018', '10/13', 1, 1533938400),
(95, 27, 13, 15000, '11-09-2018', '11/13', 1, 1536616800),
(96, 27, 13, 15000, '11-10-2018', '12/13', 1, 1539208800),
(97, 27, 13, 100000, '11-10-2018', '13/13', 1, 1539208800),
(98, 28, 14, 13000, '11-11-2017', '1/13', 1, 1510354800),
(99, 28, 14, 13000, '11-12-2017', '2/13', 1, 1512946800),
(100, 28, 14, 13000, '11-01-2018', '3/13', 1, 1515625200),
(101, 28, 14, 13000, '11-02-2018', '4/13', 1, 1518303600),
(102, 28, 14, 13000, '11-03-2018', '5/13', 1, 1520722800),
(103, 28, 14, 13000, '11-04-2018', '6/13', 1, 1523397600),
(104, 28, 14, 13000, '11-05-2018', '7/13', 1, 1525989600),
(105, 28, 14, 13000, '11-06-2018', '8/13', 1, 1528668000),
(106, 28, 14, 13000, '11-07-2018', '9/13', 1, 1531260000),
(107, 28, 14, 13000, '11-08-2018', '10/13', 1, 1533938400),
(108, 28, 14, 13000, '11-09-2018', '11/13', 1, 1536616800),
(109, 28, 14, 13000, '11-10-2018', '12/13', 1, 1539208800),
(110, 28, 14, 100000, '11-10-2018', '13/13', 1, 1539208800),
(111, 29, 15, 12500, '18-11-2017', '1/7', 0, 1510959600),
(112, 29, 15, 12500, '18-12-2017', '2/7', 1, 1513551600),
(113, 29, 15, 12500, '18-01-2018', '3/7', 1, 1516230000),
(114, 29, 15, 12500, '18-02-2018', '4/7', 1, 1518908400),
(115, 29, 15, 12500, '18-03-2018', '5/7', 1, 1521327600),
(116, 29, 15, 12500, '18-04-2018', '6/7', 1, 1524002400),
(117, 29, 15, 125000, '18-04-2018', '7/7', 1, 1524002400),
(118, 30, 16, 15000, '18-11-2017', '1/13', 2, 1510959600),
(119, 30, 16, 15000, '18-12-2017', '2/13', 1, 1513551600),
(120, 30, 16, 15000, '18-01-2018', '3/13', 1, 1516230000),
(121, 30, 16, 15000, '18-02-2018', '4/13', 1, 1518908400),
(122, 30, 16, 15000, '18-03-2018', '5/13', 1, 1521327600),
(123, 30, 16, 15000, '18-04-2018', '6/13', 1, 1524002400),
(124, 30, 16, 15000, '18-05-2018', '7/13', 1, 1526594400),
(125, 30, 16, 15000, '18-06-2018', '8/13', 1, 1529272800),
(126, 30, 16, 15000, '18-07-2018', '9/13', 1, 1531864800),
(127, 30, 16, 15000, '18-08-2018', '10/13', 1, 1534543200),
(128, 30, 16, 15000, '18-09-2018', '11/13', 1, 1537221600),
(129, 30, 16, 15000, '18-10-2018', '12/13', 1, 1539813600),
(130, 30, 16, 100000, '18-10-2018', '13/13', 1, 1539813600),
(131, 31, 17, 300000, '18-11-2017', '1/13', 1, 1510959600),
(132, 31, 17, 300000, '18-12-2017', '2/13', 1, 1513551600),
(133, 31, 17, 300000, '18-01-2018', '3/13', 1, 1516230000),
(134, 31, 17, 300000, '18-02-2018', '4/13', 1, 1518908400),
(135, 31, 17, 300000, '18-03-2018', '5/13', 1, 1521327600),
(136, 31, 17, 300000, '18-04-2018', '6/13', 1, 1524002400),
(137, 31, 17, 300000, '18-05-2018', '7/13', 1, 1526594400),
(138, 31, 17, 300000, '18-06-2018', '8/13', 1, 1529272800),
(139, 31, 17, 300000, '18-07-2018', '9/13', 1, 1531864800),
(140, 31, 17, 300000, '18-08-2018', '10/13', 1, 1534543200),
(141, 31, 17, 300000, '18-09-2018', '11/13', 1, 1537221600),
(142, 31, 17, 300000, '18-10-2018', '12/13', 1, 1539813600),
(143, 31, 17, 2000000, '18-10-2018', '13/13', 1, 1539813600),
(144, 32, 18, 77500, '28-10-2017', '1/7', 0, 1509141600),
(145, 32, 18, 77500, '28-11-2017', '2/7', 1, 1511823600),
(146, 32, 18, 77500, '28-12-2017', '3/7', 1, 1514415600),
(147, 32, 18, 77500, '28-01-2018', '4/7', 1, 1517094000),
(148, 32, 18, 77500, '28-02-2018', '5/7', 1, 1519772400),
(149, 32, 18, 77500, '28-03-2018', '6/7', 1, 1522188000),
(150, 32, 18, 500000, '28-03-2018', '7/7', 1, 1522188000),
(191, 20, 24, 45000, '08-12-2017', '1/7', 1, 1512687600),
(192, 20, 24, 45000, '08-01-2018', '2/7', 1, 1515366000),
(193, 20, 24, 45000, '08-02-2018', '3/7', 1, 1518044400),
(194, 20, 24, 45000, '08-03-2018', '4/7', 1, 1520463600),
(195, 20, 24, 45000, '08-04-2018', '5/7', 1, 1523138400),
(196, 20, 24, 45000, '08-05-2018', '6/7', 1, 1525730400),
(197, 20, 24, 300000, '08-05-2018', '7/7', 1, 1525730400),
(204, 23, 26, 15000, '13-12-2017', '1 out of 6', 1, 1513119600),
(205, 23, 26, 15000, '13-01-2018', '2 out of 6', 1, 1515798000),
(206, 23, 26, 15000, '13-02-2018', '3 out of 6', 1, 1518476400),
(207, 23, 26, 15000, '13-03-2018', '4 out of 6', 1, 1520895600),
(208, 23, 26, 15000, '13-04-2018', '5 out of 6', 1, 1523570400),
(209, 23, 26, 15000, '13-05-2018', '6 out of 6', 1, 1526162400),
(210, 23, 31, 140000, '13-12-2017', '1 out of 6', 1, 1513119600),
(211, 23, 31, 140000, '13-01-2018', '2 out of 6', 1, 1515798000),
(212, 23, 31, 140000, '13-02-2018', '3 out of 6', 1, 1518476400),
(213, 23, 31, 140000, '13-03-2018', '4 out of 6', 1, 1520895600),
(214, 23, 31, 140000, '13-04-2018', '5 out of 6', 1, 1523570400),
(215, 23, 31, 140000, '13-05-2018', '6 out of 6', 1, 1526162400);

-- --------------------------------------------------------

--
-- Structure de la table `rights`
--

CREATE TABLE `rights` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pool_id` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `rights`
--

INSERT INTO `rights` (`id`, `name`, `pool_id`) VALUES
(1, 'Client', 1),
(2, 'Front End', 2),
(3, 'Accountant', 2),
(4, 'Super Admin', 3);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_type` varchar(255) NOT NULL,
  `visacard` varchar(50) NOT NULL,
  `user_right` int(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `name`, `number`, `email`, `username`, `password`, `register_date`, `user_type`, `visacard`, `user_right`) VALUES
(11, 'Mr admin', '1', 'admin@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-09-24 16:20:04', 'admin', '0', 2),
(13, 'Mr super administrator', '1234567', 'superadmin@gmail.com', 'superadmin', '17c4520f6cfd1ab53d8745e84681eb49', '2017-09-28 00:45:26', 'superadmin', '0', 4),
(18, 'KEMAJOU FANYIM TATIANA', '237699564618', 'janyimtatiana2@gmail.com', 'kemajour.tatiana', '', '2017-11-03 09:44:11', 'client', '0002547995', 1),
(19, 'TAMUTON Robertson Muyan', '237677318660', 'tamuton@gmail.com', 'tamuton.robertson', '', '2017-11-03 09:49:06', 'client', '0002547985', 1),
(20, 'NYOUM Samuel Ayuk Junior', '237677337057', 'nyoum@gmail.com', 'nyoum.samuel', '', '2017-11-03 09:51:11', 'client', '0002547989', 2),
(21, 'KEMAJOU Justine Belleani', '237699489347', 'jbelleani@gmail.com', 'kemajou.justine', '', '2017-11-03 09:53:14', 'client', '0002547986', 1),
(22, 'TAMBA Hannah Fri', '237679230606', 'tambahannafri@gmail.com', 'tamba.fri', '', '2017-11-03 09:55:01', 'client', '0002547996', 1),
(23, 'WUNDELY Forcho', '14048577970', 'wundelyforcho@yahoo.com', 'wundely.forcho', '', '2017-11-03 09:56:57', 'client', '0002547994', 1),
(24, 'NKWENTI Santung Deshnic', '237681901252', 'nkwentideshnic@gmail.com', 'nkwenti.deshnic', '', '2017-11-03 09:59:20', 'client', '0002547990', 2),
(25, 'NZEPANG Lolita Wanda', '237678278235', 'nzepanglolita@gmail.com', 'nzepang.lolita', '', '2017-11-03 09:02:34', 'client', '0002547987', 1),
(26, 'LAILA Austine', '237652272845', 'austine.laila@gmail.com', 'laila.austine', '', '2017-11-03 09:08:28', 'client', '0002547979', 1),
(27, 'SIECHIPEN Ngassam Romeo Yuluo', '237690247573', 'ngassamjulio@yahoo.com', 'ngassam.julio', '', '2017-11-03 09:10:30', 'client', '0002547978', 2),
(28, 'NJAMNSHI Yuhsinyu Gariba', '237653803723', 'garibayusi@gmail.com', 'njamnshi.gariba', '', '2017-11-03 09:12:49', 'client', '0002547993', 1),
(29, 'EYONG Nde Ashu Bechaka', '237673909307', 'lorres07@gmail.com', 'eyong.ashu', '', '2017-11-03 09:14:44', 'client', '0002547983', 2),
(30, 'LIWUITEKONG Djiokeng Virgil', '23767304115', 'djiokengvirgil@gmail.com', 'djiokeng.virgil', '', '2017-11-03 09:16:36', 'client', '0002547982', 2),
(31, 'TEPONNO Ngoula Eugenie Carine', '237662299426', 'tepennoeugenie@gmail.com', 'tepenno.carine', '', '2017-11-03 09:18:32', 'client', '0002547984', 1),
(32, 'NINA Nani Kimbu', '237699992022', 'ninaqueens@yahoo.co.uk', 'nina.kimbu', '', '2017-11-03 09:28:13', 'client', '0002547992', 1),
(33, 'TEsting', '675848594', 'test@gmail.com', 'kante', 'eac0cfd495187ac65c68ed47bb43312d', '2017-11-14 16:10:57', 'admin', '', 2);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `codes`
--
ALTER TABLE `codes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `interests`
--
ALTER TABLE `interests`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `investments`
--
ALTER TABLE `investments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pools`
--
ALTER TABLE `pools`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `profits`
--
ALTER TABLE `profits`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rights`
--
ALTER TABLE `rights`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `codes`
--
ALTER TABLE `codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `interests`
--
ALTER TABLE `interests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `investments`
--
ALTER TABLE `investments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT pour la table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `pools`
--
ALTER TABLE `pools`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `profits`
--
ALTER TABLE `profits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;
--
-- AUTO_INCREMENT pour la table `rights`
--
ALTER TABLE `rights`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
