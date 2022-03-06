-- phpMyAdmin SQL Dump
-- version 4.9.6
-- https://www.phpmyadmin.net/
--
-- Hôte : 134cc.myd.infomaniak.com
-- Généré le :  sam. 05 mars 2022 à 02:34
-- Version du serveur :  10.4.19-MariaDB-1:10.4.19+maria~stretch-log
-- Version de PHP :  7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `134cc_riefm`
--

-- --------------------------------------------------------

--
-- Structure de la table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(11) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `advertisements`
--

INSERT INTO `advertisements` (`id`, `content`, `created_at`, `updated_at`, `image_name`) VALUES
(1, 'Bienvenu a la radio Il Est Ecrit 92.4 fm, Yaoundé', '2021-09-04 23:42:08', '2021-09-04 23:42:08', 'teste1-6133e83079dcb247748735.jpg'),
(2, 'Ecoutez et vivez', '2021-09-04 23:43:05', '2021-09-04 23:43:05', 'logopolyc1-6133e869a15c6967220711.png'),
(3, 'Rentree academique : Octobre 2021', '2021-09-06 13:05:06', '2021-09-06 13:05:06', 'whatsapp-image-2021-09-06-at-06-55-55-6135f5e275880207482623.jpeg'),
(4, 'Pourquoi choisir l\'UAC?', '2021-09-06 15:05:50', '2021-09-06 15:05:50', 'whatsapp-image-2021-09-06-at-06-55-54-6136122e6bac8981955831.jpeg'),
(5, 'Pourquoi choisir Cosendai', '2021-09-06 15:17:38', '2021-09-06 15:17:38', 'whatsapp-image-2021-09-06-at-06-55-54-613614f21132c180782156.jpeg'),
(6, 'Le Pasteur, Secrétaire exécutif de la Fédération de l\'Est du Cameroun, a été nommé par le Comité exécutif de l\'UMCM réuni en visioconférence dans l\'après-midi du lundi 28 juin 2021. Il remplace à ce poste Abraham BAKARI appelé à servir à la Division de l\'Afrique de l\'Ouest et du Centre (DAO). \r\nSur la photo, Pasteur Yangman est en costume à droite.\r\nQue Dieu soit loué !\r\n*****************************************\r\nCAMEROON UNION MISSION (CMUM)\r\nYANGMAN AVOM ARMAND ARNAUD IS THE NEW DIRECTOR OF COMMUNICATION, PUBLIC AFFAIRS AND RELIGIOUS LIBERTY.\r\nThe Pastor, Executive Secretary of the East Cameroon Conference was appointed by the CMUM Executive Committee meeting in video conference in the afternoon of Monday June 28,  2021. He replaces Abraham BAKARI who was called to serve in the West-central Africa Division (WAD). \r\nIn the photo, Pastor Yangman is in his suit on the right.\r\nMay God be praised!', '2021-09-07 00:08:07', '2021-09-07 00:08:07', '206961296-115787734081085-4006375862375336484-n-6136914704506611147472.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `item_id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `rgpd` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `parent_id`, `author_id`, `item_id`, `email`, `nickname`, `content`, `active`, `rgpd`, `created_at`, `updated_at`) VALUES
(1, NULL, 42, 1, 'danielfopah@gmail.com', 'Yannick', 'la femme diamant..A l\'occasion de la journée internationale de la femme, attardons-nous sur la description que la Bible fait de la femme vertueuse, celle-là seule qui véritablement constitue une plus-value pour notre société. La suite dans cette édition.', 0, 1, '2022-03-05 02:19:24', '2022-03-05 02:19:24');

-- --------------------------------------------------------

--
-- Structure de la table `domain`
--

CREATE TABLE `domain` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `enquiry`
--

INSERT INTO `enquiry` (`id`, `author_id`, `subject`, `body`, `created_at`, `updated_at`) VALUES
(1, 37, 'PARTICIPER A L EMISSION EN COURS', 'Bonjour', '2021-11-11 03:00:46', '2021-11-11 03:00:46');

-- --------------------------------------------------------

--
-- Structure de la table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item`
--

INSERT INTO `item` (`id`, `author_id`, `category_id`, `title`, `discr`) VALUES
(1, 42, NULL, 'Femme diamant', 'podcast');

-- --------------------------------------------------------

--
-- Structure de la table `news_letter`
--

CREATE TABLE `news_letter` (
  `id` int(11) NOT NULL,
  `is_rgpd` tinyint(1) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_sent` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `podcasts`
--

CREATE TABLE `podcasts` (
  `id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `time_space_id` int(11) DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `podcasts`
--

INSERT INTO `podcasts` (`id`, `program_id`, `time_space_id`, `author_id`, `file_name`, `description`, `title`, `image_name`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, 46, 'Mixage-final-JRF-DU-20-07-17-BON-613139a1614e9.mp3', 'Nembot deuil yollande', 'Yollande Nembot', 'femme-endeuillee-pleurant-la-mort-de-son-conjoint-613139a162c0d780057829.jpg', '2021-09-02 22:52:49', '2021-09-02 22:52:49'),
(2, 4, NULL, 46, 'Mix-fin-il-est-ecrit-sam-29-09-2018-Souvenirs-Rwanda-AB-61313e2573ff1.mp3', 'rwanda', 'Ce que j̀ai vu au Rwanda', 'hqdefault-61313e2575714667412872.jpg', '2021-09-02 23:12:05', '2021-09-02 23:12:05'),
(3, 4, NULL, 46, 'Mix-fin-sermon-A-Bakari-sam-20-05-17-Assis-a-la-meme-table-61316db7d72ba.mp3', 'Assis même table', 'Assis a la même table', 'family-61316db7d8ca6547754166.jpeg', '2021-09-03 02:35:03', '2021-09-03 02:35:03'),
(4, 4, NULL, 46, 'Mix-fin-sermon-AB-sam-26-05-17-Merci-maman-61316fb6b46a8.mp3', 'Merci maman', 'Merci maman', 'maman-61316fb6b5cb4584332132.jpeg', '2021-09-03 02:43:34', '2021-09-03 02:43:34'),
(5, 5, NULL, 46, 'bakari-psaume-15-613171a99ff4c.mp3', 'psaumes 13', 'Psaumes 13', 'joie-613171a9a17a6488144768.png', '2021-09-03 02:51:53', '2021-09-03 02:51:53'),
(6, 5, NULL, 46, 'bakari-psaume-15-613172bc999d4.mp3', 'Sainteté  Dieu psaume 15', 'Psaumes 15', 'psaume14-613172bc9b196291515030.png', '2021-09-03 02:56:28', '2021-09-03 02:56:28'),
(7, 8, NULL, 37, 'Mixage-final-emission-vie-et-sante-consultation-prenatale-613177b0e2217.mp3', 'Consultations prenatales', 'Consultations prénatales', 'prenatal-web-613177b0e3e25153373918.jpg', '2021-09-03 03:17:36', '2021-09-03 03:17:36'),
(8, 8, NULL, 37, 'Mixage-final-emission-vie-et-sante-examen-prenuptiaux-6131790cae73a.mp3', 'Examens prénuptiaux', 'Examens prénuptiaux', 'prenuptiales-6131790cb0138290186518.jpg', '2021-09-03 03:23:24', '2021-09-03 03:23:24'),
(9, 9, NULL, 37, 'la-parole-de-l-eternel-61341bb97101f.mp3', 'Jonas Parole Eternel', 'Jonas , La parole de l̀Eternel', 'jonas-61341bb97265a926766823.png', '2021-09-05 03:22:01', '2021-09-05 03:22:01'),
(10, 9, NULL, 37, 'Nahman-le-lepreux-lun-13-11-17-61341fc1e06b1.mp3', 'Naaman Lepreux', 'Naaman, le Lépreux', 'naaman-61341fc1e1fdc082538370.jpg', '2021-09-05 03:39:13', '2021-09-05 03:39:13'),
(11, 9, NULL, 58, 'mix-fin-27-VP-un-titanic-appele-le-monde-61342084a282c.mp3', 'Titanic Monde navire', 'Un Titanic appelé le monde', 'titanic-4-61342084a3f26849232056.jpg', '2021-09-05 03:42:28', '2021-10-26 10:02:52'),
(12, 9, NULL, 37, 'soutenir-une-causse-avec-vision-pro-613896eec6e1e.mp3', 'Vision soutenir cause', 'Soutenir une cause avec une vision', 'vision-613896eec85c4069923923.png', '2021-09-08 12:56:46', '2021-09-08 12:56:46'),
(13, 7, NULL, 46, 'sentinelle-du-20-02-12-AB-61389a5e2cd26.mp3', 'Confession', 'La confession', 'confession-61389a5e2e4ac117157899.jpeg', '2021-09-08 13:11:26', '2021-09-08 13:11:26'),
(14, 5, NULL, 46, 'bakari-psaumes-16-6144c8666e2ba.mp3', 'psaume16', 'Psaume16', 'psaume16-6144c8666fe93216485636.jpg', '2021-09-17 18:55:02', '2021-09-17 18:55:02'),
(17, 4, NULL, 46, 'A-GENOUX-MAIS-FORT-61477654033e2.mp3', 'A genoux', 'A genoux mais fort', 'image1q-6147765404f06743965273.jpg', '2021-09-19 19:41:40', '2021-09-19 19:41:40'),
(19, 4, NULL, 46, 'VOUS-AVEZ-LE-CHOIX-ABRAHAM-BAKARI-6147803101989.mp3', 'VOUS AVEZ LE CHOIX.', 'VOUS AVEZ LE CHOIX', 'vts-44-1-005-0007-614780310368d674499868.jpg', '2021-09-19 20:23:45', '2021-10-27 23:27:38'),
(20, 4, NULL, 46, 'LES-LARMES-DE-L-UNITE-614789e14b308.mp3', 'LES LARMES DE L\'UNITE', 'LES LARMES DE L\'UNITE', '15610753-614789e14cba0959318556.jpg', '2021-09-19 21:05:05', '2021-09-19 21:05:05'),
(21, 4, NULL, 46, 'SOUVENIR-DU-RWANDA-61478c5ab5181.mp3', 'SOUVENIR DU RWANDA', 'SOUVENIR DU RWANDA', 'bfb534a-242968919-rtr2gw-61478c5ab6c68336628265.jpg', '2021-09-19 21:15:38', '2021-09-19 21:15:38'),
(22, 4, NULL, 46, 'JE-NE-VEND-PLUS-61478fca04508.mp3', 'JE NE VEND PLUS', 'JE NE VEND PLUS', 'vts-40-1-0005-2-61478fca0607c961603957.jpg', '2021-09-19 21:30:18', '2021-09-19 21:30:18'),
(23, 4, NULL, 10, 'ON-NE-TIRE-PAS-SUR-UNE-AMBULANCE-614798013be7c.mp3', 'ON NE TIRE PAS SUR UNE AMBULANCE', 'ON NE TIRE PAS SUR UNE AMBULANCE', 'stickers-ambulance-isole-sur-fond-blanc-jpg-614798013d914918212745.jpg', '2021-09-19 22:05:21', '2021-09-19 22:05:21'),
(24, 4, NULL, 46, 'UN-MARIAGE-DE-REVE-61479a2f01f0f.mp3', 'UN MARIAGE DE REVE', 'UN MARIAGE DE REVE', 'vts-36-1-009-0001-61479a2f036ff229631184.jpg', '2021-09-19 22:14:39', '2021-09-19 22:14:39'),
(25, 4, NULL, 46, 'L-ENFANT-TRESOR-61479b7e6704f.mp3', 'L\'ENFANT TRESOR', 'L\'ENFANT TRESOR', 'vts-33-1-004-0015-61479b7e68836787790634.jpg', '2021-09-19 22:20:14', '2021-09-19 22:20:14'),
(26, 7, NULL, 46, 'LES-GOLIATHS-DE-LA-JEUNESSE-61479d45960f8.mp3', 'LES GOLIATHS DE LA JEUNESSE', 'LES GOLIATHS DE LA JEUNESSE', 'vts-35-1-001-0006-2-61479d4597a7c149828402.jpg', '2021-09-19 22:27:49', '2021-09-19 22:27:49'),
(27, 4, NULL, 46, 'OU-SONT-LES-PERES-61479ebd87dec.mp3', 'OU SONT LES PERES', 'OU SONT LES PERES', 'vts-50-1-009-0003-61479ebd89755328739489.jpg', '2021-09-19 22:34:05', '2021-09-19 22:34:05'),
(28, 4, NULL, 46, 'MERE-DE-VALEUR-6147a07127566.mp3', 'MERE DE VALEUR', 'MERE DE VALEUR', 'vts-28-1-006-0002-2-6147a07128e78163194131.jpg', '2021-09-19 22:41:21', '2021-09-19 22:41:21'),
(29, 7, NULL, 46, 'NOS-ENFANTS-NOUS-LES-MERITONS-6147a1d403fe9.mp3', 'NOS ENFANTS NOUS LES MERITONS', 'NOS ENFANTS NOUS LES MERITONS', 'vts-34-1-002-0003-2-6147a1d40564c141801532.jpg', '2021-09-19 22:47:16', '2021-09-19 22:47:16'),
(30, 4, NULL, 46, 'LA-SUEUR-ET-LE-SANG-PARLENT-6148317a18ea5.mp3', 'LA SUEUR ET LE SANG PARLENT', 'LA SUEUR ET LE SANG PARLENT', 'vts-33-1-003-0008-2-6148317a1a4d8862192376.jpg', '2021-09-20 09:00:10', '2021-09-20 09:00:10'),
(32, 2, NULL, 46, 'Mixage-final-JRF-DU-31-01-19-Owona-Carole-02-614ecc6a24169.mp3', 'Témoignage Owono Carole', 'Rencontre avec Owono Carole', 'whatsapp-image-2021-09-25-at-08-02-17-614ecc6a25c24005239615.jpeg', '2021-09-25 09:14:50', '2021-10-26 09:49:54'),
(33, 11, NULL, 10, '10-JDP2018-INTRODUCTION-AB-614f60ed943d1.mp3', 'Introduction', 'Introduction', 'image1q-614f60ed95c5c586467589.jpg', '2021-09-25 19:48:29', '2021-09-25 19:48:29'),
(34, 11, NULL, 46, 'mix-fin-Jour-01-100118-AB-INTRODUCTION-614f61a08c778.mp3', 'Introduction aux dix jours', 'Introduction aux dix jours', 'image1q-614f61a08ea8e380194793.jpg', '2021-09-25 19:51:28', '2021-09-25 19:51:28'),
(35, 11, NULL, 46, 'mix-fin-Jour-02-110118-AB-consacre-au-Seigneur-614f6332df24d.mp3', 'Consacré au Seigneur', '02- Consacré au Seigneur', 'image1q-614f6332e0c45915417440.jpg', '2021-09-25 19:58:10', '2021-09-25 19:58:10'),
(36, 11, NULL, 46, 'mix-fin-Jour-03-120118-AB-les-pieds-nus-614f640c94731.mp3', 'Les pieds nus', '03- Les pieds nus', 'image1q-614f640c962a3477379987.jpg', '2021-09-25 20:01:48', '2021-09-25 20:01:48'),
(37, 11, NULL, 46, '10JDP100118-Huile-sacree-AB-614f64919dffa.mp3', 'Huile sacrée', '04- Huile sacrée', 'image1q-614f64919fbd8876454785.jpg', '2021-09-25 20:04:01', '2021-09-25 20:04:01'),
(38, 11, NULL, 46, 'mix-fin-Jour-05-140118-AB-L-Ephode-614f651fc5651.mp3', 'l\'Ephode', '05- l\'Ephode', 'image1q-614f651fc7156413020236.jpg', '2021-09-25 20:06:23', '2021-09-25 20:06:23'),
(39, 11, NULL, 10, 'mix-fin-Jour-06-150118-AB-la-Ceinture-614f66b88bacb.mp3', 'La ceinture', '06- La ceinture', 'image1q-614f66b88d102464332938.jpg', '2021-09-25 20:13:12', '2021-09-25 20:13:12'),
(40, 11, NULL, 46, 'mix-fin-Jour-07-160118-AB-le-pectoral-614f6745b1da4.mp3', 'Le Pectoral', '07- Le Pectoral', 'image1q-614f6745b3a0f791318102.jpg', '2021-09-25 20:15:33', '2021-09-25 20:15:33'),
(41, 11, NULL, 46, 'mix-fin-Jour-08-170118-AB-l-hurin-et-le-thubim-614f67e27c994.mp3', 'l\'Urim et le Thubim', '08- l\'Urim et le Thubim', 'image1q-614f67e27e17b688649285.jpg', '2021-09-25 20:18:10', '2021-09-25 20:18:10'),
(42, 11, NULL, 46, 'mix-fin-Jour-09-180118-AB-l-encensoir-614f68d28876f.mp3', 'l\'Encensoir', '09- l\'Encensoir', 'image1q-614f68d28a3f2482534541.jpg', '2021-09-25 20:22:10', '2021-09-25 20:22:10'),
(43, 11, NULL, 46, 'mix-fin-Jour-10-190118-AB-les-clochettes-et-les-grenades-614f696bc1c0f.mp3', 'les clochettes et les grenades', '10- les clochettes et les grenades', 'image1q-614f696bc458f081042932.jpg', '2021-09-25 20:24:43', '2021-09-25 20:24:43'),
(44, 7, NULL, 10, 'l-amour-AB-614f972edf627.mp3', 'L\'amour', 'L\'amour', 'vts-36-1-009-0001-614f972ee0e47490349461.jpg', '2021-09-25 23:39:58', '2021-09-25 23:39:58'),
(45, 10, NULL, 37, 'FRECO-XXX-20060104B-6159a41549ef4.bin', 'sante nombre alergie', 'Espace Sante', 'sante-esperance-6159a4154cd51977227535.png', '2021-10-03 14:37:41', '2021-10-03 14:37:41'),
(46, 9, NULL, 37, '16-LEFILSDEDIEU-6159a60db8100.mp3', 'Fils de Dieu', 'Jesus m̀a tant aime', 'jesus-6159a60db9b6a218987118.png', '2021-10-03 14:46:05', '2021-10-03 14:46:05'),
(47, 12, NULL, 39, 'delice-vesperal-02-10-21-615a08b749e0b.mp3', 'Musique, Détente maximale', 'DELICE VESPERAL', '787f216ed0-121265-myrtille-coeur-615a08b74b66e721062883.jpg', '2021-10-03 21:47:03', '2021-10-03 21:47:03'),
(48, 13, NULL, 55, 'les-actualites-religieuses-mix-final-lundi-20-septembre-2021-rediffusion-615a0e60f1bb8.mp3', 'Actualités, église', 'ACTUALITES RELIGIEUSES', 'sans-titre-1-615a0e60f33f9115049546.jpg', '2021-10-03 22:11:12', '2021-10-03 22:11:12'),
(49, 5, NULL, 10, 'MMMS-2-CHRONIQUES-23-du-05-10-2021-de-MONPROCHAIN-ETOUNDI-615c4105d04ca.mp3', '02 Chroniques 23', '02 Chroniques 23', 'copie-de-1075657779-790-high-spi-615c4105d1a1f355186053.jpg', '2021-10-05 14:11:49', '2021-10-05 14:11:49'),
(50, 13, NULL, 55, 'les-actualites-religieuses-du-lundi-11-octobre-2021-6166f57c6c352.mp3', 'Actualités, église', 'ACTUALITES RELIGIEUSES', 'actualite-6166f57c6dca5961259657.jpg', '2021-10-13 17:04:28', '2021-10-13 17:04:28'),
(51, 6, NULL, 54, 'reflets-ad-du-12-10-2021-de-jean-F-DE-GALATES-5-6166f9ef5ec51.mp3', 'reflet, en temps réel', 'On devient enfant de DIEU', 'images-1-6166f9ef6017c873514130.jpg', '2021-10-13 17:23:27', '2021-10-13 17:23:27'),
(52, 5, NULL, 10, 'MMMS-2-CHRONIQUES-23-du-05-10-2021-de-MONPROCHAIN-ETOUNDI-6168389a766e4.mp3', '2 CHRONIQUES 23', '2 CHRONIQUES 23', 'copie-de-1075657779-790-high-spi-6168389a77f1b776168754.jpg', '2021-10-14 16:03:06', '2021-10-14 16:03:06'),
(53, 5, NULL, 10, 'MMMS-2-CHRONIQUES-24-du-06-10-2021-de-MONPROCHAIN-ETOUNDI-6168399e13ed0.mp3', '2 CHRONIQUES 24', '2 CHRONIQUES 24', 'copie-de-1075657779-790-high-spi-6168399e15525312600324.jpg', '2021-10-14 16:07:26', '2021-10-14 16:07:26'),
(54, 5, NULL, 10, 'MMMS-2-CHRONIQUES-25-du-07-10-2021-de-MONPROCHAIN-ETOUNDI-61683abb99b0d.mp3', '2 CHRONIQUES 25', '2 CHRONIQUES 25', 'copie-de-1075657779-790-high-spi-61683abb9b20e516749606.jpg', '2021-10-14 16:12:11', '2021-10-14 16:12:11'),
(55, 5, NULL, 10, 'MMMS-2-CHRONIQUES-26-du-08-10-2021-de-MONPROCHAIN-ETOUNDI-61683c416ec0d.mp3', '2 CHRONIQUES 26', '2 CHRONIQUES 26', 'copie-de-1075657779-790-high-spi-61683c4170105928725609.jpg', '2021-10-14 16:18:41', '2021-10-14 16:18:41'),
(56, 5, NULL, 51, 'Noire-et-Belle-Pr-JGN-616844e6a298b.mp3', 'Noire et belle', 'Noire et belle', 'v4-460px-be-a-confident-beautiful-black-girl-step-1-version-3-jpg-616844e6a3f20426830410.webp', '2021-10-14 16:55:34', '2021-10-14 16:55:34'),
(57, 2, NULL, 46, 'JRF-CHANTAL-01-61686339a0b2a.mp3', 'CHANTAL   priere', 'JRF Avec CHANTAL (1)', 'j-ai-rencontre-la-foi-61686339a387f258199154.jpg', '2021-10-14 19:04:57', '2021-10-21 09:58:56'),
(58, 2, NULL, 46, 'JRF-CHANTAL-02-61686b135c667.mp3', 'CHANTAL (2) Priere', 'JRF Avec CHANTAL (2)', 'j-ai-rencontre-la-foi-61686b135f34f291801645.jpg', '2021-10-14 19:38:27', '2021-10-21 09:58:17'),
(59, 4, NULL, 48, 'RIE-du-sam-16-10-2021-Pour-qui-est-tu-riche-pr-Armand-A-Yangman-6169497f5fcd0.mp3', 'Riche', 'Pour qui  es-tu riche ?', 'riche-6169497f61186473332823.jpg', '2021-10-15 11:27:27', '2021-10-19 13:50:55'),
(60, 3, NULL, 52, 'Dr-abanke-l-hepatite-61694dcdc356f.mp3', 'l\'Hépatite', 'NS- l\'Hépatite avec Dr Abanké', 'capture-61694dcdc4a8d493746503.jpg', '2021-10-15 11:45:49', '2021-10-15 11:45:49'),
(61, 3, NULL, 52, 'NS-l-eau-kaguem-wather-avec-jeufo-wamba-6169505b0cd86.mp3', 'L\'eau kaguem wather', 'NS- l\'eau kaguem wather', 'capture-6169505b0e7cb083542447.jpg', '2021-10-15 11:56:43', '2021-10-15 11:56:43'),
(62, 3, NULL, 52, 'NS-l-hysope-avec-Nkolo-Zakarie-6169512584576.mp3', 'L\'hysope', 'L\'hysope', 'capture-6169512585c96695235081.jpg', '2021-10-15 12:00:05', '2021-10-15 12:00:05'),
(63, 3, NULL, 52, 'NS-avec-le-dr-abanke-616951e4aa5bb.mp3', 'Abanké', 'Avec Abanké', 'capture-616951e4abcb7803081467.jpg', '2021-10-15 12:03:16', '2021-10-15 12:03:16'),
(64, 3, NULL, 52, 'NS-Faiblesse-sexuelles-avec-Dr-Abanke-6169534066751.mp3', 'Faiblesse sexuelles', 'NS- Faiblesse sexuelles', 'capture-6169534068075362161748.jpg', '2021-10-15 12:09:04', '2021-10-15 12:09:04'),
(65, 3, NULL, 52, 'NS-Infection-a-chlamedia-avec-Dr-Abanke-6169542fc60eb.mp3', 'Infections à chlamedia', 'NS- Infections à chlamedia', 'capture-6169542fc7b5b688466176.jpg', '2021-10-15 12:13:03', '2021-10-15 12:13:03'),
(66, 3, NULL, 52, 'NS-la-prostate-avec-Romaric-Ondoua-et-Sope-moute-6169551a154e0.mp3', 'La Prostate', 'NS- La Prostate', 'capture-6169551a16ef5719863720.jpg', '2021-10-15 12:16:58', '2021-10-15 12:16:58'),
(67, 3, NULL, 52, 'NS-la-tiphoide-avec-Nang-Jean-Francois-6169561206442.mp3', 'La tiphoide', 'NS- La tiphoide', 'capture-6169561207e88526718898.jpg', '2021-10-15 12:21:06', '2021-10-15 12:21:06'),
(68, 3, NULL, 52, 'NS-le-charbon-vegetal-active-avec-Romaric-Ondoua-et-Sope-moute-6169571be5e9e.mp3', 'Le charbon vegetal', 'NS- Le charbon végétal', 'capture-6169571be7722159866450.jpg', '2021-10-15 12:25:31', '2021-10-15 12:25:31'),
(69, 3, NULL, 52, 'NS-le-moringa-avec-Alama-Bernadette-616958e24ee7a.mp3', 'le moringa', 'NS- le moringa', 'capture-616958e25086a763186380.jpg', '2021-10-15 12:33:06', '2021-10-15 12:33:06'),
(70, 3, NULL, 52, 'NS-Neem-avec-ALAMA-Bernaqette-1-61695a77a51b5.mp3', 'Le Neem', 'NS- Neem avec ALAMA Bernaqette (1)', 'capture-61695a77a6af1195674079.jpg', '2021-10-15 12:39:51', '2021-10-15 12:39:51'),
(71, 3, NULL, 52, 'NS-le-Neem-avec-Alama-Bernadette-02-61695b1b1aeb8.mp3', 'Le Neem 2', 'NS- Le Neem', 'capture-61695b1b1c6c1314346644.jpg', '2021-10-15 12:42:35', '2021-10-15 12:42:35'),
(72, 3, NULL, 52, 'NS-Max7-par-omer-George-magnesium-01-61695bdb7cf11.mp3', 'Max7', 'NS- Max7  01', 'capture-61695bdb7e49b421345961.jpg', '2021-10-15 12:45:47', '2021-10-15 12:45:47'),
(73, 3, NULL, 52, 'NS-Obesite-hemoroide-faiblesse-avec-Dr-Abanke-61695c8f17000.mp3', 'Obesité, hemoroide, faiblesse', 'NS- Obesité .hemoroide, faiblesse', 'capture-61695c8f18a8e393317893.jpg', '2021-10-15 12:48:47', '2021-10-15 12:48:47'),
(74, 3, NULL, 52, 'NS-Santurel-intro-01-dr-Re-et-flore-61695d94db011.mp3', 'Santurel intro 01', 'NS- Santurel intro 01', 'capture-61695d94dcae5066748262.jpg', '2021-10-15 12:53:08', '2021-10-15 12:53:08'),
(75, 3, NULL, 52, 'NS-santurel-intro-01-dr-Re-et-dr-flore2-61695eed7441b.mp3', 'santurel 02', 'NS- santurel 02', 'capture-61695eed75df9685870695.jpg', '2021-10-15 12:58:53', '2021-10-15 12:58:53'),
(76, 3, NULL, 52, 'NS-Soja-bagdama-rene-degaule-61695fe129f13.mp3', 'Soja', 'NS- Soja', 'capture-61695fe12b9ab242160561.jpg', '2021-10-15 13:02:57', '2021-10-15 13:02:57'),
(78, 4, NULL, 40, 'IE-du-22-10-2021-Le-courage-croire-Past-Aime-H-Coosedai-6171835d23951.mp3', 'Le courage de croire', 'Le courage de croire', 'le-courage-de-croire-6171835d25067800291087.jpg', '2021-10-21 17:12:29', '2021-10-21 17:12:29'),
(79, 15, NULL, 40, 'BARTIMEE-EMISSION-DU-23-OCTOBRE-2021-61743f63bcf52.mp3', 'BARTIMEE EMISSION DU 23 OCTOBRE 2021', 'EMISSION DU 23 OCTOBRE 2021', 'img-20191209-wa0051-61743f63be5b1959633420.jpg', '2021-10-23 18:59:15', '2021-10-23 18:59:15'),
(80, 4, NULL, 52, 'il-est-ecrit-du-30-10-2021-Connu-que-de-Dieu-past-karl-johson-presentation-Jean-Claude-MBOLONG-617c5a88e42a4.mp3', 'il est écrit', 'Connu que de Dieu', 'dieu-connait-2-617c5a88e5a13456152269.jpg', '2021-10-29 22:33:12', '2021-10-29 22:33:12'),
(81, 15, NULL, 39, 'BARTIMEE-EMISSION-DU-30-OCTOBRE-2021-617d9a8406bb6.mp3', 'aveugle', 'Le marchandage', 'yes-617d9a84082be819154140.jpg', '2021-10-30 21:18:28', '2021-10-30 21:18:28'),
(83, 14, NULL, 62, 'BHB-001-l-origine-de-la-vie-6187ca4c0fe17.mp3', 'L\'origine de la vie', 'L\'origine de la vie', 'img-20211027-wa0001-6187ca4c1253b325611030.jpg', '2021-11-07 13:45:00', '2021-11-07 13:45:00'),
(84, 14, NULL, 62, 'BHB-002-le-premier-jour-de-ce-monde-6187cb3322641.mp3', 'le premier jour de ce monde', 'Le premier jour de ce monde', 'img-20211027-wa0001-6187cb3323fa4127105363.jpg', '2021-11-07 13:48:51', '2021-11-07 13:48:51'),
(85, 2, NULL, 40, 'JRF-pasteur-Alain-Gwet-01-6187d442db2ae.mp3', 'JRF - pasteur Alain Gwet 01', 'JRF - pasteur Alain Gwet 01', 'images-6187d442dce6e913735414.jpg', '2021-11-07 14:27:30', '2021-11-07 14:27:30'),
(86, 2, NULL, 40, 'JRF-Pasteur-Alain-Gwet-02-6187d543d11de.mp3', 'Pasteur Alain Gwet 02', 'JRF - Pasteur Alain Gwet 02', 'images-6187d543d2c4e402182241.jpg', '2021-11-07 14:31:47', '2021-11-07 14:31:47'),
(87, 4, NULL, 40, 'IE-DU-06-11-21-Pst-Karl-Johnson-foi-paix-assurance-61881c2d523fa.mp3', 'Foi, paix, assurance', 'IE DU 06 11 21 Pst Karl Johnson  foi, paix, assurance', 'images-1-61881c2d53a26455130094.jpg', '2021-11-07 19:34:21', '2021-11-07 19:34:21'),
(88, 14, NULL, 62, 'BHB-003-Dieu-crea-le-ciel-les-nuages-et-l-air-618a245d1dacf.mp3', 'Dieu crea le ciel les nuages et l\'air', 'BHB 003  Dieu créa le ciel les nuages et l\'air', 'img-20211027-wa0001-618a245d1f2f1814975647.jpg', '2021-11-09 08:33:49', '2021-11-09 08:33:49'),
(89, 14, NULL, 62, 'BHB-004-Dieu-crea-les-plantes-618a260c1e6ee.mp3', 'Dieu créa les plantes', 'BHB 004 Dieu créa les plantes', 'img-20211027-wa0001-618a260c201dd665898170.jpg', '2021-11-09 08:41:00', '2021-11-09 08:41:00'),
(90, 2, NULL, 46, 'JRF-Cedrick-Alaka-618a28a1af179.mp3', 'Cédrick Alaka', 'JRF - Cedrick Alaka', 'images-618a28a1b0a1d670778204.jpg', '2021-11-09 08:52:01', '2021-11-09 08:52:01'),
(92, 4, NULL, 40, 'IE-du-20-11-2021-Eclaire-ma-bougie-past-karl-johnson-6198d0b9912b2.mp3', 'Eclaire ma bougie', 'Eclaire ma bougie', 'index-6198d0b991b9a793873736.jpg', '2021-11-20 11:40:57', '2021-11-20 11:40:57'),
(93, 2, NULL, 46, 'JRF-Jean-Claude-Mbong-61992b5ee0146.mp3', 'Jean Claude Mbong', 'JRF - Jean Claude Mbong', 'images-61992b5ee0a82177899337.jpg', '2021-11-20 18:07:42', '2021-11-20 18:07:42'),
(94, 14, NULL, 62, 'BHB-005-Dieu-crea-le-soleil-la-lune-et-les-etoiles-61992c0fe262c.mp3', 'Dieu créa le soleil, la lune et les etoiles', 'BHB 005  Dieu créa le soleil, la lune et les etoiles', 'img-20211027-wa0001-61992c0fe309c425677903.jpg', '2021-11-20 18:10:39', '2021-11-20 18:10:39'),
(95, 16, NULL, 63, 'La-malediction-de-la-tete-baissee-Pst-Nang-Elisee-619942b0179d2.mp3', 'La malédiction de la tête baissée', 'La malédiction de la tête baissée', '61tn5npiqjl1-619942b01819b911904807.jpg', '2021-11-20 19:47:12', '2021-11-20 19:47:12'),
(96, 16, NULL, 46, 'GENESE-24-AB-619abefbcebdd.mp3', 'GENESE 24', 'GENESE 24', 'bible-619abefbcf272439738544.jpg', '2021-11-21 22:49:47', '2021-11-21 22:49:47'),
(97, 18, NULL, 40, 'RAC-Nkou-Jc-01-619ac6945ce9b.mp3', 'Nkou Jc', 'RAC - Nkou Jc 01', 'rencontre-avec-jesus-e1607803494135-619ac6945d5eb807171425.jpg', '2021-11-21 23:22:12', '2021-11-21 23:22:12'),
(98, 18, NULL, 40, 'RAC-Nkou-Jc-02-619ac77e74fb2.mp3', 'Nkou Jc 2', 'RAC - Nkou Jc 02', 'rencontre-avec-jesus-e1607803494135-619ac77e756d4707159118.jpg', '2021-11-21 23:26:06', '2021-11-21 23:26:06'),
(99, 14, NULL, 62, 'BHB-006-Dieu-crea-les-oisaux-et-les-poissons-61a0ac80eb21d.mp3', 'Dieu créa les oisaux et les poissons', 'BHB 006  Dieu créa les oisaux et les poissons', 'img-20211027-wa0001-61a0ac80eba52581928368.jpg', '2021-11-26 10:44:32', '2021-11-26 10:44:32'),
(100, 14, NULL, 62, 'BHB-007-la-creation-Dieu-crea-les-animaux-terrestes-61a0ad8117db6.mp3', 'La creation  Dieu créa les animaux terrestes', 'BHB 007 la creation  Dieu créa les animaux terrestes', 'img-20211027-wa0001-61a0ad81188bc613033793.jpg', '2021-11-26 10:48:49', '2021-11-26 10:48:49'),
(101, 4, NULL, 40, 'IE-du-27-nov-2021-CHRIST-notre-esperance-past-rene-blaise-mbop-ackok-61a0bbf6ef7ab.mp3', 'CHRIST notre espérance', 'IE du 27 11 21 CHRIST notre espérance', 'images-61a0bbf6efc7b682153814.jpg', '2021-11-26 11:50:30', '2021-11-26 11:50:30'),
(102, 14, NULL, 62, 'BHB-008-la-creation-Dieu-crea-le-premier-homme-61a3d54994bfb.mp3', 'la creation  Dieu créa le premier homme', 'BHB 008 la creation  Dieu créa le premier homme', 'img-20211027-wa0001-61a3d5499573f664560877.jpg', '2021-11-28 20:15:21', '2021-11-28 20:15:21'),
(103, 14, NULL, 62, 'BHB-009-la-creation-Adam-explore-son-monde-61a3d5b4a7230.mp3', 'Adam explore son monde', 'BHB 009 la creation  Adam explore son monde', 'img-20211027-wa0001-61a3d5b4a7a4c520488286.jpg', '2021-11-28 20:17:08', '2021-11-28 20:17:08'),
(104, 4, NULL, 55, 'il-est-ecrit-sam-04-12-2021-Marcher-avec-Jesus-vocation-au-discipulat-Pr-Assembe-Presentation-achille-bada-ngangoumou-61aaf042a323d.mp3', 'il est écrit , marcher', 'IEE du 04 12 21 Marcher avec Jésus vocation au discipulat', 'pastor-assembe-valere-in-action-large-61aaf042a38f9729214514.jpg', '2021-12-04 05:36:18', '2021-12-04 05:36:18'),
(105, 5, NULL, 10, 'MMMS-ESTHER-5-du-06-12-2021-de-MONPROCHAIN-ETOUNDI-61b042aa2f59b.mp3', 'Esther 05', 'Esther 05', 'esther1-61b042aa2fe39717163455.jpg', '2021-12-08 06:29:14', '2021-12-08 06:29:14'),
(106, 14, NULL, 62, 'BHB-010-la-creation-Dieu-inventa-la-famille-61b06d057ae30.mp3', 'la creation  Dieu inventa la famille', 'BHB 010 la creation  Dieu inventa la famille', 'img-20211027-wa0001-61b06d057bb7d052096162.jpg', '2021-12-08 09:29:57', '2021-12-08 09:29:57'),
(107, 5, NULL, 10, 'MMMS-ESTHER-6-du-8-12-2021-de-MONPROCHAIN-ETOUNDI-61b06e89c11d1.mp3', 'ESTHER 06', 'ESTHER 06', 'esther1-61b06e89c1985600447132.jpg', '2021-12-08 09:36:25', '2021-12-08 09:36:25'),
(108, 5, NULL, 10, 'MMMS-ESTHER-7-du-9-12-2021-de-MONPROCHAIN-ETOUNDI-61b1bc74b591b.mp3', 'Esther 7', 'ESTHER 07', 'esther1-61b1bc74b618a191384817.jpg', '2021-12-09 09:21:08', '2021-12-09 09:21:08'),
(109, 5, NULL, 10, 'MMMS-ESTHER-8-du-10-12-2021-de-MONPROCHAIN-ETOUNDI-61b324f2984d4.mp3', 'esther 8', 'ESTHER 08', 'esther1-61b324f298c95046284781.jpg', '2021-12-10 10:59:14', '2021-12-10 10:59:14'),
(110, 4, NULL, 51, 'IE-du-Sam-11-12-2021-marchons-dans-la-lumiere-past-joseph-nkou-61b325a637cef.mp3', 'Marchons dans la lumière', 'Marchons dans la lumiere', '2a0d4abcba725c601271543b7400365e-61b325a638415849817100.jpg', '2021-12-10 11:02:14', '2021-12-10 11:02:14'),
(111, 19, NULL, 40, 'ENE-NTILAN-sam-18-12-2021-EDIBEGA-YA-NEM-de-Etoundi-Luc-61bc5c5033004.mp3', 'NEM', 'EDIBEGA YA NEM', 'images-61bc5c5033745141708155.png', '2021-12-17 10:45:52', '2021-12-17 10:45:52'),
(112, 4, NULL, 40, 'IEE-du-18-12-2021-Jesus-christ-le-dernier-Espoir-Pst-Aime-Cosendai-61bc5f762f1f6.mp3', 'Jésus-christ le dernier Espoir.', 'IEE du 18 12 2021 JESUS-CHRIST le dernier Espoir  Pst Aimé Cosendai', 'sheep-jesus-parson-parable-christ-61bc5f762f8d5319573091.jpeg', '2021-12-17 10:59:18', '2021-12-17 10:59:18'),
(113, 4, NULL, 40, 'il-est-ecrit-sam-01-01-2022-le-temps-qui-passe-R-B-Mbop-Akok-presentation-Jean-Claude-MBOLONG-61d0917ce6224.mp3', 'il est écrit 01 01 2022', 'IEE du 01 01 2022 Le temps qui passe', 'b37e17300e-50148320-temps-passe-pict-rider-fotolia-61d0917ce6bef812155835.jpg', '2022-01-01 18:38:04', '2022-01-01 18:38:04'),
(114, 5, NULL, 53, '3MS-JOB-14-61d3139ea5621.mp3', 'job 14', 'JOB 14', 'job-61d3139ea5d03449692630.jpg', '2022-01-03 16:17:50', '2022-01-03 16:17:50'),
(115, 20, NULL, 10, '01-LJP-Une-Annee-2022-reussie-61d31702e3bda.mp3', 'une année 2022 réussie', 'Une année 2022 réussie', '2022-61d31702e4412907119283.webp', '2022-01-03 16:32:18', '2022-01-03 16:32:18'),
(116, 5, NULL, 53, '02-3MS-JOB-15-du-4-1-2022-de-FSN-61d584cc2e7ea.mp3', 'job 15', 'JOB 15', 'job-61d584cc2ee8a316086882.jpg', '2022-01-05 12:45:16', '2022-01-05 12:45:16'),
(117, 5, NULL, 53, '03-3MS-JOB-16-du-5-1-2022-de-FSN-61d58dac0b27d.mp3', 'job 16', 'JOB 16', 'job-61d58dac0b910625977493.jpg', '2022-01-05 13:23:08', '2022-01-05 13:23:08'),
(119, 4, NULL, 40, '01-il-est-ecrit-sam-08-01-2022-Annee-de-grace-du-seigneur-past-V-G-Assembe-M-presentation-Jean-Claude-MBOLONG-61d930a37b6c9.mp3', 'il est écrit, Année', 'IEE du 08 01 2022. L\'année de grâce du Seigneur.', 'formatfactoryistockphoto-1340232108-170667a-61d930a37bd93444204557.jpg', '2022-01-08 07:35:15', '2022-01-08 07:35:15'),
(121, 16, NULL, 46, 'VID-20211126-WA0021-61d9d3e597c7e.mp3', 'faux prophètes', 'les faux prophètes', 'faux-berger-pasteur-docteur-61d9d3e5988b2874296846.jpg', '2022-01-08 19:11:49', '2022-01-08 19:11:49'),
(122, 16, NULL, 46, 'Noel-61d9d86d20190.mp3', 'noel', 'Noel', '1257-noel-dossier-61d9d86d20c31342353900.jpg', '2022-01-08 19:31:09', '2022-01-08 19:31:09'),
(123, 16, NULL, 46, 'Comment-avoir-une-famille-unie-et-forte-61d9da96a40ee.mp3', 'Comment avoir une famille unie et forte', 'Comment avoir une famille unie et forte', 'famille-61d9da96a4b29310544357.webp', '2022-01-08 19:40:22', '2022-01-08 19:40:22'),
(124, 5, NULL, 53, '04-3MS-JOB-17-du-6-1-2022-de-FSN-61dd80ec435bd.mp3', 'JOB 17', 'JOB 17', 'job-61dd80ec43c9e703956576.jpg', '2022-01-11 14:06:52', '2022-01-11 14:06:52'),
(125, 5, NULL, 53, '05-3MS-JOB-18-du-7-1-2022-de-FSN-61dd8196eac1c.mp3', 'job 18', 'JOB 18', 'job-61dd8196eb27d891192608.jpg', '2022-01-11 14:09:42', '2022-01-11 14:09:42'),
(126, 5, NULL, 52, '06-3MS-JOB-19-du-10-1-2022-de-JCM-61dd836e472eb.mp3', 'job 19', 'JOB 19', 'job-61dd836e479b8786295724.jpg', '2022-01-11 14:17:34', '2022-01-11 14:17:34'),
(127, 5, NULL, 52, '07-3MS-JOB-20-du-11-1-2022-de-JCM-61dd840fa6494.mp3', 'job 20', 'JOB 20', 'job-61dd840fa6b26893936996.jpg', '2022-01-11 14:20:15', '2022-01-11 14:20:15'),
(129, 4, NULL, 40, 'IE-du-sam-15-01-2022-le-reste-past-V-G-Assembe-M-61e28ae38a39b.mp3', 'Le reste', 'Le reste', 'le-reste3-61e28ae38aa20320153895.jpg', '2022-01-15 09:50:43', '2022-01-15 09:50:43'),
(130, 16, NULL, 46, 'Appel-a-porter-des-fruits-61e3d42309d9d.mp3', 'porter les fruits', 'Appel à Porter des fruits', 'appel-porter-les-fruits-61e3d4230a847420019847.jpeg', '2022-01-16 09:15:31', '2022-01-16 09:15:31'),
(131, 16, NULL, 46, 'Le-Dieu-des-montagnes-et-des-vallees-61e3d6745caf9.mp3', 'Le Dieu des montagnes et des vallées', 'Le Dieu des montagnes et des vallées', 'montagnes-61e3d6745d647959508034.jpg', '2022-01-16 09:25:24', '2022-01-16 09:25:24'),
(132, 19, NULL, 40, 'ENE-NTILAN-sam-22-01-2022-Miss-me-zamba-Daniel-Engamba-61ea6ae7333df.mp3', 'miss me Zamba', 'Miss me zamba', 'les-yeux-de-l-eternel-61ea6ae733cdc167316988.jpg', '2022-01-21 09:12:23', '2022-01-21 09:12:23'),
(133, 16, NULL, 46, '02RIE-JE-TE-PARDONNE-61ea6d0fa6ce8.mp3', '02 Je te pardonne', 'Je te pardone', 'je-te-pardonne-61ea6d0fa7550668617143.jpg', '2022-01-21 09:21:35', '2022-01-21 09:21:35'),
(137, 21, NULL, 40, 'LPQ-NJ-001-sam-1er-01-22-61f138b34f7ff.mp3', '001', '001', 'pain-quotidien-61f138b34ff5e503428325.png', '2022-01-26 13:04:03', '2022-01-26 13:04:03'),
(138, 21, NULL, 40, 'LPQ-NJ-002-dim-02-01-22-61f1391495b6e.mp3', '002', '002', 'pain-quotidien-61f139149633a684632367.png', '2022-01-26 13:05:40', '2022-01-26 13:05:40'),
(139, 22, NULL, 40, 'Mix-fin-AEB-le-Saint-Esprit-dim-10-04-16-61f140f411a54.mp3', 'Saint-Espri', 'Saint-Esprit (1)', 'sain-esprit-61f140f4120f7521613345.jpg', '2022-01-26 13:39:16', '2022-01-26 13:39:16'),
(140, 22, NULL, 40, 'Mix-fin-AEB-le-Saint-Esprit-2e-partie-dim-12-06-16-61f1421248462.mp3', 'Saint-Esprit 2', 'Saint-Esprit (2)', 'sain-esprit-61f1421248bd9901347523.jpg', '2022-01-26 13:44:02', '2022-01-26 13:44:02'),
(141, 23, NULL, 40, 'liberte-mode-d-emploi-001-61f14aa4a570a.mp3', 'LME 001', 'LME 001', 'liberte-et-mode-d-emploi-61f14aa4a5ea6460242701.jpg', '2022-01-26 14:20:36', '2022-01-26 14:20:36'),
(142, 23, NULL, 10, 'liberte-mode-d-emploi-002-61f14be6e10ca.mp3', 'LME 002', 'LME 02', 'liberte-et-mode-d-emploi-61f14be6e1845924519328.jpg', '2022-01-26 14:25:58', '2022-01-26 14:25:58'),
(143, 19, NULL, 40, 'ENE-NTILAN-sam-29-01-2022-Nsem-ave-nfufub-nsissime-Etoundi-Lucas-61f3c7314b47d.mp3', 'Nsem ave  nfufub nsissime', 'Nsem ave  nfufub nsissime', 'sain-esprit-61f3c7314be02539123164.jpg', '2022-01-28 11:36:33', '2022-01-28 11:36:33'),
(144, 16, NULL, 46, 'POUR-NE-PAS-ALLER-EN-ENFER-61f3ca86ebcfa.mp3', 'pour ne pas aller en enfer', 'Pour ne pas aller en Enfer', 'enfer-61f3ca86ec67d737261766.png', '2022-01-28 11:50:46', '2022-01-28 11:50:46'),
(145, 4, NULL, 10, '005-IEE-du-30-janvier-2021-le-courage-de-croire-pst-aime-cosendai-61f3cb87394b4.mp3', 'le courage de croire', '005 IEE le courage de croire Pst. aime cosendai', 'courage-de-croire-61f3cb8739bc3282741572.jpg', '2022-01-28 11:55:03', '2022-01-28 11:55:03'),
(146, 21, NULL, 40, 'LPQ-NJ-003-61f91a9e08a81.mp3', 'LPQ NJ 003', 'LPQ NJ 003', 'pain-quotidien-61f91a9e09188639325695.png', '2022-02-01 12:33:50', '2022-02-01 12:33:50'),
(147, 21, NULL, 40, 'LPQ-NJ-004-61f91c5bf396b.mp3', 'LPQ NJ 004', 'LPQ NJ 004', 'pain-quotidien-61f91c5bf41f5042447985.png', '2022-02-01 12:41:15', '2022-02-01 12:41:16'),
(148, 21, NULL, 40, 'LPQ-NJ-005-61f91cfe48c74.mp3', 'LPQ NJ 005', 'LPQ NJ 005', 'pain-quotidien-61f91cfe493f1613180248.png', '2022-02-01 12:43:58', '2022-02-01 12:43:58'),
(150, 10, NULL, 10, 'FRECO-XXX-20060101-61fba54470295.mp3', '0001 - LVDE', '0001 - LVDE', 'la-voix-de-l-esperance-bon1-61fba54471bd5050205795.jpg', '2022-02-03 10:49:56', '2022-02-03 10:49:56'),
(151, 10, NULL, 40, 'FRECO-XXX-20060101b-61fba60642633.mp3', '0002 - LVDE', '0002 - LVDE', 'la-voix-de-l-esperance-bon1-61fba606440fd398262863.jpg', '2022-02-03 10:53:10', '2022-02-03 10:53:10'),
(152, 22, NULL, 40, 'AEB-Le-Sanctuaire-Pst-Frederick-Saminadrin-01-61fba8de8fc5d.mp3', 'Le Sanctuaire', 'AEB - Le Sanctuaire Pst Frederick Saminadrin 01', 'a-l-ecoute-de-la-bible-61fba8de9181f571734404.jpg', '2022-02-03 11:05:18', '2022-02-03 11:05:18'),
(153, 22, NULL, 40, 'AEB-Le-Sanctuaire-Pst-Frederick-Saminadrin-02-61fbaa42a94e8.mp3', 'Le Sanctuaire 02', 'AEB - Le Sanctuaire Pst Frederick Saminadrin 02', 'a-l-ecoute-de-la-bible-61fbaa42aaed8632759156.jpg', '2022-02-03 11:11:14', '2022-02-03 11:11:14'),
(154, 21, NULL, 40, '003-LPQ-NJ-61fbab4d19831.mp3', '003 - LPQ NJ', '003 - LPQ NJ', 'pain-quotidien-61fbab4d1a1ac942468197.png', '2022-02-03 11:15:41', '2022-02-03 11:15:41'),
(157, 4, NULL, 40, '07-IEE-du-12-02-2022-Les-deux-cles-du-bonheur-Pst-Jean-E-Nlo-Nlo-6204fd69ca90d.mp3', 'Les deux clés du bonheur', 'Les deux clés du bonheur Pst  Jean E. Nlo Nlo', 'les-deux-cle1-6204fd69cb3d4079482921.jpg', '2022-02-10 12:56:25', '2022-02-10 12:56:25'),
(158, 4, NULL, 42, 'IL-EST-ECRIT-DU-12-FEV-2022-UN-CHEVAL-BLANC-KARL-JOHNSON-6207bdd51cf7b.mp3', 'Cheval blanc', 'Le cheval blanc conquerant, past Karl Jonhson, CRTV Bafoussam', 'cheval-blanc-61fc0848d355d918788136.jpg', '2022-02-12 15:01:57', '2022-02-12 15:01:57'),
(159, 16, NULL, 46, 'Unite-dans-la-tempete-620a2dd0ed093.mp3', 'Unité dans la tempete', 'UNITE DEANS LA TEMPETE', 'unite-620a2dd0eebbe688708341.jpg', '2022-02-14 11:24:16', '2022-02-14 11:24:16'),
(160, 19, NULL, 40, '08-ENE-NTILAN-sam-19-02-2022-Duma-a-esae-tia-Mbono-Simon-620f3bf67eea3.mp3', 'Duma a esae tia', 'Duma a esae tia', 'gloire-620f3bf67f904059592074.jpg', '2022-02-18 07:25:58', '2022-02-18 07:25:58'),
(161, 16, NULL, 46, 'Oser-lui-declarer-son-amour-620f442b3c6fb.mp3', 'OSER LUI DECLRARER SON AMOUR', 'OSER LUI DECLRARER SON AMOUR', 'amour1-620f442b3d192505880283.jpg', '2022-02-18 08:00:59', '2022-02-18 08:00:59'),
(163, 4, NULL, 40, '08-IEE-du-19-02-2022-Connu-que-de-Dieu-Pst-karl-johson-620f45d784891.mp3', 'Connu que de Dieu Pst  karl johson', 'Connu que de Dieu Pst  karl johson', 'connu-de-dieu-620f45d784f8b227391881.jpg', '2022-02-18 08:08:07', '2022-02-18 08:08:07'),
(165, 16, NULL, 46, 'Parabole-de-la-tragedie-Pompei-621340923e8be.mp3', 'Parabole de la tragédie Pompéi', 'Parabole de la tragédie Pompéi', 'volcan-621340923f382915767781.jpg', '2022-02-21 08:34:42', '2022-02-21 08:34:42'),
(167, 16, NULL, 46, 'LA-SUEUR-ET-LE-SANG-PARLENT-62176315d2adb.mp3', 'Sueur et sang parlent', 'Sueur et sang parlent', 'sueur-et-sang-parlent-62176315d346c271097655.jpg', '2022-02-24 11:51:01', '2022-02-24 11:51:01'),
(168, 4, NULL, 51, '09-IEE-du-26-02-2022-la-colere-de-mon-pere-past-joseph-gaston-nkou-6217a09a7538b.mp3', 'La colère de mon père', 'La colère de mon père', 'la-colere-6217a09a75b51534078822.jpg', '2022-02-24 16:13:30', '2022-02-24 16:13:30'),
(169, 4, NULL, 42, 'IL-EST-ECRIT-DU-26-FEV-2022-PRIEZ-SANS-CESSE-JOHN-GRAZ-621cc7b04c1aa.mp3', 'Marcher Prier', 'Marcher, Prier sans cesse, CRTV-Ouest (93.5FM) 26/02/22', 'b094d01edfd21a6927d0182e71fa3e54-621cc7b04cad1958316975.jpg', '2022-02-28 14:01:36', '2022-02-28 14:01:36');

-- --------------------------------------------------------

--
-- Structure de la table `pod_cast`
--

CREATE TABLE `pod_cast` (
  `id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `time_space_id` int(11) DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pod_cast`
--

INSERT INTO `pod_cast` (`id`, `program_id`, `time_space_id`, `file_name`, `description`, `image_name`, `created_at`, `updated_at`) VALUES
(1, 4, NULL, 'IL-EST-ECRIT-DU-05-MAR-2022-LA-FEMME-DIAMANT-BAKARI-6222ba9caeedb.mp3', 'la femme diamant..A l\'occasion de la journée internationale de la femme, attardons-nous sur la description que la Bible fait de la femme vertueuse, celle-là seule qui véritablement constitue une plus-value pour notre société. La suite dans cette édition.', 'qui-peut-trouver-une-femme-vertueuse-elle-a-bien-plus-de-valeur-que-les-perles-proverbes-3110-6222ba9caf5c1481040851.png', '2022-03-05 02:19:24', '2022-03-05 02:19:24');

-- --------------------------------------------------------

--
-- Structure de la table `programs`
--

CREATE TABLE `programs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `interactive` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `programs`
--

INSERT INTO `programs` (`id`, `name`, `description`, `interactive`, `created_at`, `updated_at`, `image_name`) VALUES
(1, 'Autour du livre', 'Un programme de la radio Il Est Ecrit', 0, '2021-08-30 14:25:01', '2021-08-30 14:25:32', 'dailybread-612cce3c878db260061028.jpg'),
(2, 'J̀ai rencontré la foi', 'Emission des témoignages de l action divine au cœur des tempêtes et orages. Histoire des personne comme nous qui ont su s accrocher a Dieu', 0, '2021-08-30 14:34:13', '2021-08-30 14:34:13', 'jairencontrelafoi-612cd045089f6497209269.jpg'),
(3, 'Nature et santé', 'Fraîcheur de la sante par les vertus de la nature', 0, '2021-08-30 14:36:24', '2021-08-30 14:36:24', 'destinationsante-612cd0c8e26dd082928917.jpg'),
(4, 'IL EST ECRIT', 'Une analyse des faits, des tendances , des événements de notre époque , a la lumière des Saintes écriture', 1, '2021-08-30 14:39:28', '2021-08-30 14:44:14', 'ilestecrit-612cd29ec0e8c040120053.png'),
(5, 'Matin Musique Matin Soleil', 'Rendez-vous matinal quotidien avec notre Dieu', 1, '2021-08-30 14:57:07', '2021-09-03 03:13:11', 'mmms-612cd5a3f08a7680593271.jfif'),
(6, 'Reflets d\'actualités', 'un mot sur l\'actualité', 1, '2021-08-30 15:09:55', '2021-08-30 15:09:55', 'ohio-sky-612cd8a3ce278927195282.jpg'),
(7, 'Sentinelle', 'Rendez-vous vespérale de veille, d\'intercession et de garde pour la nation, une approche avec assurance du trône de la grâce . Espace de partages d’échanges de fardeaux en toute liberté entre frères et sœurs dans la communion de foi.', 1, '2021-08-30 15:20:13', '2021-08-30 15:20:13', 'sentinelle-612cdb0d9ada1175829500.jfif'),
(8, 'Vie et sante', 'Une contribution de la radio Il Est Ecrit pour le bien-être des populations et de la famille', 0, '2021-08-30 15:25:51', '2021-08-30 15:25:51', 'vie-et-sant-612cdc5f9e0ee113221731.jfif'),
(9, 'Vision prophetique', 'Une compréhension plus claire de l\'avenir a travers les prophéties bibliques', 0, '2021-08-30 15:28:35', '2021-08-30 15:28:35', 'visionproph-tique-612cdd0399ab0407235055.jfif'),
(10, 'la voix de l’espérance', 'Une émission qui nous parle de Dieu , de nous , de notre famille et de notre sante', 0, '2021-08-30 15:30:34', '2021-08-30 15:30:34', 'lavoixdelesperance-612cdd7ac5f07050531399.jfif'),
(11, 'Dix Jours de Prière', 'Programme Mondiale de Prière', 1, '2021-09-25 19:40:19', '2021-09-25 19:40:19', 'dix-jours-de-priere-614f5f038f8ea997046791.jpg'),
(12, 'DELICE VESPERAL', 'Emission interactive ou vous recevez plein de conseils, pleins de cadeaux à gagnés et des petites annonces. DELICE VESPERAL c’est aussi de la bonne musique pour une détente maximale.', 1, '2021-10-03 20:30:28', '2021-10-03 20:30:28', '130131405-3563341443733304-1047774849133386040-n-6159f6c49dc43804549069.jpg'),
(13, 'LES ACTUALITES RELIGIEUSES', 'Ce sont les nouvelles de toutes les églises, de toutes les religions', 0, '2021-10-03 21:56:12', '2021-10-15 14:38:55', 'les-actualites-religieuses-6169765fbd3e3264517416.jpg'),
(14, 'Les Belles Histoires de la Bible', 'De belles histoires pour nos enfants', 0, '2021-10-15 14:42:24', '2021-11-07 13:41:38', 'img-20211027-wa0001-6187c98229064874461991.jpg'),
(15, 'BARTIMEE', 'Une Emission pour les Aveugles', 0, '2021-10-23 18:45:44', '2021-10-23 18:45:44', 'img-20191209-wa0051-61743c38a1c89371337507.jpg'),
(16, 'MEDITATIONS QUOTIDIENNES', 'Relever les défis du quotidien.', 1, '2021-11-20 19:43:22', '2021-11-20 19:43:22', 'bible-619941cac6deb708013570.jpg'),
(17, 'Songs for Meditation', 'Les plus belles mélodies des Artistes de Notre Fréquence.', 1, '2021-11-20 20:47:46', '2021-11-20 20:47:46', 'melodies-divines-619950e255fce148861711.jpg'),
(18, 'Rencontre avec CHRIST', 'Histoire des gens ordinaires au destin extraordinaire.', 1, '2021-11-21 23:15:57', '2021-11-21 23:15:57', 'rencontre-avec-jesus-e1607803494135-619ac51dac10b028468138.jpg'),
(19, 'ENE NTILAN', 'Votre émission Il est Ecrit en langue Bulu', 1, '2021-12-17 10:36:35', '2021-12-17 10:36:35', 'capture1-61bc5a23a29b7794729599.jpg'),
(20, 'Les Jeunes Parlent...', 'une emmission des Jeunes, pour les Jeunes et avec les Jeunes', 1, '2022-01-03 16:02:04', '2022-01-03 16:02:04', 'logo-ljp-pour-site-61d30fecb36e4488290119.jpg'),
(21, 'Pain Quotidien', 'Des conseils pratiques sur l\'alimentation', 1, '2022-01-26 09:38:34', '2022-01-26 09:38:34', 'pain-quotidien-61f1088ae70d8322987407.png'),
(22, 'A l\'écoute de la Bible', 'Des conseils Bibliques pour votre chéminement chrétien.', 1, '2022-01-26 09:41:32', '2022-01-26 09:41:32', 'a-l-ecoute-de-la-bible-61f1093c96c57592817383.jpg'),
(23, 'Liberté, Mode d\'emploi', 'Comment vivre sa liberté', 1, '2022-01-26 14:11:07', '2022-01-26 14:11:07', 'liberte-et-mode-d-emploi-61f1486b41786546044675.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `resset_password_request`
--

CREATE TABLE `resset_password_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `selector` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashed_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requested_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resset_password_request`
--

INSERT INTO `resset_password_request` (`id`, `user_id`, `selector`, `hashed_token`, `requested_at`, `expires_at`) VALUES
(1, 37, 'XuOcqyDyklNOSLsGgj1H', 'NU6Ok5ooG8vEI/Tti9oGOwHUO+aDS2Q6eRIi9JuY5BE=', '2021-08-29 00:40:01', '2021-08-29 01:40:01'),
(2, 37, '4cUHUgrQsVZcjcJFCCNq', '+wUHiBm7vrwQa2e8NL8FD85X1sYIgN4zuRYOrpbUqhI=', '2021-08-29 01:52:21', '2021-08-29 02:52:21'),
(3, 37, 'NEDklH4OfGLBJpe4Lccz', 'SNSfWsZ48tWYItPeU7S0N5OlpIzMUaNq716xnr+Dmhc=', '2021-08-30 05:22:14', '2021-08-30 06:22:14');

-- --------------------------------------------------------

--
-- Structure de la table `temoignage`
--

CREATE TABLE `temoignage` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `visibility` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `timespaces`
--

CREATE TABLE `timespaces` (
  `id` int(11) NOT NULL,
  `program_id` int(11) DEFAULT NULL,
  `day_of_the_week` smallint(6) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_access_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_access_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `googleplus_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `googleplus_access_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_access_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stackexchange_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stackexchange_access_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `roles`, `password`, `github_id`, `github_access_token`, `facebook_access_token`, `googleplus_id`, `googleplus_access_token`, `linkedin_id`, `linkedin_access_token`, `stackexchange_id`, `stackexchange_access_token`, `first_name`, `last_name`, `is_verified`, `created_at`, `updated_at`, `image_name`, `facebook_id`) VALUES
(10, 'danielmonprochainetoundi@gmail.com', '[\"ROLE_USER\",\"ROLE_ADMIN\"]\r\n', '$argon2id$v=19$m=65536,t=4,p=1$6w/9ZmV3hw4R0E2VHfK5WQ$wq1ijVBOPK1Mcuc9vAI2BAW8WkT3kZbqAzd8Q8W18w0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Daniel', 'Monprochain', 1, '2021-08-17 16:41:57', '2021-08-17 16:41:57', NULL, NULL),
(37, 'fopoar@gmail.com', '[\"ROLE_USER\",\"ROLE_ADMIN\"]', '$2y$13$uskFdFccTOEGLayRghVPleyS0/Cz1iRmhFlqxAL/xQhuQ7447Gnaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arsene', 'Fokam P.', 1, '2021-08-20 19:28:23', '2021-09-20 10:13:04', NULL, NULL),
(39, 'dime.jean@outlook.fr', '[\"ROLE_USER\",\"ROLE_ADMIN\" ]\r\n', '$argon2id$v=19$m=65536,t=4,p=1$ghU+Qasn2iUI9C1i2CWFHw$FXcek7J+EbTAM8l1uOTHD4KAhuwYsOVZG3hcXpiF5wk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jean Bernard', 'Dimé', 1, '2021-08-27 07:45:06', '2021-08-27 07:45:06', NULL, NULL),
(40, 'MavisBaldosrg@seznam.cz', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$g+sOHp/z2pCKU81/7HLSIg$eYHmG3NGwtMB9jMgiZOtN8diqDHNV8ro93VngHKsKZU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inconu', 'Inconu', 1, '2021-08-28 11:30:00', '2021-08-28 11:30:00', NULL, NULL),
(42, 'danielfopah@gmail.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$y+3TOSu11hxpwCjRfiOTMA$vJV0KF5KjgATH1Q5uuonRf5DLB75x/IGCFctYJgMa9M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Clovis', 'FOPAH', 1, '2021-08-30 07:41:45', '2021-08-30 07:42:52', NULL, NULL),
(43, 'benoitndi@yahoo.fr', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$V6zyCBbuhQp8Dp8PiNADtA$YcpqoTL71Gb7zqdB2f+S9CaJkPUfDIcHr1qqgMk66Jc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BENOIT', 'NDI', 1, '2021-08-31 14:56:44', '2021-08-31 14:56:44', NULL, NULL),
(44, 'sarvaedouard1@gmail.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$Rmh0KdmFXgeV87yu15ByGQ$EDSXh2bk9dJ/rUO5/tTo55RGW5ETuCzCEjsCcN19pW0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Edouard', 'Azoumahaï', 1, '2021-09-05 00:30:26', '2021-09-05 00:31:12', NULL, NULL),
(45, 'ppanani3@gmail.com', '[\"ROLE_USER\",\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$Y3FWEaSM+fIuojsCTmOrhQ$zmcYSe9XcsSv0BXGIR1jwYmfAgpLaXkHj8+FoSCezEU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Patrick', 'Etoughé Anani', 1, '2021-09-05 03:36:11', '2021-09-05 03:37:13', NULL, NULL),
(46, 'bakari@rie.fm', '[\"ROLE_USER\",\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$X6UuZC4yHe3WHjHjmVTSZA$FWWulNINR47Pt5XfYXH7Bf+iuqJGbz0AF13HH1SIGRM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Abraham', 'Bakari', 1, '2021-09-05 03:37:58', '2021-09-05 03:37:58', NULL, NULL),
(47, 'herzli200@yahoo.fr', '[\"ROLE_USER\",\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$Bb+BlMgQhGNaJ84FDpWsMQ$MDynbZM61qpstxjvLfwFiXjqAW4H1DZ73mDKFtR/Ggc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jean Colbert', 'Kindengue', 1, '2021-09-05 06:32:34', '2021-09-05 06:32:34', NULL, NULL),
(48, 'yangmanavom@yahoo.fr', '[\"ROLE_USER\",\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$Vo9VMV/fKX39wKiQ2hqg8w$mrKWtNhEYbPPigYQrPxADSpzzckzt3eKtn59p9jtUhM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Armand Arnaud', 'Yangman Avom', 1, '2021-09-08 13:17:58', '2021-09-08 13:22:15', NULL, NULL),
(50, 'pfopah@gmail.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$XwkO364Uq9UuvX7CYJlNtg$kWD7gXbL6oPwLBPzlU9aTIFxppCywWF3DsOf2KxVSJQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Patricia', 'Djeffo Fopah', 1, '2021-09-27 14:27:26', '2021-09-27 14:27:26', NULL, NULL),
(51, 'joseph_nkou@yahoo.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$myKdJx2zKcste+RQjKG3Fg$Qdl2WLz6YvA2JLmowG0BDrbVY9n6+lot6Ws23U8VMGU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Joseph', 'Nkou', 1, '2021-09-28 12:20:29', '2021-09-28 12:20:29', NULL, NULL),
(52, 'jcmbolong@yahoo.fr', '[\"ROLE_USER\", \"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$dB1RCponoL7vTIvaEAUHPA$TzKUyeonkDMidLmhYzRvyHLzE6WeLaSJGhd4iUl7ocg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jean Claude', 'Mbolong', 1, '2021-09-28 13:37:23', '2021-09-28 13:37:23', NULL, NULL),
(53, 'nomflorence2000@yahoo.fr', '[\"ROLE_USER\",\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$wRHZhvUlKKvxk63lGxwCag$7pA8Vj32Xhy6UDdknwBUIgWZIQTtAU+DE230dqJHf04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Florence Antoinette Suzy', 'Nom', 1, '2021-09-28 14:52:08', '2021-09-28 15:21:54', NULL, NULL),
(54, 'beyebiguij@gmail.com', '[\"ROLE_USER\",\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$OLjTPNulUE2W2FMlJVtE9g$95ChSVBvBGffWwKQ73JJ1jikOn2lzklnMeoYam93kPw', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jean François', 'Béyébigui', 1, '2021-09-28 15:23:26', '2021-09-28 15:23:26', NULL, NULL),
(55, 'bada1979ach@gmail.com', '[\"ROLE_USER\",\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$vFoqaYCGOPyoYJsZPJDInw$HsPhMwySgA8Neof2MrLcjaGwx4eYIYwBqtlUZdI0vTI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Achille', 'BADA NGANGOUMOU', 1, '2021-10-03 23:00:00', '2021-10-03 23:08:07', NULL, NULL),
(58, 'jtchoualeu@yahoo.fr', '[\"ROLE_USER\", \"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$3Z3prOdWSXeFYJZCyuvCZA$fEQwFDMbwoqe722h0BAKtxo0xWBTobrN0v2z+qngP5Q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jean Marie', 'Tchoualeu Nemangou', 1, '2021-10-07 21:04:14', '2021-10-07 21:04:14', NULL, NULL),
(59, 'joseelysee@gmail.com', '[\"ROLE_USER\",\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$85jnbkVCXrGNxkEjZNIg2g$U3pPyr4MzYohhowOgjWlZqqKsxsFnX0tbp5rK4Ynyco', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jean josé', 'Elysée', 1, '2021-10-24 14:17:48', '2021-10-24 14:17:48', NULL, NULL),
(61, 'omme30772@gmail.com', '[\"ROLE_USER\",\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$Mv3btmNllCuVnMYnypwjzQ$rTAhXu2lVogw3bXw69t1pGN3FnLmkPB13wIqXXqmvl8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GUY OLIVIER', 'MBE MESSINA', 1, '2021-10-29 23:12:23', '2021-10-30 00:26:19', NULL, NULL),
(62, 'ikitanael@yahoo.fr', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$Ba/T+RDtSmzGuSKs3MxJag$OgDy9HADtWAVIHv2o2lHtyYqNh4Oo1TIf4oo7in5J5g', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'stephanie', 'IKITO', 1, '2021-10-31 12:01:57', '2021-10-31 12:01:57', NULL, NULL),
(63, 'nang_el@yahoo.fr', '[\"ROLE_USER\",\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$0ooPaW+NfbfWXe47l1yzyg$n3q7zHslIn6WnqnDqtupMrgJQ6Uy0TGzh9fVobLTFpk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Elisée', 'NANG', 1, '2021-11-11 06:49:57', '2021-11-11 06:49:57', NULL, NULL),
(64, 'ndjiddayerima38@gmail.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$BI94bZ2hUfOeznwDLt64ZQ$JJWo0qvEfhcsLn/MJLbetd0JACg0es9OQs5w8FD3l+0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SILAS', 'NDJIDDA', 1, '2022-01-21 19:51:18', '2022-01-21 19:51:18', NULL, NULL),
(65, 'azuwin.s.azuwin.shah@naturalgamma.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$n0n9KJwWWiPDU/b16I0EIA$1OuHSbEqtRWY11R/vR9IrR1orHEAot2wvIg1C4LNszE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bob', 'Okelola', 1, '2022-03-01 01:21:02', '2022-03-01 01:22:01', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user_category`
--

CREATE TABLE `user_category` (
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `verse`
--

CREATE TABLE `verse` (
  `id` int(11) NOT NULL,
  `reference` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `verse`
--

INSERT INTO `verse` (`id`, `reference`, `content`) VALUES
(1, 'Matthieu', 'Jésus répondit: Il est écrit: L\'homme ne vivra pas de pain seulement, mais de toute parole qui sort de la bouche de Dieu.'),
(2, 'Matthieu 24:35', 'Le ciel et la terre passeront, mais mes paroles ne passeront point.');

-- --------------------------------------------------------

--
-- Structure de la table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `title` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `video`
--

INSERT INTO `video` (`id`, `author_id`, `url`, `created_at`, `updated_at`, `title`) VALUES
(1, 46, 'https://www.youtube.com/embed/zgAfqVevNJU', '2021-09-04 23:06:26', '2021-09-04 23:06:26', 'Fausses accusations… Que faire ?'),
(2, 46, 'https://www.youtube.com/embed/VhPVvQg3FYg', '2021-09-04 23:08:31', '2021-09-04 23:08:31', 'Le péché mal connu de l’indifférence'),
(3, 45, 'https://www.youtube.com/embed/EBKII5ALqgk', '2021-09-04 23:10:19', '2021-09-04 23:10:19', 'Responsabilité politique et la foi chrétienne: Quelle attitude adopter ?'),
(4, 45, 'https://www.youtube.com/embed/H7WSl8szQVE', '2021-09-04 23:12:18', '2021-09-04 23:12:18', 'Dieu, la Polygamie & le concubinage Partie 1'),
(5, 45, 'https://www.youtube.com/embed/0Cbcwp4a56M', '2021-09-04 23:14:05', '2021-09-04 23:14:05', 'Dieu, la Polygamie & le Concubinage 2e partie'),
(6, 46, 'https://www.youtube.com/embed/HiUL7g39onw', '2021-09-05 04:30:19', '2021-09-05 04:30:19', 'VAINCRE LA MASTURBATION'),
(8, 45, 'https://www.youtube.com/embed/GMaozzvFPGE', '2021-09-08 13:11:00', '2021-09-08 13:11:00', 'La dîme en question : Questions et réponses avec le pasteur Anani Patrick Etoughé, PhD'),
(9, 46, 'https://www.youtube.com/embed/YvdAOlX_D0Y', '2021-09-10 19:19:05', '2021-09-10 19:19:05', 'Quand Dieu n’est pas pressé…'),
(10, 46, 'https://www.youtube.com/embed/UKQkTqGecBk', '2021-09-17 18:44:53', '2021-09-17 18:44:53', 'Choisir de croire et de vivre'),
(11, 46, 'https://www.youtube.com/embed/0w8g4qn-hpg', '2021-09-20 10:38:27', '2021-09-20 10:38:27', 'L’art de se maîtriser et de ne pas commettre des bévues et des bavures'),
(12, 47, 'https://www.youtube.com/embed/KSSjerQf2wg', '2021-09-20 10:40:34', '2021-09-20 10:40:34', 'GARDE ESPOIR'),
(13, 47, 'https://www.youtube.com/embed/5mlvQvTmmAY', '2021-09-21 04:03:34', '2021-09-21 04:03:34', 'UN PAS A LA FOIS'),
(14, 46, 'https://www.youtube.com/embed/MO_7L_U3g3k', '2021-09-25 09:48:06', '2021-09-25 09:48:06', 'Comment transporter ces montagnes?'),
(15, 47, 'https://www.youtube.com/embed/VM6PjbUvZDY', '2021-09-27 00:41:20', '2021-09-27 00:41:20', 'LA NEGLIGENCE FATALE'),
(16, 47, 'https://www.youtube.com/embed/BulLwlFsnWE', '2021-09-28 00:48:47', '2021-09-28 00:48:47', 'POINT DE DEFAUTS EN TOI'),
(17, 47, 'https://www.youtube.com/embed/zu0OtjtsQZc', '2021-10-01 07:05:09', '2021-10-01 07:05:09', 'LA MORT EST UN GAIN'),
(18, 45, 'https://www.youtube.com/embed/DBZy-sXu0Gc', '2021-10-03 14:40:26', '2021-10-03 14:40:26', 'Les épidémies qui font l’histoire'),
(19, 47, 'https://www.youtube.com/embed/ASVgp2cLk_Y', '2021-10-04 21:53:34', '2021-10-04 21:53:34', 'TU SERA ELEVE'),
(20, 47, 'https://www.youtube.com/embed/Mjv9QUGKz08', '2021-10-05 10:19:14', '2021-10-05 10:19:14', 'TU SERAS VISITE'),
(21, 47, 'https://www.youtube.com/embed/HhzouIQP3U8', '2021-10-11 09:17:34', '2021-10-11 09:17:34', 'TOUJOURS A MES COTES'),
(22, 47, 'https://www.youtube.com/embed/9MBOJAoiZXE', '2021-10-14 10:07:16', '2021-10-14 10:07:16', 'LA PUISSANCE DE LA GRATUITE'),
(23, 37, 'https://www.youtube.com/embed/OsF_IG09gpM', '2021-10-19 01:21:40', '2021-10-19 01:21:40', 'Série de conférences « Certitudes pour notre temps » | Pasteur José Élysée | 16 octobre 2021| Journee 1'),
(24, 46, 'https://www.youtube.com/embed/2jnVGtimNbA', '2021-10-19 01:25:15', '2021-10-19 01:25:15', 'Savoir écouter Dieu et entendre Sa voix'),
(25, 37, 'https://www.youtube.com/embed/5I2DjyYYu3c', '2021-10-19 01:28:11', '2021-10-19 01:28:11', '2ème certitude: « Pourquoi tant de catastrophes? Dieu nous a révélé où va le monde » | Pasteur Josee Elysee'),
(26, 47, 'https://www.youtube.com/embed/2DfNZACh_WU', '2021-10-19 11:58:05', '2021-10-19 11:58:05', 'M\'AIMES TU ?'),
(27, 37, 'https://www.youtube.com/embed/9bu94oIjkCA', '2021-10-20 13:24:31', '2021-10-20 13:24:31', '3ème certitude : « Qui tient le gouvernail du monde? Le seul et unique capitaine fiable » | Pasteur Josee Elysee'),
(28, 46, 'https://www.youtube.com/embed/sLHp3ruQ2i4', '2021-10-23 02:44:02', '2021-10-23 02:44:02', 'Que faire pour retrouver le sommeil sans somnifères ?'),
(29, 47, 'https://www.youtube.com/embed/C0VI6jmifrA', '2021-10-25 11:24:05', '2021-10-25 11:24:05', 'QUI EST TON CONSULTANT ?'),
(30, 47, 'https://www.youtube.com/embed/s-XYpqE_MN4', '2021-10-26 07:07:07', '2021-10-26 07:07:07', 'NE TE TROMPES PLUS'),
(31, 40, 'https://www.youtube.com/embed/fLxsuOpS-P8', '2021-10-26 10:06:42', '2021-10-26 10:06:42', '6ème certitude : « Où se trouvent nos morts? Un lieu parfaitement sûr où Jésus les a cachés »'),
(32, 47, 'https://www.youtube.com/embed/FWEs9gqxW7Q', '2021-10-28 06:32:45', '2021-10-28 06:32:45', 'CE QUI CAUSE TA RUINE'),
(33, 40, 'https://www.youtube.com/embed/NiwOJCPw7IQ', '2021-10-29 15:33:33', '2021-10-29 15:33:33', 'L\'âme est elle immortelle ? - Il Est Écrit'),
(34, 47, 'https://www.youtube.com/embed/i8r07nU3t-A', '2021-11-01 17:41:06', '2021-11-01 17:41:06', 'REVIENS A TON CREATEUR'),
(35, 47, 'https://www.youtube.com/embed/AaYXJPl1ihs', '2021-11-02 11:37:44', '2021-11-02 11:37:44', 'HAVE MERCY ON ME'),
(36, 47, 'https://www.youtube.com/embed/xpstcky6SzE', '2021-11-03 05:52:52', '2021-11-03 05:52:52', 'NE BAISSE PAS LES BRAS'),
(37, 47, 'https://www.youtube.com/embed/fAKLS2WW-Hk', '2021-11-04 08:24:08', '2021-11-04 08:24:08', 'JESUS S\'ARRETA'),
(38, 59, 'https://www.youtube.com/embed/FC4qXlRo_Go', '2021-11-05 07:41:20', '2021-11-05 07:41:20', 'Êtes-vous comme Thomas ? - Il Est Écrit'),
(39, 47, 'https://www.youtube.com/embed/M-csKazx8Fk', '2021-11-08 05:55:49', '2021-11-08 05:55:49', 'LE MENSONGE DE ABRAHAM'),
(40, 47, 'https://www.youtube.com/embed/oKvEcHGaVXM', '2021-11-09 09:49:57', '2021-11-09 09:49:57', 'MOISE OU LA PEUR DE L\'ECHEC'),
(41, 47, 'https://www.youtube.com/embed/Er7WTlzoklk', '2021-11-10 09:09:15', '2021-11-10 09:09:15', 'LA FUITE DU PROPHETE'),
(42, 47, 'https://www.youtube.com/embed/fdrmBn1s20o', '2021-11-11 06:46:34', '2021-11-11 06:46:34', 'VAS TU TRAHIR LE MAITRE?'),
(43, 47, 'https://www.youtube.com/embed/U-5UlwW0ceg', '2021-11-16 05:21:07', '2021-11-16 05:21:07', 'LE FOUET ET L\'EDUCATION'),
(44, 47, 'https://www.youtube.com/embed/lwd8-jRWUqQ', '2021-11-17 07:09:32', '2021-11-17 07:09:32', 'EDUCATION SEXUELLE TABOU?'),
(45, 47, 'https://www.youtube.com/embed/ehqZMxZ8tCs', '2021-11-18 05:15:05', '2021-11-18 05:15:05', 'VIOLE PAR MON PERE'),
(46, 47, 'https://www.youtube.com/embed/OtGf8mUQz4g', '2021-11-19 05:57:56', '2021-11-19 05:57:56', 'MON FOYER MON SANCTUAIRE'),
(47, 47, 'https://www.youtube.com/embed/oa2ym9JY3yE', '2021-11-22 02:06:08', '2021-11-22 02:06:08', 'MARIAGE GAY, QUE FAIRE?'),
(48, 47, 'https://www.youtube.com/embed/GCd82Ysnhzc', '2021-11-23 03:54:40', '2021-11-23 03:54:40', 'TOUJOURS CELIBATAIRE?'),
(49, 46, 'https://www.youtube.com/embed/gSP_NMeT3BE', '2021-11-26 16:21:15', '2021-11-26 16:21:15', 'Piégés en cherchant des miracles…'),
(50, 40, 'https://www.youtube.com/embed/JbxFwsDW_n8', '2021-11-29 02:49:03', '2021-11-29 02:49:03', 'Faisons La Différence'),
(51, 40, 'https://www.youtube.com/embed/3vjbrm3YsKs', '2021-11-29 02:50:33', '2021-11-29 02:50:33', 'Quand Dieu se révèle... Esaïe 51:4'),
(52, 47, 'https://www.youtube.com/embed/wRqLAweI1n0', '2021-11-29 07:49:32', '2021-11-29 07:49:32', 'VETEMENTS ET IDENTITE'),
(53, 47, 'https://www.youtube.com/embed/4iYtgtw9bXs', '2021-12-01 05:10:54', '2021-12-01 05:10:54', 'RESPECTEZ LES LMITES'),
(54, 40, 'https://www.youtube.com/embed/IEU2itXN_8o', '2021-12-01 08:09:06', '2021-12-01 08:09:06', 'Le Monde ou l\'Immortalité?'),
(55, 47, 'https://www.youtube.com/embed/LHcfs2REVEg', '2021-12-02 05:16:54', '2021-12-02 05:16:54', 'DEUX VALENT MIEUX'),
(56, 40, 'https://www.youtube.com/embed/bvwg5W-iZAY', '2021-12-10 21:49:58', '2021-12-10 21:49:58', 'Quand je prie pour les autres, Dieu exauce. Mais pour moi même…'),
(57, 10, 'https://www.youtube.com/embed/9EgCmMKhlQo', '2021-12-19 01:04:34', '2021-12-19 01:04:34', 'Venir à bout de la paresse: le travail est un trésor'),
(58, 46, 'https://www.youtube.com/embed/8zs9Zvhdkcc', '2021-12-25 02:51:45', '2021-12-25 02:51:45', 'Noël où Jésus n’était pas né, toutes les armes se turent.'),
(59, 47, 'https://www.youtube.com/embed/l7ZYbTupgDU', '2022-01-06 10:28:06', '2022-01-06 10:28:06', 'L\'URGENCE DE LA PRIERE'),
(60, 47, 'https://www.youtube.com/embed/J412m2PQD7g', '2022-01-06 10:31:15', '2022-01-06 10:31:15', 'L\'EVANGILE ETERNEL ET LA PRIERE'),
(61, 47, 'https://youtu.be/QR-0maEIplk', '2022-01-07 09:04:06', '2022-01-07 09:04:06', 'LA MISSION DE DIEU ET LA PRIERE'),
(62, 47, 'https://www.youtube.com/embed/QR-0maEIplk', '2022-01-07 09:05:40', '2022-01-07 09:05:40', 'LA MISSION DE DIEU ET LA PRIERE'),
(63, 47, 'https://www.youtube.com/embed/GjjlWvffrBA', '2022-01-08 07:20:59', '2022-01-08 07:20:59', 'LA MISSION DE DIEU ET LA PRIERE 2'),
(64, 47, 'https://www.youtube.com/embed/QDiOIWw1bqk', '2022-01-09 07:44:17', '2022-01-09 07:44:17', 'UNE VIE D\'OBEISSANCE ET DE PRIERE'),
(65, 47, 'https://www.youtube.com/embed/DjD37N60Mog', '2022-01-12 08:59:48', '2022-01-12 08:59:48', 'LA CHUTE DE BABYLONE ET LA PRIERE'),
(66, 47, 'https://www.youtube.com/embed/eWGqVEfMbkg', '2022-01-14 11:30:46', '2022-01-14 11:30:46', 'LE PEUPLE DE DIEU  LE RESTE ET LA PRIERE'),
(67, 59, 'https://www.youtube.com/embed/-KdrC0_gQ98', '2022-01-14 12:02:54', '2022-01-14 12:02:54', 'La foi, qu\'est-ce que c\'est ? - Il Est Écrit'),
(68, 46, 'https://www.youtube.com/embed/siaeH-SirGU', '2022-01-14 12:04:35', '2022-01-14 12:04:35', 'LE DIEU DES MONTAGNES ET DES VALLÉES, LE DIEU DES EXPLOITS'),
(69, 46, 'https://www.youtube.com/embed/4jo6V_1sAjg', '2022-01-20 21:05:26', '2022-01-20 21:05:26', 'Quand Dieu prend ta défense, la honte s’en va'),
(73, 47, 'https://www.youtube.com/embed/EjBgSyJKsFc', '2022-01-21 21:35:01', '2022-01-21 21:35:01', 'PRÊCHE LA PAROLE'),
(74, 47, 'https://www.youtube.com/embed/4uBWA_Bb2y4', '2022-01-30 12:07:07', '2022-01-30 12:07:07', 'NE NOUS PRECIPITONS PAS'),
(75, 47, 'https://www.youtube.com/embed/93zZp8F3wEE', '2022-01-30 12:10:46', '2022-01-30 12:10:46', 'BOITE DE NUIT Vs CHRISTIANISME'),
(76, 47, 'https://www.youtube.com/embed/ORU7a5vbtAA', '2022-01-30 12:15:18', '2022-01-30 12:15:18', 'BOITE DE NUIT Vs CHRISTIANISME 2'),
(77, 46, 'https://www.youtube.com/embed/Nloh2o7rvmE', '2022-02-11 14:39:21', '2022-02-11 14:39:21', 'Oser lui déclarer son amour…'),
(78, 47, 'https://www.youtube.com/embed/o48Fe6l7Zco', '2022-02-21 03:09:46', '2022-02-21 03:09:46', 'LIBERTE ET RESPONSABILITE'),
(79, 47, 'https://www.youtube.com/embed/Gq0CKtDRg3s', '2022-03-04 05:04:38', '2022-03-04 05:04:38', 'LA GRATUITE QUELLE UTOPIE');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9474526C727ACA70` (`parent_id`),
  ADD KEY `IDX_9474526CF675F31B` (`author_id`),
  ADD KEY `IDX_9474526C126F525E` (`item_id`);

--
-- Index pour la table `domain`
--
ALTER TABLE `domain`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9D996984F675F31B` (`author_id`);

--
-- Index pour la table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1F1B251EF675F31B` (`author_id`),
  ADD KEY `IDX_1F1B251E12469DE2` (`category_id`);

--
-- Index pour la table `news_letter`
--
ALTER TABLE `news_letter`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `podcasts`
--
ALTER TABLE `podcasts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_AE09E83F3EB8070A` (`program_id`),
  ADD KEY `IDX_AE09E83F87D2108C` (`time_space_id`),
  ADD KEY `IDX_AE09E83FF675F31B` (`author_id`);

--
-- Index pour la table `pod_cast`
--
ALTER TABLE `pod_cast`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_AE5601493EB8070A` (`program_id`),
  ADD KEY `IDX_AE56014987D2108C` (`time_space_id`);

--
-- Index pour la table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `resset_password_request`
--
ALTER TABLE `resset_password_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_477BC208A76ED395` (`user_id`);

--
-- Index pour la table `temoignage`
--
ALTER TABLE `temoignage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BDADBC46F675F31B` (`author_id`);

--
-- Index pour la table `timespaces`
--
ALTER TABLE `timespaces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_126169983EB8070A` (`program_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1483A5E9E7927C74` (`email`);

--
-- Index pour la table `user_category`
--
ALTER TABLE `user_category`
  ADD PRIMARY KEY (`user_id`,`category_id`),
  ADD KEY `IDX_E6C1FDC1A76ED395` (`user_id`),
  ADD KEY `IDX_E6C1FDC112469DE2` (`category_id`);

--
-- Index pour la table `verse`
--
ALTER TABLE `verse`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7CC7DA2CF675F31B` (`author_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `domain`
--
ALTER TABLE `domain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `podcasts`
--
ALTER TABLE `podcasts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT pour la table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `resset_password_request`
--
ALTER TABLE `resset_password_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `temoignage`
--
ALTER TABLE `temoignage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `timespaces`
--
ALTER TABLE `timespaces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT pour la table `verse`
--
ALTER TABLE `verse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `FK_9474526C727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `comment` (`id`),
  ADD CONSTRAINT `FK_9474526CF675F31B` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `enquiry`
--
ALTER TABLE `enquiry`
  ADD CONSTRAINT `FK_9D996984F675F31B` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `FK_1F1B251E12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_1F1B251EF675F31B` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `news_letter`
--
ALTER TABLE `news_letter`
  ADD CONSTRAINT `FK_2AB2D7EBF396750` FOREIGN KEY (`id`) REFERENCES `item` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `podcasts`
--
ALTER TABLE `podcasts`
  ADD CONSTRAINT `FK_AE09E83F3EB8070A` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`),
  ADD CONSTRAINT `FK_AE09E83F87D2108C` FOREIGN KEY (`time_space_id`) REFERENCES `timespaces` (`id`),
  ADD CONSTRAINT `FK_AE09E83FF675F31B` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `pod_cast`
--
ALTER TABLE `pod_cast`
  ADD CONSTRAINT `FK_AE5601493EB8070A` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`),
  ADD CONSTRAINT `FK_AE56014987D2108C` FOREIGN KEY (`time_space_id`) REFERENCES `timespaces` (`id`),
  ADD CONSTRAINT `FK_AE560149BF396750` FOREIGN KEY (`id`) REFERENCES `item` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `resset_password_request`
--
ALTER TABLE `resset_password_request`
  ADD CONSTRAINT `FK_477BC208A76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `temoignage`
--
ALTER TABLE `temoignage`
  ADD CONSTRAINT `FK_BDADBC46F675F31B` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `timespaces`
--
ALTER TABLE `timespaces`
  ADD CONSTRAINT `FK_126169983EB8070A` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`);

--
-- Contraintes pour la table `user_category`
--
ALTER TABLE `user_category`
  ADD CONSTRAINT `FK_E6C1FDC112469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E6C1FDC1A76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `FK_7CC7DA2CF675F31B` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
