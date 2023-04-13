-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 13 avr. 2023 à 22:15
-- Version du serveur : 8.0.30
-- Version de PHP : 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `samek`
--

-- --------------------------------------------------------

--
-- Structure de la table `accounts`
--

CREATE TABLE `accounts` (
  `id` int NOT NULL,
  `acctype` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `infos` varchar(255) NOT NULL,
  `price` int NOT NULL,
  `url` varchar(255) NOT NULL,
  `sold` int NOT NULL,
  `sto` varchar(255) NOT NULL,
  `dateofsold` text,
  `date` text NOT NULL,
  `resseller` varchar(255) NOT NULL,
  `reported` varchar(255) NOT NULL,
  `sitename` varchar(255) NOT NULL,
  `login` varchar(100) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `accounts`
--

INSERT INTO `accounts` (`id`, `acctype`, `country`, `infos`, `price`, `url`, `sold`, `sto`, `dateofsold`, `date`, `resseller`, `reported`, `sitename`, `login`, `pass`) VALUES
(24, 'account', 'Afghanistan', '15', 5, '4214111112211202002121121 | hfdhgjhkgkghjgj ', 1, 'adams1997', '2023-03-06 18:04:53', '06/03/2023 05:59:12 pm', 'dali12345678', '', '4214111112211202002121121', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `banks`
--

CREATE TABLE `banks` (
  `id` int NOT NULL,
  `sold` int NOT NULL,
  `acctype` varchar(50) NOT NULL,
  `country` varchar(100) NOT NULL,
  `infos` text NOT NULL,
  `price` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sto` varchar(500) NOT NULL,
  `dateofsold` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `resseller` varchar(100) NOT NULL,
  `reported` varchar(500) NOT NULL,
  `bankname` varchar(500) NOT NULL,
  `balance` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `banks`
--

INSERT INTO `banks` (`id`, `sold`, `acctype`, `country`, `infos`, `price`, `url`, `sto`, `dateofsold`, `date`, `resseller`, `reported`, `bankname`, `balance`) VALUES
(27, 1, 'banks', 'Algeria', 'ssn', '5', 'usps | fghjjlk ', 'adams1997', '2023-03-06 18:04:47', '06/03/2023 05:56:52 pm', 'dali12345678', '', 'usps', '500$');

-- --------------------------------------------------------

--
-- Structure de la table `cards`
--

CREATE TABLE `cards` (
  `id` int NOT NULL,
  `sold` int NOT NULL,
  `acctype` varchar(50) NOT NULL,
  `country` varchar(100) NOT NULL,
  `country_bin` varchar(100) NOT NULL,
  `bin` varchar(100) NOT NULL,
  `information` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `infos` text NOT NULL,
  `price` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sto` varchar(500) NOT NULL,
  `dateofsold` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `resseller` varchar(100) NOT NULL,
  `reported` varchar(500) NOT NULL,
  `bankname` varchar(500) NOT NULL,
  `balance` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `cards`
--

INSERT INTO `cards` (`id`, `sold`, `acctype`, `country`, `country_bin`, `bin`, `information`, `infos`, `price`, `url`, `sto`, `dateofsold`, `date`, `resseller`, `reported`, `bankname`, `balance`) VALUES
(32, 1, 'CARDS', 'VBV', ' United States of America', '41900242', 'Public information', '356', '5', 'buyer Information', 'adams1997', '2023-03-14 13:35:20', '14/03/2023 01:09:23 pm', 'adams1997', '', '4190024223505704', '03/25'),
(33, 1, 'CARDS', 'VBV', ' United States of America', '40002205', 'Full Name : Meagan Schwertfeger \r\nAddress 1 : 5334 flying s ln\r\nAddress 2 : \r\nCity      : Colorado Springs \r\nstate  : CO\r\nzip Code  : 80915\r\nPhone num  : 7196590589\r\nIP      : 75.70.25.238', '069', '7', 'Full Name : Meagan Schwertfeger \r\nAddress 1 : 5334 flying s ln\r\nAddress 2 : \r\nCity      : Colorado Springs \r\nstate  : CO\r\nzip Code  : 80915\r\nPhone num  : 7196590589\r\nIP      : 75.70.25.238', 'adams1997', '2023-03-14 13:37:51', '14/03/2023 01:37:18 pm', 'adams1997', '', '4000220554337069', '12/22');

-- --------------------------------------------------------

--
-- Structure de la table `cpanels`
--

CREATE TABLE `cpanels` (
  `id` int NOT NULL,
  `acctype` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `infos` text NOT NULL,
  `url` text NOT NULL,
  `price` int NOT NULL,
  `sold` int NOT NULL,
  `sto` varchar(255) NOT NULL,
  `dateofsold` varchar(100) NOT NULL,
  `resseller` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reported` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `cpanels`
--

INSERT INTO `cpanels` (`id`, `acctype`, `country`, `infos`, `url`, `price`, `sold`, `sto`, `dateofsold`, `resseller`, `date`, `reported`) VALUES
(11, 'cpanel', 'United States', 'cPanel, LLC.', 'http://demo.cpanel.net:2082/cpsess0334759319 |democom|DemoCoA5620', 5, 1, 'adams1997', '2023-03-06 18:01:31', 'dali12345678', '2023-03-06 02:37:25', '');

-- --------------------------------------------------------

--
-- Structure de la table `dsmtps`
--

CREATE TABLE `dsmtps` (
  `id` int NOT NULL,
  `sold` varchar(255) NOT NULL,
  `dateofsold` varchar(255) NOT NULL,
  `sto` varchar(50) NOT NULL,
  `resseller` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `acctype` varchar(100) NOT NULL DEFAULT 'dsmtp',
  `city` varchar(100) NOT NULL,
  `hosting` text NOT NULL,
  `price_show` varchar(100) NOT NULL,
  `dateof_sold` varchar(255) NOT NULL,
  `access` varchar(500) NOT NULL,
  `windows` varchar(500) NOT NULL,
  `ram` varchar(100) NOT NULL,
  `reported` varchar(500) NOT NULL,
  `url` text NOT NULL,
  `price` varchar(100) NOT NULL,
  `infos` text NOT NULL,
  `domain` varchar(1000) NOT NULL,
  `date` varchar(255) NOT NULL,
  `typesmtp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

CREATE TABLE `images` (
  `id` int NOT NULL,
  `image` varchar(255) NOT NULL,
  `image_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `leads`
--

CREATE TABLE `leads` (
  `id` int NOT NULL,
  `acctype` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `infos` text NOT NULL,
  `url` text NOT NULL,
  `price` int NOT NULL,
  `resseller` varchar(255) NOT NULL,
  `sold` int NOT NULL,
  `sto` varchar(255) NOT NULL,
  `dateofsold` text NOT NULL,
  `date` text NOT NULL,
  `number` text NOT NULL,
  `reported` text NOT NULL,
  `login` text,
  `pass` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `leads`
--

INSERT INTO `leads` (`id`, `acctype`, `country`, `infos`, `url`, `price`, `resseller`, `sold`, `sto`, `dateofsold`, `date`, `number`, `reported`, `login`, `pass`) VALUES
(10, 'leads', 'United States', 'hotmail', 'https://mega.nz/file/X35U1Z4K#OWxvnuP1GEFxOumsLQvie3Y5gINA5yIqpfeQX4d1Irc	', 5, 'dali12345678', 1, 'adams1997', '2023-03-06 18:05:01', '06/03/2023 05:54:30 pm', '20k', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `mailers`
--

CREATE TABLE `mailers` (
  `id` int NOT NULL,
  `sold` int NOT NULL,
  `dateofsold` varchar(255) NOT NULL,
  `sto` varchar(50) NOT NULL,
  `resseller` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `acctype` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `hosting` text NOT NULL,
  `price_show` varchar(100) NOT NULL,
  `dateof_sold` varchar(255) NOT NULL,
  `access` varchar(500) NOT NULL,
  `windows` varchar(500) NOT NULL,
  `ram` varchar(100) NOT NULL,
  `reported` varchar(500) NOT NULL,
  `url` text NOT NULL,
  `price` varchar(100) NOT NULL,
  `infos` text NOT NULL,
  `domain` varchar(1000) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `mailers`
--

INSERT INTO `mailers` (`id`, `sold`, `dateofsold`, `sto`, `resseller`, `country`, `acctype`, `city`, `hosting`, `price_show`, `dateof_sold`, `access`, `windows`, `ram`, `reported`, `url`, `price`, `infos`, `domain`, `date`) VALUES
(20, 1, '2023-02-25 20:36:56', 'adams1997', 'adams1997', 'Tunisia', 'mailer', '0', 'Cloudflare, Inc.', '5', '25/02/2023 08:36:24 pm', '0', '0', '0', '0', 'https://findsenioradvice.com/l.php', '5', 'Cloudflare, Inc.', '0', '25/02/2023 08:36:24 pm'),
(21, 1, '2023-03-01 00:47:29', 'adams1997', 'adams1997', 'Tunisia', 'mailer', '0', 'WEBSITEWELCOME.COM', '5', '28/02/2023 11:10:32 pm', '0', '0', '0', '0', 'https://andreychenko.ca/wp-admin/ojmpcnhs.php?pass=ntctfniwt', '5', 'WEBSITEWELCOME.COM', '0', '28/02/2023 11:10:32 pm'),
(22, 1, '2023-03-06 18:03:48', 'adams1997', 'adams1997', 'United States', 'mailer', '0', 'Cloudflare, Inc.', '5', '01/03/2023 05:19:02 pm', '0', '0', '0', '0', 'https://findsenioradvice.com/l.php', '5', 'Cloudflare, Inc.', '0', '01/03/2023 05:19:02 pm'),
(23, 1, '2023-03-06 18:03:41', 'adams1997', 'dali12345678', 'Spain', 'mailer', '0', 'OGIC Informatica S.L.', '5', '01/03/2023 08:05:24 pm', '0', '0', '0', '0', 'https://vimema.com/leaf.php', '5', 'OGIC Informatica S.L.', '0', '01/03/2023 08:05:24 pm'),
(24, 1, '2023-03-06 18:03:44', 'adams1997', 'dali12345678', 'United States', 'mailer', '0', 'Cloudflare, Inc.', '5', '06/03/2023 05:42:23 pm', '0', '0', '0', '0', 'http://findsenioradvice.com/l.php', '5', 'Cloudflare, Inc.', '0', '06/03/2023 05:42:23 pm');

-- --------------------------------------------------------

--
-- Structure de la table `manager`
--

CREATE TABLE `manager` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `date`) VALUES
(22, 'NEWS BUYER', '<img src=\"http://smoker-olux/files/img/logored.png\" style=\"    width: 2%;\">\n<span style=\"color:red\" >Toolux</span>\n<br>\nWelcome to Seller Panel', '2023-03-02 01:26:36'),
(23, 'NEWS BUYER', '<img src=\"http://smoker-olux/files/img/logored.png\" style=\"    width: 2%;\">\r\n<span style=\"color:red\" >Toolux</span>\r\n<br>\r\nWelcome to Toolux', '2023-03-02 01:28:08');

-- --------------------------------------------------------

--
-- Structure de la table `newseller`
--

CREATE TABLE `newseller` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `newseller`
--

INSERT INTO `newseller` (`id`, `title`, `content`, `date`) VALUES
(22, 'NEWS BUYER', '<img src=\"http://smoker-olux/files/img/logored.png\" style=\"    width: 2%;\">\n<span style=\"color:red\" >Toolux</span>\n<br>\nWelcome to Seller Panel', '2023-03-02 01:26:36');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `amount` varchar(100) NOT NULL,
  `btcamount` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `lrpaidby` varchar(100) NOT NULL,
  `lrtrans` varchar(100) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `payment`
--

CREATE TABLE `payment` (
  `id` int DEFAULT NULL,
  `user` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `amountusd` int NOT NULL,
  `address` text NOT NULL,
  `p_data` text NOT NULL,
  `state` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `payment`
--

INSERT INTO `payment` (`id`, `user`, `method`, `amount`, `amountusd`, `address`, `p_data`, `state`, `date`) VALUES
(NULL, 'omermaksuti', 'Bitcoin', 0, 20, '3QQuujhjrfxxF6Z2ysY7rS4q881kPCNNCT', '22cad767b7f7d98c44ce29b34d573a87', 'pending', '2020/03/24 07:54:49'),
(NULL, 'omermaksuti', 'Bitcoin', 0.00375516, 25, '363R6Xfxv9eRo7rmgg7xb4WNxTvGQ4PDu2', 'bcdc521559b4bc0db3aa562d7d876c0b', 'pending', '2020/03/25 06:53:26'),
(NULL, 'omermaksuti', 'Bitcoin', 0.00289333, 20, '', '99b7e8afbf201806a4d212d8078ef2a8', 'pending', '2020/04/14 08:14:12'),
(NULL, 'omermaksuti', 'Bitcoin', 0.00289333, 20, '', '2bebf587e4d082c648c5748b2f6b1245', 'pending', '2020/04/14 08:14:30'),
(NULL, 'omermaksuti', 'Bitcoin', 0.00289333, 20, '', '3b9ecd210b05debf80b2095bb7ec7fb4', 'pending', '2020/04/14 08:14:42'),
(NULL, 'omermaksuti', 'PerfectMoney', 0.00250709, 20, '', '783d6f5e35851d0e49c8495209c06d5e', 'pending', '2020/04/29 09:57:04'),
(NULL, 'omermaksuti', 'Bitcoin', 0.00251983, 25, '', '04a97116c31b9694dcc296f890a3a998', 'pending', '2020/05/08 11:53:33'),
(NULL, 'omermaksuti', 'Bitcoin', 0.00201999, 20, '', '1a819af3f5456c8b1a6b049b3eb10f7b', 'pending', '2020/05/08 11:57:59'),
(NULL, 'dali123450', 'Bitcoin', 0.00088777, 20, '', '873970760c77c5418fe1d4c6f0bdd3ff', 'pending', '2023/03/06 05:22:01');

-- --------------------------------------------------------

--
-- Structure de la table `purchases`
--

CREATE TABLE `purchases` (
  `id` int NOT NULL,
  `s_id` int NOT NULL,
  `buyer` varchar(50) NOT NULL,
  `type` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `country` varchar(255) NOT NULL,
  `infos` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `price` int NOT NULL,
  `resseller` varchar(255) NOT NULL,
  `reported` varchar(100) NOT NULL,
  `reportid` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `purchases`
--

INSERT INTO `purchases` (`id`, `s_id`, `buyer`, `type`, `date`, `country`, `infos`, `url`, `login`, `pass`, `price`, `resseller`, `reported`, `reportid`) VALUES
(63, 24, 'omermaksuti', 'banks', '2023-02-26 15:01:44', 'Afghanistan', '21212', '4214111112211202002121121ss | 21212 ', '', '', 2, 'fisnik', '', 17),
(64, 25, 'adams1997', 'banks', '2023-02-28 15:39:56', 'Afghanistan', '15', '4214111112211202002121121 | dfd ', '', '', 5, 'fisnik', '', 18),
(65, 19, 'adams1997', 'CARDS', '2023-01-28 15:49:40', 'NON VBV', 'ffd', 'fdfd', '', '', 5, 'fisnik', '', NULL),
(66, 20, 'testbaba', 'CARDS', '2023-02-28 16:05:01', 'NON VBV', 'azeaz', 'azeaz', '', '', 5, 'adams1997', '', NULL),
(67, 51, 'adams1997', 'shell', '2023-02-28 19:43:29', 'Canada', 'OVH Hosting, Inc.', 'http://planetcbd.com/s_ne.php', '', '', 5, 'adams1997', '', NULL),
(68, 21, 'adams1997', 'mailer', '2023-02-28 21:47:29', 'Tunisia', 'WEBSITEWELCOME.COM', 'https://andreychenko.ca/wp-admin/ojmpcnhs.php?pass=ntctfniwt', '', '', 5, 'adams1997', '1', 19),
(69, 65, 'adams1997', 'tutorial', '2023-02-28 21:56:23', '-', '15', 'https://www.facebook.com/profile.php?id=100087107439229', '', '', 5, 'adams1997', '', NULL),
(70, 11, 'adams1997', 'cpanel', '2023-03-06 15:01:31', 'United States', 'cPanel, LLC.', 'http://demo.cpanel.net:2082/cpsess0334759319 |democom|DemoCoA5620', '', '', 5, 'dali12345678', '1', 20),
(71, 58, 'adams1997', 'shell', '2023-03-06 15:02:18', 'United States', 'GoDaddy.com, LLC', 'http://emilyandjim.com/shell.php', '', '', 5, 'dali123450', '', NULL),
(72, 23, 'adams1997', 'mailer', '2023-03-06 15:03:41', 'Spain', 'OGIC Informatica S.L.', 'https://vimema.com/leaf.php', '', '', 5, 'dali12345678', '', NULL),
(73, 24, 'adams1997', 'mailer', '2023-03-06 15:03:44', 'United States', 'Cloudflare, Inc.', 'http://findsenioradvice.com/l.php', '', '', 5, 'dali12345678', '', NULL),
(74, 22, 'adams1997', 'mailer', '2023-03-06 15:03:48', 'United States', 'Cloudflare, Inc.', 'https://findsenioradvice.com/l.php', '', '', 5, 'adams1997', '', NULL),
(75, 27, 'adams1997', 'banks', '2023-03-06 15:04:47', 'Algeria', 'ssn', 'usps | fghjjlk ', '', '', 5, 'dali12345678', '', NULL),
(76, 24, 'adams1997', 'account', '2023-03-06 15:04:53', 'Afghanistan', '15', '4214111112211202002121121 | hfdhgjhkgkghjgj ', '', '', 5, 'dali12345678', '', NULL),
(77, 22, 'adams1997', 'CARDS', '2023-03-06 15:04:57', 'VBV', '354', 'yhgjhjghjg', '', '', 5, 'dali12345678', '', NULL),
(78, 10, 'adams1997', 'leads', '2023-03-06 15:05:01', 'United States', 'hotmail', 'https://mega.nz/file/X35U1Z4K#OWxvnuP1GEFxOumsLQvie3Y5gINA5yIqpfeQX4d1Irc	', '', '', 5, 'dali12345678', '1', 21),
(79, 8, 'adams1997', 'scampage', '2023-03-06 15:05:06', '-', 'DHL', 'https://mega.nz/file/GmZHRKRR#Z_gJDCPj7knjECZx1kBj3dLryNa6SVHMWXlbEXgblVI	', '', '', 5, 'dali12345678', '', NULL),
(80, 67, 'adams1997', 'tutorial', '2023-03-06 15:05:09', '-', '15', 'https://mega.nz/file/GmZHRKRR#Z_gJDCPj7knjECZx1kBj3dLryNa6SVHMWXlbEXgblVI	', '', '', 5, 'dali12345678', '', NULL),
(81, 23, 'adams1997', 'CARDS', '2023-03-12 14:31:01', 'VBV', '345', 'bulk info', '', '', 20, 'adams1997', '', NULL),
(82, 9, 'adams1997', 'scampage', '2023-03-12 16:51:37', '-', 'DHL', 'https://meg,hga.nz/file/GmZHRKRR#Z_gJDCPj7knjECZx1kBj3dLryNa6SVHMWXlbEXgblVI	', '', '', 5, 'dali12345678', '', NULL),
(83, 26, 'adams1997', 'CARDS', '2023-03-12 17:35:18', 'VBV', '345', 'ngbvbvvb', '', '', 5, 'adams1997', '', NULL),
(84, 24, 'adams1997', 'CARDS', '2023-03-12 17:37:39', 'VBV', 'dfdsf', 'dsfdsf', '', '', 5, 'adams1997', '', NULL),
(85, 25, 'adams1997', 'CARDS', '2023-03-12 17:37:41', 'VBV', '3453453', '35453543', '', '', 5, 'adams1997', '', NULL),
(86, 27, 'adams1997', 'CARDS', '2023-03-12 17:38:38', 'VBV', 'CVV', 'buyer Information', '', '', 5, 'adams1997', '1', 22),
(87, 32, 'adams1997', 'CARDS', '2023-03-14 10:35:20', 'VBV', '356', 'buyer Information', '', '', 5, 'adams1997', '', NULL),
(88, 33, 'adams1997', 'CARDS', '2023-03-14 10:37:51', 'VBV', '069', 'Full Name : Meagan Schwertfeger \r\nAddress 1 : 5334 flying s ln\r\nAddress 2 : \r\nCity      : Colorado Springs \r\nstate  : CO\r\nzip Code  : 80915\r\nPhone num  : 7196590589\r\nIP      : 75.70.25.238', '', '', 7, 'adams1997', '', NULL),
(89, 16, 'adams1997', 'rdp', '2023-03-14 10:42:35', 'United States', '162.214.81.12|admin|bac123', '162.214.81.12|admin|bac123', '', '', 5, 'adams1997', '', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `rdps`
--

CREATE TABLE `rdps` (
  `id` int NOT NULL,
  `sold` varchar(255) NOT NULL,
  `dateofsold` varchar(255) NOT NULL,
  `sto` varchar(50) NOT NULL,
  `resseller` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `price` varchar(100) NOT NULL,
  `infos` text NOT NULL,
  `domain` varchar(1000) NOT NULL,
  `acctype` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `hosting` text NOT NULL,
  `price_show` varchar(100) NOT NULL,
  `dateof_sold` varchar(255) NOT NULL,
  `access` varchar(500) NOT NULL,
  `windows` varchar(500) NOT NULL,
  `ram` varchar(100) NOT NULL,
  `reported` varchar(500) NOT NULL,
  `date` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `rdps`
--

INSERT INTO `rdps` (`id`, `sold`, `dateofsold`, `sto`, `resseller`, `country`, `url`, `price`, `infos`, `domain`, `acctype`, `city`, `hosting`, `price_show`, `dateof_sold`, `access`, `windows`, `ram`, `reported`, `date`, `state`) VALUES
(16, '1', '2023-03-14 13:42:35', 'adams1997', 'adams1997', 'United States', '162.214.81.12|admin|bac123', '5', '162.214.81.12|admin|bac123', '0', 'rdp', 'Provo', 'Unified Layer', '5', '14/03/2023 01:41:45 pm', 'ADMIN', '2019', '788MB', '0', '14/03/2023 01:41:45 pm', 'Utah');

-- --------------------------------------------------------

--
-- Structure de la table `reports`
--

CREATE TABLE `reports` (
  `id` int NOT NULL,
  `uid` varchar(255) NOT NULL,
  `seen` int NOT NULL,
  `status` varchar(50) NOT NULL,
  `memo` text NOT NULL,
  `lastreply` varchar(50) NOT NULL,
  `lastup` varchar(100) NOT NULL,
  `s_id` int NOT NULL,
  `s_url` varchar(1000) NOT NULL,
  `acctype` varchar(100) NOT NULL,
  `admin_r` int NOT NULL,
  `date` varchar(255) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `type` varchar(100) NOT NULL,
  `resseller` varchar(500) NOT NULL,
  `price` varchar(500) NOT NULL,
  `refunded` varchar(500) NOT NULL,
  `fmemo` varchar(500) NOT NULL,
  `s_info` text NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `reports`
--

INSERT INTO `reports` (`id`, `uid`, `seen`, `status`, `memo`, `lastreply`, `lastup`, `s_id`, `s_url`, `acctype`, `admin_r`, `date`, `subject`, `type`, `resseller`, `price`, `refunded`, `fmemo`, `s_info`, `orderid`, `state`) VALUES
(20, 'adams1997', 1, '1', '\r\n  <div class=\"panel panel-default\">\r\n  <div class=\"panel-body\"><div class=\"ticket\">this cpanel not work </div></div>\r\n  <div class=\"panel-footer\"><div class=\"label label-info\">Buyer</div> - 06/03/2023 06:01:47 pm</div>\r\n  </div>\r\n  <div class=\"panel panel-default\"><div class=\"panel-body\"><div class=\"ticket\"><b>ok</b></div></div><div class=\"panel-footer\"><div class=\"label label-danger\">Admin</div> - 06/03/2023 06:06:30 pm</div></div><div class=\"panel panel-default\"><div class=\"panel-body\"><div class=\"ticket\"><b>ok</b></div></div><div class=\"panel-footer\"><div class=\"label label-warning\">Support</div> - 06/03/2023 06:07:29 pm</div></div>', 'Support', '06/03/2023 06:07:29 pm', 11, 'http://demo.cpanel.net:2082/cpsess0334759319 |democom|DemoCoA5620', 'cpanel', 0, '06/03/2023 18:01:47 pm', '', 'request', 'dali12345678', '5', 'Not Yet !', 'this cpanel not work ', 'cPanel, LLC.', '70', 'onHold'),
(21, 'adams1997', 1, '1', '\r\n  <div class=\"panel panel-default\">\r\n  <div class=\"panel-body\"><div class=\"ticket\">not work</div></div>\r\n  <div class=\"panel-footer\"><div class=\"label label-info\">Buyer</div> - 06/03/2023 06:10:45 pm</div>\r\n  </div>\r\n  <div class=\"panel panel-default\"><div class=\"panel-body\"><div class=\"ticket\"><b>gg</b></div></div><div class=\"panel-footer\"><div class=\"label label-danger\">Admin</div> - 06/03/2023 06:11:12 pm</div></div>', 'Admin', '06/03/2023 06:11:12 pm', 10, 'https://mega.nz/file/X35U1Z4K#OWxvnuP1GEFxOumsLQvie3Y5gINA5yIqpfeQX4d1Irc	', 'leads', 0, '06/03/2023 18:10:45 pm', '', 'request', 'dali12345678', '5', 'Not Yet !', 'not work', 'hotmail', '78', 'onHold'),
(22, 'adams1997', 1, '1', '\r\n  <div class=\"panel panel-default\">\r\n  <div class=\"panel-body\"><div class=\"ticket\">cc not work</div></div>\r\n  <div class=\"panel-footer\"><div class=\"label label-info\">Buyer</div> - 12/03/2023 08:43:42 pm</div>\r\n  </div>\r\n  <div class=\"panel panel-default\"><div class=\"panel-body\"><div class=\"ticket\"><b>work</b></div></div><div class=\"panel-footer\"><div class=\"label label-success\">Seller</div> - 12/03/2023 08:44:10 pm</div></div>', 'Seller', '12/03/2023 08:44:10 pm', 27, 'buyer Information', 'CARDS', 0, '12/03/2023 20:43:42 pm', '', 'request', 'adams1997', '5', 'Not Yet !', 'cc not work', 'CVV', '86', 'onHold');

-- --------------------------------------------------------

--
-- Structure de la table `resseller`
--

CREATE TABLE `resseller` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `unsoldb` int NOT NULL,
  `soldb` int NOT NULL,
  `isold` int NOT NULL,
  `iunsold` int NOT NULL,
  `activate` text NOT NULL,
  `btc` text NOT NULL,
  `withdrawal` text NOT NULL,
  `allsales` int DEFAULT NULL,
  `lastweek` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `resseller`
--

INSERT INTO `resseller` (`id`, `username`, `unsoldb`, `soldb`, `isold`, `iunsold`, `activate`, `btc`, `withdrawal`, `allsales`, `lastweek`) VALUES
(13, 'testets', 0, 0, 0, 0, '2023/02/28 05:10:46', '', '', NULL, 0),
(14, 'fisnik', 0, 0, 0, 0, '2023/02/28 07:03:27', '', '', NULL, 0),
(15, 'dali12345678', 0, 50, 0, 0, '2023/03/01 06:21:51', '', '', NULL, 0),
(16, 'dali123450', -8, 5, 0, -2, '2023/03/06 05:22:55', '', '', NULL, 0),
(17, 'adams1997', 0, 57, 0, 0, '2023/03/06 07:41:19', '', '', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `rpayment`
--

CREATE TABLE `rpayment` (
  `id` int NOT NULL,
  `amount` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `rate` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `fee` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `abtc` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `url` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `scampages`
--

CREATE TABLE `scampages` (
  `id` int NOT NULL,
  `acctype` varchar(255) NOT NULL,
  `country` text NOT NULL,
  `infos` text NOT NULL,
  `proof` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `url` text NOT NULL,
  `price` int NOT NULL,
  `resseller` varchar(255) NOT NULL,
  `sold` int NOT NULL,
  `sto` varchar(255) NOT NULL,
  `dateofsold` text NOT NULL,
  `date` text NOT NULL,
  `scamname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `scampages`
--

INSERT INTO `scampages` (`id`, `acctype`, `country`, `infos`, `proof`, `url`, `price`, `resseller`, `sold`, `sto`, `dateofsold`, `date`, `scamname`) VALUES
(8, 'scampage', '-', 'DHL', '', 'https://mega.nz/file/GmZHRKRR#Z_gJDCPj7knjECZx1kBj3dLryNa6SVHMWXlbEXgblVI	', 5, 'dali12345678', 1, 'adams1997', '2023-03-06 18:05:06', '06/03/2023 05:55:14 pm', 'DHL'),
(9, 'scampage', '-', 'DHL', '', 'https://meg,hga.nz/file/GmZHRKRR#Z_gJDCPj7knjECZx1kBj3dLryNa6SVHMWXlbEXgblVI	', 5, 'dali12345678', 1, 'adams1997', '2023-03-12 19:51:37', '06/03/2023 05:55:19 pm', 'DHL'),
(12, 'scampage', '-', 'DHL scamPage', 'https://www.bing.com/', 'https://toolux.io/', 5, 'dali123450', 0, '', '', '29/03/2023 09:48:03 pm', 'DHL'),
(13, 'scampage', '-', 'DHL', 'https://facebook.com/', 'https://www.facebook.com/profile.php?id=100087107439229', 5, 'adams1997', 0, '', '', '07/04/2023 11:38:52 am', 'DHL'),
(14, 'scampage', '-', 'DHL  privte scam page ', 'https://imgur.com/', 'https://anonfiles.com/fr', 5, 'adams1997', 0, '', '', '07/04/2023 08:25:57 pm', 'DHL Seconde');

-- --------------------------------------------------------

--
-- Structure de la table `smtps`
--

CREATE TABLE `smtps` (
  `id` int NOT NULL,
  `sold` varchar(255) NOT NULL,
  `dateofsold` varchar(255) NOT NULL,
  `sto` varchar(50) NOT NULL,
  `resseller` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `acctype` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `hosting` text NOT NULL,
  `price_show` varchar(100) NOT NULL,
  `dateof_sold` varchar(255) NOT NULL,
  `access` varchar(500) NOT NULL,
  `windows` varchar(500) NOT NULL,
  `ram` varchar(100) NOT NULL,
  `reported` varchar(500) NOT NULL,
  `url` text NOT NULL,
  `price` varchar(100) NOT NULL,
  `infos` text NOT NULL,
  `domain` varchar(1000) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `smtps`
--

INSERT INTO `smtps` (`id`, `sold`, `dateofsold`, `sto`, `resseller`, `country`, `acctype`, `city`, `hosting`, `price_show`, `dateof_sold`, `access`, `windows`, `ram`, `reported`, `url`, `price`, `infos`, `domain`, `date`) VALUES
(662, 'deleted', '06/03/2023 05:44:13 pm', '0', 'dali12345678', 'United States', 'smtp', '0', 'Contabo GmbH', '5', '06/03/2023 05:44:13 pm', '0', '0', '0', '0', 'mail.doctalkng.com|info@doctalkng.com|2rTeAavZ9EJ5|587', '5', 'Contabo GmbH', '0', '06/03/2023 05:44:13 pm'),
(663, 'deleted', '06/03/2023 05:45:22 pm', '0', 'dali12345678', 'Germany', 'smtp', '0', 'Hetzner Online GmbH', '5', '06/03/2023 05:45:22 pm', '0', '0', '0', '0', 'mail.askerorthodontics.com|support@askerorthodontics.com|A[sqD85MTc,!|587', '5', 'Hetzner Online GmbH', '0', '06/03/2023 05:45:22 pm');

-- --------------------------------------------------------

--
-- Structure de la table `stufs`
--

CREATE TABLE `stufs` (
  `id` int NOT NULL,
  `sold` varchar(255) NOT NULL,
  `dateofsold` varchar(255) NOT NULL,
  `sto` varchar(50) NOT NULL,
  `resseller` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `acctype` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `hosting` text NOT NULL,
  `price_show` varchar(100) NOT NULL,
  `dateof_sold` varchar(255) NOT NULL,
  `access` varchar(500) NOT NULL,
  `windows` varchar(500) NOT NULL,
  `ram` varchar(100) NOT NULL,
  `reported` varchar(500) NOT NULL,
  `url` text NOT NULL,
  `price` varchar(100) NOT NULL,
  `infos` text NOT NULL,
  `domain` varchar(1000) NOT NULL,
  `date` varchar(255) NOT NULL,
  `server_info` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `stufs`
--

INSERT INTO `stufs` (`id`, `sold`, `dateofsold`, `sto`, `resseller`, `country`, `acctype`, `city`, `hosting`, `price_show`, `dateof_sold`, `access`, `windows`, `ram`, `reported`, `url`, `price`, `infos`, `domain`, `date`, `server_info`) VALUES
(58, '1', '2023-03-06 18:02:18', 'adams1997', 'dali123450', 'United States', 'shell', '0', 'GoDaddy.com, LLC', '5', '0', '0', 'Windows', '0', '0', 'http://emilyandjim.com/shell.php', '5', 'GoDaddy.com, LLC', 'emilyandjim.com', '2023/03/06 05:33:31', 'Windows NT P3NWVPWEB147 10.0 build 17763 (Windows Server 2016) i586 ');

-- --------------------------------------------------------

--
-- Structure de la table `ticket`
--

CREATE TABLE `ticket` (
  `id` int NOT NULL,
  `uid` varchar(200) NOT NULL,
  `seen` int NOT NULL,
  `memo` text NOT NULL,
  `s_id` int NOT NULL,
  `lastreply` varchar(100) NOT NULL,
  `lastup` varchar(100) NOT NULL,
  `s_url` text NOT NULL,
  `acctype` varchar(100) NOT NULL,
  `admin_r` varchar(100) NOT NULL,
  `date` varchar(255) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `type` varchar(100) NOT NULL,
  `resseller` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `refunded` varchar(100) NOT NULL,
  `fmemo` varchar(200) NOT NULL,
  `status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ticket`
--

INSERT INTO `ticket` (`id`, `uid`, `seen`, `memo`, `s_id`, `lastreply`, `lastup`, `s_url`, `acctype`, `admin_r`, `date`, `subject`, `type`, `resseller`, `price`, `refunded`, `fmemo`, `status`) VALUES
(19, 'adams1997', 0, '\r\n  <div class=\"panel panel-default\"><div class=\"panel-body\"><div class=\"ticket\">ok bb</div></div><div class=\"panel-footer\"><div class=\"label label-info\">adams1997</div> - 06/03/2023 06:12:47 pm</div></div>\r\n  ', 1, 'Admin', '06/03/2023 06:13:01 pm', '1', '1', '0', '2023/03/06 06:11:33', 'not work', 'refunding', '1', '1', 'Not Yet !', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `tutorials`
--

CREATE TABLE `tutorials` (
  `id` int NOT NULL,
  `acctype` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `infos` text NOT NULL,
  `url` text NOT NULL,
  `price` int NOT NULL,
  `resseller` varchar(255) NOT NULL,
  `sold` int NOT NULL,
  `sto` varchar(255) NOT NULL,
  `dateofsold` text NOT NULL,
  `date` text NOT NULL,
  `tutoname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `tutorials`
--

INSERT INTO `tutorials` (`id`, `acctype`, `country`, `infos`, `url`, `price`, `resseller`, `sold`, `sto`, `dateofsold`, `date`, `tutoname`) VALUES
(67, 'tutorial', '-', '15', 'https://mega.nz/file/GmZHRKRR#Z_gJDCPj7knjECZx1kBj3dLryNa6SVHMWXlbEXgblVI	', 5, 'dali12345678', 1, 'adams1997', '2023-03-06 18:05:09', '06/03/2023 05:56:13 pm', 'fdfds');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `balance` int DEFAULT '0',
  `ipurchassed` text,
  `ip` text,
  `lastlogin` date DEFAULT NULL,
  `datereg` date DEFAULT NULL,
  `resseller` int NOT NULL,
  `img` text,
  `testemail` varchar(255) DEFAULT NULL,
  `resetpin` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `balance`, `ipurchassed`, `ip`, `lastlogin`, `datereg`, `resseller`, `img`, `testemail`, `resetpin`) VALUES
(9, 'adams', 'eHFuLzVEOG0rYkpPb2d5TE5tbWJGQT09', 'omeri@gmai.com', 139, '1', '::1', '2023-02-02', '2023-02-02', 1, '', 'omermaksuti@yandex.com', 0),
(11, 'fisnik', 'eHFuLzVEOG0rYkpPb2d5TE5tbWJGQT09', 'omermma@gmail.com', 0, '0', '::1', '2023-02-02', '2023-02-02', 3, '', 'omermma@gmail.com', 0),
(12, 'testbaba', 'eHFuLzVEOG0rYkpPb2d5TE5tbWJGQT09', 'omertest@gmail.com', 45, '1', '::1', '2023-02-02', '2023-02-02', 0, '', 'omertest@gmail.com', 0),
(13, 'tesnew', 'eHFuLzVEOG0rYkpPb2d5TE5tbWJGQT09', 'testts@gmail.com', 0, '0', '::1', '2023-02-02', '2023-02-02', 0, '', 'testts@gmail.com', 0),
(14, 'testts', 'eHFuLzVEOG0rYkpPb2d5TE5tbWJGQT09', 'test@upwork.com', 0, '0', '::1', '2023-02-02', '2023-02-02', 0, '', 'test@upwork.com', 0),
(15, 'upwork', 'eHFuLzVEOG0rYkpPb2d5TE5tbWJGQT09', 'tests@upwork.com', 0, '0', '::1', '2023-02-02', '2023-02-02', 0, '', 'tests@upwork.com', 0),
(16, 'Kaveci', 'eHFuLzVEOG0rYkpPb2d5TE5tbWJGQT09', 'omerbababs@umib.net', 0, '0', '::1', '2023-02-02', '2023-02-02', 0, '', 'omerbababs@umib.net', 0),
(17, 'testets', 'eHFuLzVEOG0rYkpPb2d5TE5tbWJGQT09', 'omermaksuthfkjdh@gmail.com', 0, '0', '::1', '2023-02-02', '2023-02-02', 0, '', 'omermaksuthfkjdh@gmail.com', 0),
(21, 'adams1997', 'eHFuLzVEOG0rYkpPb2d5TE5tbWJGQT09', 'baki@trash-mail.com', 358, '25', '127.0.0.1', '2023-01-28', '2023-02-28', 1, '', 'baki@trash-mail.com', 0),
(22, 'dali12345678', 'UkdlejhZdXZkK283R2hWSDQrMEJzdz09', 'admin@admin.com', 0, '0', '127.0.0.1', '2023-03-01', '2023-03-01', 3, '', 'baki@trash-mail.com', 0),
(23, 'dali123450', 'c3ZLZXR3aURlck1nN3cwUCtwVFh3Zz09', 'msh19977@proton.me', 0, '0', '127.0.0.1', '2023-03-06', '2023-03-06', 1, '', 'msh19977@proton.me', 0),
(24, 'dali12345', 'ZUJQKzNjV09ZNkZSR2daWWdVT1F1dz09', 'dali@free.fr', 0, '0', '127.0.0.1', '2023-03-14', '2023-03-14', 2, '', 'dali@free.fr', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cpanels`
--
ALTER TABLE `cpanels`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mailers`
--
ALTER TABLE `mailers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `newseller`
--
ALTER TABLE `newseller`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rdps`
--
ALTER TABLE `rdps`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `resseller`
--
ALTER TABLE `resseller`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rpayment`
--
ALTER TABLE `rpayment`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `scampages`
--
ALTER TABLE `scampages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `smtps`
--
ALTER TABLE `smtps`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `stufs`
--
ALTER TABLE `stufs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tutorials`
--
ALTER TABLE `tutorials`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `cpanels`
--
ALTER TABLE `cpanels`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `images`
--
ALTER TABLE `images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT pour la table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `mailers`
--
ALTER TABLE `mailers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `manager`
--
ALTER TABLE `manager`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `newseller`
--
ALTER TABLE `newseller`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT pour la table `rdps`
--
ALTER TABLE `rdps`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `resseller`
--
ALTER TABLE `resseller`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `rpayment`
--
ALTER TABLE `rpayment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `scampages`
--
ALTER TABLE `scampages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `smtps`
--
ALTER TABLE `smtps`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=664;

--
-- AUTO_INCREMENT pour la table `stufs`
--
ALTER TABLE `stufs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT pour la table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `tutorials`
--
ALTER TABLE `tutorials`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
