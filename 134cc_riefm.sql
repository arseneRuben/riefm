-- phpMyAdmin SQL Dump
-- version 4.9.6
-- https://www.phpmyadmin.net/
--
-- Host: 134cc.myd.infomaniak.com
-- Generation Time: Nov 23, 2023 at 10:02 PM
-- Server version: 10.4.19-MariaDB-1:10.4.19+maria~stretch-log
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `134cc_riefm`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(11) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `content`, `created_at`, `updated_at`, `image_name`) VALUES
(1, 'Bienvenu a la radio Il Est Ecrit 92.4 fm, Yaoundé', '2021-09-04 23:42:08', '2021-09-04 23:42:08', 'teste1-6133e83079dcb247748735.jpg'),
(2, 'Ecoutez et vivez', '2021-09-04 23:43:05', '2021-09-04 23:43:05', 'logopolyc1-6133e869a15c6967220711.png'),
(3, 'Rentree academique : Octobre 2021', '2021-09-06 13:05:06', '2021-09-06 13:05:06', 'whatsapp-image-2021-09-06-at-06-55-55-6135f5e275880207482623.jpeg'),
(4, 'Pourquoi choisir l\'UAC?', '2021-09-06 15:05:50', '2021-09-06 15:05:50', 'whatsapp-image-2021-09-06-at-06-55-54-6136122e6bac8981955831.jpeg'),
(5, 'Pourquoi choisir Cosendai', '2021-09-06 15:17:38', '2021-09-06 15:17:38', 'whatsapp-image-2021-09-06-at-06-55-54-613614f21132c180782156.jpeg'),
(6, 'Le Pasteur, Secrétaire exécutif de la Fédération de l\'Est du Cameroun, a été nommé par le Comité exécutif de l\'UMCM réuni en visioconférence dans l\'après-midi du lundi 28 juin 2021. Il remplace à ce poste Abraham BAKARI appelé à servir à la Division de l\'Afrique de l\'Ouest et du Centre (DAO). \r\nSur la photo, Pasteur Yangman est en costume à droite.\r\nQue Dieu soit loué !\r\n*****************************************\r\nCAMEROON UNION MISSION (CMUM)\r\nYANGMAN AVOM ARMAND ARNAUD IS THE NEW DIRECTOR OF COMMUNICATION, PUBLIC AFFAIRS AND RELIGIOUS LIBERTY.\r\nThe Pastor, Executive Secretary of the East Cameroon Conference was appointed by the CMUM Executive Committee meeting in video conference in the afternoon of Monday June 28,  2021. He replaces Abraham BAKARI who was called to serve in the West-central Africa Division (WAD). \r\nIn the photo, Pastor Yangman is in his suit on the right.\r\nMay God be praised!', '2021-09-07 00:08:07', '2021-09-07 00:08:07', '206961296-115787734081085-4006375862375336484-n-6136914704506611147472.jpg'),
(180, 'Constituée en majorité des jeunes, l\'Église vit et vibre en phase avec cette jeunesse, synonyme de force et de dynamisme. Cependant pousés par un besoin légitime d\'insertion et de stabilité sociale, les jeunes se lancent corps et âme dans la vie active délaissant l\'Église qui se retrouve amoindrie. D\'autres par contre se livrent pleinement aux activités de l\'Église, au risque d\'être perçus dans la société comme des pareusseux refusant de travailler et s\'accrochant à la providence divine.\r\n\r\nFace à ce qui est souvent perçu comme un dilemme, quelles méthodes mettre en place par l\'Église pour aider le jeune à concilier vie religieuse et vie active ?\r\n\r\nLE JEUNE, L\'ÉGLISE ET LA VIE ACTIVE, c\'est le thème du débat des étoiles auquel nous sommes conviés ce samedi 26 mars 2022 dès 14h à Nkolndongo Eglise Adventiste.\r\nInvités:\r\n- Pasteur Ferdinand Nkoo Mendouga, Chef de District de Nkolndongo et Pasteur local.\r\n- Dr Alvine Henry Assembe Ndi, Enseignant - Chercheur (chargée des cours et Formatrice) Département Histoire, Université de Douala.\r\n- Ancien Quentin Marie Ngono, contrôleur de la circulation aérienne.\r\n- Mbena Péniel EL Penielo, Guide / Étudiant école d\'acrhistecture Foumban.\r\n- Ancien Gustave Patrick Ekitiké, Chef Guide/SYL, PLEG, Enseignant de SVT.', '2022-03-23 14:53:04', '2022-03-23 14:53:04', '277102777-1218147782052613-4593330324341848829-n-623b264056a84868479700.jpg'),
(217, 'Du 12 au 14 Aout 2022, tous ceux qui veulent promouvoir l\'encadrement spirituelle des aveugles sont convies', '2022-07-19 18:10:32', '2022-07-19 18:10:32', 'whatsapp-image-2022-07-19-at-11-57-02-62d6d778042c3357169788.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Education'),
(2, 'Sante');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
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
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `parent_id`, `author_id`, `item_id`, `email`, `nickname`, `content`, `active`, `rgpd`, `created_at`, `updated_at`) VALUES
(2, NULL, 37, 19, 'fopoar@gmail.com', 'Arsene', 'Merci\n', 0, 1, '2022-03-05 22:05:24', '2022-03-05 22:05:24'),
(3, NULL, 42, 176, 'danielfopah@gmail.com', 'Clovis', ': la femme diamant..A l\'occasion de la journée internationale de la femme, attardons-nous sur la description que la Bible fait de la femme vertueuse, celle-là seule qui véritablement constitue une plus-value pour notre société. La suite dans cette édition.', 0, 1, '2022-03-06 16:29:09', '2022-03-06 16:29:09'),
(4, NULL, 42, 177, 'danielfopah@gmail.com', 'Clovis', 'Emission radiophonique IL EST ECRIT, sur la CRTV station.  régionale de l\'Ouest (93.5FM), chaque samedi matin à partir de 07h 00. Edition du samedi 12 Mars 2022.                                                                                                     Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : le rire... détend et met de bonne humeur, en mobilisant 600 muscles. Mais savez-vous qu\'il est également excellent pour la santé physique?Connaissez-vous la rirothérapie? Restez connecté alors que nous vous donnons un aperçu des bienfaits du rire.                                                                                                                                                                                                                                                                                                              2-Méditation : Jésus et les femmes! A la lumière de la Bible, découvrons la valeur que le Seigneur Jésus-Christ a accordée aux femmes dans ses paroles et ses actes, en contradiction avec la pensée dominante de son temps(et même d\'aujourd\'hui?)  La suite dans ce magazine .                                                                                                                        3- Page des nouvelles : Le réveil et la réforme - Les femmes de l\'Église, un symbole de fierté...                                                                                                                                 4- De la bonne musique sélectionnée avec soin pour nous édifier...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu vous protège pendant le weekend!', 0, 1, '2022-03-13 11:35:11', '2022-03-13 11:35:11'),
(5, NULL, 46, 178, 'bakari@rie.fm', 'Abraham', 'Le meilleur professeur, cependant, se rend compte qu\'il ou elle est dans la classe pour aider les élèves à atteindre leur plein potentiel. Pour l’être, il faut que l’enseignant soit au meilleur de ses capacités. C’est vrai, il lui faut un salaire conséquent, plus à même de le mettre à l’abri de ses besoins et de ceux de sa famille.   Je ne pense pas que les enseignants ambitionnent être Kim Ki-Hoon, le Sud-Coréen qui gagne plus deux milliards de FCFA annuellement. Mais nos pays peuvent faire mieux que clochardiser un métier si noble et si exigeant. Assurément la Corée du Sud est l’un des pays au monde où l’enseignant est parmi les fonctionnaires les mieux rémunérés. En Allemagne où l’éducation fait de bons résultats, les enseignants sont aussi bien payés.  Nous ne pouvons pas payer les enseignants comme ils le méritent mais nous pouvons faire mieux. Les enseignants aussi doivent trouver un moyen d\'améliorer leur travail dont la portée est éternelle.  Que Dieu bénisse les enseignants!', 0, 1, '2022-03-13 12:56:37', '2022-03-13 12:56:37'),
(6, NULL, 42, 179, 'danielfopah@gmail.com', 'Clovis', 'Shallom shallom  !                                                                                                                                                                                  👆👆👆Emission radiophonique IL EST ECRIT, sur la CRTV station.  régionale de l\'Ouest (93.5FM), chaque samedi matin à partir de 07h 00. Edition du samedi 19 Mars 2022.                                                                                                     Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : prendre soin de nos reins! Ces 2 petits organes qui filtrent les déchets circulant dans le sang et les éliminent grâce à l\'urine. Dans le monde, 1adulte sur 10 souffre d\'insuffisance rénale chronique, avec son lot de souffrance et de désagréments pour les familles. Dans ce magazine, nous vous disons comment prendre soin de ses reins.                                                                                                                                                                                                                                                                                                     2-Méditation : la Parole de Dieu, la Bible, possède une puissance qui seule peut soutenir notre foi et nous permettre d\'avancer dans la vie, même pendant les pires moments de notre existence. Comment donc profiter de cette puissance? Découvrons-le ensemble dans cette édition .                                                                                                                        3- Page des nouvelles : Le réveil et la réforme - Les inscriptions pour la prochaine session de la Conférence Générale des adventistes...                                                                                                                                 4- De la louange pour élever nos âmes vers le ciel...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu vous protège pendant le weekend!', 0, 1, '2022-03-18 17:59:07', '2022-03-18 17:59:07'),
(7, NULL, 46, 181, 'bakari@rie.fm', 'Abraham', 'Beaucoup de gens ne seraient pas là où ils sont maintenant s\'ils n\'avaient pas pris part à une conversation. Beaucoup de gens seraient encore amis aujourd\'hui s\'ils avaient pu fermer leurs bouches. Beaucoup de foyers seraient encore ensemble si les couples étaient lents à parler. La vie de nombreux adultes serait façonnée différemment s’ils n’étaient pas victimes de violence verbale dans leur enfance.  La langue mauvaise se livre au mensonge et aux commérages. Elle diffame et bavarde. Une telle personne est la station radio du diable. Tu peux détruire la renommée de quelqu’un mais tu ne peux lui enlever la grâce de Dieu. Et donc inutile de tirer contre lui ou contre elle. Si nous utilisons toujours notre langue pour maudire et jurer, nous avons un grave problème. Cela signifie que notre langue est toujours collée à la chaîne de l\'ennemi.  Sauve-nous Seigneur !  ****************  IS YOUR TONGUE A DEVIL\'S RADIO STATION?  Many people would not be where they are now if they had not been involved in a conversation. Many people would still be friends today if they could have kept their mouths shut. Many homes would still be together if couples were slow to talk. Many adults\' lives would be shaped differently if they were not verbally abused as children.  The evil tongue engages in lying and gossiping. It defames and gossips. Such a person is the devil\'s radio station. You can destroy someone\'s fame but you cannot take away God\'s grace. And therefore it is useless to shoot against him or her. If we always use our tongue to curse and swear, we have a serious problem. It means that our tongue is always stuck to the chain of the enemy.  Save us Lord !', 0, 1, '2022-04-01 22:58:08', '2022-04-01 22:58:08'),
(8, NULL, 10, 183, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'Un regard sur la venue imminente de CHRIST.', 0, 1, '2022-04-03 10:05:50', '2022-04-03 10:05:50'),
(10, NULL, 51, 185, 'joseph_nkou@yahoo.com', 'Joseph', 'Le poisson d\'Avril', 0, 1, '2022-04-03 10:14:47', '2022-04-03 10:14:47'),
(11, 8, 37, 183, 'fopoar@gmail.com', 'Arsene', 'Merci', 0, 1, '2022-04-05 08:53:35', '2022-04-05 08:53:35'),
(12, NULL, 40, 186, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Sur les sentiers des cantiques de David', 0, 1, '2022-04-05 16:33:06', '2022-04-05 16:33:06'),
(13, NULL, 40, 187, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Etonnante histoire pleine d\'enseignements', 0, 1, '2022-04-08 09:03:20', '2022-04-08 09:03:20'),
(14, NULL, 40, 188, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Le Seigneur nous rassure de sa constante présence.', 0, 1, '2022-04-08 09:08:00', '2022-04-08 09:08:00'),
(15, NULL, 42, 189, 'danielfopah@gmail.com', 'Clovis', 'Shallom shallom  !                                                                                                                                                                                  👆👆👆Emission radiophonique IL EST ECRIT, sur la CRTV station régionale de l\'Ouest (93.5FM), chaque samedi matin à partir de 07h 00. Edition du samedi 09 Avril 2022.                                                                                                     Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : les signes pouvant alerter sur les problèmes de reins ! Selon l\'OMS, en 2040, les maladies rénales deviendront la cinquième cause de décès dans le monde. Voilà pourquoi nous devons agir avant qu\'il ne se fasse tard. Car prévenir vaut mieux que guérir...                                                                                                                                                                                                                                                                                                    2-Méditation : la vie devient de plus en plus en difficile. Personne ne peut le nier. Mais même si l\'avenir s\'annonce plein de défis et d\'incertitudes, si nous donnons à Dieu la première place dans nos vies,il se tiendra à nos côtés pour nous accorder pleine satisfaction  et réussite...                                                                                                                     3- Page des nouvelles : Le réveil et la réforme - Heroes: le jeu sur la Bible -Les inscriptions pour la prochaine session de la Conférence Générale des adventistes en Juin 2022...                                                                                                                                 4- De la bonne musique pour soutenir notre foi...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu vous protège pendant le weekend!', 0, 1, '2022-04-10 20:27:06', '2022-04-10 20:27:06'),
(16, NULL, 40, 190, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Une histoire pleine d\'enseignements spirituels', 0, 1, '2022-04-15 13:56:23', '2022-04-15 13:56:23'),
(17, NULL, 40, 191, 'MavisBaldosrg@seznam.cz', 'Inconu', 'JESUS de l\'histoire', 0, 1, '2022-04-15 14:02:32', '2022-04-15 14:02:32'),
(19, NULL, 58, 193, 'jtchoualeu@yahoo.fr', 'Jean Marie', 'CHRIST NOTRE PAQUE', 0, 1, '2022-04-19 10:44:09', '2022-04-19 10:44:09'),
(20, NULL, 10, 194, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'Sur le chemin du Psaume 32', 0, 1, '2022-04-19 10:55:20', '2022-04-19 10:55:20'),
(21, NULL, 52, 195, 'jcmbolong@yahoo.fr', 'Jean Claude', 'Sur les sentiers du Psaume 44', 0, 1, '2022-04-19 11:02:44', '2022-04-19 11:02:44'),
(22, NULL, 10, 196, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'Sur les sentiers du PSAUME 45', 0, 1, '2022-04-19 11:05:47', '2022-04-19 11:05:47'),
(23, NULL, 42, 197, 'danielfopah@gmail.com', 'Clovis', 'Shallom shallom!👆👆                                                                                                                                                                                     Emission radiophonique IL EST ECRIT, sur la CRTV station régionale de l\'Ouest (93.5FM), chaque samedi matin à partir de 07h 00. Edition du samedi 23 Avril 2022.                                                                                                     Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : Comment libérer ses hormones de bonheur? Malgré le stress et les soucis de la vie, notre Créateur a tout prévu pour que nous vivions en étant calme et bien dans notre peau. Dans ce magazine, nous vous disons tout...                                                                                                                                                                                                                                                                                                                  2-Méditation : Après le péché d\'Adam et Eve dans le jardin d\'éden, Dieu le Créateur leur a annoncé une bonne nouvelle plutôt que de les abandonner à la souffrance et à la mort comme ils le méritaient pourtant. La suite dans cette édition.                                                                                                                        3- Page des nouvelles : Réveil et réforme - Zoom sur le festival des talents avec les sociétés de jeunesse adventiste...                                                                                                                                 4- De la bonne musique pour apaiser nos coeurs...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu vous protège pendant le weekend!', 0, 1, '2022-04-25 11:04:32', '2022-04-25 11:04:32'),
(24, NULL, 40, 198, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Le jour du repos', 0, 1, '2022-04-30 17:11:57', '2022-04-30 17:11:57'),
(25, NULL, 51, 199, 'joseph_nkou@yahoo.com', 'Joseph', 'le repos', 0, 1, '2022-04-30 17:20:13', '2022-04-30 17:20:13'),
(26, NULL, 42, 200, 'danielfopah@gmail.com', 'Clovis', 'Emission radiophonique IL EST ECRIT, sur la CRTV station régionale de l\'Ouest (93.5FM), chaque samedi matin à partir de 07h 00. Edition du samedi 30 Avril 2022.                                                                                                     Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : Les bienfaits du repos dans la gestion du stress. La fatigue augmente le taux d\'adrénaline dans notre corps, nous rendant plus vulnérable au stress et à ses terribles conséquences. Le repos au contraire nous aide à y faire face... Découvrons comment dans cette édition.                                                                                                                                                                                                                                                                                                   2-Méditation : Redécouvons ensemble les vertus du calme et du silence alors que nous sommes de plus en plus habitués au bruit. Le silence peut nous permettre de nous ressourcer et de mieux communiquer avec Dieu. Dans ce magazine nous comprendrons pourquoi parfois, le silence est un ami qui ne trahit jamais...                                                                                                                3- Page des nouvelles : Programme de 40 jours de prière - 400 élèves d\'un collège adventiste au secours des orphelins et des malades...                                                                                                                         4- De la bonne musique pour nous élever vers le ciel...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu vous protège pendant le weekend!', 0, 1, '2022-05-01 11:31:52', '2022-05-01 11:31:52'),
(27, NULL, 10, 201, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'l\'assurance au temps de la détresse', 0, 1, '2022-05-02 09:08:40', '2022-05-02 09:08:40'),
(28, NULL, 10, 202, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'Un appel à la louange', 0, 1, '2022-05-03 09:45:45', '2022-05-03 09:45:45'),
(29, NULL, 10, 203, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'Un appel à la louange', 0, 1, '2022-05-05 09:09:38', '2022-05-05 09:09:38'),
(30, NULL, 10, 204, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'Sur les sentiers de la justice', 0, 1, '2022-05-06 10:05:01', '2022-05-06 10:05:01'),
(31, NULL, 42, 205, 'danielfopah@gmail.com', 'Clovis', 'Shallom shallom.👆👆                                                                                                                                                                                     Emission radiophonique IL EST ECRIT, sur la CRTV station régionale de l\'Ouest (93.5FM), chaque samedi matin à partir de 07h 00. Edition du samedi 14 Mai 2022.                                                                                                     Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : l\'entretien du cerveau. Savez-vous qu\'il  nous est possible à tous d\'acquérir davantage de sagesse et d\'intelligence, d\'augmenter les capacités de notre cerveau, tout ceci pouvant contribuer à mener une vie meilleure sur cette terre? Restez des nôtres et vous saurez comment...                                                                                                                                                                                                                                                                                                   2-Méditation : Que faut-il pour bâtir une nation stable et prospère?. Dans cette édition, Il Est Écrit vous propose une solution divine...                                                                                                               3- Page des nouvelles : Réveil et Réforme -  l\'Université adventiste COSENDAI célèbre la journée internationale des infirmières...                                                                                                                         4- De la musique douce et apaisante pour nous inspirer...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu vous protège pendant le weekend!                     BONNE FÊTE DE L\'UNITÉ !', 0, 1, '2022-05-18 10:05:24', '2022-05-18 10:05:24'),
(32, NULL, 10, 206, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'l\'unite et la paix valeurs inestimables Pr Assembe Minyono valere guillaume', 0, 1, '2022-05-20 09:56:23', '2022-05-20 09:56:23'),
(33, NULL, 10, 207, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'Shallom shallom.👆👆                                                                                                                                                                                     Emission radiophonique IL EST ECRIT, sur la CRTV station régionale de l\'Ouest (93.5FM), chaque samedi matin à partir de 07h 00. Edition du samedi 28 Mai 2022.                                                                                                     Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : la marche. Savez-vous que d\'après de nombreuses études, marcher est bénéfique pour notre santé physique et mentale? C\'est une activité simple et gratuite qui peut réduire considérablement les dépenses maladies dans les familles, par ces temps difficiles. Restez des nôtres et nous vous brosserons quelques bienfaits de la marche...                                                                                                                                                                                                                                                                                                   2-Méditation : la vraie grandeur ! Pour le Seigneur notre vraie grandeur réside dans notre capacité à servir les autres et contribuer au bien commun, et non dans nos diplômes, nos possessions, notre position. Que faut-il donc faire pour parvenir à cette vraie grandeur? Dans cette édition, Il Est Écrit vous dit tout...                                                                                                               3- Page des nouvelles : Alerte choléra - Réveil et Réforme - le service de bienfaisance ...                                                                                                                         4- De la bonne musique sélectionnée pour vous, avec beaucoup de soins...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu protège nos familles pendant le weekend!', 0, 1, '2022-05-28 19:05:33', '2022-05-28 19:05:33'),
(34, NULL, 40, 208, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Le Sacrifice qui nous donne la vie', 0, 1, '2022-06-01 15:43:39', '2022-06-01 15:43:39'),
(35, NULL, 40, 209, 'MavisBaldosrg@seznam.cz', 'Inconu', 'DOUES POUR LE SERVICE', 0, 1, '2022-06-03 14:55:38', '2022-06-03 14:55:38'),
(37, NULL, 48, 211, 'yangmanavom@yahoo.fr', 'Armand Arnaud', 'Les heroines de la fidelite  avec le Pasteur Arnold Yangman Avom', 0, 1, '2022-06-10 13:24:52', '2022-06-10 13:24:52'),
(38, NULL, 40, 212, 'MavisBaldosrg@seznam.cz', 'Inconu', 'La valeur d\'un père dans une vie.', 0, 1, '2022-06-16 19:09:04', '2022-06-16 19:09:04'),
(39, 34, 37, 208, 'fopoar@gmail.com', 'Arsene', 'Merci', 0, 1, '2022-06-23 15:46:29', '2022-06-23 15:46:29'),
(40, NULL, 42, 213, 'danielfopah@gmail.com', 'Clovis', '1-Rubrique santé et Bien-être : des conseils pratiques pour cesser de fumer ! Les dommages du tabac sur la santé du fumeur et son entourage sont immenses. N\'oublions pas que le tabac est la deuxième cause de décès dans le monde avec plus de 8 millions de morts par an.  Restez des nôtres et vous saurez comment faire pour en finir avec le tabagisme...                                                                                                                                                                                                                                                                                 2-Méditation : Merci Thomas pour tes doutes ! Ce matin Il est écrit nous rappelle le fondement essentiel de notre foi : la résurrection du Seigneur Jésus-Christ. Dans cette édition, découvrons ensemble comment cet évènement a changé bien de choses...                                                                                                               3- Page des nouvelles : Réveil et Réforme - Les soutenances à l\'Université adventiste COSENDAI à Douala...                                                                                                                         4- De la bonne musique pour égayer nos coeurs ...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu protège nos familles pendant le weekend!', 0, 1, '2022-06-25 12:35:36', '2022-06-25 12:35:36'),
(41, NULL, 40, 214, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Minboan ya dibi Daniel Engamba', 0, 1, '2022-07-01 18:35:05', '2022-07-01 18:35:05'),
(42, NULL, 51, 215, 'joseph_nkou@yahoo.com', 'Joseph', 'Enfin libre', 0, 1, '2022-07-01 18:43:38', '2022-07-01 18:43:38'),
(43, NULL, 42, 216, 'danielfopah@gmail.com', 'Clovis', 'Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : Les avantages de l\'arrêt du tabac ! Il y a actuellement dans le monde, près d\'1.3 Milliards de fumeurs qui subissent chaque jour sur leur santé physique, mentale et spirituelle, les terribles conséquences du tabagisme; avec plus de 8 millions de morts par an dû au tabac. Voilà pourquoi IL EST ECRIT fait un zoom sur les avantages de l\'arrêt du tabac. Restez des nôtres et vous en saurez un peu plus...                                                                                                                                                                                                                                                                                 2-Méditation : Les Affligés ! Dieu notre Créateur, se soucie de chacun de nous. Il voit chaque tristesse et chaque affliction dans le coeur de ses enfants. Par son Esprit, il se tient à  nos côtés pour nous soutenir. Dans ce magazine, nous vous en disons davantage...                                                                                                               3- Page des nouvelles : Réveil et Réforme - L\'École Biblique de Vacances pour les enfants - Découvrir les grands thèmes de la Bible à travers ESPÉRANCE SANS ILLUSIONS...                                                                                                                         4- De la musique sélectionnée avec soin pour apaiser nos coeurs ...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu protège nos familles pendant le weekend!', 0, 1, '2022-07-02 19:13:02', '2022-07-02 19:13:02'),
(44, NULL, 40, 218, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Wen ya mfan elat Pr Marga Gérard', 0, 1, '2022-07-22 18:53:03', '2022-07-22 18:53:03'),
(45, NULL, 40, 219, 'MavisBaldosrg@seznam.cz', 'Inconu', 'L\'amour change tout. Pst Assembe Minyono Valère Guillaume', 0, 1, '2022-07-24 13:41:50', '2022-07-24 13:41:50'),
(46, NULL, 46, 221, 'bakari@rie.fm', 'Abraham', 'Bonne meditation', 0, 1, '2022-07-24 13:56:16', '2022-07-24 13:56:16'),
(47, NULL, 40, 222, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Zen ya mfan elat  par Pr Marga Gérard', 0, 1, '2022-07-30 10:15:39', '2022-07-30 10:15:39'),
(48, NULL, 40, 224, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Connu de DIEU par Pr Karl Johnson', 0, 1, '2022-07-30 10:25:08', '2022-07-30 10:25:08'),
(49, NULL, 40, 225, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Vom ya sobo par Mbono Simon', 0, 1, '2022-08-05 14:31:11', '2022-08-05 14:31:11'),
(50, NULL, 40, 226, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Je vous salue Marie de Pasteur Karl Johnson', 0, 1, '2022-08-19 12:58:42', '2022-08-19 12:58:42'),
(51, NULL, 40, 227, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Avoir foi à la parole de DIEU', 0, 1, '2022-08-19 13:31:21', '2022-08-19 13:31:21'),
(52, NULL, 40, 228, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Amour du prochain', 0, 1, '2022-08-19 13:41:12', '2022-08-19 13:41:12'),
(53, NULL, 40, 229, 'MavisBaldosrg@seznam.cz', 'Inconu', 'L\'HUMILITE DANS SES VOIES', 0, 1, '2022-08-19 14:40:34', '2022-08-19 14:40:34'),
(54, NULL, 42, 230, 'danielfopah@gmail.com', 'Clovis', 'Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : LES CONSÉQUENCES DU TABAGISME PASSIF ! Le tabagisme passif est le fait d\'absorber par les voies respiratoires, la fumée dégagée par un ou plusieurs fumeurs. Chaque année, le tabagisme passif fait plus de 600.000 morts dans le monde, sans compter les nombreuses maladies auxquelles tous sans exception, adultes, enfants et même foetus, peuvent développer. Soyez attentifs et vous en saurez un peu plus...                                                                                                                                                                                                                                                                                 2-Méditation : LA FOI AU SEIN DE LA DÉTRESSE ! Quand tout va bien, quand tout est rose, il est si facile d\'adorer le Seigneur. Mais qu\'en est-il lorsque des épreuves surgissent? Dans cette édition,IL EST ÉCRIT vous propose la clef pour garder la foi même en temps de trouble...                                                                                                            3- Page des nouvelles : Réveil et Réforme - Bilan du camp JA de Mouanko - La journée mondiale de l\'éducation adventiste...                                                                                                                        4- De la bonne musique pour nous inspirer...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu protège nos familles pendant le weekend!', 0, 1, '2022-08-25 03:54:58', '2022-08-25 03:54:58'),
(55, NULL, 42, 231, 'danielfopah@gmail.com', 'Clovis', 'Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : L\'IMPORTANCE DU SOMMEIL ! Le sommeil fait partie des fonctions vitales du corps, comme la respiration et l\'immunité par exemple. Malheureusement ils sont de plus en plus nombreux, ceux qui ne jouissent pas d\'un bon sommeil ou alors qui le négligent tout simplement. Cela a des conséquences négatives sur leur santé physique, leur vie de famille, leurs performances au travail et bien plus encore. Restez des nôtres et vous en saurez un peu plus.                                                                                                                                                                                                                                                                            2-Méditation : QUAND TOUT VA MAL ! Lorsque les choses ne tournent pas rond, quand on perd son emploi, quand les maladies et les échecs surgissent, lorsqu\'avec son conjoint tout va mal, dirigeons nos regards vers le ciel. Soyez attentifs alors que nous apprendrons à nous confier à Dieu...                                                                                                            3- Page des nouvelles : Des consultations médicales gratuites - END IT NOW : ensemble, disons NON AUX ABUS DE POUVOIR..                                                                                                                  4- De la musique pour nous édifier profondément...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu protège nos familles pendant le weekend!', 0, 1, '2022-08-28 09:51:28', '2022-08-28 09:51:28'),
(56, NULL, 42, 232, 'danielfopah@gmail.com', 'Clovis', 'Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : COMMENT MAINTENIR DE BONNES HABITUDES DE SOMMEIL  ! Le sommeil est si utile à l\'équilibre de notre santé physique, mentale, spirituelle et même sociale. Et en cette période de rentrée scolaire, les parents, les enseignants, les élèves et les étudiants doivent se rappeler constamment  qu\'une bonne nuit de sommeil contribue grandement à la réussite scolaire. Dans cette édition, nous partagerons quelques conseils pratiques pour améliorer notre sommeil. Restez des nôtres et vous en saurez un peu plus.                                                                                                                                                                                                                                                                         2-Méditation : 8 clefs pour mieux communiquer ! Nous pouvons améliorer nos relations avec ceux que nous côtoyons chaque jour. En effet, beaucoup de conflits, de guerres, de divorces, et d\"incompréhensions seraient évités si tous, nous nous mettions à l\'école de la communication. Soyez attentifs alors que nous vous en disons davantage.                                                                                                            3- Page des nouvelles : Réveil et Réforme - Séminaire des Communications : \" Vers le digital pour la mission \" - Préparatifs de la rentrée scolaire 2022-2023..                                                                                                                  4- De la musique douce et profonde pour nous insprer...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu protège nos familles pendant le weekend!', 0, 1, '2022-09-04 03:23:06', '2022-09-04 03:23:06'),
(57, NULL, 10, 233, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : POURQUOI AVONS-NOUS BESOIN DE SOMMEIL? Le manque de sommeil conduit inévitablement à de terribles problèmes de santé. Mais pourquoi avons-nous même besoin de sommeil? Combien d\'heures devons-nous passer à dormir en fonction de notre âge? Dans cette édition, nous  vous disons tout.                                                                                                                                                                                                                                                                         2-Méditation : Les relations sexuelles avant le mariage ! Un sujet qui nous interpelle tous,  jeunes et adultes. Beaucoup s\'y livrent en ignorant tous les multiples dangers auxquels ils s\'exposent alors. Ce matin IL EST ECRIT fait un zoom sur une pratique largement répandue dans notre société. Restez des nôtres chers amis, alors que nous en apprendrons davantage.                                                                                                          3- Page des nouvelles : Réveil et Réforme - Le festival des jeunes prédicateurs - Une chercheuse adventiste récompensée dans une université...                                                                                                                 4- De la bonne musique pour notre âme ...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu protège nos familles pendant le weekend!', 0, 1, '2022-09-10 14:42:28', '2022-09-10 14:42:28'),
(58, NULL, 42, 234, 'danielfopah@gmail.com', 'Clovis', 'Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : L\'IMPACT DU SOMMEIL SUR LA RÉUSSITE SCOLAIRE ! Selon le psychologue Abraham MASLOW, l\'une des conditions nécessaires à l\'épanouissement intellectuel serait le sommeil. Existe-t-il alors un lien entre le sommeil et les performances scolaires d\'un enfant? Est-il vrai que pour mieux réussir à l\'école, il faut commencer par bien dormir? Dans ce magazine, nous répondons à ces questions.                                                                                                                                                                                                                                                                         2-Méditation : Les exploits de l\'eau vive ! L\'eau (indispensable à la vie sur terre) possède des propriétés fantastiques. Et c\'est aussi un symbole de ce que Dieu veut accomplir dans nos vies par son Esprit.  Découvrons-en plus dans ce magazine.                                                                                                                                                                                                                         3- De la musique douce pour nous édifier ...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu protège nos familles pendant le weekend!', 0, 1, '2022-09-18 03:17:17', '2022-09-18 03:17:17'),
(59, NULL, 40, 235, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Une famille heureuse et parfaite', 0, 1, '2022-09-19 13:09:26', '2022-09-19 13:09:26'),
(60, NULL, 46, 236, 'bakari@rie.fm', 'Abraham', 'Une mère est une bénédiction.', 0, 1, '2022-09-22 18:52:42', '2022-09-22 18:52:42'),
(61, NULL, 46, 237, 'bakari@rie.fm', 'Abraham', 'Une mère est une bénédiction.', 0, 1, '2022-09-22 18:59:37', '2022-09-22 18:59:37'),
(62, NULL, 46, 238, 'bakari@rie.fm', 'Abraham', 'Une mère est une bénédiction.', 0, 1, '2022-09-23 14:13:18', '2022-09-23 14:13:18'),
(63, NULL, 40, 239, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Les signes d\'une vieille route', 0, 1, '2022-09-23 14:29:18', '2022-09-23 14:29:18'),
(64, NULL, 40, 240, 'MavisBaldosrg@seznam.cz', 'Inconu', 'L\'unité et la paix valeurs inestimables Pr Assembe Minyono valere guillaume', 0, 1, '2022-09-23 14:35:42', '2022-09-23 14:35:42'),
(65, NULL, 10, 241, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : LES 06 SECRETS DU BONHEUR ! Le bonheur est un état de contentement qui est non seulement durable et permanent, mais aussi croissant. Même si notre époque se caractérise par des temps de plus en plus difficiles, il est encore possible malgré tout de se sentir heureux et épanoui. C\'est pourquoi ce matin Il Est Écrit vous propose quelques clefs pour trouver le vrai bonheur et le contentement dans la vie. Soyons simplement attentifs.                                                                                                                                                                                                                                                                   2-Méditation : CHRIST NOTRE ESPÉRANCE ! Nous devons nous appuyer fermement sur Jésus-Christ alors que nous entrons bientôt dans le dernier trimestre de l\'année. Partout dans le monde l\'insécurité a gagné du terrain, le chômage, les épidémies, les incendies, les guerres et les divisions dans les familles sont aussi monnaie courante. Restez des nôtres et découvrons ensemble comment avec Jésus-Christ pour Ami nous pouvons  faire la différence.                                                                                                                                                                                                               3- Page des nouvelles: Réveil et Réforme - Visite d\'un gouverneur dans un collège adventiste - Quelques échos de la 72e journée des jeunes Explorateurs adventistes...      4-De la musique sélectionnée avec soin pour nous édifier...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu protège nos familles pendant le weekend!', 0, 1, '2022-09-26 16:08:18', '2022-09-26 16:08:18'),
(66, NULL, 10, 242, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'a quoi ça sert a un homme de gagné le monde s\'il perd son ame ?', 0, 1, '2022-09-27 12:42:27', '2022-09-27 12:42:27'),
(67, NULL, 40, 243, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Dans toutes nos entreprises n\'oublions jamais de donné a DIEU la première place', 0, 1, '2022-09-27 13:07:07', '2022-09-27 13:07:07'),
(68, NULL, 46, 244, 'bakari@rie.fm', 'Abraham', 'nous devons savoir brillé a fin de montré la voie aux autres', 0, 1, '2022-09-27 13:24:41', '2022-09-27 13:24:41'),
(69, NULL, 46, 245, 'bakari@rie.fm', 'Abraham', 'la justice consiste a choisir le camp de jésus-christ notre sauveur', 0, 1, '2022-09-27 13:48:11', '2022-09-27 13:48:11'),
(70, NULL, 46, 246, 'bakari@rie.fm', 'Abraham', 'nous devons nous abandonnés au vainqueur jesus-christ', 0, 1, '2022-09-27 13:55:30', '2022-09-27 13:55:30'),
(71, NULL, 46, 247, 'bakari@rie.fm', 'Abraham', 'conserver l\'unité avec les autres', 0, 1, '2022-09-27 14:12:59', '2022-09-27 14:12:59'),
(72, NULL, 46, 248, 'bakari@rie.fm', 'Abraham', 'moi et ma maison nous servirons l\'eternel', 0, 1, '2022-09-27 14:18:43', '2022-09-27 14:18:43'),
(73, NULL, 46, 249, 'bakari@rie.fm', 'Abraham', 'car DIEU nous a tant aimé', 0, 1, '2022-09-27 14:30:36', '2022-09-27 14:30:36'),
(74, NULL, 40, 250, 'MavisBaldosrg@seznam.cz', 'Inconu', 'perseverons et gardons la foi', 0, 1, '2022-09-27 14:39:23', '2022-09-27 14:39:23'),
(75, NULL, 40, 251, 'MavisBaldosrg@seznam.cz', 'Inconu', 'perseverance et foi', 0, 1, '2022-09-27 14:51:02', '2022-09-27 14:51:02'),
(76, NULL, 40, 252, 'MavisBaldosrg@seznam.cz', 'Inconu', 'les secrets de l\'amour en famille', 0, 1, '2022-09-27 14:59:29', '2022-09-27 14:59:29'),
(77, NULL, 51, 253, 'joseph_nkou@yahoo.com', 'Joseph', 'Les damnes de l\'age Pr Joseph Gaston Nkou', 0, 1, '2022-09-29 17:39:16', '2022-09-29 17:39:16'),
(78, NULL, 40, 254, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Mongo sikolo Daniel Engamba', 0, 1, '2022-09-29 17:43:40', '2022-09-29 17:43:40'),
(79, NULL, 52, 255, 'jcmbolong@yahoo.fr', 'Jean Claude', 'Petit pourtant grand, faible pourtant fort', 0, 1, '2022-10-15 16:44:10', '2022-10-15 16:44:10'),
(80, NULL, 10, 256, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : L\'IMPORTANCE DU SOMMEIL ! Le sommeil fait partie des fonctions vitales du corps, comme la respiration et l\'immunité par exemple. Malheureusement ils sont de plus en plus nombreux, ceux qui ne jouissent pas d\'un bon sommeil ou alors qui le négligent tout simplement. Cela a des conséquences négatives sur leur santé physique, leur vie de famille, leurs performances au travail et bien plus encore. Restez des nôtres et vous en saurez un peu plus.                                                                                                                                                                                                                                                                            2-Méditation : L\'agneau et le dragon! La foi en Dieu n\'est pas une garantie que nous ne connaitrons jamais la souffrance ou les problèmes dans cette vie. Au contraire, la foi nous permet de résister dans le mauvais jour et tenir ferme après avoir tout surmonté. Soyez attentifs chers amis, alors que nous en apprendrons davantage.                                                                                                        3- Page des nouvelles : Une nouvelle thèse PHD révolutionne l\'univers de l\'Orthopédie en Bio-mécanique - Les dernières infos de l\'Éducation Adventiste au Cameroun  Réveil et Réforme - .                                                                                                                  4- De la bonne musique pour nos âmes...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu protège nos familles pendant le weekend!', 0, 1, '2022-10-23 16:01:23', '2022-10-23 16:01:23'),
(81, NULL, 10, 257, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : COMMENT AMELIORER LA QUALITE DE SON SOMMEIL. Le sommeil est si utile à l\'équilibre de notre santé physique, mentale, spirituelle et même sociale. Voilà pourquoi les enseignants, les parents, les èlèves et même les étudiants doivent se rappeler constamment qu\'une bonne nuit de sommeil contribue grandement à la réussite scolaire et académique. Dans cette édition, nous partageons avec vous quelques conseils pratiques pour améliorer notre sommeil. Restez des nôtres et vous en saurez un peu plus.                                                                                                                                                                                                                                                              2-Méditation : UNE RENCONTRE INOUBLIABLE ! En chaque être humain, Jésus ne voit pas un pécheur, mais un homme qui souffre et a besoin de Lui. Et il désire tant nous soulager comme il l\'a fait pour l\'aveugle de naissance. Qu\'on soit riche ou pauvre, homme ou femme, quels que soient notre ethnie, notre âge, nos souffrances, Jésus veut nous surprendre en cette fin d\'année. Il nous suffit juste de croiser son chemin...                                                                                                                                                                                     3- Page des nouvelles: Réveil et Réforme - Des nouvelles du comité exécutif de la Division des adventistes de l\'Ouest et du Centre...                                 4-De la musique sélectionnée avec soin pour nous édifier...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu protège nos familles pendant le weekend!', 0, 1, '2022-11-13 19:01:49', '2022-11-13 19:01:49');
INSERT INTO `comment` (`id`, `parent_id`, `author_id`, `item_id`, `email`, `nickname`, `content`, `active`, `rgpd`, `created_at`, `updated_at`) VALUES
(82, NULL, 42, 259, 'danielfopah@gmail.com', 'Clovis', 'Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : POURQUOI AVONS-NOUS BESOIN DE SOMMEIL? Le manque de sommeil conduit inévitablement à de terribles problèmes de santé. Mais pourquoi avons-nous même besoin de sommeil? Combien d\'heures devons-nous passer à dormir en fonction de notre âge? Dans cette édition, nous vous disons tout.                                                                                                                                                                                                                                                           2-Méditation : LA VRAIE GRANDEUR. Aux de Dieu, en réalité, la vraie grandeur ne réside pas dans ce que nous possedons, ni dans ce que nous savons, ni dans ce que nous faisons, ni dans la position que nous occupons dans la société, mais dans notre capacité à servir les autres et contribuer au bien commun. Dans ce magazine, découvrons ensemble ce qu\'il nous faut faire pour parvenir à cette vraie grandeur...                                                                                                                                                                                3- Page des nouvelles: Réveil et Réforme - La retraite spirituelle des anciens d\'église...                                 4-De la bonne musique pour rafraichir nos âmes...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu protège nos familles pendant le weekend!', 0, 1, '2022-11-19 14:32:05', '2022-11-19 14:32:05'),
(83, NULL, 10, 260, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : L\'IMPACT DU SOMMEIL SUR LA RÉUSSITE SCOLAIRE ! Selon le psychologue Abraham MASLOW, l\'une des conditions nécessaires à l\'épanouissement intellectuel serait le sommeil. Existe-t-il alors un lien entre le sommeil et les performances scolaires d\'un enfant? Est-il vrai que pour mieux réussir à l\'école, il faut commencer par bien dormir? Dans ce magazine, nous répondons à ces questions.                                                                                                                                                                                                                                                                         2-Méditation :  Prier, à quoi ça sert ? Dans un monde où la technologie occupe une place importante, beaucoup pensent que la prière est inutile puisqu\'il faut pour eux, savoir se battre avant tout et travailler dur pour nourrir sa famille ou réussir ses examens quand on étudiant. Mais qu\'est-ce réellement la prière? A quoi sert-elle vraiment? Pouvons-nous nous en passer? Y\'a-t-il des avantages à mener une vie de prière? Restez des nôtres alors que nous répondons à ces questions.                                                                                                                                                                                                                         3- De la bonne musique, douce et apaisante pour nos âmes ...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu protège nos familles pendant le weekend!', 0, 1, '2022-11-25 21:21:47', '2022-11-25 21:21:47'),
(84, NULL, 42, 261, 'danielfopah@gmail.com', 'Clovis', 'Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : COMMENT GÉRER LES TROUBLES DE L\'ANXIÉTÉ ET LE STRESS ! Selon l\'OMS, l\'anxiété touche une personne sur dix dans le monde, adulte comme enfant. C\'est un état de trouble psychique causé par une inquiétude intense et qui persiste face aux situations de la vie. En voici les symptômes : difficulté à respirer, sensation de fatigue, vertiges, transpiration, nausées, poids ou inconfort sur la poitrine, engourdissement des mains et des pieds. L\'anxiété a des conséquences négatives  sur la famille et le travail... Dans cette éditions, nous partageons 07 conseils pratiques pour gérer l\'anxiété.                                                                                                                                                                                                                                                        2-Méditation : NOTRE VIE EN JESUS.  Avez-vous besoin de donner un nouveau sens à votre existence dont vous n\'êtes plus satisfait ? Dans ce magazine, Il Est Écrit vous donne 04 solutions pour se rapprocher de Dieu et profiter pleinement de l\'accomplissement des promesses qu\'il nous a faites dans sa Parole.                                                                                                                                                                                                           3- Réveil et Réforme - Un sous-préfet dans un collège adventiste - Le service de bienfaisance...          4-De la musique sélectionnée avec soin pour rafraichir notre âme ...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu protège nos familles pendant le weekend!', 0, 1, '2022-12-04 02:34:41', '2022-12-04 02:34:41'),
(85, NULL, 46, 262, 'bakari@rie.fm', 'Abraham', 'Un mariage de rêve', 0, 1, '2022-12-07 08:53:15', '2022-12-07 08:53:15'),
(86, NULL, 42, 265, 'danielfopah@gmail.com', 'Clovis', 'Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : Les dangers liés à la consommation du sucre blanc ! Selon le site Consoglobe, nous consommons en moyenne 127 grammes de sucre par jour, soit en moyenne 46 kilogrammes par an. C\'est énorme. Mais savez-vous que le sucre dans les boissons sucrées, les patisseries et les bonbons, n\'est pas sans danger pour notre santé? Dans ce magazine, découvrons ensemble 06 raisons qui devraient nous pousser dans chacune de nos familles à réduire notre consommation de sucre à partir de maintenant, alors que les fêtes de fin d\'année pointent à l\'horizon...                                                                                                                                                                                                                                           2-Méditation : Arrêtons la corruption ! Ce fléau qui constitue un frein au développement global de notre société. Comment en sortir? La Bible a-t-elle quelque chose à dire sur le sujet? Restez des nôtres alors que nous répondrons à ces questions et à bien d\'autres encore.                                                                                                                                                                                                          3- Réveil et Réforme - Écho des campus ...          4-De la louange simple et belle, pour communiquer avec le ciel ...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu protège nos familles pendant le weekend!', 0, 1, '2022-12-10 13:45:20', '2022-12-10 13:45:20'),
(87, NULL, 10, 266, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'Merci maman', 0, 1, '2022-12-14 05:34:28', '2022-12-14 05:34:28'),
(88, NULL, 46, 267, 'bakari@rie.fm', 'Abraham', 'Merci maman.', 0, 1, '2022-12-14 05:44:26', '2022-12-14 05:44:26'),
(89, NULL, 46, 268, 'bakari@rie.fm', 'Abraham', 'Merci maman.', 0, 1, '2022-12-14 06:10:10', '2022-12-14 06:10:10'),
(90, NULL, 42, 269, 'danielfopah@gmail.com', 'Clovis', 'Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : La connexion corps-esprit ! Il existe une relation forte entre notre corps et notre esprit. Ainsi, des pensées et des émotions négatives peuvent s\'avérer destructives pour la santé. Le chagrin, l\'anxiété, le mécontentement, le remords, la culpabilité, la méfiance...sont des sentiments qui vont nous rendre malades. Par contre, le courage, l\'espoir, la sympathie, la foi et l\'amour vont nous aider à rester en bonne santé. Dans ce magazine, nous vous disons tout.                                                                                                                                                                                                                                                    2-Méditation :  Le secret du succès! Alors que les élèves par exemple, ont reçu leurs carnets de note pour la fin du premier trimestre, Il Est Écrit rappelle à tous, parents et enfants, ce qu\'il faut faire pour éviter l\'échec et pour que la fin d\'année scolaire soit couronnée par la joie de la réussite, pour tous...                                                                                                                                                                                                         3- Page de nouvelles : Réveil et Réforme - Un chef d\'orchestre adventiste honoré...              4-De la bonne musique pour fortifier notre foi...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu protège nos familles pendant le weekend!', 0, 1, '2022-12-17 09:49:42', '2022-12-17 09:49:42'),
(91, NULL, 42, 270, 'danielfopah@gmail.com', 'Clovis', 'menu :                                                                                                                                                 1-Rubrique santé et Bien-être : COMMENT AVOIR LA PAIX DU COEUR ! Beaucoup de gens  avancent dans cette vie, l\'âme en peine, ne faisant confiance à personne ni à rien, subissant simplement les évènements. Cela se traduit entre autres choses, par un manque de paix intérieure et il est grand temps que cela change. Dans ce magazine nous partagerons 07 étapes pour profiter de la paix que Dieu nous a promise dans sa Parole.                                                                                                                                                                                                                                                  2-Méditation :  SEULS LES PAUVRES COMPRENNENT NOËL ! Noël est une fête chrétienne qui rappelle à tous, enfants comme adultes, la naissance du Seigneur Jésus-Christ. Dans cette édition, Il Est Écrit vous invite à fixer les yeux sur \"Jésus, la majesté du ciel, le Roi des cieux, qui abandonna sa royauté, son trône de gloire, sa souveraineté, et vint dans ce monde pour apporter son aide divine à l\'homme déchu, corrompu par le péché et affaibli dans ses facultés morales\"...                                                                                                                                                                                                         3- Page de nouvelles : Réveil et Réforme - Échos de campus..              4-De la musique sélectionnée avec soin pour édification ...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu protège nos familles pendant le weekend!', 0, 1, '2022-12-24 03:20:03', '2022-12-24 03:20:03'),
(92, NULL, 42, 271, 'danielfopah@gmail.com', 'Clovis', 'menu :                                                                                                                                                 1-Rubrique santé et Bien-être : COMMENT ÉQUILIBRER UNE VIE BIEN REMPLIE ! Nous vivons désormais dans un monde où tout va très vite. Alors que nous éprouvons d\'énormes difficultés pour concilier la famille, le travail et nos autres activités, ce matin Il Est Écrit nous propose 06 conseils pour équilibrer une vie bien remplie...                                                                                                                                                                                                                                                2-Méditation :  DESTINATION : ÉTERNITÉ ! Le retour du Christ est un glorieux rendez-vous  auquel Dieu nous convie tous. Dans cette édition, nous verrons ensemble ce qu\'il nous faut faire pour être du côté de ceux pour qui ce sera un jour \"de joie et non de malheur\".                                                                                                                                                                                                    3- Page de nouvelles : Un premier ministre dans une chapelle adventiste - Réveil et Réforme - Un marché gratuit à Bandrefam....           4-De la bonne musique pour nourrir notre âme...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu nous conduise dans la nouvelle année !', 0, 1, '2022-12-31 21:22:18', '2022-12-31 21:22:18'),
(93, NULL, 42, 272, 'danielfopah@gmail.com', 'Clovis', '1-Rubrique santé et Bien-être : LES REPAS PRIS EN FAMILLE ! Savez-vous que manger avec nos enfants peut avoir un impact très significatif sur leur santé mentale, physique et même spirituelle? Malheureusement nous sommes devenus tellement occupés que cela nous échappe. Dans ce magazine, nous découvrirons ensemble 04 avantages qu\'il y a à manger avec nos enfants, pour leur bien-être, avec l\'espoir qu\'en 2023 nous prenions la ferme résolution de réunir nos enfants autour de la salle à manger...                                                                                                                                                                                                                             2-Méditation : FORTIFIE-TOI ET PRENDS COURAGE ! (Pst John GRAZ) Quels que soient notre âge ou notre position sociale, Dieu se tient à nos côtés en cette nouvelle année, et malgré les défis immenses, les incertitudes, les maladies, les difficultés énormes, si nous lui faisons confiance il accomplira toutes ses promesses dans nos vies, pour que l\'année 2023 soit mémorable. Dans cette édition, nous étudierons l\'exemple de Josué et du peuple d\'Israël face aux murs de Jéricho et nous en retirerons des leçons pratiques.                                                                                                                                                                                  3- Page de nouvelles : Programme de 10 jours de prière du 11 au 21 janvier 2023- Réveil et Réforme - Jandira une Tabitha des temps modernes...           4-De la musique douce pour nous réconforter...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu nous conduise dans la nouvelle année !', 0, 1, '2023-01-08 03:24:05', '2023-01-08 03:24:05'),
(94, NULL, 48, 273, 'yangmanavom@yahoo.fr', 'Armand Arnaud', 'Dix jours de prière 2023', 0, 1, '2023-01-10 10:34:38', '2023-01-10 10:34:38'),
(95, NULL, 48, 274, 'yangmanavom@yahoo.fr', 'Armand Arnaud', 'Où  es-tu ?', 0, 1, '2023-01-11 01:13:40', '2023-01-11 01:13:40'),
(96, NULL, 48, 275, 'yangmanavom@yahoo.fr', 'Armand Arnaud', 'Consécration et commémoration', 0, 1, '2023-01-12 04:03:48', '2023-01-12 04:03:48'),
(97, NULL, 48, 276, 'yangmanavom@yahoo.fr', 'Armand Arnaud', 'Matin et soir', 0, 1, '2023-01-13 03:44:30', '2023-01-13 03:44:30'),
(98, NULL, 40, 277, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Zen ya Fek', 0, 1, '2023-01-13 16:04:09', '2023-01-13 16:04:09'),
(99, NULL, 51, 278, 'joseph_nkou@yahoo.com', 'Joseph', 'Le pouvoir de la loi', 0, 1, '2023-01-13 16:07:59', '2023-01-13 16:07:59'),
(100, NULL, 48, 279, 'yangmanavom@yahoo.fr', 'Armand Arnaud', 'Dieu revient vers l\'homme', 0, 1, '2023-01-14 03:28:25', '2023-01-14 03:28:25'),
(101, NULL, 42, 280, 'danielfopah@gmail.com', 'Clovis', 'Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : LES BIENFAITS DU RIRE ! Le rire peut être défini comme le fait de manifester un sentiment de gaieté par un élargissement de l\'ouverture de la bouche, accompagné d\'expirations saccadées et d\'un léger plissement des yeux. Les chercheurs considèrent désormais le rire comme un facteur d\'amélioration de notre santé physique et mentale. Alors que les situations de la vie nous rendent de plus en plus amers et malades, Il Est Écrit vous propose un traitement par le rire. Dans ce magazine, nous découvrirons ensemble 07 bienfaits du rire...                                                                                                                                                                                                                             2-Méditation : LES EXPLOITS DE L\'EAU VIVE ! (Pst George HERMANS) L\'eau, si indispensable à la vie sur terre, possède des propriétés fantastiques.  Dans cette édition, nous verrons comment l\'eau symbolise ce que Dieu par son Esprit veut accomplir dans nos vies en 2023.                                                                                                                                                                             3- Page de nouvelles : Programme de 10 jours de prière du 11 au 21 janvier 2023- Réveil et Réforme -             4-De la musique apaisante pour fortifier notre foi...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu nous bénisse !', 0, 1, '2023-01-15 12:53:57', '2023-01-15 12:53:57'),
(102, NULL, 48, 281, 'yangmanavom@yahoo.fr', 'Armand Arnaud', 'JESUS le Matinal', 0, 1, '2023-01-16 05:12:52', '2023-01-16 05:12:52'),
(103, NULL, 48, 282, 'yangmanavom@yahoo.fr', 'Armand Arnaud', 'Le combatant', 0, 1, '2023-01-16 05:15:36', '2023-01-16 05:15:36'),
(104, NULL, 48, 283, 'yangmanavom@yahoo.fr', 'Armand Arnaud', 'Une Eglise prosternée devant le Seigneur', 0, 1, '2023-01-17 17:37:47', '2023-01-17 17:37:47'),
(105, NULL, 48, 284, 'yangmanavom@yahoo.fr', 'Armand Arnaud', 'Le culte et le message des trois anges', 0, 1, '2023-01-18 06:12:43', '2023-01-18 06:12:43'),
(106, NULL, 48, 285, 'yangmanavom@yahoo.fr', 'Armand Arnaud', 'Jour Garder le cap', 0, 1, '2023-01-19 06:47:17', '2023-01-19 06:47:17'),
(107, NULL, 48, 286, 'yangmanavom@yahoo.fr', 'Armand Arnaud', 'J\'irai', 0, 1, '2023-01-20 06:27:30', '2023-01-20 06:27:30'),
(108, NULL, 40, 287, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Wo Moise Daniel Engamba', 0, 1, '2023-01-21 06:42:26', '2023-01-21 06:42:26'),
(109, NULL, 40, 288, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Prieres dans les derniers jours', 0, 1, '2023-01-21 06:53:13', '2023-01-21 06:53:13'),
(110, NULL, 42, 289, 'danielfopah@gmail.com', 'Clovis', 'Au menu : 1-Rubrique santé et Bien-être : 07 façons d\'intégrer le mouvement dans votre vie ! Notre corps est une fabuleuse machine offerte par notre Créateur. Savez-vous par exemple qu\'il y a environ 100 millions de nouveaux globules rouges qui se forment dans notre corps à chaque minute?  Et que notre cœur  pompe environ le tiers d\'une tasse de sang à chaque battement? Savez-vous que la longueur totale des vaisseaux sanguins dans notre corps est de 100 000 Km? Les découvertes les plus étonnantes continuent d\'être faites au sujet du corps humain, ce qui a poussé le Professeur André GIORDAN à écrire un livre intitulé : \"Mon corps, la première merveille du monde\". Cependant prendre soin de notre corps est une nécessité si nous voulons limiter les pannes de cette merveilleuse machine et jouir d\'une meilleure santé. Dans ce magazine, nous vous en disons un peu plus. 2-Méditation : QUI EST LE CHAUFFEUR DE TA VIE ? (Pst Michel William FOPAH). Nous devons un jour nous poser cette question si fondamentale : qu\'est-ce qui dirige notre vie? Est-ce la culpabilité, la colère, la haine, la peur, le désir de plaire à tout prix aux autres? De la réponse à ces questions dépendent notre échec ou notre succès en 2023 et pour la vie entière.      3- Page de nouvelles : Programme de 10 jours de prière du 11 au 21 janvier 2023- Réveil et Réforme - Le classement des meilleurs hôpitaux aux USA 4-De la bonne musique pour nous édifier', 0, 1, '2023-01-22 11:37:38', '2023-01-22 11:37:38'),
(111, NULL, 46, 290, 'bakari@rie.fm', 'Abraham', 'Ecoute et pardon', 0, 1, '2023-01-22 15:49:16', '2023-01-22 15:49:16'),
(112, NULL, 46, 291, 'bakari@rie.fm', 'Abraham', 'Les familles composées', 0, 1, '2023-01-22 15:54:38', '2023-01-22 15:54:38'),
(113, NULL, 46, 292, 'bakari@rie.fm', 'Abraham', 'Education familliale', 0, 1, '2023-01-23 09:47:22', '2023-01-23 09:47:22'),
(114, NULL, 46, 293, 'bakari@rie.fm', 'Abraham', 'Foi et sentiment', 0, 1, '2023-01-25 13:10:33', '2023-01-25 13:10:33'),
(116, NULL, 10, 295, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'Esaie 1', 0, 1, '2023-01-26 09:48:50', '2023-01-26 09:48:50'),
(117, NULL, 40, 296, 'MavisBaldosrg@seznam.cz', 'Inconu', 'le courage de croire', 0, 1, '2023-01-29 13:48:03', '2023-01-29 13:48:03'),
(118, NULL, 40, 297, 'MavisBaldosrg@seznam.cz', 'Inconu', 'bikote kote minyelan', 0, 1, '2023-01-29 13:59:14', '2023-01-29 13:59:14'),
(119, NULL, 40, 298, 'MavisBaldosrg@seznam.cz', 'Inconu', 'le pain quotidien 001', 0, 1, '2023-01-29 14:15:56', '2023-01-29 14:15:56'),
(120, NULL, 40, 299, 'MavisBaldosrg@seznam.cz', 'Inconu', 'le pain quotidien 002', 0, 1, '2023-01-29 14:24:56', '2023-01-29 14:24:56'),
(121, NULL, 40, 300, 'MavisBaldosrg@seznam.cz', 'Inconu', 'le pain quotidien 003', 0, 1, '2023-01-29 14:26:42', '2023-01-29 14:26:42'),
(122, NULL, 40, 301, 'MavisBaldosrg@seznam.cz', 'Inconu', 'le pain quotidien 004', 0, 1, '2023-01-29 14:28:19', '2023-01-29 14:28:19'),
(123, NULL, 40, 302, 'MavisBaldosrg@seznam.cz', 'Inconu', 'le pain quotidien 005', 0, 1, '2023-01-29 14:30:25', '2023-01-29 14:30:25'),
(124, NULL, 62, 303, 'ikitanael@yahoo.fr', 'stephanie', 'l\'origine de la vie', 0, 1, '2023-01-29 14:43:15', '2023-01-29 14:43:15'),
(125, NULL, 62, 304, 'ikitanael@yahoo.fr', 'stephanie', 'le premier jour de ce monde', 0, 1, '2023-01-29 14:47:34', '2023-01-29 14:47:34'),
(126, NULL, 62, 305, 'ikitanael@yahoo.fr', 'stephanie', 'Dieu créa le ciel', 0, 1, '2023-01-29 14:49:51', '2023-01-29 14:49:51'),
(127, NULL, 62, 306, 'ikitanael@yahoo.fr', 'stephanie', 'Dieu créa les plantes', 0, 1, '2023-01-29 14:52:17', '2023-01-29 14:52:17'),
(128, NULL, 62, 307, 'ikitanael@yahoo.fr', 'stephanie', 'Dieu créa le soleil', 0, 1, '2023-01-29 14:54:03', '2023-01-29 14:54:03'),
(129, NULL, 40, 308, 'MavisBaldosrg@seznam.cz', 'Inconu', 'l\'eau', 0, 1, '2023-01-29 15:05:23', '2023-01-29 15:05:23'),
(130, NULL, 40, 309, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Les compléments alimentaires', 0, 1, '2023-01-29 15:08:20', '2023-01-29 15:08:20'),
(131, NULL, 40, 310, 'MavisBaldosrg@seznam.cz', 'Inconu', 'le soleil', 0, 1, '2023-01-29 15:09:09', '2023-01-29 15:09:09'),
(132, NULL, 40, 311, 'MavisBaldosrg@seznam.cz', 'Inconu', 'les aliments froids ou chauds', 0, 1, '2023-01-29 15:10:20', '2023-01-29 15:10:20'),
(133, NULL, 40, 312, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Des condiments', 0, 1, '2023-01-29 15:12:46', '2023-01-29 15:12:46'),
(134, NULL, 42, 313, 'danielfopah@gmail.com', 'Clovis', 'Shalom ! Votre émission radiophonique IL EST ECRIT , sur la CRTV station régionale de l\'Ouest (93.5FM), chaque samedi matin à partir de 07h 00. Edition du samedi 04 Février 2023. Au menu : 1-Rubrique santé et Bien-être : Comment sortir de la fosse de la dépression ! La dépression est la maladie mentale la plus courante dans notre société et qui se caractérise par la tristesse ou une perte d\'intérêt. A cause des préjugés que suscite cette maladie, plusieurs personnes en souffrent et n\'osent pas en parler. Elles vivent renfermées sur elles et dans le pire des cas, elles développent des pensées suicidaires. Restez des nôtres alors que nous recevrons quelques conseils pratiques pour se sortir de la dépression. 2-Méditation : SAMSON-LA TRAGÉDIE D\'UN COEUR BRISÉ (Pst ANDRÉ MAKON) Dieu a des attentes à notre égard, et particulièrement pour la jeunesse. En effet, la volonté de Dieu est que chaque jeune réussisse sa vie. Pour cela, il les invite à lui consacrer toutes leurs énergies physiques, mentales et spirituelles, afin de ne pas passer à côté de l\'avenir radieux qu\'il leur réserve. Ce matin, à travers l\'exemple négatif de Samson dans la Bible, Il Est Écrit veut aider la jeunesse à canaliser son potentiel. 3- Page de nouvelles : Une nomination importante dans une Ambassade... - Réveil et Réforme -... 4-De la bonne musique :  sélectionnée avec soin pour élever notre âme... NB:  SVP, bien vouloir partager avec au moins une personne--- Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu nous bénisse !', 0, 1, '2023-02-04 16:20:19', '2023-02-04 16:20:19'),
(135, NULL, 42, 314, 'danielfopah@gmail.com', 'Clovis', 'Shalom ! Votre émission radiophonique IL EST ECRIT , sur la CRTV station régionale de l\'Ouest (93.5FM), chaque samedi matin à partir de 07h 00. Edition \"spéciale Fête de la Jeunesse \" du samedi 11 Février 2023. Au menu : 1-Rubrique santé et Bien-être : COMMENT PRÉVENIR LES ADDICTIONS ! L\'addiction est un état de dépendance à un produit ou à une activité, avec des conséquences terribles pour la santé ou la vie de famille. Quelqu\'un a même déclaré que \" l\'addiction a trois destinations : l\'hôpital, la prison et le suicide \". Dès lors, comment prévenir et lutter efficacement contre toutes les formes d\'addictions? Dans ce magazine, nous vous disons tout. 2-Méditation : LA PROCRASTINATION EST L\'ENNEMIE ! (Anc ABRAHAM BAKARI). La procrastination est cette tendance à renvoyer à plus tard les décisions à prendre maintenant. Denis St-Pierre a affirmé : \"Savez-vous ce qui arrive dans la vie des gens qui abusent de la procrastination? La réponse en un mot est \"Rien\", c\'est-à-dire aucun progrès, aucune réussite\". Alors que notre pays le Cameroun célèbre la 57e édition de la fête nationale de la Jeunesse, IL EST ÉCRIT veut aider à guérir un fléau qui fait des ravages dans la société et particulièrement parmi cette jeunesse. 3- Page de nouvelles : Une Interview d\'une personnalité publique pour encourager la jeunesse - Réveil et Réforme - Une invitation pour un festival de musique religieuse... 4-De la bonne musique : pour transporter nos coeurs vers le ciel... NB:  SVP, bien vouloir partager avec au moins une personne--- Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu nous bénisse !', 0, 1, '2023-02-11 22:03:31', '2023-02-11 22:03:31'),
(136, NULL, 42, 316, 'danielfopah@gmail.com', 'Clovis', 'Pst ASSEMBE MINYONO', 0, 1, '2023-02-19 13:25:53', '2023-02-19 13:25:53'),
(137, NULL, 46, 317, 'bakari@rie.fm', 'Abraham', 'La gare', 0, 1, '2023-02-26 01:15:12', '2023-02-26 01:15:12'),
(138, NULL, 10, 318, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'Pasteur Carl Johnson', 0, 1, '2023-02-27 17:57:35', '2023-02-27 17:57:35'),
(139, NULL, 48, 319, 'yangmanavom@yahoo.fr', 'Armand Arnaud', 'Le pouvoir transformateur de la prière', 0, 1, '2023-03-06 05:36:13', '2023-03-06 05:36:13'),
(140, NULL, 46, 320, 'bakari@rie.fm', 'Abraham', 'Genèse 1', 0, 1, '2023-03-06 05:46:33', '2023-03-06 05:46:33'),
(141, NULL, 42, 321, 'danielfopah@gmail.com', 'Clovis', 'La femme diamant', 0, 1, '2023-03-09 14:54:21', '2023-03-09 14:54:21'),
(142, NULL, 40, 322, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Edibiga ya nem', 0, 1, '2023-03-17 16:13:57', '2023-03-17 16:13:57'),
(143, NULL, 40, 323, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Les héros de la foi', 0, 1, '2023-03-17 16:21:27', '2023-03-17 16:21:27'),
(144, NULL, 10, 324, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'Aimer c\'est se sacrifier', 0, 1, '2023-03-19 11:47:29', '2023-03-19 11:47:29'),
(145, NULL, 10, 325, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'Aimer c\'est être reconnaissant', 0, 1, '2023-03-19 11:49:40', '2023-03-19 11:49:40'),
(146, NULL, 42, 326, 'danielfopah@gmail.com', 'Clovis', 'Shalom ! Votre émission radiophonique IL EST ECRIT , sur la CRTV station régionale de l\'Ouest (93.5FM), chaque samedi matin à partir de 07h 00. Edition Spéciale Journée Mondiale de la Jeunesse du samedi 18 mars 2023. Au menu : 1-Rubrique santé et Bien-être :*COMMENT GARDER NOS REINS EN BONNE SANTÉ! Les statistiques montrent qu\'1 adulte sur 10 souffre d\'une affection rénale chronique, soit près de 850 millions de personnes dans le monde. D\'ailleurs selon les projections de l\'Organisation Mondiale de la santé (OMS), si rien ne change d\'ici 2033, plus d\"un milliard de personnes souffriront d\'une maladie rénale chronique. C\'est énorme et ça fait peur! Et pourtant il nous est possible à tous de prendre soin de nos reins chaque jour. Dans ce magazine, nous vous proposons 08 conseils pratiques pour garder nos reins en bonne santé. 2-Méditation :*AIMER EST UN VERBE Le plus grand et le plus bel exemple d\'un amour qui se sacrifie, nous est donné par le Seigneur Jésus-Christ. Que se passerait-il dans le monde si chacun manifestait un amour semblable à celui de notre Seigneur? Restez des nôtres alors que nous en apprendrons davantage sur le sacrifice d\'amour de Jésus pour nous. 3- Page de nouvelles : Réveil et Réforme - Une conférence santé à Nkongsamba... 4-De la bonne musique chrétienne : pour élever nos coeurs vers le ciel... NB:  SVP, bien vouloir partager avec au moins une personne--- Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu nous bénisse !', 0, 1, '2023-03-19 13:00:34', '2023-03-19 13:00:34'),
(147, NULL, 10, 327, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'Aimer c\'est être reconnaissant', 0, 1, '2023-03-20 14:33:37', '2023-03-20 14:33:37'),
(148, NULL, 10, 328, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'Aimer c\'est faire confiance', 0, 1, '2023-03-21 22:23:48', '2023-03-21 22:23:48'),
(149, NULL, 10, 329, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'Aimer c\'est obéir', 0, 1, '2023-03-21 22:54:15', '2023-03-21 22:54:15'),
(150, NULL, 10, 330, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'Aimer c\'est adorer', 0, 1, '2023-03-23 09:09:29', '2023-03-23 09:09:29'),
(151, NULL, 40, 331, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Eclaire ma bougie', 0, 1, '2023-03-24 01:32:24', '2023-03-24 01:32:24'),
(152, NULL, 10, 332, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'Aimer c\'est partager', 0, 1, '2023-03-24 01:36:30', '2023-03-24 01:36:30'),
(153, NULL, 10, 333, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'Aimer c\'est attendre', 0, 1, '2023-03-25 12:39:23', '2023-03-25 12:39:23'),
(154, NULL, 10, 334, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'Au menu : 1-Rubrique santé et Bien-être :  07 CONSEILS POUR GÉRER L\'ANXIÉTÉ ET L\'INQUIÉTUDE!  Selon l\'Organisation Mondiale de la Santé, l\'anxiété (qui touche 1 personne sur 10, adulte comme enfant) est un état de trouble psychique causé par la crainte d\'un danger. En voici quelques symptômes : sensation de fatigue, difficulté à respirer, vertiges, nausées, transpiration, poids sur la poitrine, engourdissement des mains et pieds... L\'anxiété peut gâcher notre vie. Voilà pourquoi dans ce magazine, nous partagerons quelques conseils pratiques pour gérer la gérer.  2-Méditation :*AIMER C\'EST ATTENDRE -Pst G. Olivier NDIKI BIAS Le second retour de Jésus est un rendez-vous auquel il nous invite tous. Et en réalité, si nous aimons notre Seigneur, nous devons nous préparer avec grand soin pour ce grand évènement... 3- Page de nouvelles : Bilan de la Journée Mondiale de la Jeunesse - Une conférence santé à ne pas manquer... 4-De la bonne musique chrétienne : pour élever nos coeurs vers le ciel... NB:  SVP, bien vouloir partager avec au moins une personne--- Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu nous bénisse !', 0, 1, '2023-03-25 23:10:30', '2023-03-25 23:10:30'),
(155, NULL, 40, 335, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Miss me Yesus', 0, 1, '2023-03-31 07:59:46', '2023-03-31 07:59:46'),
(156, NULL, 40, 336, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Connu que de Dieu', 0, 1, '2023-03-31 08:02:33', '2023-03-31 08:02:33'),
(157, NULL, 10, 337, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'Bonjour et bon réveil matinal ! Votre émission radiophonique IL EST ECRIT , sur la CRTV station régionale de l\'Ouest (93.5FM), chaque samedi matin à partir de 07h 00. Edition  du samedi 01 Avril 2023. Au menu : 1-Rubrique santé et Bien-être : LES BIENFAITS DE LA MARCHE. De nombreuses études ont prouvé que marcher est bénéfique à la fois pour notre santé physique et mentale. C\'est  une activité simple et gratuite que tous, jeunes et vieux, seuls ou en groupe, peuvent pratiquer quotidiennement pour améliorer la santé dans nos familles et réduire ainsi grandement les multiples dépenses liées à la santé. Dans cette édition, nous  analyserons quelques bienfaits de la marche. 2-Méditation : UNE PUISSANCE ILLIMITEE-Pst Jean-Marie TCHOUALEU. Le but de Dieu est de nous changer de l\'intérieur, de changer nos coeurs et de nous donner tellement de puissance que nous ayons toujours le désir de faire le bien. Nous étudierons l\'exemple de Jésus-Christ lorsqu\'il était sur terre pour découvrir quel était son secret face aux tentations et nous en tirerons des leçons pratiques pour chacun d\'entre nous. 3- Page de nouvelles : Heroes 2 : le jeu vidéo sur la Bible à télécharger', 0, 1, '2023-04-01 12:33:54', '2023-04-01 12:33:54'),
(158, NULL, 40, 338, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Eding', 0, 1, '2023-04-07 17:32:30', '2023-04-07 17:32:30'),
(159, NULL, 40, 339, 'MavisBaldosrg@seznam.cz', 'Inconu', 'JESUS LE DERNIER ESPOIR', 0, 1, '2023-04-07 17:35:25', '2023-04-07 17:35:25'),
(160, NULL, 42, 340, 'danielfopah@gmail.com', 'Clovis', 'Shalom et bon réveil matinal ! Votre émission radiophonique IL EST ECRIT , sur la CRTV station régionale de l\'Ouest (93.5FM), chaque samedi matin à partir de 07h 00. Edition  du samedi 08 Avril 2023. Au menu :  1-Rubrique santé et Bien-être : LES SIGNES POUVANT ALERTER SUR LES PROBLEMES DE REINS. Les reins sont deux petits organes indispensables à la vie. Selon l\'OMS, en 2040, les maladies rénales deviendront la 5e cause de décès dans le monde. Voilà nous devons tous agir pour une bonne santé de nos reins avant qu\'il ne se fasse tard, car prévenir vaut mieux que guérir…  2-Méditation : L\'AMOUR DE DIEU (Prof Karl JOHNSON). Dieu aime chacun de nous personnellement, d\'un amour profond et sans limite. Un amour manifesté en Jésus-Christ  qui a consenti à souffrir et mourir pour nos péchés, afin que nous soyons réconciliés avec notre Créateur et ayons la paix…  3- Page de nouvelles : l\'éducation adventiste \"apporte\" la lumière dans un village - Réveil et Réforme…  4-De la bonne musique chrétienne : pour diriger nos coeurs vers le ciel…  NB:  SVP, bien vouloir partager avec au moins une personne--- Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu nous bénisse !', 0, 1, '2023-04-09 01:33:51', '2023-04-09 01:33:51'),
(161, NULL, 42, 341, 'danielfopah@gmail.com', 'Clovis', 'Maranatha ! Votre émission radiophonique IL EST ECRIT , sur la CRTV station régionale de l\'Ouest (93.5FM), chaque samedi matin à partir de 07h 00. Edition  du samedi 15 Avril 2023. Au menu :  1-Rubrique santé et Bien-être : 07 aliments qui garderont vos reins en bonne santé ! Les reins  sont deux petits organes indispensables à la vie, et utiles notamment pour la filtration du sang et l\'évacuation des déchets du corps à travers l\'urine. Il est donc logique de les garder en bonne santé pour rester en forme. Dans cette édition, nous vous proposons les meilleurs aliments qui aident à maintenir le bon fonctionnement de vos reins.  2-Méditation : Fortifie-toi et prends courage ! Devant les difficultés de plus en plus croissantes de la vie, la tendance est à la peur et à l\'angoisse, à l\'inquiétude et au désespoir. Dans ce magazine, nous découvrirons que nous pouvons grandement faire confiance à Dieu, parce qu\'il a un plan pour chacun d\'entre nous.  3- Page de nouvelles : Réveil et Réforme - Une Conférence biblique pour Le Commencement d\'une vie nouvelle... …  4-De la musique  chrétienne : douce et belle, pour notre édification...  NB:  SVP, bien vouloir partager avec au moins une personne--- Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu nous bénisse !', 0, 1, '2023-04-16 19:14:36', '2023-04-16 19:14:36'),
(162, NULL, 40, 342, 'MavisBaldosrg@seznam.cz', 'Inconu', 'La mort', 0, 1, '2023-04-21 15:26:17', '2023-04-21 15:26:17'),
(163, NULL, 40, 343, 'MavisBaldosrg@seznam.cz', 'Inconu', 'DIEU n\'est pas loin', 0, 1, '2023-04-21 15:31:32', '2023-04-21 15:31:32'),
(164, NULL, 42, 345, 'danielfopah@gmail.com', 'Clovis', 'Pasteur Michel Fopah', 0, 1, '2023-04-22 23:30:44', '2023-04-22 23:30:44'),
(165, NULL, 42, 346, 'danielfopah@gmail.com', 'Clovis', 'Shalom ! Votre émission radiophonique IL EST ECRIT , sur la CRTV stations régionale de l\'Ouest (93.5FM), chaque samedi matin à partir de 07h 00. Edition  du samedi 29 Avril 2023. Au menu :  1-Rubrique santé et Bien-être : L\'IMPORTANCE DE RESPIRER UN AIR DE QUALITÉ ! L\'air est certes l\'élément le plus vital et le plus courant dans notre environnement et nous le respirons naturellement. Mais savez-vous que bien respirer améliore notre capacité de réflexion, notre vigilance et notre bien-être physique? Ne bougez surtout pas parce que dans ce magazine, nous vous en disons plus...  2-Méditation : DE LA CHENILLE AU PAPILLON ! Avec Dieu, une vie nouvelle est encore possible, quelle que soit la situation malheureuse et même désastreuse dans laquelle le péché nous a plongés en ce moment. Avec le Seigneur Jésus-Christ se tenant à nos côtés, il nous est possible à tous de prendre un nouveau départ pour une vie meilleure. Restez des nôtres alors que dans cette édition nous vous proposons 5 étapes à suivre pour y parvenir... 3- Page de nouvelles : Réveil et Réforme - Des écoles d\'une école adventiste fournissent des provisions alimentaires à 56 familles...   4-De la bonne musique  chrétienne : pour rafraichir nos âmes...', 0, 1, '2023-04-29 11:02:10', '2023-04-29 11:02:10'),
(166, NULL, 40, 348, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Minga ya Kana', 0, 1, '2023-05-05 21:00:16', '2023-05-05 21:00:16'),
(167, NULL, 40, 349, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Deux clés du bonheur', 0, 1, '2023-05-05 21:02:13', '2023-05-05 21:02:13'),
(168, NULL, 42, 350, 'danielfopah@gmail.com', 'Clovis', '1-Rubrique santé et Bien-être : QUAND FAUT-IL BOIRE DE L\'EAU ? Boire de l\'eau est l\'une des meilleures habitudes quotidiennes,  parce qu\'elle est essentielle au bon fonctionnement  de tous nos organes. Cependant, il est essentiel de savoir que l\'heure à laquelle on boit de l\'eau, optimise les bienfaits qu\'elle apporte à notre corps. Restez des nôtres et vous en saurez un peu plus sur les meilleurs moments pour boire de l\'eau et rester en bonne santé.   2-Méditation : TERRE DES HOMMES Nous ne sommes pas sur terre par hasard. Mais plus tôt par la volonté de Dieu qui nous a créés par amour.  Et sa volonté est de nos avoir pour partenaires, avec tout ce que cela implique maintenant et pour l\'éternité...  3- Page des nouvelle : Réveil et Réforme - Session de formation des Communicateurs adventistes  ...  4-De la bonne musique chrétienne : pour rafraichir nos âmes...', 0, 1, '2023-05-10 11:37:30', '2023-05-10 11:37:30'),
(169, NULL, 10, 351, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'Bonjour et beaucoup de bénédictions en ce jour !', 0, 1, '2023-05-14 13:12:38', '2023-05-14 13:12:38'),
(170, NULL, 42, 352, 'danielfopah@gmail.com', 'Clovis', 'Bonjour à tous ! Votre émission radiophonique IL EST ECRIT , sur la CRTV station régionale de l\'Ouest (93.5FM), tous les samedi matin dès 07h 00. Edition spéciale fête de l\'unité  du samedi 20 Mai 2023. Au menu :  1-Rubrique santé et Bien-être :Les dangers de l\'addiction ! L\'addiction, cet état de dépendance à un produit ou encore à une activité,  présente de grands dangers pour notre santé en plus de perturber l\'équilibre de nos familles. Dans cette édition, Il Est Écrit vous plonge au coeur d\'un fléau ô combien répandu dans notre société.   2-Méditation : Des liens de sang ! Quelles sont nos véritables origines, au-delà de la langue, de la tribu, de la race ou même encore de la religion? En vérité, nous sommes tous frères et soeurs de sang. Alors que notre pays célèbre sa 51e édition de la fête nationale de l\'unité, Il Est Écrit nous plonge dans ce que la Bible révèle sur notre identité commune véritable. Restez des nôtres et vous en saurez un peu plus... 3- Page des nouvelle : Réveil et Réforme - Des centaines de familles retrouvent le sourire...  4-De la bonne musique chrétienne : pour élever nos âmes vers le Seigneur...  NB:  SVP, bien vouloir partager avec au moins une personne--- Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu nous bénisse !', 0, 1, '2023-05-21 21:56:26', '2023-05-21 21:56:26'),
(171, NULL, 42, 353, 'danielfopah@gmail.com', 'Clovis', 'RDV ce matin à 7h00 sur YouTube Cliquez juste sur ce lien et bien sûr, cliquez ensuite sur \"J\'aime\",\" S\'abonner\", \"Commenter\" et \" Partager\". 👇🏾👇🏾👇🏾👇🏾👇🏾👇🏾👇🏾👇🏾 https://youtu.be/g2Jg4hjM_lI', 0, 1, '2023-05-27 10:03:12', '2023-05-27 10:03:12'),
(172, NULL, 46, 354, 'bakari@rie.fm', 'Abraham', 'Merci maman', 0, 1, '2023-06-02 09:29:20', '2023-06-02 09:29:20'),
(173, NULL, 46, 355, 'bakari@rie.fm', 'Abraham', 'A GENOUX MAIS FORT', 0, 1, '2023-06-03 18:21:11', '2023-06-03 18:21:11'),
(174, NULL, 10, 357, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'Maranatha ! Votre émission radiophonique IL EST ECRIT , sur la CRTV station régionale de l\'Ouest (93.5FM), tous les samedi matin dès 07h 00. Edition  samedi 03  Juin 2023. Au menu :  1-Rubrique santé et Bien-être :Comment rester jeune et en bonne santé ! De tout temps, les hommes ont toujours recherché la fontaine de Jouvence. Tous, sans exception, nous pouvons rester jeunes, frais, et en pleine forme, malgré le stress de tous les jours et des conditions de vie de plus en plus difficiles. Restez des nôtres et vous en saurez davantage...        2-Méditation :Prier sans cesse ! Nous pouvons chaque jour garder une relation vivante avec notre Créateur et avancer dans cette vie en étant à chaque instant, remplis de la force qu\'il nous communique. Dans cette édition nous vous disons comment... 3- Page des nouvelle : Réveil et Réforme - Visite d\'une Altesse Royale -...  4-De la musique douce et sélectionnée avec soin : pour nous édifier...  NB:  SVP, bien vouloir partager avec au moins une personne--- Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu nous bénisse !', 0, 1, '2023-06-04 12:31:12', '2023-06-04 12:31:12'),
(175, NULL, 40, 358, 'MavisBaldosrg@seznam.cz', 'Inconu', 'L\'enfant prodigue', 0, 1, '2023-06-08 21:32:55', '2023-06-08 21:32:55'),
(176, NULL, 42, 359, 'danielfopah@gmail.com', 'Clovis', 'Maranatha ! Votre émission radiophonique IL EST ECRIT , sur la CRTV station régionale de l\'Ouest (93.5FM), tous les samedi matin dès 07h 00. Edition  samedi 10 Juin 2023. Au menu :  1-Rubrique santé et Bien-être :Comment faire face à la dépression ! Ce trouble mental qui peut avoir des conséquences sur le sommeil, l\'alimentation, la famille, la scolarité ou le travail, ainsi que sur la santé en général; avec notamment un grand risque de suicide dans les cas les plus graves. Ce matin, Il Est Écrit  nous donne 06 conseils pour prendre soin de nous et faire face à la dépression.   2-Méditation : La personne du Saint-Esprit ! Comprendre la personne et l\'oeuvre du Saint-Esprit nous donne une meilleure compréhension de sa mission. Restez des nôtres alors que nous aborderons ensemble ce que la Bible nous révèle au sujet du Consolateur promis...                                                                                         3- Page des nouvelle : Réveil et Réforme - Le retour à  l\'école de plus de 1 000 enfants réfugiés...                                                         4-De la bonne musique pour nous élever vers le ciel ...  NB:  SVP, bien vouloir partager avec au moins une personne--- Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu nous bénisse !', 0, 1, '2023-06-10 10:06:22', '2023-06-10 10:06:22'),
(177, NULL, 42, 360, 'danielfopah@gmail.com', 'Clovis', 'Votre émission radiophonique IL EST ECRIT , sur la CRTV station régionale de l\'Ouest (93.5FM), tous les samedi matin dès 07h 00. Edition  samedi 17 Juin 2023. Au menu :  1-Rubrique santé et Bien-être :Les secrets du bonheur! Savez-vous que malgré la pression quotidienne et les immenses défis, tous,nous pouvons mener une existence plus épanouie? Dans ce magazine, nous vous livrons les clés du bonheur.  2-Méditation :Enfin les vacances! Voici a période des vacances. Beaucoup y trouveront l\'occasion pour se livrer à toutes sortes de mauvaises passions. Ce matin, IL EST ECRIT, vous délivre la clef pour faire de vos vacances des momenta utiles dans le Seigneur.', 0, 1, '2023-06-18 14:29:09', '2023-06-18 14:29:09'),
(178, NULL, 42, 361, 'danielfopah@gmail.com', 'Clovis', 'Shalom ! Votre émission radiophonique IL EST ECRIT , sur la CRTV station régionale de l\'Ouest (93.5FM), tous les samedi matin dès 07h 00. Edition du samedi 24 Juin 2023. Au menu :  1-Rubrique santé et Bien-être :L\'importance de l\'espoir sur notre santé mentale ! L\'espoir est une émotion qui donne de la motivation, du courage et de l\'endurance devant l\'adversité. Il nous incite à passer à l\'action. Quels sont les bienfaits de l\'espoir sur notre santé? La réponse se trouve dans cette édition.   2-Méditation :Le syndrome de Sodome et Gomorrhe. L\'homosexualité est devenue un sujet, ô combien sensible. Qu\'est-ce que la Bible a à nous dire sur cette pratique qui gagne du terrain dans nos familles? Est-ce une pratique acceptable pour le Seigneur? IL EST ECRIT vous plonge aujourd\'hui dans une question de société ...                                                                           3- Page des nouvelles : Réveil et Réforme - ADRA au secours des victimes d\'inondation - l\'Excellence Académique célébrée dans le Collèges adventistes...                                                         4-De la musique sélectionnée avec soin pour nous rapprocher du ciel...', 0, 1, '2023-06-24 08:16:20', '2023-06-24 08:16:20'),
(179, NULL, 42, 362, 'danielfopah@gmail.com', 'Clovis', 'Au menu :  1-Rubrique santé et Bien-être :Les repas pris en famille ! Savez-vous que manger avec nos enfants peut avoir un impact significatif sur leur santé mentale, physique et spirituelle? Malheureusement, nous sommes devenus tellement occupés que cela nous échappe. Dans ce magazine,  découvrons ensemble 04 avantages qu\'il y a à manger avec nos enfants...  2-Méditation : Merci, merci, merci! Un petit mot qui peut changer beaucoup de choses dans nos relations. Et éviter bien de conflits, de tensions et de disputes dans nos maisons et dans notre société. Ce matin, Il Est Écrit nous montre comment faire de la gratitude une attitude... 3- Page des nouvelle : Réveil et Réforme - Interview du président de l\'Église adventiste au Cameroun - Une école adventiste innove dans la prévention des grossesses précoces... 4-De la musique douce, sélectionnée avec soin : pour nous édifier...  NB:  SVP, bien vouloir partager avec au moins une personne--- Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu nous bénisse !', 0, 1, '2023-07-01 12:52:39', '2023-07-01 12:52:39');
INSERT INTO `comment` (`id`, `parent_id`, `author_id`, `item_id`, `email`, `nickname`, `content`, `active`, `rgpd`, `created_at`, `updated_at`) VALUES
(180, NULL, 42, 363, 'danielfopah@gmail.com', 'Clovis', 'Au menu : 1-Rubrique santé et Bien-être : Comment réduire les dangers d\'une position assise prolongée ! Du matin au soir, pour manger, pour se rendre à son lieu de service, et même pendant les heures de travail, pour regarder le journal télévisé ou un match de football, etc., chacun de nous passe quotidiennement plus de 09 heures en position assise. C\'est énorme et cela nous expose à beaucoup de maladies graves. Dans cette édition, nous partagerons ensemble quelques conseils pour limiter les méfaits sur notre santé d\'une position assise prolongée. 2-Méditation : Jésus et les femmes ! Dans la mouvance du 3e Congrès national des Femmes Adventistes au Cameroun, nous nous attarderons à la lumière des Saintes Écritures sur la valeur que le Seigneur Jésus-Christ a accordé aux femmes dans ses paroles et ses actes, en contradiction avec la pensée dominante de son époque. 3- Page de nouvelles : Réveil et Réforme - Échos du 3e Congrès des Femmes Adventistes - Des familles pauvres reçoivent des transferts d\'argent... 4-De la musique douce et apaisante : pour nous inspirer...', 0, 1, '2023-07-08 13:46:02', '2023-07-08 13:46:02'),
(181, NULL, 42, 364, 'danielfopah@gmail.com', 'Clovis', 'Shalom ! Votre émission radiophonique IL EST ECRIT , sur la CRTV station régionale de l\'Ouest (93.5FM), chaque samedi matin à partir de 07h 00. Edition du samedi 15 Juillet 2023. Au menu : 1-Rubrique santé et Bien-être :07 façons d\'intégrer le mouvement dans votre vie! Notre corps est une fabuleuse machine. Savez-vous par exemple qu\'il y a environ 100 millions de nouveaux globules rouges qui s\'y forment à chaque minute?  Et que notre cœur  pompe environ le tiers d\'une tasse de sang à chaque battement? Savez-vous que la longueur totale des vaisseaux sanguins dans notre corps est de 100 000 Km? Les découvertes les plus étonnantes continuent d\'être faites au sujet du corps humain, ce qui a poussé le Professeur André GIORDAN à écrire un livre intitulé : \"Mon corps, la première merveille du monde\". Cependant prendre soin de notre corps est une nécessité si nous voulons limiter les pannes de cette merveilleuse machine et jouir d\'une meilleure santé. Dans ce magazine, nous vous disons comment... 2-Méditation :QUI EST LE CHAUFFEUR DE TA VIE ? (Pst Michel William FOPAH). Qu\'est-ce qui dirige notre vie? Est-ce la culpabilité, la colère, la haine, la peur, la jalousie, le désir de plaire à tout prix aux autres? Nous devons chacun nous poser cette question fondamentale. Et notre réponse va  déterminer notre échec ou notre succès pour la vie entière.      3- Page de nouvelles : Des jeunes entre 11 et 17 ans, pour prêcher l\'Évangile - Réveil et Réforme - La journée mondiale des enfants... 4-De la bonne musique pour nous édifier NB:  SVP, bien vouloir partager avec au moins une personne--- Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu nous bénisse', 0, 1, '2023-07-15 10:45:17', '2023-07-15 10:45:17'),
(182, NULL, 42, 365, 'danielfopah@gmail.com', 'Clovis', 'Au menu : 1-Rubrique santé et Bien-être : 07 CONSEILS POUR GÉRER L\'ANXIÉTÉ ET L\'INQUIÉTUDE! Selon l\'Organisation Mondiale de la Santé, l\'anxiété (qui touche 1 personne sur 10, adulte comme enfant) est un état de trouble psychique causé par la crainte d\'un danger. En voici quelques symptômes : sensation de fatigue, difficulté à respirer, vertiges, nausées, transpiration, poids sur la poitrine, engourdissement des mains et des pieds... L\'anxiété peut gâcher notre vie. Voilà pourquoi dans ce magazine, nous partagerons quelques conseils pratiques pour mieux la gérer.   2-Méditation :Venir à bout de la paresse : le travail est un trésor (Ancien A.BAKARI). Le travail a une valeur incommensurable : il évite à l\'homme de s\'ennuyer ou de sombrer dans le vice ou le désespoir, en plus de subvenir à ses besoins. Ce matin, IL EST ÉCRIT rappelle à tous que \" tout ce qui vaut la peine d\'être fait, mérite d\'être bien fait\".  3- Page de nouvelles : des Certifications Internationales gratuites pour tous - Réveil et Réforme - des adolescents impactent une ville pour Christ...  4-De la bonne musique chrétienne : pour élever nos coeurs vers le ciel...  NB:  SVP, bien vouloir partager avec au moins une personne--- Vos témoignages sont aussi vivement attendus.  Bonne écoute et surtout que Dieu nous bénisse !', 0, 1, '2023-07-30 19:07:29', '2023-07-30 19:07:29'),
(183, NULL, 42, 366, 'danielfopah@gmail.com', 'Clovis', '1-Rubrique santé et Bien-être : Améliorer notre capacité à gérer le stress ! Encore appelé le mal du 21e siècle, le stress peut être défini comme comme un état d\'inquiétude ou de tension mentale causé par les situations difficiles de la vie. Tous, nous le subissons et si nous ne faisons pas attention, notre santé physique et mentale en sera négativement affectée. Le stress peut causer par exemple : des maux de ventre et de tête, des problèmes de peau, des tensions musculaires, des palpitations cardiaques, des ulcères, dez troublea de sommeil et même un vieillissement accéléré. Et la liste est encore longue... Voilà pourquoi ce matin, Il Est Écrit nous livre la clef pour mieux gérer le stress.  2-Méditation :Prier, à quoi ça sert ? (Pasteur  REMY BALLAIS). Quelqu\'un a écrit :\" quand on ne prie plus, l\'âme se dessèche, se durcit, et finit par étouffer\". Mais c\'est quoi exactement la prière? Est-elle utile? Nous met-elle en relation avec Dieu? Dans ce magazine, nous répondrons à ces questions et à bien d\'autres encore...  3- Page de nouvelles : Heroes le jeu vidéo sur la Bible, à télécharger absolument - le Collège Adventiste de Kribi en fête - Réveil et Réforme...  4- De la musique religieuse, sélectionnée avec soin pour élever nos coeurs vers le ciel...  NB:  SVP, bien vouloir partager avec au moins une personne--- Vos témoignages sont aussi vivement attendus.  Bonne écoute et surtout que Dieu nous bénisse !', 0, 1, '2023-08-12 16:44:38', '2023-08-12 16:44:38'),
(184, NULL, 59, 367, 'joseelysee@gmail.com', 'Jean José', 'Le chretien solitaire - Josee Elysee', 0, 1, '2023-08-26 02:17:47', '2023-08-26 02:17:47'),
(185, NULL, 46, 368, 'bakari@rie.fm', 'Abraham', 'La prière', 0, 1, '2023-08-29 12:08:11', '2023-08-29 12:08:11'),
(186, NULL, 42, 369, 'danielfopah@gmail.com', 'Clovis', 'Au menu : 1-Rubrique santé et Bien-être : 07 promesses  bibliques quand vous doutez de l\'amour de Dieu ! Les personnes avec une bonne santé émotionnelle contrôlent mieux leurs pensées, leurs sentiments et leurs comportements. Malheureusement, beaucoup plongent dans le désespoir et arrivent jusqu\'au suicide parce que les choses sont difficiles; et surtout ils pensent que personne, pas même Dieu, ne soucie d\'eux. Voilà pourquoi ce matin, Il Est Écrit nous propose 07 promesses  bibliques lorsque nous doutons de l\'amour de Dieu.   2-Méditation :Des personnages anonymes (Pst Michel William FOPAH). Les mères jouent un rôle primordial dans la réussite de leurs enfants. C\'est pourquoi Il Est Écrit voudrait encourager toutes les mères, car elles devront nécéssairement consentir d\'énormes sacrifices pour que leurs enfants passent une année scolaire réussie...  3-Page de nouvelles : Réveil et Réforme - semaine de prière centrée sur la Famille - Échos de la rentrée scolaire prochaine... \"  4- De la musique chrétienne, pour rafraichir nos âmes...  NB:  SVP, bien vouloir partager avec au moins une personne--- Vos témoignages sont aussi vivement attendus.  Bonne écoute et surtout que Dieu nous bénisse !', 0, 1, '2023-09-02 12:45:21', '2023-09-02 12:45:21'),
(187, NULL, 40, 370, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Education et Rédemption', 0, 1, '2023-09-09 09:49:57', '2023-09-09 09:49:57'),
(188, NULL, 40, 371, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Mininga ya kana', 0, 1, '2023-09-15 18:47:49', '2023-09-15 18:47:49'),
(189, NULL, 51, 372, 'joseph_nkou@yahoo.com', 'Joseph', 'Rentrée scolaire', 0, 1, '2023-09-15 18:50:06', '2023-09-15 18:50:06'),
(190, NULL, 42, 373, 'danielfopah@gmail.com', 'Clovis', 'Au menu : 1-Rubrique santé et Bien-être : 07 conseils bibliques pour devenir plus patients ! La patience est une qualité permettant de prendre le temps de bien réfléchir, de prêter attention aux détails. Elle est utile dans n\'importe quel domaine de la vie. Un proverbe fufuldé affirme même que \"la patience peut cuire un caillou\"...  2-Méditation :*\"Va avec Jésus\"* (Pst Japhet NTOUNGA). Les parents doivent encourager leurs enfants à servir le Seigneur, surtout les adolescents qui traversent une période très délicate de leur existence...  3-Page de nouvelles : Réveil et Réforme - Échos de la célébration du 73e anniversaire du club des Explorateurs de la Jeunesse Adventiste - Des jeunes renoncent au cannabis pour suivre Jésus-...  4- De la bonne musique chrétienne, sélectionnée avec soin pour nourrir nos âmes...', 0, 1, '2023-09-16 07:57:20', '2023-09-16 07:57:20'),
(191, NULL, 40, 374, 'MavisBaldosrg@seznam.cz', 'Inconu', 'le caractere social d un prophete de Dieu past karl johnson', 0, 1, '2023-09-21 16:33:56', '2023-09-21 16:33:56'),
(192, NULL, 42, 375, 'danielfopah@gmail.com', 'Clovis', 'Edition du samedi 23 Septembre  2023.  Au menu : 1-Rubrique santé et Bien-être : 05 façons d\'aimer les autres même en cas de désaccord ! La santé émotionnelle, cet équilibre entre notre bien-être physique, mental, émotionnel, spirituel et même sexuel, nous aide à bien traiter les gens, même quand il existe des tensions. Ce matin Il Est Écrit nous montre comment aimer les autres même en cas de conflits...  2-Méditation :,\"Éduqués pour le ciel \"(Pst Michel William FOPAH). Alors que la recherche du pain quotidien conduit parfois à oublier l\'essentiel en ce qui concerne nos enfants, Il Est Écrit rappelle avec force que : dans la famille, la mère a un rôle important à jouer quand il s\'agit de l\'éducation des enfants...  3-Page de nouvelles : Réveil et Réforme - Prévention des maladies cardio-vasculaires, les adventistes se mobilisent à l\'Est -	Lutte contre le choléra, ADRA au secours des. Populations en Haïti-...  4- De la musique chrétienne,  pour nous mettre en communion avec le ciel ...  NB:  SVP, bien vouloir partager avec au moins une personne--- Vos témoignages sont aussi vivement attendus.  Bonne écoute et surtout que Dieu nous bénisse !', 0, 1, '2023-09-23 15:03:16', '2023-09-23 15:03:16'),
(193, NULL, 40, 376, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Les aiguillons', 0, 1, '2023-09-24 09:44:25', '2023-09-24 09:44:25'),
(194, NULL, 59, 377, 'joseelysee@gmail.com', 'Jean José', 'batailles', 0, 1, '2023-09-24 09:53:30', '2023-09-24 09:53:30'),
(195, NULL, 40, 378, 'MavisBaldosrg@seznam.cz', 'Inconu', 'La recherche de la vérité', 0, 1, '2023-09-24 10:26:09', '2023-09-24 10:26:09'),
(196, NULL, 40, 379, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Soyez Saint', 0, 1, '2023-09-26 17:29:52', '2023-09-26 17:29:52'),
(197, NULL, 42, 380, 'danielfopah@gmail.com', 'Clovis', 'Edition du samedi 30 Septembre  2023.  Au menu : 1-Rubrique santé et Bien-être : Les bienfaits de la joie pour notre santé ! La santé émotionnelle est cette capacité à savoir gérer correctement nos émotions aussi bien positives que négatives pour pouvoir se sentir bien. Ce matin, Il Est Écrit fait un focus sur la joie, ce sentiment de bonheur, de satisfaction vive et intense. Quels sont les bénéfices de la joie pour notre santé ? Restez des nôtres et vous saurez tout.   2-Méditation :,\"La rentrée scolaire \"(Prof KARL JOHNSON ). Après 04 semaines de cours, depuis le retour des vacances, Il Est Écrit voudrait continuer à sensibiliser, à travers quelques conseils et suggestions afin que cette année scolaire soit une réussite pour tous...  3-Page de nouvelles : Réveil et Réforme -	 Tremblement de terre au Maroc, ADRA intensifie ses efforts pour aider les victimes-...  4- De la bonne musique chrétienne,  pour élever nos cœurs vers le ciel...', 0, 1, '2023-09-30 17:45:24', '2023-09-30 17:45:24'),
(198, NULL, 40, 381, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Le pain', 0, 1, '2023-10-02 10:16:08', '2023-10-02 10:16:08'),
(199, NULL, 52, 382, 'jcmbolong@yahoo.fr', 'Jean Claude', 'Ezéchiel 43', 0, 1, '2023-10-02 10:23:05', '2023-10-02 10:23:05'),
(200, NULL, 40, 383, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Vome ya sobo', 0, 1, '2023-10-02 13:33:11', '2023-10-02 13:33:11'),
(201, NULL, 40, 384, 'MavisBaldosrg@seznam.cz', 'Inconu', 'L\'unite et la paix', 0, 1, '2023-10-02 13:36:25', '2023-10-02 13:36:25'),
(202, NULL, 42, 385, 'danielfopah@gmail.com', 'Clovis', 'Au menu : 1-Rubrique santé et Bien-être :06 façons d\'accroître notre bonheur! La santé émotionnelle nous permet de gérer correctement nos émotions, positives comme négatives, afin de se sentir bien dans sa peau. Malgré la vie de plus en plus difficile, il nous est possible à tous d\'être heureux chaque jour. Voilà pourquoi ce matin, Il Est Écrit nous propose 06 moyens pour y arriver...   2-Méditation :\"Les clefs du succès \"(Anc. Jean-Paul KETCHA). Dans le sillage de la célébration de la journée mondiale des enseignants le 05 Octobre dernier, Il Est Écrit s\'intéresse à ces nobles chevaliers de la craie, à travers une réflexion qui leur rappelle les principales conditions pour réussir dans leurs missions ô combien exaltantes, tout en rappelant aux autres acteurs de la chaîne éducative, comment collaborer avec les enseignants de leurs enfants...  3-Page de nouvelles : Réveil et Réforme - Une jeune musicienne adventiste(harpiste) de 17 ans obtient un prestigieux prix international en musique...  4- De la musique chrétienne, sélectionnée avec soin, pour rafraîchir nos cœurs...', 0, 1, '2023-10-07 07:16:40', '2023-10-07 07:16:40'),
(203, NULL, 46, 386, 'bakari@rie.fm', 'Abraham', 'DIEU comprend', 0, 1, '2023-10-10 09:21:35', '2023-10-10 09:21:35'),
(204, NULL, 46, 387, 'bakari@rie.fm', 'Abraham', 'Genese 1', 0, 1, '2023-10-10 10:57:03', '2023-10-10 10:57:03'),
(205, NULL, 46, 388, 'bakari@rie.fm', 'Abraham', 'Ecoute et pardon', 0, 1, '2023-10-10 11:18:13', '2023-10-10 11:18:13'),
(206, NULL, 46, 389, 'bakari@rie.fm', 'Abraham', 'Ingrid', 0, 1, '2023-10-10 12:13:43', '2023-10-10 12:13:43'),
(207, NULL, 46, 390, 'bakari@rie.fm', 'Abraham', 'L\'histoire d\'Ingrid', 0, 1, '2023-10-12 07:37:16', '2023-10-12 07:37:16'),
(208, NULL, 46, 391, 'bakari@rie.fm', 'Abraham', 'Genèse 2', 0, 1, '2023-10-12 10:00:24', '2023-10-12 10:00:24'),
(209, NULL, 46, 392, 'bakari@rie.fm', 'Abraham', 'L\'histoire de Chantal', 0, 1, '2023-10-12 17:02:41', '2023-10-12 17:02:41'),
(210, NULL, 10, 393, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'Edition du samedi 14 Octobre  2023.  Au menu : 1-Rubrique santé et Bien-être :Les bienfaits du sommeil! Le sommeil est cette fonction vitale de l\'organisme, tout comme la respiration, la digestion, ou l\'immunité et qui influe sur notre comportement dans la journée. Selon les spécialistes, nous passons environ un tiers de notre vie à dormir. Il est donc légitime que ce matin, Il Est Écrit s\'intéresse aux bénéfices du sommeil pour notre santé...   2-Méditation :\"Le courage de croire \"(pasteur Aimé COSENDAI ). Face à la vie de plus en plus chère, au chômage ambiant, aux guerres et conflits qui se généralisent, l\'homme moderne se sent profondément angoissé et découragé. Mais il existe une solution. Restez des nôtres alors que nous en parlons dans cette édition...   3-Page de nouvelles : Réveil et Réforme - la journée d\'appréciation du pasteur-des visiteurs spéciaux à l\'hôpital gynéco-obstétrique de Yassa ...  4- De la bonne musique chrétienne, sélectionnée avec soin, pour nous inspirer. ..', 0, 1, '2023-10-14 08:20:50', '2023-10-14 08:20:50'),
(211, NULL, 42, 394, 'danielfopah@gmail.com', 'Clovis', 'Pasteur Carl Johnson, Les heros de la foi', 0, 1, '2023-10-21 00:28:03', '2023-10-21 00:28:03'),
(212, NULL, 46, 395, 'bakari@rie.fm', 'Abraham', 'Daniel 5 Le festin de belschatsar', 0, 1, '2023-10-23 08:03:20', '2023-10-23 08:03:20'),
(213, NULL, 46, 396, 'bakari@rie.fm', 'Abraham', 'Daniel 6', 0, 1, '2023-10-23 08:14:25', '2023-10-23 08:14:25'),
(214, NULL, 46, 397, 'bakari@rie.fm', 'Abraham', 'Daniel 7', 0, 1, '2023-10-23 08:22:08', '2023-10-23 08:22:08'),
(215, NULL, 46, 398, 'bakari@rie.fm', 'Abraham', 'Daniel 8', 0, 1, '2023-10-23 08:32:04', '2023-10-23 08:32:04'),
(216, NULL, 10, 399, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'Daniel 9', 0, 1, '2023-10-24 15:56:30', '2023-10-24 15:56:30'),
(217, NULL, 10, 400, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'Pasteur Vincent Roger Same', 0, 1, '2023-10-27 21:22:18', '2023-10-27 21:22:18'),
(218, NULL, 40, 401, 'MavisBaldosrg@seznam.cz', 'Inconu', 'dibi', 0, 1, '2023-11-03 08:06:09', '2023-11-03 08:06:09'),
(219, NULL, 40, 402, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Toussaint', 0, 1, '2023-11-03 08:14:39', '2023-11-03 08:14:39'),
(220, NULL, 52, 403, 'jcmbolong@yahoo.fr', 'Jean Claude', 'Petit , grand', 0, 1, '2023-11-04 00:25:26', '2023-11-04 00:25:26'),
(221, NULL, 46, 404, 'bakari@rie.fm', 'Abraham', 'Rwanda', 0, 1, '2023-11-04 08:39:26', '2023-11-04 08:39:26'),
(222, NULL, 46, 405, 'bakari@rie.fm', 'Abraham', 'A genoux', 0, 1, '2023-11-04 08:46:44', '2023-11-04 08:46:44'),
(223, NULL, 46, 406, 'bakari@rie.fm', 'Abraham', 'Armes de distraction', 0, 1, '2023-11-04 08:56:20', '2023-11-04 08:56:20'),
(224, NULL, 40, 407, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Ecole du Sabbat', 0, 1, '2023-11-04 09:22:38', '2023-11-04 09:22:38'),
(225, NULL, 10, 408, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'Prédictions', 0, 1, '2023-11-08 12:03:43', '2023-11-08 12:03:43'),
(226, NULL, 40, 409, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Les signes de la fin', 0, 1, '2023-11-08 12:12:47', '2023-11-08 12:12:47'),
(227, NULL, 59, 410, 'joseelysee@gmail.com', 'Jean José', 'Destination Eternite, Il Est Ecrit, Bafoussam', 0, 1, '2023-11-12 02:35:46', '2023-11-12 02:35:46'),
(228, NULL, 10, 411, 'danielmonprochainetoundi@gmail.com', 'Daniel', 'Osee 14', 0, 1, '2023-11-15 09:00:23', '2023-11-15 09:00:23'),
(229, NULL, 42, 412, 'danielfopah@gmail.com', 'Clovis', 'La strategie de David', 0, 1, '2023-11-18 06:13:46', '2023-11-18 06:13:46'),
(230, NULL, 46, 413, 'bakari@rie.fm', 'Abraham', 'Yes we can', 0, 1, '2023-11-20 06:23:47', '2023-11-20 06:23:47'),
(231, NULL, 40, 414, 'MavisBaldosrg@seznam.cz', 'Inconu', 'Vous n\'etes pas seul', 0, 1, '2023-11-20 06:30:11', '2023-11-20 06:30:11'),
(232, NULL, 46, 415, 'bakari@rie.fm', 'Abraham', 'Vous avez le choix', 0, 1, '2023-11-20 06:34:48', '2023-11-20 06:34:48'),
(233, NULL, 46, 416, 'bakari@rie.fm', 'Abraham', 'Unité dans la tempete', 0, 1, '2023-11-20 06:41:15', '2023-11-20 06:41:15'),
(234, NULL, 46, 417, 'bakari@rie.fm', 'Abraham', 'Une promesse est une promesse', 0, 1, '2023-11-20 08:33:28', '2023-11-20 08:33:28'),
(235, NULL, 51, 418, 'joseph_nkou@yahoo.com', 'Joseph', 'Noire et Belle', 0, 1, '2023-11-22 07:12:28', '2023-11-22 07:12:28'),
(236, NULL, 51, 419, 'joseph_nkou@yahoo.com', 'Joseph', 'Bonjour la rumeur', 0, 1, '2023-11-22 07:18:12', '2023-11-22 07:18:12'),
(237, NULL, 51, 420, 'joseph_nkou@yahoo.com', 'Joseph', 'Les mathématiques', 0, 1, '2023-11-22 07:24:55', '2023-11-22 07:24:55'),
(238, NULL, 51, 421, 'joseph_nkou@yahoo.com', 'Joseph', 'huile d\'onction', 0, 1, '2023-11-22 07:29:53', '2023-11-22 07:29:53');

-- --------------------------------------------------------

--
-- Table structure for table `domain`
--

CREATE TABLE `domain` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
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
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`id`, `author_id`, `subject`, `body`, `created_at`, `updated_at`) VALUES
(1, 37, 'PARTICIPER A L EMISSION EN COURS', 'Bonjour', '2021-11-11 03:00:46', '2021-11-11 03:00:46');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `author_id`, `category_id`, `title`, `discr`) VALUES
(1, 46, NULL, 'Temoignage de Yollande Nembot', 'podcast'),
(2, 46, NULL, 'Souvenirs du Rwanda', 'podcast'),
(3, 46, NULL, 'Assis même table', 'podcast'),
(4, 46, NULL, 'Merci maman', 'podcast'),
(5, 46, NULL, 'Psaumes 13', 'podcast'),
(6, 37, NULL, 'Psaumes 15', 'podcast'),
(7, 37, NULL, 'Consultations prenatales', 'podcast'),
(8, 37, NULL, 'Examens prénuptiaux', 'podcast'),
(9, 58, NULL, 'Jonas , La parole de l̀Eternel', 'podcast'),
(10, 58, NULL, 'Naaman Lepreux', 'podcast'),
(11, 58, NULL, 'Titanic Monde- navire', 'podcast'),
(12, 58, NULL, 'Vision soutenir cause', 'podcast'),
(13, 46, NULL, 'La confession', 'podcast'),
(14, 46, NULL, 'Psaume 16', 'podcast'),
(15, 46, NULL, 'Yollande Nembot, Espoir malgre l̀innatendue', 'podcast'),
(16, 46, NULL, 'Ce que j̀ai vu au Rwanda', 'podcast'),
(17, 46, NULL, 'A genoux mais fort', 'podcast'),
(18, 46, 1, 'A genoux mais fort', 'podcast'),
(19, 46, NULL, 'VOUS AVEZ LE CHOIX', 'podcast'),
(20, 46, NULL, 'LES LARMES DE UNITE', 'podcast'),
(21, 46, NULL, 'SOUVENIR DU RWANDA', 'podcast'),
(22, 46, NULL, 'JE NE VEND PLUS', 'podcast'),
(23, 10, NULL, 'ON NE TIRE PAS SUR UNE AMBULANCE', 'podcast'),
(24, 46, NULL, 'L\'ENFANT TRESOR', 'podcast'),
(25, 46, NULL, 'LES GOLIATHS DE LA JEUNESSE', 'podcast'),
(26, 46, NULL, 'OU SONT LES PERES', 'podcast'),
(27, 46, NULL, 'MERE DE VALEUR', 'podcast'),
(28, 46, NULL, 'NOS ENFANTS NOUS LES MERITONS', 'podcast'),
(29, 46, NULL, 'LA SUEUR ET LE SANG PARLENT', 'podcast'),
(30, 46, NULL, 'Rencontre avec Owono Carole', 'podcast'),
(32, 46, NULL, 'Introduction', 'podcast'),
(33, 10, NULL, 'Introduction aux dix jours', 'podcast'),
(34, 46, NULL, 'Consacré au Seigneur', 'podcast'),
(35, 46, NULL, 'Les pieds nus', 'podcast'),
(36, 46, NULL, 'Huile sacrée', 'podcast'),
(37, 46, NULL, 'l Ephode', 'podcast'),
(38, 46, NULL, 'La ceinture', 'podcast'),
(39, 10, NULL, 'Le Pectoral', 'podcast'),
(40, 46, NULL, 'l\'Encensoir', 'podcast'),
(41, 46, NULL, 'les clochettes et les grenades', 'podcast'),
(42, 46, NULL, 'L\'amour', 'podcast'),
(43, 46, NULL, 'Espace Sante', 'podcast'),
(44, 46, NULL, 'Jesus m̀a tant aime', 'podcast'),
(45, 40, NULL, 'VOUS AVEZ LE CHOIX', 'podcast'),
(46, 37, NULL, 'Jesus m̀a tant aime', 'podcast'),
(47, 39, NULL, 'SOUVENIR DU RWANDA', 'podcast'),
(48, 55, NULL, 'JE NE VEND PLUS', 'podcast'),
(49, 10, NULL, '02 Chroniques 23', 'podcast'),
(50, 55, NULL, 'ACTUALITES RELIGIEUSES', 'podcast'),
(51, 54, NULL, 'On devient enfant de DIEU', 'podcast'),
(52, 10, NULL, '2 CHRONIQUES 23', 'podcast'),
(53, 10, NULL, '2 CHRONIQUES 24', 'podcast'),
(54, 10, NULL, '2 CHRONIQUES 25', 'podcast'),
(55, 10, NULL, '2 CHRONIQUES 26', 'podcast'),
(56, 51, NULL, 'Noire et belle', 'podcast'),
(57, 46, NULL, 'CHANTAL   PIERRE', 'podcast'),
(58, 46, NULL, 'CHANTAL   PIERRE', 'podcast'),
(59, 48, NULL, 'Pour qui  es-tu riche ?', 'podcast'),
(60, 52, NULL, 'L\'Hépatite', 'podcast'),
(61, 52, NULL, 'L\'eau kaguem wather', 'podcast'),
(62, 52, NULL, 'L\'hysope', 'podcast'),
(63, 52, NULL, 'Avec Abanké', 'podcast'),
(64, 52, NULL, 'Faiblesse sexuelles', 'podcast'),
(65, 52, NULL, 'Infections à chlamedia', 'podcast'),
(66, 52, NULL, 'La Prostate', 'podcast'),
(67, 52, NULL, 'La tiphoide', 'podcast'),
(68, 52, NULL, 'Le charbon vegetal', 'podcast'),
(69, 52, NULL, 'Le moringa', 'podcast'),
(70, 52, NULL, 'Le Neem', 'podcast'),
(71, 52, NULL, 'Le Neem 2', 'podcast'),
(72, 52, NULL, 'Max7', 'podcast'),
(73, 52, NULL, 'Obesité, hemoroide, faiblesse', 'podcast'),
(74, 52, NULL, 'Santurel intro 01', 'podcast'),
(75, 52, NULL, 'Santurel 02', 'podcast'),
(76, 52, NULL, 'Soja', 'podcast'),
(78, 52, NULL, 'Le courage de croire', 'podcast'),
(79, 52, NULL, 'BARTIMEE EMISSION DU 23 OCTOBRE 2021', 'podcast'),
(80, 52, NULL, 'Connu que de Dieu', 'podcast'),
(81, 52, NULL, 'Le marchandage', 'podcast'),
(83, 52, NULL, 'L\'origine de la vie', 'podcast'),
(84, 52, NULL, 'Le premier jour de ce monde', 'podcast'),
(85, 52, NULL, 'Pasteur Alain Gwet 01', 'podcast'),
(86, 52, NULL, 'Pasteur Alain Gwet 02', 'podcast'),
(87, 52, NULL, 'Foi, paix, assurance', 'podcast'),
(88, 52, NULL, 'Dieu crea le ciel les nuages et l\'air', 'podcast'),
(89, 52, NULL, 'Dieu créa les plantes', 'podcast'),
(90, 52, NULL, 'JRF - Cedrick Alaka', 'podcast'),
(91, 52, NULL, 'Eclaire ma bougie', 'podcast'),
(92, 52, NULL, 'Jean Claude Mbong', 'podcast'),
(93, 52, NULL, 'Dieu créa le soleil, la lune et les etoiles', 'podcast'),
(94, 52, NULL, 'Dieu créa le soleil, la lune et les etoiles', 'podcast'),
(95, 52, NULL, 'La malédiction de la tête baissée', 'podcast'),
(96, 52, NULL, 'GENESE 24', 'podcast'),
(97, 52, NULL, 'RAC - Nkou Jc 01', 'podcast'),
(98, 52, NULL, 'RAC - Nkou Jc 02', 'podcast'),
(99, 52, NULL, 'Dieu créa les oisaux et les poissons', 'podcast'),
(100, 52, NULL, 'La creation  Dieu créa les animaux terrestes', 'podcast'),
(101, 52, NULL, 'CHRIST notre espérance', 'podcast'),
(102, 52, NULL, 'La creation  Dieu créa le premier homme', 'podcast'),
(103, 52, NULL, 'Adam explore son monde', 'podcast'),
(104, 52, NULL, 'Marcher avec Jésus vocation au discipulat', 'podcast'),
(105, 52, NULL, 'Esther 05', 'podcast'),
(106, 52, NULL, 'Esther 06', 'podcast'),
(107, 52, NULL, 'Esther 07', 'podcast'),
(108, 52, NULL, 'Esther 08', 'podcast'),
(109, 52, NULL, 'Marchons dans la lumière', 'podcast'),
(110, 51, NULL, 'Marchons dans la lumière', 'podcast'),
(111, 40, NULL, 'EDIBEGA YA NEM', 'podcast'),
(112, 40, NULL, 'Jésus-christ le dernier Espoir', 'podcast'),
(113, 40, NULL, 'Le temps qui passe', 'podcast'),
(114, 53, NULL, 'JOB 14', 'podcast'),
(115, 10, NULL, 'Une année 2022 réussie', 'podcast'),
(116, 53, NULL, 'JOB 15', 'podcast'),
(117, 53, NULL, 'JOB 16', 'podcast'),
(119, 40, NULL, 'L\'année de grâce du Seigneur', 'podcast'),
(121, 46, NULL, 'Les faux prophètes', 'podcast'),
(122, 46, NULL, 'OSER LUI DECLRARER SON AMOUR', 'podcast'),
(123, 46, NULL, 'Comment avoir une famille unie et forte', 'podcast'),
(124, 53, NULL, 'Connu que de Dieu Pst  karl johson', 'podcast'),
(125, 53, NULL, 'JOB 17', 'podcast'),
(126, 52, NULL, 'JOB 18', 'podcast'),
(127, 52, NULL, 'JOB 19', 'podcast'),
(129, 40, NULL, 'JOB 20', 'podcast'),
(146, 40, NULL, 'LPQ NJ 003', 'podcast'),
(147, 40, NULL, 'LPQ NJ 004', 'podcast'),
(148, 40, NULL, 'LPQ NJ 005', 'podcast'),
(150, 40, NULL, '0001 - LVDE', 'podcast'),
(151, 40, NULL, '0002 - LVDE', 'podcast'),
(152, 40, NULL, 'Le Sanctuaire partie 1', 'podcast'),
(153, 40, NULL, 'Le Sanctuaire partie 2', 'podcast'),
(154, 40, NULL, 'LPQ NJ 006', 'podcast'),
(157, 40, NULL, 'Les deux clés du bonheur', 'podcast'),
(158, 42, NULL, 'Le cheval blanc conquerant, past Karl Jonhson, CRTV Bafoussam', 'podcast'),
(159, 46, NULL, 'UNITE DEANS LA TEMPETE', 'podcast'),
(160, 40, NULL, 'LDuma a esae tia', 'podcast'),
(161, 46, NULL, 'OSER LUI DECLRARER SON AMOUR', 'podcast'),
(162, 40, NULL, 'Connu que de Dieu Pst  karl johson', 'podcast'),
(163, 40, NULL, 'Connu que de Dieu Pst  karl johson', 'podcast'),
(165, 40, NULL, 'Parabole de la tragédie Pompéi', 'podcast'),
(167, 46, NULL, 'Sueur et sang parlent', 'podcast'),
(168, 40, NULL, 'La colère de mon père', 'podcast'),
(169, 40, NULL, 'Marcher Prier', 'podcast'),
(176, 42, NULL, 'Femme Diamant, sur la CRTV station.  régionale de l\'Ouest (93.5FM)', 'podcast'),
(177, 42, NULL, 'Jésus et les femmes!', 'podcast'),
(178, 46, NULL, 'OTS: Qui peut payer un enseignant?', 'podcast'),
(179, 42, NULL, 'IL EST ECRIT, sur la CRTV station', 'podcast'),
(180, 37, 1, 'Le Débat des Étoiles.', 'advert'),
(181, 46, NULL, 'Votre langue est-elle une station radio du diable?', 'podcast'),
(183, 10, NULL, 'Le carillon a minuit Past  karl johson', 'podcast'),
(185, 51, NULL, 'Le jour du mensonge', 'podcast'),
(186, 40, NULL, 'PSAUME 19', 'podcast'),
(187, 40, NULL, 'Eutychus', 'podcast'),
(188, 40, NULL, 'DIEU n\'est pas loin', 'podcast'),
(189, 42, NULL, 'La vie devient de plus en plus en difficile', 'podcast'),
(190, 40, NULL, 'Eutychus 2', 'podcast'),
(191, 40, NULL, 'JESUS de l\'histoire', 'podcast'),
(193, 58, NULL, 'CHRIST NOTRE PAQUE', 'podcast'),
(194, 10, NULL, 'PSAUMES 32', 'podcast'),
(195, 52, NULL, 'PSAUMES 44', 'podcast'),
(196, 10, NULL, 'PSAUMES 45', 'podcast'),
(197, 42, NULL, 'La morsure du serpent', 'podcast'),
(198, 40, NULL, '18- Duma a esae  tia  Mbono Simon', 'podcast'),
(199, 51, NULL, '18- Tu travailleras pendant six jours', 'podcast'),
(200, 42, NULL, 'Emission radiophonique IL EST ECRIT, sur la CRTV station régionale de l\'Ouest (93.5FM', 'podcast'),
(201, 10, NULL, 'Psaumes 53', 'podcast'),
(202, 10, NULL, 'Psaumes 54', 'podcast'),
(203, 10, NULL, 'Psaumes 55', 'podcast'),
(204, 10, NULL, 'Psaumes 56', 'podcast'),
(205, 42, NULL, 'Que faut-il pour bâtir une nation stable et prospère?', 'podcast'),
(206, 10, NULL, 'l\'Unite et la Paix valeurs inestimables Pr Assembe Minyono valere guillaume', 'podcast'),
(207, 42, NULL, 'IL EST ECRIT, sur la CRTV station régionale de l\'Ouest', 'podcast'),
(208, 40, NULL, 'JESUS FILS DE DIEU', 'podcast'),
(209, 40, NULL, 'DOUES POUR LE SERVICE', 'podcast'),
(211, 48, NULL, 'Les heroines de la fidelité', 'podcast'),
(212, 40, NULL, 'Merci Papa', 'podcast'),
(213, 42, NULL, 'Emission radiophonique IL EST ECRIT, sur la CRTV station régionale de l\'Ouest . Edition du samedi 25 Juin 2022.', 'podcast'),
(214, 40, NULL, 'Minboan ya dibi', 'podcast'),
(215, 51, NULL, 'Enfin libre', 'podcast'),
(216, 42, NULL, 'Edition du samedi 02 Juillet 2022', 'podcast'),
(217, 37, 1, 'Congres et retraite spirituelle du groupe Bartimee', 'advert'),
(218, 40, NULL, 'Wen ya mfan elat Pr Marga Gérard', 'podcast'),
(219, 40, NULL, 'L\'amour change tout', 'podcast'),
(221, 46, NULL, 'PSAUMES 16', 'podcast'),
(222, 40, NULL, 'Zen ya mfan elat', 'podcast'),
(224, 40, NULL, 'Connu de DIEU', 'podcast'),
(225, 40, NULL, 'Vom yaa sobo', 'podcast'),
(226, 40, NULL, 'Je vous salue Marie', 'podcast'),
(227, 40, NULL, 'Le courage de croire', 'podcast'),
(228, 40, NULL, 'NFAN EDING', 'podcast'),
(229, 40, NULL, 'LA VRAIE GRANDEUR', 'podcast'),
(230, 42, NULL, 'CRTV station régionale de l\'Ouest (93.5FM),Edition du samedi 20 Août 2022.', 'podcast'),
(231, 42, NULL, 'CRTV station régionale de l\'Ouest (93.5FM),Edition du samedi 27 Août 2022.', 'podcast'),
(232, 42, NULL, 'CRTV station régionale de l\'Ouest (93.5FM),  Edition du samedi 03 septembre 2022.', 'podcast'),
(233, 42, NULL, 'CRTV station régionale de l\'Ouest (93.5FM),  Edition du samedi 10 septembre 2022.', 'podcast'),
(234, 42, NULL, 'CRTV station régionale de l\'Ouest, Edition du samedi 17 septembre 2022.', 'podcast'),
(235, 40, NULL, 'LES_DEUX_CADEAUX_DU_PARADIS.MP3', 'podcast'),
(236, 46, NULL, 'Merci Maman (Première Partie)', 'podcast'),
(237, 46, NULL, 'Merci Maman (Deuxième Partie)', 'podcast'),
(238, 46, NULL, 'Merci Maman (Fin)', 'podcast'),
(239, 40, NULL, 'Mendem ya nnom zene', 'podcast'),
(240, 40, NULL, 'L\'unité et la paix valeurs inestimables', 'podcast'),
(241, 42, NULL, 'IL EST ECRIT, sur la CRTV station régionale de l\'Ouest (93.5FM), Edition du samedi 24 septembre 2022.', 'podcast'),
(242, 10, NULL, 'la cupidité', 'podcast'),
(243, 40, NULL, 'Tout commence par DIEU', 'podcast'),
(244, 46, NULL, 'etre un chrétiens qui brille', 'podcast'),
(245, 46, NULL, 'La justice', 'podcast'),
(246, 46, NULL, 'le combat spirituelle', 'podcast'),
(247, 46, NULL, 'conserver la paix avec mon prochain', 'podcast'),
(248, 46, NULL, 'culte de famille', 'podcast'),
(249, 46, NULL, 'élus de DIEU', 'podcast'),
(250, 46, NULL, 'job dans le creuset', 'podcast'),
(251, 48, NULL, 'job dans le creuset', 'podcast'),
(252, 46, NULL, 'L\'amour en famille', 'podcast'),
(253, 51, NULL, 'Les damnes de l\'age', 'podcast'),
(254, 40, NULL, 'Mongo sikolo', 'podcast'),
(255, 52, NULL, 'Petit pourtant grand, faible pourtant fort', 'podcast'),
(256, 42, NULL, 'L\'agneau et le dragon', 'podcast'),
(257, 42, NULL, 'UNE RENCONTRE INOUBLIABLE', 'podcast'),
(259, 42, NULL, 'LA VRAIE GRANDEUR', 'podcast'),
(260, 42, NULL, 'Prier, à quoi ça sert ?', 'podcast'),
(261, 42, NULL, 'Notre vie en Jesus', 'podcast'),
(262, 46, NULL, 'Un mariage de rêve', 'podcast'),
(265, 42, NULL, 'IL EST ECRIT, sur la CRTV station régionale de l\'Ouest, Edition du samedi 10 Décembre 2022.', 'podcast'),
(266, 10, NULL, 'Merci mama, (première partie)', 'podcast'),
(267, 46, NULL, 'Merci mama, (Deuxième partie).', 'podcast'),
(268, 46, NULL, 'Merci maman,(fin).', 'podcast'),
(269, 42, NULL, 'IL EST ECRIT, sur la CRTV station régionale de l\'Ouest , Edition du samedi 17 Décembre 2022.', 'podcast'),
(270, 42, NULL, 'IL EST ECRIT, sur la CRTV station régionale de l\'Ouest , Edition du samedi 24 Décembre 2022.', 'podcast'),
(271, 42, NULL, 'IL EST ECRIT, sur la CRTV station régionale de l\'Ouest , Edition du samedi 31 Décembre 2022.', 'podcast'),
(272, 42, NULL, 'Edition du sabbat 07 Janvier 2023, CRTV OUEST', 'podcast'),
(273, 48, NULL, 'Introduction aux dix jours de prière', 'podcast'),
(274, 48, NULL, 'Premier jour : Où  es-tu ?', 'podcast'),
(275, 48, NULL, 'Deuxième jour : Consécration et commémoration', 'podcast'),
(276, 48, NULL, 'Troisième jour : Matin et soir', 'podcast'),
(277, 40, NULL, 'Zen ya Fek', 'podcast'),
(278, 51, NULL, 'Le pouvoir de la loi', 'podcast'),
(279, 48, NULL, 'Quatrième jour : Dieu revient vers l\'homme', 'podcast'),
(280, 42, NULL, 'IL EST ECRIT, sur la CRTV station régionale de l\'Ouest', 'podcast'),
(281, 48, NULL, 'Cinquième jour :  JESUS le Matinal', 'podcast'),
(282, 48, NULL, 'Sixième jour : Le combatant de prière', 'podcast'),
(283, 48, NULL, 'Septième jour : Une Eglise prosternée devant le Seigneur', 'podcast'),
(284, 48, NULL, 'Huitième jour : Le culte et le message des trois anges', 'podcast'),
(285, 48, NULL, 'Neuvième jour : Garder le cap', 'podcast'),
(286, 48, NULL, 'Dixième jour : J\'irai', 'podcast'),
(287, 40, NULL, 'Wo Moise', 'podcast'),
(288, 40, NULL, 'Prieres dans les derniers jours', 'podcast'),
(289, 42, NULL, 'IL EST ECRIT, sur la CRTV station régionale de l\'Ouest', 'podcast'),
(290, 46, NULL, 'Ecoute et pardon', 'podcast'),
(291, 46, NULL, 'Les familles composées', 'podcast'),
(292, 46, NULL, 'Education familliale', 'podcast'),
(293, 46, NULL, 'Foi et sentiment', 'podcast'),
(295, 10, NULL, 'Esaie 1', 'podcast'),
(296, 40, NULL, 'LE COURAGE DE CROIRE', 'podcast'),
(297, 40, NULL, 'Bikote kote minyelan', 'podcast'),
(298, 40, NULL, 'LPQ 001', 'podcast'),
(299, 40, NULL, 'LPQ 002', 'podcast'),
(300, 40, NULL, 'LPQ 003', 'podcast'),
(301, 40, NULL, 'LPQ 004', 'podcast'),
(302, 40, NULL, 'LPQ 005', 'podcast'),
(303, 62, NULL, 'L\'origine de la vie', 'podcast'),
(304, 62, NULL, 'le premier jour de ce monde', 'podcast'),
(305, 62, NULL, 'Dieu créa le ciel, les nuages et l\'air', 'podcast'),
(306, 62, NULL, 'Dieu créa les plantes', 'podcast'),
(307, 62, NULL, 'Dieu créa le soleil, la lune et les étoiles', 'podcast'),
(308, 40, NULL, 'L\'EAU', 'podcast'),
(309, 40, NULL, 'Des compléments alimentaires', 'podcast'),
(310, 40, NULL, 'Le soleil', 'podcast'),
(311, 40, NULL, 'Les aliments froids ou chauds', 'podcast'),
(312, 40, NULL, 'Des condiments', 'podcast'),
(313, 42, NULL, 'IL EST ECRIT, sur la CRTV station régionale de l\'Ouest', 'podcast'),
(314, 42, NULL, 'LA PROCRASTINATION EST L\'ENNEMIE ! (Anc ABRAHAM BAKARI)', 'podcast'),
(316, 42, NULL, 'IL EST ECRIT DU 18 FEVRIER 2023 L\'AMOUR CHANGE TOUT !', 'podcast'),
(317, 46, NULL, 'La gare terminale', 'podcast'),
(318, 10, NULL, 'IL EST ECRIT, sur la CRTV station régionale de l\'Ouest', 'podcast'),
(319, 48, NULL, 'Le pouvoir transformateur de la prière', 'podcast'),
(320, 46, NULL, 'Genèse 1', 'podcast'),
(321, 42, NULL, 'IL EST ECRIT, sur la CRTV station régionale de l\'Ouest', 'podcast'),
(322, 40, NULL, 'Edibiga ya nem', 'podcast'),
(323, 40, NULL, 'Les héros de la foi', 'podcast'),
(324, 10, NULL, 'Aimer c\'est se sacrifier', 'podcast'),
(325, 10, NULL, 'Aimer c\'est être reconnaissant', 'podcast'),
(326, 42, NULL, 'IL EST ECRIT, sur la CRTV station régionale de l\'Ouest', 'podcast'),
(327, 10, NULL, 'Aimer c\'est être reconnaissant', 'podcast'),
(328, 10, NULL, 'Aimer c\'est faire confiance', 'podcast'),
(329, 10, NULL, 'Aimer c\'est obéir', 'podcast'),
(330, 10, NULL, 'Aimer c\'est adorer', 'podcast'),
(331, 40, NULL, 'Eclaire ma bougie', 'podcast'),
(332, 10, NULL, 'Aimer c\'est partager', 'podcast'),
(333, 10, NULL, 'Aimer c\'est attendre', 'podcast'),
(334, 42, NULL, 'IL EST ECRIT 23 Mars 2023, sur la CRTV station régionale de l\'Ouest', 'podcast'),
(335, 40, NULL, 'Miss me Yesus', 'podcast'),
(336, 40, NULL, 'Connu que de Dieu', 'podcast'),
(337, 42, NULL, 'IL EST ECRIT DU 25 mars 2023', 'podcast'),
(338, 40, NULL, 'Nfan Eding', 'podcast'),
(339, 40, NULL, 'JESUS LE DERNIER ESPOIR', 'podcast'),
(340, 42, NULL, 'IL EST ECRIT, sur la CRTV station régionale de l\'Ouest', 'podcast'),
(341, 42, NULL, 'IL EST ECRIT, sur la CRTV station régionale de l\'Ouest', 'podcast'),
(342, 40, NULL, 'AWU', 'podcast'),
(343, 40, NULL, 'DIEU n\'est pas loin', 'podcast'),
(345, 42, NULL, 'IL EST ECRIT, sur la CRTV station régionale de l\'Ouest', 'podcast'),
(346, 42, NULL, 'IL EST ECRIT, sur la CRTV station régionale de l\'Ouest , Edition du samedi 29 Avril 2023', 'podcast'),
(348, 40, NULL, 'Minga ya Kana', 'podcast'),
(349, 40, NULL, 'Deux clés du bonheur', 'podcast'),
(350, 42, NULL, 'IL EST ECRIT, sur la CRTV station régionale de l\'Ouest', 'podcast'),
(351, 10, NULL, 'IL EST ECRIT DU 13 MAI 2023 - LA CLE POUR MIEUX VIVRE ET ETRE EN BONNE SANTE', 'podcast'),
(352, 42, NULL, 'IL EST ECRIT, sur la CRTV station régionale de l\'Ouest', 'podcast'),
(353, 42, NULL, 'IL EST ECRIT, sur la CRTV station régionale de l\'Ouest', 'podcast'),
(354, 46, NULL, 'Merci maman', 'podcast'),
(355, 46, NULL, 'A GENOUX MAIS FORT', 'podcast'),
(356, 46, NULL, 'Abus de pouvoir', 'podcast'),
(357, 10, NULL, 'IL EST ECRIT, sur la CRTV station régionale de l\'Ouest', 'podcast'),
(358, 40, NULL, 'L\'enfant prodigue', 'podcast'),
(359, 42, NULL, 'La personne du Saint-Esprit', 'podcast'),
(360, 42, NULL, 'IL EST ECRIT , sur la CRTV station régionale de l\'Ouest (93.5FM), Edition  samedi 17 Juin 2023.', 'podcast'),
(361, 42, NULL, 'IL EST ECRIT , sur la CRTV station régionale de l\'Ouest (93.5FM) Edition du samedi 24 Juin 2023.', 'podcast'),
(362, 42, NULL, 'IL EST ECRIT, sur la CRTV station régionale de l\'Ouest , Edition du samedi 01 Juillet 2023', 'podcast'),
(363, 42, NULL, 'IL EST ECRIT, sur la CRTV station régionale de l\'Ouest ,  Edition Spéciale-Congrès Des Femmes Adventistes du samedi 08 Juillet 2023.', 'podcast'),
(364, 42, NULL, 'IL EST ECRIT , sur la CRTV station régionale de l\'Ouest (93.5FM), Edition du samedi 15 Juillet 2023.', 'podcast'),
(365, 42, NULL, 'Voici votre émission radiophonique IL EST ECRIT , sur la CRTV station régionale de l\'Ouest (93.5FM), chaque samedi matin à partir de 07h 00.  Edition spéciale Jeunesse Victorieuse, du samedi 29 Juillet 2023.', 'podcast'),
(366, 42, NULL, 'IL EST ECRIT , sur la CRTV station régionale de l\'Ouest (93.5FM),  Edition du samedi 12 Août 2023.', 'podcast'),
(367, 59, NULL, 'IL EST ECRIT, sur la CRTV station régionale de l\'Ouest', 'podcast'),
(368, 46, NULL, 'La prière', 'podcast'),
(369, 42, NULL, 'IL EST ECRIT , sur la CRTV station régionale de l\'Ouest (93.5FM),Edition du samedi 02 Septembre 2023.', 'podcast'),
(370, 40, NULL, 'Education et Rédemption', 'podcast'),
(371, 40, NULL, 'Mininga ya kana', 'podcast'),
(372, 51, NULL, 'Les défis d\'une rentrée scolaire', 'podcast'),
(373, 42, NULL, 'IL EST ECRIT, sur la CRTV station régionale de l\'Ouest , Edition du samedi 16 Septembre  2023.', 'podcast'),
(374, 40, NULL, 'le caractere social d un prophete de Dieu past karl johnson', 'podcast'),
(375, 42, NULL, 'IL EST ECRIT, sur la CRTV station régionale de l\'Ouest', 'podcast'),
(376, 40, NULL, 'Les aiguillons', 'podcast'),
(377, 59, NULL, 'Gagner nos plus grandes batailles', 'podcast'),
(378, 40, NULL, 'La recherche de la vérité', 'podcast'),
(379, 40, NULL, 'Soyez Saint', 'podcast'),
(380, 42, NULL, 'RENTREE SCOLAIRE', 'podcast'),
(381, 40, NULL, 'LPQ NJ 276 lun 02 10 23', 'podcast'),
(382, 52, NULL, 'Ezéchiel 43', 'podcast'),
(383, 40, NULL, 'Vome ya sobo', 'podcast'),
(384, 40, NULL, 'L\'unite et la paix valeurs inestimables', 'podcast'),
(385, 42, NULL, 'IL EST ECRIT, sur la CRTV station régionale de l\'Ouest', 'podcast'),
(386, 46, NULL, 'DIEU comprend', 'podcast'),
(387, 46, NULL, 'Genese 1', 'podcast'),
(388, 46, NULL, 'Ecoute et pardon', 'podcast'),
(389, 46, NULL, 'L\'histoire d\'Ingrid', 'podcast'),
(390, 46, NULL, 'L\'histoire d\'Ingrid (Part2)', 'podcast'),
(391, 46, NULL, 'Genèse 2', 'podcast'),
(392, 46, NULL, 'L\'histoire de Chantal (Part1)', 'podcast'),
(393, 10, NULL, 'IL EST ECRIT, sur la CRTV station régionale de l\'Ouest', 'podcast'),
(394, 42, NULL, 'IL EST ECRIT, sur la CRTV station régionale de l\'Ouest', 'podcast'),
(395, 46, NULL, 'Daniel 5 Le festin de belschatsar', 'podcast'),
(396, 46, NULL, 'Daniel 6 Daniel dans la fosse aux lions', 'podcast'),
(397, 46, NULL, 'Daniel 7 vision de Daniel des 4 animaux', 'podcast'),
(398, 46, NULL, 'Daniel 8 vision de Daniel le belier et le bouc', 'podcast'),
(399, 10, NULL, 'Daniel 9 Prophetie des 70 semaines', 'podcast'),
(400, 10, NULL, 'DIEU MON PARTENAIRE', 'podcast'),
(401, 40, NULL, 'Mimboan ya dibi', 'podcast'),
(402, 40, NULL, 'La Toussaint', 'podcast'),
(403, 52, NULL, 'IL EST ECRIT, sur la CRTV station régionale de l\'Ouest', 'podcast'),
(404, 46, NULL, 'Souvenir du Rwanda', 'podcast'),
(405, 46, NULL, 'A genoux mais fort', 'podcast'),
(406, 46, NULL, 'Armes de distraction massive', 'podcast'),
(407, 40, NULL, 'Emission du 04 11 23', 'podcast'),
(408, 10, NULL, 'Les etonnantes predictions', 'podcast'),
(409, 40, NULL, 'Les signes de la fin', 'podcast'),
(410, 59, NULL, 'IL EST ECRIT, sur la CRTV station régionale de l\'Ouest', 'podcast'),
(411, 10, NULL, 'Osee 14', 'podcast'),
(412, 42, NULL, 'IL EST ECRIT, sur la CRTV station régionale de l\'Ouest', 'podcast'),
(413, 46, NULL, 'Yes we can', 'podcast'),
(414, 40, NULL, 'Vous n\'etes pas seul', 'podcast'),
(415, 46, NULL, 'Vous avez le choix', 'podcast'),
(416, 46, NULL, 'Unité dans la tempete', 'podcast'),
(417, 46, NULL, 'Une promesse est une promesse', 'podcast'),
(418, 51, NULL, 'Noire et Belle', 'podcast'),
(419, 51, NULL, 'Bonjour la rumeur', 'podcast'),
(420, 51, NULL, 'Les mathématiques modernes', 'podcast'),
(421, 51, NULL, 'Consacré par DIEU', 'podcast');

-- --------------------------------------------------------

--
-- Table structure for table `news_letter`
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
-- Table structure for table `podcasts`
--

CREATE TABLE `podcasts` (
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
-- Dumping data for table `podcasts`
--

INSERT INTO `podcasts` (`id`, `program_id`, `time_space_id`, `file_name`, `description`, `image_name`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, 'Mixage-final-JRF-DU-20-07-17-BON-613139a1614e9.mp3', 'Bienvenue a cette edition de J\'ai rencontre la foi! J\'ai effectivement rencontre la foi chez une frele et tendre personne', 'femme-endeuillee-pleurant-la-mort-de-son-conjoint-613139a162c0d780057829.jpg', '2021-09-02 22:52:49', '2022-03-18 10:38:37'),
(2, 4, NULL, 'Mix-fin-il-est-ecrit-sam-29-09-2018-Souvenirs-Rwanda-AB-61313e2573ff1.mp3', 'rwanda', 'hqdefault-61313e2575714667412872.jpg', '2021-09-02 23:12:05', '2021-09-02 23:12:05'),
(3, 4, NULL, 'Mix-fin-sermon-A-Bakari-sam-20-05-17-Assis-a-la-meme-table-61316db7d72ba.mp3', 'Assis même table', 'family-61316db7d8ca6547754166.jpeg', '2021-09-03 02:35:03', '2021-09-03 02:35:03'),
(4, 4, NULL, 'Mix-fin-sermon-AB-sam-26-05-17-Merci-maman-61316fb6b46a8.mp3', 'Merci maman', 'maman-61316fb6b5cb4584332132.jpeg', '2021-09-03 02:43:34', '2021-09-03 02:43:34'),
(5, 5, NULL, 'bakari-psaume-15-613171a99ff4c.mp3', 'psaumes 13', 'joie-613171a9a17a6488144768.png', '2021-09-03 02:51:53', '2021-09-03 02:51:53'),
(6, 5, NULL, 'bakari-psaume-15-613172bc999d4.mp3', 'Sainteté  Dieu psaume 15', 'psaume14-613172bc9b196291515030.png', '2021-09-03 02:56:28', '2021-09-03 02:56:28'),
(7, 8, NULL, 'Mixage-final-emission-vie-et-sante-consultation-prenatale-613177b0e2217.mp3', 'Consultations prenatales', 'prenatal-web-613177b0e3e25153373918.jpg', '2021-09-03 03:17:36', '2021-09-03 03:17:36'),
(8, 8, NULL, 'Mixage-final-emission-vie-et-sante-examen-prenuptiaux-6131790cae73a.mp3', 'Examens prénuptiaux', 'prenuptiales-6131790cb0138290186518.jpg', '2021-09-03 03:23:24', '2021-09-03 03:23:24'),
(9, 9, NULL, 'la-parole-de-l-eternel-61341bb97101f.mp3', 'Jonas Parole Eternel', 'jonas-61341bb97265a926766823.png', '2021-09-05 03:22:01', '2021-09-05 03:22:01'),
(10, 9, NULL, 'Nahman-le-lepreux-lun-13-11-17-61341fc1e06b1.mp3', 'L\'exemple de Naaman', 'naaman-61341fc1e1fdc082538370.jpg', '2021-09-05 03:39:13', '2022-03-30 18:16:18'),
(11, 9, NULL, 'mix-fin-27-VP-un-titanic-appele-le-monde-61342084a282c.mp3', 'Un monde appele Titanic', 'titanic-4-61342084a3f26849232056.jpg', '2021-09-05 03:42:28', '2022-10-12 15:13:03'),
(12, 9, NULL, 'soutenir-une-causse-avec-vision-pro-613896eec6e1e.mp3', 'Vision soutenir cause', 'vision-613896eec85c4069923923.png', '2021-09-08 12:56:46', '2022-05-11 09:32:45'),
(13, 7, NULL, 'sentinelle-du-20-02-12-AB-61389a5e2cd26.mp3', 'Confession', 'confession-61389a5e2e4ac117157899.jpeg', '2021-09-08 13:11:26', '2021-09-08 13:11:26'),
(14, 5, NULL, 'bakari-psaumes-16-6144c8666e2ba.mp3', 'psaume16', 'psaume16-6144c8666fe93216485636.jpg', '2021-09-17 18:55:02', '2021-09-17 18:55:02'),
(17, 4, NULL, 'A-GENOUX-MAIS-FORT-61477654033e2.mp3', 'A genoux', 'image1q-6147765404f06743965273.jpg', '2021-09-19 19:41:40', '2021-09-19 19:41:40'),
(19, 4, NULL, 'VOUS-AVEZ-LE-CHOIX-ABRAHAM-BAKARI-6147803101989.mp3', 'VOUS AVEZ LE CHOIX.', 'vts-44-1-005-0007-614780310368d674499868.jpg', '2021-09-19 20:23:45', '2021-10-27 23:27:38'),
(20, 4, NULL, 'LES-LARMES-DE-L-UNITE-614789e14b308.mp3', 'LES LARMES DE L\'UNITE', '15610753-614789e14cba0959318556.jpg', '2021-09-19 21:05:05', '2021-09-19 21:05:05'),
(21, 4, NULL, 'SOUVENIR-DU-RWANDA-61478c5ab5181.mp3', 'SOUVENIR DU RWANDA', 'bfb534a-242968919-rtr2gw-61478c5ab6c68336628265.jpg', '2021-09-19 21:15:38', '2021-09-19 21:15:38'),
(22, 4, NULL, 'JE-NE-VEND-PLUS-61478fca04508.mp3', 'JE NE VEND PLUS', 'vts-40-1-0005-2-61478fca0607c961603957.jpg', '2021-09-19 21:30:18', '2021-09-19 21:30:18'),
(23, 4, NULL, 'ON-NE-TIRE-PAS-SUR-UNE-AMBULANCE-614798013be7c.mp3', 'ON NE TIRE PAS SUR UNE AMBULANCE', 'stickers-ambulance-isole-sur-fond-blanc-jpg-614798013d914918212745.jpg', '2021-09-19 22:05:21', '2021-09-19 22:05:21'),
(24, 4, NULL, 'UN-MARIAGE-DE-REVE-61479a2f01f0f.mp3', 'UN MARIAGE DE REVE', 'vts-36-1-009-0001-61479a2f036ff229631184.jpg', '2021-09-19 22:14:39', '2021-09-19 22:14:39'),
(25, 4, NULL, 'L-ENFANT-TRESOR-61479b7e6704f.mp3', 'L\'ENFANT TRESOR', 'vts-33-1-004-0015-61479b7e68836787790634.jpg', '2021-09-19 22:20:14', '2021-09-19 22:20:14'),
(26, 7, NULL, 'LES-GOLIATHS-DE-LA-JEUNESSE-61479d45960f8.mp3', 'LES GOLIATHS DE LA JEUNESSE', 'vts-35-1-001-0006-2-61479d4597a7c149828402.jpg', '2021-09-19 22:27:49', '2021-09-19 22:27:49'),
(27, 4, NULL, 'OU-SONT-LES-PERES-61479ebd87dec.mp3', 'OU SONT LES PERES', 'vts-50-1-009-0003-61479ebd89755328739489.jpg', '2021-09-19 22:34:05', '2021-09-19 22:34:05'),
(28, 4, NULL, 'MERE-DE-VALEUR-6147a07127566.mp3', 'MERE DE VALEUR', 'vts-28-1-006-0002-2-6147a07128e78163194131.jpg', '2021-09-19 22:41:21', '2021-09-19 22:41:21'),
(29, 7, NULL, 'NOS-ENFANTS-NOUS-LES-MERITONS-6147a1d403fe9.mp3', 'NOS ENFANTS NOUS LES MERITONS', 'vts-34-1-002-0003-2-6147a1d40564c141801532.jpg', '2021-09-19 22:47:16', '2021-09-19 22:47:16'),
(30, 4, NULL, 'LA-SUEUR-ET-LE-SANG-PARLENT-6148317a18ea5.mp3', 'LA SUEUR ET LE SANG PARLENT', 'vts-33-1-003-0008-2-6148317a1a4d8862192376.jpg', '2021-09-20 09:00:10', '2021-09-20 09:00:10'),
(32, 2, NULL, 'Mixage-final-JRF-DU-31-01-19-Owona-Carole-02-614ecc6a24169.mp3', 'Témoignage Owono Carole', 'whatsapp-image-2021-09-25-at-08-02-17-614ecc6a25c24005239615.jpeg', '2021-09-25 09:14:50', '2021-10-26 09:49:54'),
(33, 11, NULL, '10-JDP2018-INTRODUCTION-AB-614f60ed943d1.mp3', 'Introduction', 'image1q-614f60ed95c5c586467589.jpg', '2021-09-25 19:48:29', '2021-09-25 19:48:29'),
(34, 11, NULL, 'mix-fin-Jour-01-100118-AB-INTRODUCTION-614f61a08c778.mp3', 'Introduction aux dix jours', 'image1q-614f61a08ea8e380194793.jpg', '2021-09-25 19:51:28', '2021-09-25 19:51:28'),
(35, 11, NULL, 'mix-fin-Jour-02-110118-AB-consacre-au-Seigneur-614f6332df24d.mp3', 'Consacré au Seigneur', 'image1q-614f6332e0c45915417440.jpg', '2021-09-25 19:58:10', '2021-09-25 19:58:10'),
(36, 11, NULL, 'mix-fin-Jour-03-120118-AB-les-pieds-nus-614f640c94731.mp3', 'Les pieds nus', 'image1q-614f640c962a3477379987.jpg', '2021-09-25 20:01:48', '2021-09-25 20:01:48'),
(37, 11, NULL, '10JDP100118-Huile-sacree-AB-614f64919dffa.mp3', 'Huile sacrée', 'image1q-614f64919fbd8876454785.jpg', '2021-09-25 20:04:01', '2021-09-25 20:04:01'),
(38, 11, NULL, 'mix-fin-Jour-05-140118-AB-L-Ephode-614f651fc5651.mp3', 'l\'Ephode', 'image1q-614f651fc7156413020236.jpg', '2021-09-25 20:06:23', '2021-09-25 20:06:23'),
(39, 11, NULL, 'mix-fin-Jour-06-150118-AB-la-Ceinture-614f66b88bacb.mp3', 'La ceinture', 'image1q-614f66b88d102464332938.jpg', '2021-09-25 20:13:12', '2021-09-25 20:13:12'),
(40, 11, NULL, 'mix-fin-Jour-07-160118-AB-le-pectoral-614f6745b1da4.mp3', 'Le Pectoral', 'image1q-614f6745b3a0f791318102.jpg', '2021-09-25 20:15:33', '2021-09-25 20:15:33'),
(41, 11, NULL, 'mix-fin-Jour-08-170118-AB-l-hurin-et-le-thubim-614f67e27c994.mp3', 'l\'Urim et le Thubim', 'image1q-614f67e27e17b688649285.jpg', '2021-09-25 20:18:10', '2021-09-25 20:18:10'),
(42, 11, NULL, 'mix-fin-Jour-09-180118-AB-l-encensoir-614f68d28876f.mp3', 'l\'Encensoir', 'image1q-614f68d28a3f2482534541.jpg', '2021-09-25 20:22:10', '2022-03-21 20:22:10'),
(43, 11, NULL, 'mix-fin-Jour-10-190118-AB-les-clochettes-et-les-grenades-614f696bc1c0f.mp3', 'les clochettes et les grenades', 'image1q-614f696bc458f081042932.jpg', '2021-09-25 20:24:43', '2021-09-25 20:24:43'),
(44, 7, NULL, 'l-amour-AB-614f972edf627.mp3', 'L\'amour', 'vts-36-1-009-0001-614f972ee0e47490349461.jpg', '2021-09-25 23:39:58', '2021-09-25 23:39:58'),
(45, 10, NULL, 'FRECO-XXX-20060104B-6159a41549ef4.bin', 'sante nombre alergie', 'sante-esperance-6159a4154cd51977227535.png', '2021-10-03 14:37:41', '2022-03-30 18:12:33'),
(46, 9, NULL, '16-LEFILSDEDIEU-6159a60db8100.mp3', 'Fils de Dieu', 'jesus-6159a60db9b6a218987118.png', '2021-10-03 14:46:05', '2021-10-03 14:46:05'),
(47, 12, NULL, 'delice-vesperal-02-10-21-615a08b749e0b.mp3', 'Musique, Détente maximale', '787f216ed0-121265-myrtille-coeur-615a08b74b66e721062883.jpg', '2021-10-03 21:47:03', '2021-10-03 21:47:03'),
(48, 13, NULL, 'les-actualites-religieuses-mix-final-lundi-20-septembre-2021-rediffusion-615a0e60f1bb8.mp3', 'Actualités, église', 'sans-titre-1-615a0e60f33f9115049546.jpg', '2021-10-03 22:11:12', '2021-10-03 22:11:12'),
(49, 5, NULL, 'MMMS-2-CHRONIQUES-23-du-05-10-2021-de-MONPROCHAIN-ETOUNDI-615c4105d04ca.mp3', '02 Chroniques 23', 'copie-de-1075657779-790-high-spi-615c4105d1a1f355186053.jpg', '2021-10-05 14:11:49', '2021-10-05 14:11:49'),
(50, 13, NULL, 'les-actualites-religieuses-du-lundi-11-octobre-2021-6166f57c6c352.mp3', 'Actualités, église', 'actualite-6166f57c6dca5961259657.jpg', '2021-10-13 17:04:28', '2021-10-13 17:04:28'),
(51, 6, NULL, 'reflets-ad-du-12-10-2021-de-jean-F-DE-GALATES-5-6166f9ef5ec51.mp3', 'reflet, en temps réel', 'images-1-6166f9ef6017c873514130.jpg', '2021-10-13 17:23:27', '2021-10-13 17:23:27'),
(52, 5, NULL, 'MMMS-2-CHRONIQUES-23-du-05-10-2021-de-MONPROCHAIN-ETOUNDI-6168389a766e4.mp3', '2 CHRONIQUES 23', 'copie-de-1075657779-790-high-spi-6168389a77f1b776168754.jpg', '2021-10-14 16:03:06', '2021-10-14 16:03:06'),
(53, 5, NULL, 'MMMS-2-CHRONIQUES-24-du-06-10-2021-de-MONPROCHAIN-ETOUNDI-6168399e13ed0.mp3', '2 CHRONIQUES 24', 'copie-de-1075657779-790-high-spi-6168399e15525312600324.jpg', '2021-10-14 16:07:26', '2021-10-14 16:07:26'),
(54, 5, NULL, 'MMMS-2-CHRONIQUES-25-du-07-10-2021-de-MONPROCHAIN-ETOUNDI-61683abb99b0d.mp3', '2 CHRONIQUES 25', 'copie-de-1075657779-790-high-spi-61683abb9b20e516749606.jpg', '2021-10-14 16:12:11', '2021-10-14 16:12:11'),
(55, 5, NULL, 'MMMS-2-CHRONIQUES-26-du-08-10-2021-de-MONPROCHAIN-ETOUNDI-61683c416ec0d.mp3', '2 CHRONIQUES 26', 'copie-de-1075657779-790-high-spi-61683c4170105928725609.jpg', '2021-10-14 16:18:41', '2021-10-14 16:18:41'),
(56, 5, NULL, 'Noire-et-Belle-Pr-JGN-616844e6a298b.mp3', 'Noire et belle', 'v4-460px-be-a-confident-beautiful-black-girl-step-1-version-3-jpg-616844e6a3f20426830410.webp', '2021-10-14 16:55:34', '2021-10-14 16:55:34'),
(57, 2, NULL, 'JRF-CHANTAL-01-61686339a0b2a.mp3', 'CHANTAL   priere', 'j-ai-rencontre-la-foi-61686339a387f258199154.jpg', '2021-10-14 19:04:57', '2021-10-21 09:58:56'),
(58, 2, NULL, 'JRF-CHANTAL-02-61686b135c667.mp3', 'CHANTAL (2) Priere', 'j-ai-rencontre-la-foi-61686b135f34f291801645.jpg', '2021-10-14 19:38:27', '2021-10-21 09:58:17'),
(59, 4, NULL, 'RIE-du-sam-16-10-2021-Pour-qui-est-tu-riche-pr-Armand-A-Yangman-6169497f5fcd0.mp3', 'Riche', 'riche-6169497f61186473332823.jpg', '2021-10-15 11:27:27', '2021-10-19 13:50:55'),
(60, 3, NULL, 'Dr-abanke-l-hepatite-61694dcdc356f.mp3', 'l\'Hépatite', 'capture-61694dcdc4a8d493746503.jpg', '2021-10-15 11:45:49', '2021-10-15 11:45:49'),
(61, 3, NULL, 'NS-l-eau-kaguem-wather-avec-jeufo-wamba-6169505b0cd86.mp3', 'L\'eau kaguem wather', 'capture-6169505b0e7cb083542447.jpg', '2021-10-15 11:56:43', '2021-10-15 11:56:43'),
(62, 3, NULL, 'NS-l-hysope-avec-Nkolo-Zakarie-6169512584576.mp3', 'L\'hysope', 'capture-6169512585c96695235081.jpg', '2021-10-15 12:00:05', '2021-10-15 12:00:05'),
(63, 3, NULL, 'NS-avec-le-dr-abanke-616951e4aa5bb.mp3', 'Abanké', 'capture-616951e4abcb7803081467.jpg', '2021-10-15 12:03:16', '2021-10-15 12:03:16'),
(64, 3, NULL, 'NS-Faiblesse-sexuelles-avec-Dr-Abanke-6169534066751.mp3', 'Faiblesse sexuelles', 'capture-6169534068075362161748.jpg', '2021-10-15 12:09:04', '2021-10-15 12:09:04'),
(65, 3, NULL, 'NS-Infection-a-chlamedia-avec-Dr-Abanke-6169542fc60eb.mp3', 'Infections à chlamedia', 'capture-6169542fc7b5b688466176.jpg', '2021-10-15 12:13:03', '2021-10-15 12:13:03'),
(66, 3, NULL, 'NS-la-prostate-avec-Romaric-Ondoua-et-Sope-moute-6169551a154e0.mp3', 'La Prostate', 'capture-6169551a16ef5719863720.jpg', '2021-10-15 12:16:58', '2021-10-15 12:16:58'),
(67, 3, NULL, 'NS-la-tiphoide-avec-Nang-Jean-Francois-6169561206442.mp3', 'La tiphoide', 'capture-6169561207e88526718898.jpg', '2021-10-15 12:21:06', '2021-10-15 12:21:06'),
(68, 3, NULL, 'NS-le-charbon-vegetal-active-avec-Romaric-Ondoua-et-Sope-moute-6169571be5e9e.mp3', 'Le charbon vegetal', 'capture-6169571be7722159866450.jpg', '2021-10-15 12:25:31', '2021-10-15 12:25:31'),
(69, 3, NULL, 'NS-le-moringa-avec-Alama-Bernadette-616958e24ee7a.mp3', 'le moringa', 'capture-616958e25086a763186380.jpg', '2021-10-15 12:33:06', '2021-10-15 12:33:06'),
(70, 3, NULL, 'NS-Neem-avec-ALAMA-Bernaqette-1-61695a77a51b5.mp3', 'Le Neem', 'capture-61695a77a6af1195674079.jpg', '2021-10-15 12:39:51', '2021-10-15 12:39:51'),
(71, 3, NULL, 'NS-le-Neem-avec-Alama-Bernadette-02-61695b1b1aeb8.mp3', 'Le Neem 2', 'capture-61695b1b1c6c1314346644.jpg', '2021-10-15 12:42:35', '2021-10-15 12:42:35'),
(72, 3, NULL, 'NS-Max7-par-omer-George-magnesium-01-61695bdb7cf11.mp3', 'Max7', 'capture-61695bdb7e49b421345961.jpg', '2021-10-15 12:45:47', '2021-10-15 12:45:47'),
(73, 3, NULL, 'NS-Obesite-hemoroide-faiblesse-avec-Dr-Abanke-61695c8f17000.mp3', 'Obesité, hemoroide, faiblesse', 'capture-61695c8f18a8e393317893.jpg', '2021-10-15 12:48:47', '2021-10-15 12:48:47'),
(74, 3, NULL, 'NS-Santurel-intro-01-dr-Re-et-flore-61695d94db011.mp3', 'Santurel intro 01', 'capture-61695d94dcae5066748262.jpg', '2021-10-15 12:53:08', '2021-10-15 12:53:08'),
(75, 3, NULL, 'NS-santurel-intro-01-dr-Re-et-dr-flore2-61695eed7441b.mp3', 'santurel 02', 'capture-61695eed75df9685870695.jpg', '2021-10-15 12:58:53', '2021-10-15 12:58:53'),
(76, 3, NULL, 'NS-Soja-bagdama-rene-degaule-61695fe129f13.mp3', 'Soja', 'capture-61695fe12b9ab242160561.jpg', '2021-10-15 13:02:57', '2021-10-15 13:02:57'),
(78, 4, NULL, 'IE-du-22-10-2021-Le-courage-croire-Past-Aime-H-Coosedai-6171835d23951.mp3', 'Le courage de croire', 'le-courage-de-croire-6171835d25067800291087.jpg', '2021-10-21 17:12:29', '2021-10-21 17:12:29'),
(79, 15, NULL, 'BARTIMEE-EMISSION-DU-23-OCTOBRE-2021-61743f63bcf52.mp3', 'BARTIMEE EMISSION DU 23 OCTOBRE 2021', 'img-20191209-wa0051-61743f63be5b1959633420.jpg', '2021-10-23 18:59:15', '2021-10-23 18:59:15'),
(80, 4, NULL, 'il-est-ecrit-du-30-10-2021-Connu-que-de-Dieu-past-karl-johson-presentation-Jean-Claude-MBOLONG-617c5a88e42a4.mp3', 'il est écrit', 'dieu-connait-2-617c5a88e5a13456152269.jpg', '2021-10-29 22:33:12', '2021-10-29 22:33:12'),
(81, 15, NULL, 'BARTIMEE-EMISSION-DU-30-OCTOBRE-2021-617d9a8406bb6.mp3', 'aveugle', 'yes-617d9a84082be819154140.jpg', '2021-10-30 21:18:28', '2021-10-30 21:18:28'),
(83, 14, NULL, 'BHB-001-l-origine-de-la-vie-6187ca4c0fe17.mp3', 'L\'origine de la vie', 'img-20211027-wa0001-6187ca4c1253b325611030.jpg', '2021-11-07 13:45:00', '2021-11-07 13:45:00'),
(84, 14, NULL, 'BHB-002-le-premier-jour-de-ce-monde-6187cb3322641.mp3', 'le premier jour de ce monde', 'img-20211027-wa0001-6187cb3323fa4127105363.jpg', '2021-11-07 13:48:51', '2021-11-07 13:48:51'),
(85, 2, NULL, 'JRF-pasteur-Alain-Gwet-01-6187d442db2ae.mp3', 'JRF - pasteur Alain Gwet 01', 'images-6187d442dce6e913735414.jpg', '2021-11-07 14:27:30', '2021-11-07 14:27:30'),
(86, 2, NULL, 'JRF-Pasteur-Alain-Gwet-02-6187d543d11de.mp3', 'Pasteur Alain Gwet 02', 'images-6187d543d2c4e402182241.jpg', '2021-11-07 14:31:47', '2021-11-07 14:31:47'),
(87, 4, NULL, 'IE-DU-06-11-21-Pst-Karl-Johnson-foi-paix-assurance-61881c2d523fa.mp3', 'Foi, paix, assurance', 'images-1-61881c2d53a26455130094.jpg', '2021-11-07 19:34:21', '2021-11-07 19:34:21'),
(88, 14, NULL, 'BHB-003-Dieu-crea-le-ciel-les-nuages-et-l-air-618a245d1dacf.mp3', 'Dieu crea le ciel les nuages et l\'air', 'img-20211027-wa0001-618a245d1f2f1814975647.jpg', '2021-11-09 08:33:49', '2021-11-09 08:33:49'),
(89, 14, NULL, 'BHB-004-Dieu-crea-les-plantes-618a260c1e6ee.mp3', 'Dieu créa les plantes', 'img-20211027-wa0001-618a260c201dd665898170.jpg', '2021-11-09 08:41:00', '2021-11-09 08:41:00'),
(90, 2, NULL, 'JRF-Cedrick-Alaka-618a28a1af179.mp3', 'Cédrick Alaka', 'images-618a28a1b0a1d670778204.jpg', '2021-11-09 08:52:01', '2021-11-09 08:52:01'),
(92, 4, NULL, 'IE-du-20-11-2021-Eclaire-ma-bougie-past-karl-johnson-6198d0b9912b2.mp3', 'Eclaire ma bougie', 'index-6198d0b991b9a793873736.jpg', '2021-11-20 11:40:57', '2021-11-20 11:40:57'),
(93, 2, NULL, 'JRF-Jean-Claude-Mbong-61992b5ee0146.mp3', 'Jean Claude Mbong', 'images-61992b5ee0a82177899337.jpg', '2021-11-20 18:07:42', '2021-11-20 18:07:42'),
(94, 14, NULL, 'BHB-005-Dieu-crea-le-soleil-la-lune-et-les-etoiles-61992c0fe262c.mp3', 'Dieu créa le soleil, la lune et les etoiles', 'img-20211027-wa0001-61992c0fe309c425677903.jpg', '2021-11-20 18:10:39', '2021-11-20 18:10:39'),
(95, 16, NULL, 'La-malediction-de-la-tete-baissee-Pst-Nang-Elisee-619942b0179d2.mp3', 'La malédiction de la tête baissée', '61tn5npiqjl1-619942b01819b911904807.jpg', '2021-11-20 19:47:12', '2021-11-20 19:47:12'),
(96, 16, NULL, 'GENESE-24-AB-619abefbcebdd.mp3', 'GENESE 24', 'bible-619abefbcf272439738544.jpg', '2021-11-21 22:49:47', '2021-11-21 22:49:47'),
(97, 18, NULL, 'RAC-Nkou-Jc-01-619ac6945ce9b.mp3', 'Nkou Jc', 'rencontre-avec-jesus-e1607803494135-619ac6945d5eb807171425.jpg', '2021-11-21 23:22:12', '2021-11-21 23:22:12'),
(98, 18, NULL, 'RAC-Nkou-Jc-02-619ac77e74fb2.mp3', 'Nkou Jc 2', 'rencontre-avec-jesus-e1607803494135-619ac77e756d4707159118.jpg', '2021-11-21 23:26:06', '2021-11-21 23:26:06'),
(99, 14, NULL, 'BHB-006-Dieu-crea-les-oisaux-et-les-poissons-61a0ac80eb21d.mp3', 'Dieu créa les oisaux et les poissons', 'img-20211027-wa0001-61a0ac80eba52581928368.jpg', '2021-11-26 10:44:32', '2021-11-26 10:44:32'),
(100, 14, NULL, 'BHB-007-la-creation-Dieu-crea-les-animaux-terrestes-61a0ad8117db6.mp3', 'La creation  Dieu créa les animaux terrestes', 'img-20211027-wa0001-61a0ad81188bc613033793.jpg', '2021-11-26 10:48:49', '2021-11-26 10:48:49'),
(101, 4, NULL, 'IE-du-27-nov-2021-CHRIST-notre-esperance-past-rene-blaise-mbop-ackok-61a0bbf6ef7ab.mp3', 'CHRIST notre espérance', 'images-61a0bbf6efc7b682153814.jpg', '2021-11-26 11:50:30', '2021-11-26 11:50:30'),
(102, 14, NULL, 'BHB-008-la-creation-Dieu-crea-le-premier-homme-61a3d54994bfb.mp3', 'la creation  Dieu créa le premier homme', 'img-20211027-wa0001-61a3d5499573f664560877.jpg', '2021-11-28 20:15:21', '2021-11-28 20:15:21'),
(103, 14, NULL, 'BHB-009-la-creation-Adam-explore-son-monde-61a3d5b4a7230.mp3', 'Adam explore son monde', 'img-20211027-wa0001-61a3d5b4a7a4c520488286.jpg', '2021-11-28 20:17:08', '2021-11-28 20:17:08'),
(104, 4, NULL, 'il-est-ecrit-sam-04-12-2021-Marcher-avec-Jesus-vocation-au-discipulat-Pr-Assembe-Presentation-achille-bada-ngangoumou-61aaf042a323d.mp3', 'il est écrit , marcher', 'pastor-assembe-valere-in-action-large-61aaf042a38f9729214514.jpg', '2021-12-04 05:36:18', '2021-12-04 05:36:18'),
(105, 5, NULL, 'MMMS-ESTHER-5-du-06-12-2021-de-MONPROCHAIN-ETOUNDI-61b042aa2f59b.mp3', 'Esther 05', 'esther1-61b042aa2fe39717163455.jpg', '2021-12-08 06:29:14', '2021-12-08 06:29:14'),
(106, 14, NULL, 'BHB-010-la-creation-Dieu-inventa-la-famille-61b06d057ae30.mp3', 'La creation :  Dieu inventa la famille', 'img-20211027-wa0001-61b06d057bb7d052096162.jpg', '2021-12-08 09:29:57', '2022-05-11 09:37:10'),
(107, 5, NULL, 'MMMS-ESTHER-6-du-8-12-2021-de-MONPROCHAIN-ETOUNDI-61b06e89c11d1.mp3', 'ESTHER 06', 'esther1-61b06e89c1985600447132.jpg', '2021-12-08 09:36:25', '2021-12-08 09:36:25'),
(108, 5, NULL, 'MMMS-ESTHER-7-du-9-12-2021-de-MONPROCHAIN-ETOUNDI-61b1bc74b591b.mp3', 'Esther 7', 'esther1-61b1bc74b618a191384817.jpg', '2021-12-09 09:21:08', '2021-12-09 09:21:08'),
(109, 5, NULL, 'MMMS-ESTHER-8-du-10-12-2021-de-MONPROCHAIN-ETOUNDI-61b324f2984d4.mp3', 'esther 8', 'esther1-61b324f298c95046284781.jpg', '2021-12-10 10:59:14', '2021-12-10 10:59:14'),
(110, 4, NULL, 'IE-du-Sam-11-12-2021-marchons-dans-la-lumiere-past-joseph-nkou-61b325a637cef.mp3', 'Marchons dans la lumière', '2a0d4abcba725c601271543b7400365e-61b325a638415849817100.jpg', '2021-12-10 11:02:14', '2021-12-10 11:02:14'),
(111, 19, NULL, 'ENE-NTILAN-sam-18-12-2021-EDIBEGA-YA-NEM-de-Etoundi-Luc-61bc5c5033004.mp3', 'NEM', 'images-61bc5c5033745141708155.png', '2021-12-17 10:45:52', '2021-12-17 10:45:52'),
(112, 4, NULL, 'IEE-du-18-12-2021-Jesus-christ-le-dernier-Espoir-Pst-Aime-Cosendai-61bc5f762f1f6.mp3', 'Jésus-christ le dernier Espoir.', 'sheep-jesus-parson-parable-christ-61bc5f762f8d5319573091.jpeg', '2021-12-17 10:59:18', '2021-12-17 10:59:18'),
(113, 4, NULL, 'il-est-ecrit-sam-01-01-2022-le-temps-qui-passe-R-B-Mbop-Akok-presentation-Jean-Claude-MBOLONG-61d0917ce6224.mp3', 'il est écrit 01 01 2022', 'b37e17300e-50148320-temps-passe-pict-rider-fotolia-61d0917ce6bef812155835.jpg', '2022-01-01 18:38:04', '2022-01-01 18:38:04'),
(114, 5, NULL, '3MS-JOB-14-61d3139ea5621.mp3', 'job 14', 'job-61d3139ea5d03449692630.jpg', '2022-01-03 16:17:50', '2022-01-03 16:17:50'),
(115, 20, NULL, '01-LJP-Une-Annee-2022-reussie-61d31702e3bda.mp3', 'une année 2022 réussie', '2022-61d31702e4412907119283.webp', '2022-01-03 16:32:18', '2022-01-03 16:32:18'),
(116, 5, NULL, '02-3MS-JOB-15-du-4-1-2022-de-FSN-61d584cc2e7ea.mp3', 'job 15', 'job-61d584cc2ee8a316086882.jpg', '2022-01-05 12:45:16', '2022-01-05 12:45:16'),
(117, 5, NULL, '03-3MS-JOB-16-du-5-1-2022-de-FSN-61d58dac0b27d.mp3', 'job 16', 'job-61d58dac0b910625977493.jpg', '2022-01-05 13:23:08', '2022-01-05 13:23:08'),
(119, 4, NULL, '01-il-est-ecrit-sam-08-01-2022-Annee-de-grace-du-seigneur-past-V-G-Assembe-M-presentation-Jean-Claude-MBOLONG-61d930a37b6c9.mp3', 'il est écrit, Année', 'formatfactoryistockphoto-1340232108-170667a-61d930a37bd93444204557.jpg', '2022-01-08 07:35:15', '2022-01-08 07:35:15'),
(121, 16, NULL, 'VID-20211126-WA0021-61d9d3e597c7e.mp3', 'faux prophètes', 'faux-berger-pasteur-docteur-61d9d3e5988b2874296846.jpg', '2022-01-08 19:11:49', '2022-01-08 19:11:49'),
(122, 16, NULL, 'Noel-61d9d86d20190.mp3', 'noel', '1257-noel-dossier-61d9d86d20c31342353900.jpg', '2022-01-08 19:31:09', '2022-01-08 19:31:09'),
(123, 16, NULL, 'Comment-avoir-une-famille-unie-et-forte-61d9da96a40ee.mp3', 'Comment avoir une famille unie et forte', 'famille-61d9da96a4b29310544357.webp', '2022-01-08 19:40:22', '2022-01-08 19:40:22'),
(124, 5, NULL, '04-3MS-JOB-17-du-6-1-2022-de-FSN-61dd80ec435bd.mp3', 'JOB 17', 'job-61dd80ec43c9e703956576.jpg', '2022-01-11 14:06:52', '2022-01-11 14:06:52'),
(125, 5, NULL, '05-3MS-JOB-18-du-7-1-2022-de-FSN-61dd8196eac1c.mp3', 'job 18', 'job-61dd8196eb27d891192608.jpg', '2022-01-11 14:09:42', '2022-01-11 14:09:42'),
(126, 5, NULL, '06-3MS-JOB-19-du-10-1-2022-de-JCM-61dd836e472eb.mp3', 'job 19', 'job-61dd836e479b8786295724.jpg', '2022-01-11 14:17:34', '2022-01-11 14:17:34'),
(127, 5, NULL, '07-3MS-JOB-20-du-11-1-2022-de-JCM-61dd840fa6494.mp3', 'job 20', 'job-61dd840fa6b26893936996.jpg', '2022-01-11 14:20:15', '2022-01-11 14:20:15'),
(129, 4, NULL, 'IE-du-sam-15-01-2022-le-reste-past-V-G-Assembe-M-61e28ae38a39b.mp3', 'Le reste', 'le-reste3-61e28ae38aa20320153895.jpg', '2022-01-15 09:50:43', '2022-01-15 09:50:43'),
(148, 21, NULL, 'LPQ-NJ-005-61f91cfe48c74.mp3', 'LPQ NJ 005', 'pain-quotidien-61f91cfe493f1613180248.png', '2022-02-01 12:43:58', '2022-02-01 12:43:58'),
(150, 10, NULL, 'FRECO-XXX-20060101-61fba54470295.mp3', '0001 - LVDE', 'la-voix-de-l-esperance-bon1-61fba54471bd5050205795.jpg', '2022-02-03 10:49:56', '2022-02-03 10:49:56'),
(151, 10, NULL, 'FRECO-XXX-20060101b-61fba60642633.mp3', '0002 - LVDE', 'la-voix-de-l-esperance-bon1-61fba606440fd398262863.jpg', '2022-02-03 10:53:10', '2022-02-03 10:53:10'),
(152, 22, NULL, 'AEB-Le-Sanctuaire-Pst-Frederick-Saminadrin-01-61fba8de8fc5d.mp3', 'Le Sanctuaire', 'a-l-ecoute-de-la-bible-61fba8de9181f571734404.jpg', '2022-02-03 11:05:18', '2022-02-03 11:05:18'),
(153, 22, NULL, 'AEB-Le-Sanctuaire-Pst-Frederick-Saminadrin-02-61fbaa42a94e8.mp3', 'Le Sanctuaire 02', 'a-l-ecoute-de-la-bible-61fbaa42aaed8632759156.jpg', '2022-02-03 11:11:14', '2022-02-03 11:11:14'),
(154, 21, NULL, '003-LPQ-NJ-61fbab4d19831.mp3', '003 - LPQ NJ', 'pain-quotidien-61fbab4d1a1ac942468197.png', '2022-02-03 11:15:41', '2022-02-03 11:15:41'),
(157, 4, NULL, '07-IEE-du-12-02-2022-Les-deux-cles-du-bonheur-Pst-Jean-E-Nlo-Nlo-6204fd69ca90d.mp3', 'Les deux clés du bonheur', 'les-deux-cle1-6204fd69cb3d4079482921.jpg', '2022-02-10 12:56:25', '2022-02-10 12:56:25'),
(158, 4, NULL, 'IL-EST-ECRIT-DU-12-FEV-2022-UN-CHEVAL-BLANC-KARL-JOHNSON-6207bdd51cf7b.mp3', 'Au menu :        1-Rubrique santé et Bien-être : La marche. Marcher est bénéfique à la fois pour notre santé physique et mentale. C\'est une activité que tous nous pouvons  pratiquer chaque jour  pour améliorer la santé dans nos familles et réduire les dépenses maladies. Restez des nôtres alors que nous aborderons quelques bienfaits de la marche...       2-Méditation : Foi, paix et assurance. La nouvelle année est l\'occasion de prendre un nouveau départ et de nouveaux engagements pour marcher main dans la main avec le Seigneur. Mais une question se pose: que pouvons-nous faire pour être en règle avec Dieu ou lui ressembler, puisque nous sommes de grands pécheurs et que le sentiment de notre péché nous assaille? Dans ce magazine, nous répondrons à cette question et à tant d\'autres...   3- Page des nouvelles : Le Programme de 10 jours de prière - la Coupe d\'Afrique des Nations, le service communautaire ...4- De la bonne musique chrétienne...     NB:  SVP, bien vouloir partager avec au moins une personne---    Vos témoignages sont aussi vivement attendus... Merci d\'avance.    Bonne écoute et surtout que notre Dieu vous bénisse richement!', 'cheval-blanc-61fc0848d355d918788136.jpg', '2022-02-12 15:01:57', '2022-03-13 18:00:11'),
(159, 16, NULL, 'Unite-dans-la-tempete-620a2dd0ed093.mp3', 'Unité dans la tempete', 'unite-620a2dd0eebbe688708341.jpg', '2022-02-14 11:24:16', '2022-02-14 11:24:16'),
(160, 19, NULL, '08-ENE-NTILAN-sam-19-02-2022-Duma-a-esae-tia-Mbono-Simon-620f3bf67eea3.mp3', 'Duma a esae tia', 'gloire-620f3bf67f904059592074.jpg', '2022-02-18 07:25:58', '2022-02-18 07:25:58'),
(161, 16, NULL, 'Oser-lui-declarer-son-amour-620f442b3c6fb.mp3', 'OSER LUI DECLRARER SON AMOUR', 'amour1-620f442b3d192505880283.jpg', '2022-02-18 08:00:59', '2022-02-18 08:00:59'),
(163, 4, NULL, '08-IEE-du-19-02-2022-Connu-que-de-Dieu-Pst-karl-johson-620f45d784891.mp3', 'Connu que de Dieu Pst  karl johson', 'connu-de-dieu-620f45d784f8b227391881.jpg', '2022-02-18 08:08:07', '2022-02-18 08:08:07'),
(165, 16, NULL, 'Parabole-de-la-tragedie-Pompei-621340923e8be.mp3', 'Parabole de la tragédie Pompéi', 'volcan-621340923f382915767781.jpg', '2022-02-21 08:34:42', '2022-02-21 08:34:42'),
(167, 16, NULL, 'LA-SUEUR-ET-LE-SANG-PARLENT-62176315d2adb.mp3', 'Sueur et sang parlent', 'sueur-et-sang-parlent-62176315d346c271097655.jpg', '2022-02-24 11:51:01', '2022-02-24 11:51:01'),
(168, 4, NULL, '09-IEE-du-26-02-2022-la-colere-de-mon-pere-past-joseph-gaston-nkou-6217a09a7538b.mp3', 'La colère de mon père', 'la-colere-6217a09a75b51534078822.jpg', '2022-02-24 16:13:30', '2022-02-24 16:13:30'),
(169, 4, NULL, 'IL-EST-ECRIT-DU-26-FEV-2022-PRIEZ-SANS-CESSE-JOHN-GRAZ-621cc7b04c1aa.mp3', 'Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : La marche. Marcher est bénéfique à la fois pour notre santé physique et mentale. C\'est une activité que tous nous pouvons  pratiquer chaque jour  pour améliorer la santé dans nos familles et réduire les dépenses maladies. Restez des nôtres alors que nous aborderons quelques bienfaits de la marche...                                                                                                                                                                                                                                                                                                               2-Méditation : Foi, paix et assurance. La nouvelle année est l\'occasion de prendre un nouveau départ et de nouveaux engagements pour marcher main dans la main avec le Seigneur. Mais une question se pose: que pouvons-nous faire pour être en règle avec Dieu ou lui ressembler, puisque nous sommes de grands pécheurs et que le sentiment de notre péché nous assaille? Dans ce magazine, nous répondrons à cette question et à tant d\'autres...                                                                                                                                     3- Page des nouvelles : Le Programme de 10 jours de prière - la Coupe d\'Afrique des Nations, le service communautaire ...4- De la bonne musique chrétienne...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus... Merci d\'avance.                                                                                                                                                                                           Bonne écoute et surtout que notre Dieu vous bénisse richement!', 'b094d01edfd21a6927d0182e71fa3e54-621cc7b04cad1958316975.jpg', '2022-02-28 14:01:36', '2022-02-28 14:01:36'),
(176, 4, NULL, 'IL-EST-ECRIT-DU-05-MAR-2022-LA-FEMME-DIAMANT-BAKARI-6224d345963e2.mp3', 'La femme diamant..A l\'occasion de la journée internationale de la femme, attardons-nous sur la description que la Bible fait de la femme vertueuse, celle-là seule qui véritablement constitue une plus-value pour notre société. La suite dans cette édition.', 'htb1w9eaeqowbunjssppq6xpgpxaq-6224d345969fb527976747.jpg', '2022-03-06 16:29:09', '2022-03-06 16:29:09'),
(177, 4, NULL, 'IL-EST-ECRIT-DU-12-MAR-2022-JESUS-ET-LES-FEMMES-KARL-JOHNSON-622dc8dfdd2cf.mp3', '                                                                                               Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : le rire... détend et met de bonne humeur, en mobilisant 600 muscles. Mais savez-vous qu\'il est également excellent pour la santé physique?Connaissez-vous la rirothérapie? Restez connecté alors que nous vous donnons un aperçu des bienfaits du rire.                                                                                                                                                                                                                                                                                                              2-Méditation : Jésus et les femmes! A la lumière de la Bible, découvrons la valeur que le Seigneur Jésus-Christ a accordée aux femmes dans ses paroles et ses actes, en contradiction avec la pensée dominante de son temps(et même d\'aujourd\'hui?)  La suite dans ce magazine .                                                                                                                        3- Page des nouvelles : Le réveil et la réforme - Les femmes de l\'Église, un symbole de fierté...                                                                                                                                 4- De la bonne musique sélectionnée avec soin pour nous édifier...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu vous protège pendant le weekend!', 'femmes-bible-622dc8dfde317816630464.jpg', '2022-03-13 11:35:11', '2022-03-13 11:35:11'),
(178, 7, NULL, 'ots-qui-peut-payer-un-enseignant-622ddbf53a191.mp3', 'Le meilleur professeur, cependant, se rend compte qu\'il ou elle est dans la classe pour aider les élèves à atteindre leur plein potentiel. Pour l’être, il faut que l’enseignant soit au meilleur de ses capacités. C’est vrai, il lui faut un salaire conséquent, plus à même de le mettre à l’abri de ses besoins et de ceux de sa famille.   Je ne pense pas que les enseignants ambitionnent être Kim Ki-Hoon, le Sud-Coréen qui gagne plus deux milliards de FCFA annuellement. Mais nos pays peuvent faire mieux que clochardiser un métier si noble et si exigeant. Assurément la Corée du Sud est l’un des pays au monde où l’enseignant est parmi les fonctionnaires les mieux rémunérés. En Allemagne où l’éducation fait de bons résultats, les enseignants sont aussi bien payés.  Nous ne pouvons pas payer les enseignants comme ils le méritent mais nous pouvons faire mieux. Les enseignants aussi doivent trouver un moyen d\'améliorer leur travail dont la portée est éternelle.  Que Dieu bénisse les enseignants!', '2019-04-teacher-622ddc17d7a27530388411.jpg', '2022-03-13 12:56:37', '2022-03-13 12:57:11'),
(179, 4, NULL, 'IL-EST-ECRIT-DU-19-MAR-2022-S-ASSEOIR-AUX-PIEDS-DE-JESUS-JOSE-ELYSEE-6234ba5b8ee5d.mp3', 'Shallom shallom  !                                                                                                                                                                                  👆👆👆Emission radiophonique IL EST ECRIT, sur la CRTV station.  régionale de l\'Ouest (93.5FM), chaque samedi matin à partir de 07h 00. Edition du samedi 19 Mars 2022.                                                                                                     Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : prendre soin de nos reins! Ces 2 petits organes qui filtrent les déchets circulant dans le sang et les éliminent grâce à l\'urine. Dans le monde, 1adulte sur 10 souffre d\'insuffisance rénale chronique, avec son lot de souffrance et de désagréments pour les familles. Dans ce magazine, nous vous disons comment prendre soin de ses reins.                                                                                                                                                                                                                                                                                                     2-Méditation : la Parole de Dieu, la Bible, possède une puissance qui seule peut soutenir notre foi et nous permettre d\'avancer dans la vie, même pendant les pires moments de notre existence. Comment donc profiter de cette puissance? Découvrons-le ensemble dans cette édition .                                                                                                                        3- Page des nouvelles : Le réveil et la réforme - Les inscriptions pour la prochaine session de la Conférence Générale des adventistes...                                                                                                                                 4- De la louange pour élever nos âmes vers le ciel...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu vous protège pendant le weekend!', 'hqdefault-6234ba5b8fcc4358410458.jpg', '2022-03-18 17:59:07', '2022-03-18 17:59:07'),
(181, 12, NULL, 'OnlyMP3-to-Votre-langue-est-elle-une-station-radio-du-diable-ywJgZmCQy10-192k-1648846629728-624767604f220.mp3', 'Beaucoup de gens ne seraient pas là où ils sont maintenant s\'ils n\'avaient pas pris part à une conversation. Beaucoup de gens seraient encore amis aujourd\'hui s\'ils avaient pu fermer leurs bouches. Beaucoup de foyers seraient encore ensemble si les couples étaient lents à parler. La vie de nombreux adultes serait façonnée différemment s’ils n’étaient pas victimes de violence verbale dans leur enfance.  La langue mauvaise se livre au mensonge et aux commérages. Elle diffame et bavarde. Une telle personne est la station radio du diable. Tu peux détruire la renommée de quelqu’un mais tu ne peux lui enlever la grâce de Dieu. Et donc inutile de tirer contre lui ou contre elle. Si nous utilisons toujours notre langue pour maudire et jurer, nous avons un grave problème. Cela signifie que notre langue est toujours collée à la chaîne de l\'ennemi.  Sauve-nous Seigneur !  ****************  IS YOUR TONGUE A DEVIL\'S RADIO STATION?  Many people would not be where they are now if they had not been involved in a conversation. Many people would still be friends today if they could have kept their mouths shut. Many homes would still be together if couples were slow to talk. Many adults\' lives would be shaped differently if they were not verbally abused as children.  The evil tongue engages in lying and gossiping. It defames and gossips. Such a person is the devil\'s radio station. You can destroy someone\'s fame but you cannot take away God\'s grace. And therefore it is useless to shoot against him or her. If we always use our tongue to curse and swear, we have a serious problem. It means that our tongue is always stuck to the chain of the enemy.  Save us Lord !', '2015924-univ-lsr-xl-6247677d5f998057464330.jpg', '2022-04-01 22:58:08', '2022-04-01 22:58:37'),
(183, 4, NULL, '14-IEE-du-sam-02-04-2022-le-carillon-a-minuit-Past-karl-johson-6249555e1b44a.mp3', 'Un regard sur la venue imminente de CHRIST.', 'minuit-6249555e1bc9c045667121.jpg', '2022-04-03 10:05:50', '2022-04-03 10:05:50'),
(185, 4, NULL, 'Le-jour-du-mensonge-Pr-J-G-Nkou-62495777417dc.mp3', 'Le poisson d\'Avril', 'poisson-davril-modele-texte-gratuit-pour-feter-1er-avril-exemple-blagues-1er-avril-toutpratique-6249577741e85839332758.jpg', '2022-04-03 10:14:47', '2022-04-03 10:14:47'),
(186, 5, NULL, '12-PSAUME-19-du-09-03-2022-de-ETOUNDI-MONP-624c53220d492.mp3', 'Sur les sentiers des cantiques de David', 'harpe-624c53220dc1d884625831.jpg', '2022-04-05 16:33:06', '2022-04-05 16:33:06'),
(187, 19, NULL, '15-ENE-NTILAN-Sam-09-04-22-EUTYCHUS-Daniel-ENGAMBA-624fde38014fa.mp3', 'Etonnante histoire pleine d\'enseignements', 'eutychus-624fde3801fb5110569656.jpg', '2022-04-08 09:03:20', '2022-04-08 09:03:20'),
(188, 4, NULL, '15-IEE-du-sam-09-04-2022-Dieu-n-est-pas-loin-past-Jean-E-Nlo-Nlo-624fdf50a391e.mp3', 'Le Seigneur nous rassure de sa constante présence.', 'dieu-n-est-pas-loin-624fdf50a3ebe824574610.jpg', '2022-04-08 09:08:00', '2022-04-08 09:08:00'),
(189, 4, NULL, 'IL-EST-ECRIT-DU-09-AVR-2022-FORTIFIES-TOI-ET-PRENDS-COURAGE-JOHN-GRAZ-6253217aebbe4.mp3', 'Shallom shallom  !                                                                                                                                                                                  👆👆👆Emission radiophonique IL EST ECRIT, sur la CRTV station régionale de l\'Ouest (93.5FM), chaque samedi matin à partir de 07h 00. Edition du samedi 09 Avril 2022.                                                                                                     Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : les signes pouvant alerter sur les problèmes de reins ! Selon l\'OMS, en 2040, les maladies rénales deviendront la cinquième cause de décès dans le monde. Voilà pourquoi nous devons agir avant qu\'il ne se fasse tard. Car prévenir vaut mieux que guérir...                                                                                                                                                                                                                                                                                                    2-Méditation : la vie devient de plus en plus en difficile. Personne ne peut le nier. Mais même si l\'avenir s\'annonce plein de défis et d\'incertitudes, si nous donnons à Dieu la première place dans nos vies,il se tiendra à nos côtés pour nous accorder pleine satisfaction  et réussite...                                                                                                                     3- Page des nouvelles : Le réveil et la réforme - Heroes: le jeu sur la Bible -Les inscriptions pour la prochaine session de la Conférence Générale des adventistes en Juin 2022...                                                                                                                                 4- De la bonne musique pour soutenir notre foi...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu vous protège pendant le weekend!', 'download-6253217aec2b4847538050.jpg', '2022-04-10 20:27:06', '2022-04-10 20:27:06'),
(190, 19, NULL, 'Eutychus-62595d678f7fd.mp3', 'Une histoire pleine d\'enseignements spirituels', 'eutychus-62595d67900e0974770768.jpg', '2022-04-15 13:56:23', '2022-04-15 13:56:23'),
(191, 4, NULL, '16-il-est-ecrit-sam-16-04-2022-Jesus-de-ll-histoire-past-karl-johson-62595ed8e921a.mp3', 'JESUS de l\'histoire', 'jesus-de-l-histoire-62595ed8ea9d2117888275.jpg', '2022-04-15 14:02:32', '2022-04-15 14:02:32'),
(193, 9, NULL, 'MiX-Final-de-vison-prophetique-CHRIST-NOTRE-PAQUE-2022-625e7659bbf52.mp3', 'CHRIST NOTRE PAQUE', 'christ-notre-paque2-625e7659bc639102085514.jpg', '2022-04-19 10:44:09', '2022-04-19 10:44:09'),
(194, 5, NULL, '15-PSAUMES-32-du-30-03-2022-de-ETOUNDI-MONP-625e78f861552.mp3', 'Sur le chemin du Psaume 32', 'harpe-625e78f861b89279216719.jpg', '2022-04-19 10:55:20', '2022-04-19 10:55:20'),
(195, 5, NULL, '21PSAUMES-44-du-18-04-2022-de-JEAN-CL-MBOLONG-625e7ab436ec9.mp3', 'Sur les sentiers du Psaume 44', 'harpe-625e7ab4374ff349664579.jpg', '2022-04-19 11:02:44', '2022-04-19 11:02:44'),
(196, 4, NULL, '22-PSAUMES-45-du-19-04-2022-de-JEAN-CL-MBOLONG-625e7b6b6f81d.mp3', 'Sur les sentiers du PSAUME 45', 'harpe-625e7b6b6febf343612711.jpg', '2022-04-19 11:05:47', '2022-04-19 11:05:47'),
(197, 4, NULL, 'IL-EST-ECRIT-DU-23-AVR-2022-LA-MORSURE-DU-SERPENT-PST-EYA-626664205c2d4.mp3', 'Shallom shallom!👆👆                                                                                                                                                                                     Emission radiophonique IL EST ECRIT, sur la CRTV station régionale de l\'Ouest (93.5FM), chaque samedi matin à partir de 07h 00. Edition du samedi 23 Avril 2022.                                                                                                     Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : Comment libérer ses hormones de bonheur? Malgré le stress et les soucis de la vie, notre Créateur a tout prévu pour que nous vivions en étant calme et bien dans notre peau. Dans ce magazine, nous vous disons tout...                                                                                                                                                                                                                                                                                                                  2-Méditation : Après le péché d\'Adam et Eve dans le jardin d\'éden, Dieu le Créateur leur a annoncé une bonne nouvelle plutôt que de les abandonner à la souffrance et à la mort comme ils le méritaient pourtant. La suite dans cette édition.                                                                                                                        3- Page des nouvelles : Réveil et réforme - Zoom sur le festival des talents avec les sociétés de jeunesse adventiste...                                                                                                                                 4- De la bonne musique pour apaiser nos coeurs...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu vous protège pendant le weekend!', 'sanctuaire-626664205cce4027063575.jpg', '2022-04-25 11:04:32', '2022-04-25 11:04:32'),
(198, 19, NULL, '18-ENE-NTILAN-sam-19-02-2022-Duma-a-esae-tia-Mbono-Simon-626d51bd932ad.mp3', 'Le jour du repos', 'travail-626d51bd93ab1334058904.jpg', '2022-04-30 17:11:57', '2022-07-17 00:16:29'),
(199, 4, NULL, '18-EE-du-sam-30-04-2022-Tu-travailleras-pendant-six-jours-past-J-G-NKOU-626d53ad1cdf8.mp3', 'le repos', 'travail-626d53ad1d407172215462.jpg', '2022-04-30 17:20:13', '2022-04-30 17:20:13'),
(200, 4, NULL, 'IL-EST-ECRIT-DU-30-AVR-2022-ON-A-TELLEMENT-BESOIN-DE-SILENCE-REMY-BALLAIS-626e5388823b9.mp3', 'Emission  radiophonique IL EST ECRIT, sur la CRTV station régionale de l\'Ouest (93.5FM), chaque samedi matin à partir de 07h 00. Edition du samedi 30 Avril 2022.                                                                                                     Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : Les bienfaits du repos dans la gestion du stress. La fatigue augmente le taux d\'adrénaline dans notre corps, nous rendant plus vulnérable au stress et à ses terribles conséquences. Le repos au contraire nous aide à y faire face... Découvrons comment dans cette édition.                                                                                                                                                                                                                                                                                                   2-Méditation : Redécouvons ensemble les vertus du calme et du silence alors que nous sommes de plus en plus habitués au bruit. Le silence peut nous permettre de nous ressourcer et de mieux communiquer avec Dieu. Dans ce magazine nous comprendrons pourquoi parfois, le silence est un ami qui ne trahit jamais...                                                                                                                3- Page des nouvelles : Programme de 40 jours de prière - 400 élèves d\'un collège adventiste au secours des orphelins et des malades...                                                                                                                         4- De la bonne musique pour nous élever vers le ciel...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu vous protège pendant le weekend!', 'in-search-of-true-love-joy-and-peace1-626e5458e1c2b732441075.jpg', '2022-05-01 11:31:52', '2022-07-17 00:18:02'),
(201, 5, NULL, '30-PSAUMES-53-du-02-05-2022-de-ETOUNDI-MONP-626f8378dc179.mp3', 'l\'assurance au temps de la détresse', 'psaumes-626f8378dc75f735727627.jpg', '2022-05-02 09:08:40', '2022-05-02 09:08:40'),
(202, 5, NULL, '31-PSAUMES-54-du-03-05-2022-de-ETOUNDI-MONP-6270dda9b5cde.mp3', 'Un appel à la louange', 'psaumes-54-6270dda9b6342768762157.jpg', '2022-05-03 09:45:45', '2022-05-03 09:45:45'),
(203, 5, NULL, '32-PSAUMES-55-du04-05-2022-de-ETOUNDI-MONP-6273783227950.mp3', 'Un appel à la louange', 'psaumes-6273783228302954553950.jpg', '2022-05-05 09:09:38', '2022-05-05 09:09:38'),
(204, 5, NULL, '33-PSAUMES-56-du-05-05-2022-de-ETOUNDI-MONP-6274d6adb6f59.mp3', 'Sur les sentiers de la justice', 'psaumes-6274d6adb7960500972583.jpg', '2022-05-06 10:05:01', '2022-05-06 10:05:01'),
(205, 4, NULL, 'IL-EST-ECRIT-DU-14-MAI-2022-LA-PIERRE-ANGULAIRE-DE-L-UNITE-BAKARI-6284a8c4b8683.mp3', 'Shallom shallom.👆👆                                                                                                                                                                                     Emission radiophonique IL EST ECRIT, sur la CRTV station régionale de l\'Ouest (93.5FM), chaque samedi matin à partir de 07h 00. Edition du samedi 14 Mai 2022.                                                                                                     Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : l\'entretien du cerveau. Savez-vous qu\'il  nous est possible à tous d\'acquérir davantage de sagesse et d\'intelligence, d\'augmenter les capacités de notre cerveau, tout ceci pouvant contribuer à mener une vie meilleure sur cette terre? Restez des nôtres et vous saurez comment...                                                                                                                                                                                                                                                                                                   2-Méditation : Que faut-il pour bâtir une nation stable et prospère?. Dans cette édition, Il Est Écrit vous propose une solution divine...                                                                                                               3- Page des nouvelles : Réveil et Réforme -  l\'Université adventiste COSENDAI célèbre la journée internationale des infirmières...                                                                                                                         4- De la musique douce et apaisante pour nous inspirer...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu vous protège pendant le weekend!                     BONNE FÊTE DE L\'UNITÉ !', 'cover-image-jpg-760x400-q85-crop-upscale-6284a8c4b996d098286676.jpg', '2022-05-18 10:05:24', '2022-05-18 10:05:24');
INSERT INTO `podcasts` (`id`, `program_id`, `time_space_id`, `file_name`, `description`, `image_name`, `created_at`, `updated_at`) VALUES
(206, 4, NULL, '21-IEE-du-21-05-2022-l-unite-et-la-paix-valeurs-inestimables-Pr-Assembe-Minyono-valere-guillaume-628749a771bb9.mp3', 'l\'unite et la paix valeurs inestimables Pr Assembe Minyono valere guillaume', 'unite-628749a774bd8265679294.jpg', '2022-05-20 09:56:23', '2022-05-20 09:56:23'),
(207, 4, NULL, 'IL-EST-ECRIT-DU-28-MAI-2022-LA-VRAIE-GRANDEUR-COSENDAI-6292565d1b861.mp3', 'Shallom shallom.👆👆                                                                                                                                                                                     Emission radiophonique IL EST ECRIT, sur la CRTV station régionale de l\'Ouest (93.5FM), chaque samedi matin à partir de 07h 00. Edition du samedi 28 Mai 2022.                                                                                                     Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : la marche. Savez-vous que d\'après de nombreuses études, marcher est bénéfique pour notre santé physique et mentale? C\'est une activité simple et gratuite qui peut réduire considérablement les dépenses maladies dans les familles, par ces temps difficiles. Restez des nôtres et nous vous brosserons quelques bienfaits de la marche...                                                                                                                                                                                                                                                                                                   2-Méditation : la vraie grandeur ! Pour le Seigneur notre vraie grandeur réside dans notre capacité à servir les autres et contribuer au bien commun, et non dans nos diplômes, nos possessions, notre position. Que faut-il donc faire pour parvenir à cette vraie grandeur? Dans cette édition, Il Est Écrit vous dit tout...                                                                                                               3- Page des nouvelles : Alerte choléra - Réveil et Réforme - le service de bienfaisance ...                                                                                                                         4- De la bonne musique sélectionnée pour vous, avec beaucoup de soins...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu protège nos familles pendant le weekend!', 'page-1-6292565d1c285756688382.jpg', '2022-05-28 19:05:33', '2022-05-28 19:06:13'),
(208, 4, NULL, '22-IEE-du-28-05-2022-Jesus-fils-de-Dieu-Pr-karl-johson-62976d0ba702a.mp3', 'Le Sacrifice qui nous donne la vie', 'jesus-fils-de-dieu-62976d0ba7937457015989.jpg', '2022-06-01 15:43:39', '2022-06-01 15:43:39'),
(209, 4, NULL, '23-IEE-du-04-06-2022-Doues-pour-le-service-Pr-Assembe-valere-629a04ca93ca0.mp3', 'DOUES POUR LE SERVICE', 'service-629a04ca94ce7468386816.jpg', '2022-06-03 14:55:38', '2022-06-03 14:55:38'),
(211, 4, NULL, '24-IEE-les-heroines-de-la-fidelite-Pst-Arnold-Yangman-Avom-62a32a049d5d8.mp3', 'Les heroines de la fidelite  avec le Pasteur Arnold Yangman Avom', 'fidelite-62a32a049e06e610395575.jpg', '2022-06-10 13:24:52', '2022-06-10 13:24:52'),
(212, 4, NULL, '25-IEE-du-18-juin-2022-Merci-papa-Pr-Joseph-Gaston-Nkou-62ab63b03aa4f.mp3', 'La valeur d\'un père dans une vie.', 'merci-papa-62ab63b03b213188664716.jpg', '2022-06-16 19:09:04', '2022-06-16 19:09:04'),
(213, 1, NULL, 'IL-EST-ECRIT-DU-25-JUIN-2022-MERCI-THOMAS-POUR-TES-DOUTES-JOHN-GRAZ-62b6e4f832859.mp3', '1-Rubrique santé et Bien-être : des conseils pratiques pour cesser de fumer ! Les dommages du tabac sur la santé du fumeur et son entourage sont immenses. N\'oublions pas que le tabac est la deuxième cause de décès dans le monde avec plus de 8 millions de morts par an.  Restez des nôtres et vous saurez comment faire pour en finir avec le tabagisme...                                                                                                                                                                                                                                                                                 2-Méditation : Merci Thomas pour tes doutes ! Ce matin Il est écrit nous rappelle le fondement essentiel de notre foi : la résurrection du Seigneur Jésus-Christ. Dans cette édition, découvrons ensemble comment cet évènement a changé bien de choses...                                                                                                               3- Page des nouvelles : Réveil et Réforme - Les soutenances à l\'Université adventiste COSENDAI à Douala...                                                                                                                         4- De la bonne musique pour égayer nos coeurs ...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu protège nos familles pendant le weekend!', 'thomas2-62b6e4f833218336788178.jpg', '2022-06-25 12:35:36', '2022-06-25 12:35:36'),
(214, 19, NULL, '27-ENE-NTILAN-sam-02-07-2022-Minboan-ya-dibi-Daniel-Engamba-62bf22390557f.mp3', 'Minboan ya dibi Daniel Engamba', 'ya-dibi-62bf223905f10638461975.jpg', '2022-07-01 18:35:05', '2022-07-01 18:35:05'),
(215, 4, NULL, '27-IEE-du-02-07-2022-Enfin-libre-Pr-Joseph-Nkou-62bf243a950dc.mp3', 'Enfin libre', 'libre-62bf243a95847049915882.png', '2022-07-01 18:43:38', '2022-07-01 19:05:39'),
(216, 4, NULL, 'IL-EST-ECRIT-DU-02-JUILLET-2022-LES-AFFLIGES-HEBERT-VALIAME-62c07c9e4d2d8.mp3', 'Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : Les avantages de l\'arrêt du tabac ! Il y a actuellement dans le monde, près d\'1.3 Milliards de fumeurs qui subissent chaque jour sur leur santé physique, mentale et spirituelle, les terribles conséquences du tabagisme; avec plus de 8 millions de morts par an dû au tabac. Voilà pourquoi IL EST ECRIT fait un zoom sur les avantages de l\'arrêt du tabac. Restez des nôtres et vous en saurez un peu plus...                                                                                                                                                                                                                                                                                 2-Méditation : Les Affligés ! Dieu notre Créateur, se soucie de chacun de nous. Il voit chaque tristesse et chaque affliction dans le coeur de ses enfants. Par son Esprit, il se tient à  nos côtés pour nous soutenir. Dans ce magazine, nous vous en disons davantage...                                                                                                               3- Page des nouvelles : Réveil et Réforme - L\'École Biblique de Vacances pour les enfants - Découvrir les grands thèmes de la Bible à travers ESPÉRANCE SANS ILLUSIONS...                                                                                                                         4- De la musique sélectionnée avec soin pour apaiser nos coeurs ...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu protège nos familles pendant le weekend!', 'affliges-62c07c9e4d963967447867.png', '2022-07-02 19:13:02', '2022-07-02 19:13:35'),
(218, 19, NULL, '30-ENE-NTILAN-sam-23-07-2022-Wen-ya-mfan-elat-Pr-Marga-Gerard-62dad5efd9c31.mp3', 'Wen ya mfan elat Pr Marga Gérard', 'nature-sounds-for-well-being-03-62dad5efda6a2515730648.jpg', '2022-07-22 18:53:03', '2022-07-22 18:53:03'),
(219, 4, NULL, '30-IE-du-23-07-2022-l-amour-change-tout-past-Assembe-Minyono-Valere-Guillaume-62dd2ffeee27e.mp3', 'L\'amour change tout. Pst Assembe Minyono Valère Guillaume', 'amour-vrai-coeur-fond-couleur-62dd2ffeeec52122524886.jpg', '2022-07-24 13:41:50', '2022-07-24 13:41:50'),
(221, 5, NULL, 'bakari-psaumes-16-62dd3360466ac.mp3', 'Bonne meditation', '1280x1280-62dd336046d99945750395.jpg', '2022-07-24 13:56:16', '2022-07-24 13:56:16'),
(222, 19, NULL, '31-ENE-NTILAN-sam-30-07-2022-Zen-ya-mfan-elat-Pr-Marga-Gerard-62e4e8ab81cac.mp3', 'Zen ya mfan elat  par Pr Marga Gérard', 'zen-ya-fan-62e4e8ab8276e536655523.jpg', '2022-07-30 10:15:39', '2022-07-30 10:15:39'),
(224, 4, NULL, '31-IEE-du-30-07-2022-Connu-que-de-Dieu-past-karl-johson-62e4eae4b8579.mp3', 'Connu de DIEU par Pr Karl Johnson', 'connu-de-dieu-2-62e4eae4b8ba9735816413.jpeg', '2022-07-30 10:25:08', '2022-07-30 10:25:08'),
(225, 19, NULL, '37-ENE-NTILAN-sam-06-08-2022-Vom-ya-sobo-Mbono-Simon-62ed0d8f0b1a8.mp3', 'Vom ya sobo par Mbono Simon', 'vom-yq-sobo-62ed0d8f0bbef274946287.jfif', '2022-08-05 14:31:11', '2022-10-12 15:08:07'),
(226, 4, NULL, '1-il-est-ecrit-du-14-aout-2021-je-vous-salue-marie-past-karl-johson-presentation-achille-Bada-ngangoumou-62ff6ce2d413f.mp3', 'Je vous salue Marie de Pasteur Karl Johnson', 'marie-62ff6ce2d4cac605529351.jpg', '2022-08-19 12:58:42', '2022-08-19 12:58:42'),
(227, 16, NULL, '3-il-est-ecrit-du-30-janvier-2021-le-courage-de-croire-past-aime-cosendai-presentation-achille-Bada-ngangoumou-62ff74896998b.mp3', 'Avoir foi à la parole de DIEU', 'le-courage-62ff88a96d412376121087.jpg', '2022-08-19 13:31:21', '2022-08-19 14:57:13'),
(228, 16, NULL, '02-ENE-NTILAN-sam-20-Aout-2022-nfan-eding-anc-etoundi-luc-62ff76d8d58cb.mp3', 'Amour du prochain', 'nfan-eding-62ff76d8d5ed4415632886.webp', '2022-08-19 13:41:12', '2022-08-19 13:41:12'),
(229, 4, NULL, '03-il-est-ecrit-du-20-aout-2022-la-vraie-grandeur-past-aime-cosendai-presentation-Achille-bada-ngangoumou-62ff84c27f604.mp3', 'L\'HUMILITE DANS SES VOIES', 'la-vraie-grandeur-62ff84c27fc84004670320.jpg', '2022-08-19 14:40:34', '2022-08-19 14:40:34'),
(230, 4, NULL, 'IL-EST-ECRIT-DU-20-AOUT-2022-LA-FOI-AU-SEIN-DE-LA-FOURNAISE-6306d672e3f51.mp3', 'Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : LES CONSÉQUENCES DU TABAGISME PASSIF ! Le tabagisme passif est le fait d\'absorber par les voies respiratoires, la fumée dégagée par un ou plusieurs fumeurs. Chaque année, le tabagisme passif fait plus de 600.000 morts dans le monde, sans compter les nombreuses maladies auxquelles tous sans exception, adultes, enfants et même foetus, peuvent développer. Soyez attentifs et vous en saurez un peu plus...                                                                                                                                                                                                                                                                                 2-Méditation : LA FOI AU SEIN DE LA DÉTRESSE ! Quand tout va bien, quand tout est rose, il est si facile d\'adorer le Seigneur. Mais qu\'en est-il lorsque des épreuves surgissent? Dans cette édition,IL EST ÉCRIT vous propose la clef pour garder la foi même en temps de trouble...                                                                                                            3- Page des nouvelles : Réveil et Réforme - Bilan du camp JA de Mouanko - La journée mondiale de l\'éducation adventiste...                                                                                                                        4- De la bonne musique pour nous inspirer...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu protège nos familles pendant le weekend!', 'page-1-6306d672e4912006900411.jpg', '2022-08-25 03:54:58', '2022-08-25 03:54:58'),
(231, 4, NULL, 'IL-EST-ECRIT-DU-27-AOUT-2022-QUAND-LES-CHOSES-VONT-MAL-ELIE-WEICK-630b1e80cb68a.mp3', 'Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : L\'IMPORTANCE DU SOMMEIL ! Le sommeil fait partie des fonctions vitales du corps, comme la respiration et l\'immunité par exemple. Malheureusement ils sont de plus en plus nombreux, ceux qui ne jouissent pas d\'un bon sommeil ou alors qui le négligent tout simplement. Cela a des conséquences négatives sur leur santé physique, leur vie de famille, leurs performances au travail et bien plus encore. Restez des nôtres et vous en saurez un peu plus.                                                                                                                                                                                                                                                                            2-Méditation : QUAND TOUT VA MAL ! Lorsque les choses ne tournent pas rond, quand on perd son emploi, quand les maladies et les échecs surgissent, lorsqu\'avec son conjoint tout va mal, dirigeons nos regards vers le ciel. Soyez attentifs alors que nous apprendrons à nous confier à Dieu...                                                                                                            3- Page des nouvelles : Des consultations médicales gratuites - END IT NOW : ensemble, disons NON AUX ABUS DE POUVOIR..                                                                                                                  4- De la musique pour nous édifier profondément...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu protège nos familles pendant le weekend!', 'mal-630b1e80cc025949751123.png', '2022-08-28 09:51:28', '2022-08-30 15:52:35'),
(232, 4, NULL, 'IL-EST-ECRIT-DU-03-SEP-2022-HUIT-CLES-POUR-BIEN-COMMUNIQUER-REMY-BALLAIS-6313fdfa428da.mp3', 'Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : COMMENT MAINTENIR DE BONNES HABITUDES DE SOMMEIL  ! Le sommeil est si utile à l\'équilibre de notre santé physique, mentale, spirituelle et même sociale. Et en cette période de rentrée scolaire, les parents, les enseignants, les élèves et les étudiants doivent se rappeler constamment  qu\'une bonne nuit de sommeil contribue grandement à la réussite scolaire. Dans cette édition, nous partagerons quelques conseils pratiques pour améliorer notre sommeil. Restez des nôtres et vous en saurez un peu plus.                                                                                                                                                                                                                                                                         2-Méditation : 8 clefs pour mieux communiquer ! Nous pouvons améliorer nos relations avec ceux que nous côtoyons chaque jour. En effet, beaucoup de conflits, de guerres, de divorces, et d\"incompréhensions seraient évités si tous, nous nous mettions à l\'école de la communication. Soyez attentifs alors que nous vous en disons davantage.                                                                                                            3- Page des nouvelles : Réveil et Réforme - Séminaire des Communications : \" Vers le digital pour la mission \" - Préparatifs de la rentrée scolaire 2022-2023..                                                                                                                  4- De la musique douce et profonde pour nous insprer...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu protège nos familles pendant le weekend!', 'conference-biblique-uagf-famille-6313fdfa4327e365203054.jpg', '2022-09-04 03:23:06', '2022-09-04 03:23:06'),
(233, 4, NULL, 'IL-EST-ECRIT-DU-10-SEP-2022-LES-RELATIONS-SEXUELLES-AVANT-LE-MARIAGE-PST-SONGNA-631c8634609d4.mp3', 'Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : POURQUOI AVONS-NOUS BESOIN DE SOMMEIL? Le manque de sommeil conduit inévitablement à de terribles problèmes de santé. Mais pourquoi avons-nous même besoin de sommeil? Combien d\'heures devons-nous passer à dormir en fonction de notre âge? Dans cette édition, nous  vous disons tout.                                                                                                                                                                                                                                                                         2-Méditation : Les relations sexuelles avant le mariage ! Un sujet qui nous interpelle tous,  jeunes et adultes. Beaucoup s\'y livrent en ignorant tous les multiples dangers auxquels ils s\'exposent alors. Ce matin IL EST ECRIT fait un zoom sur une pratique largement répandue dans notre société. Restez des nôtres chers amis, alors que nous en apprendrons davantage.                                                                                                          3- Page des nouvelles : Réveil et Réforme - Le festival des jeunes prédicateurs - Une chercheuse adventiste récompensée dans une université...                                                                                                                 4- De la bonne musique pour notre âme ...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu protège nos familles pendant le weekend!', 'gus-moretta-371897-unsplash-jpg-631c8634618a9172730127.png', '2022-09-10 14:42:28', '2022-09-10 14:43:27'),
(234, 4, NULL, 'IL-EST-ECRIT-DU-17-SEP-2022-LES-EXPLOITS-DE-L-EAU-VIVE-6326719d78344.mp3', 'Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : L\'IMPACT DU SOMMEIL SUR LA RÉUSSITE SCOLAIRE ! Selon le psychologue Abraham MASLOW, l\'une des conditions nécessaires à l\'épanouissement intellectuel serait le sommeil. Existe-t-il alors un lien entre le sommeil et les performances scolaires d\'un enfant? Est-il vrai que pour mieux réussir à l\'école, il faut commencer par bien dormir? Dans ce magazine, nous répondons à ces questions.                                                                                                                                                                                                                                                                         2-Méditation : Les exploits de l\'eau vive ! L\'eau (indispensable à la vie sur terre) possède des propriétés fantastiques. Et c\'est aussi un symbole de ce que Dieu veut accomplir dans nos vies par son Esprit.  Découvrons-en plus dans ce magazine.                                                                                                                                                                                                                         3- De la musique douce pour nous édifier ...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu protège nos familles pendant le weekend!', '5530-1-6326719d78e5a720119871.jpg', '2022-09-18 03:17:17', '2022-09-18 03:17:17'),
(235, 16, NULL, '09-LES-DEUX-CADEAUX-DU-PARADIS-63284de63d3d4.mp3', 'Une famille heureuse et parfaite', 'portrait-parc-famille-heureux-image-csp7428687-63284de63e1fd898285532.webp', '2022-09-19 13:09:26', '2022-09-19 13:09:26'),
(236, 16, NULL, '01-Merci-Maman-Premiere-Partie-632c92da7b506.mp3', 'Une mère est une bénédiction.', 'telechargement-1-632c92da7bf9a274395668.jfif', '2022-09-22 18:52:42', '2022-09-22 18:52:42'),
(237, 16, NULL, '02-Merci-Maman-Deuxieme-Partie-632c947933b43.mp3', 'Une mère est une bénédiction.', 'telechargement-1-632c947934306057022509.jfif', '2022-09-22 18:59:37', '2022-09-22 18:59:37'),
(238, 16, NULL, '03-Merci-Maman-Fin-632da2de979df.mp3', 'Une mère est une bénédiction.', 'telechargement-1-632da2de99368220110515.jfif', '2022-09-23 14:13:18', '2022-09-23 14:13:18'),
(239, 19, NULL, '39-ENE-NTILAN-sam-24-09-2022-Etoundi-Luc-Mendem-ya-nnom-zene-632da69eba33e.mp3', 'Les signes d\'une vieille route', 'vieille-route-21004393-632da69eba8d4451864866.jpg', '2022-09-23 14:29:18', '2022-09-23 14:29:18'),
(240, 4, NULL, '39-IEE-du-24-09-2022-l-unite-et-la-paix-valeurs-inestimables-Pr-Assembe-Minyono-valere-guillaume-632da81e9969a.mp3', 'L\'unité et la paix valeurs inestimables Pr Assembe Minyono valere guillaume', 'unite-et-paix-632da81e99d96172890077.jpg', '2022-09-23 14:35:42', '2022-09-23 14:35:42'),
(241, 4, NULL, 'IL-EST-ECRIT-DU-24-SEP-2022-CHRIST-NOTRE-ESPERANCE-PST-MBOP-AKOK-6331b2522b33b.mp3', 'Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : LES 06 SECRETS DU BONHEUR ! Le bonheur est un état de contentement qui est non seulement durable et permanent, mais aussi croissant. Même si notre époque se caractérise par des temps de plus en plus difficiles, il est encore possible malgré tout de se sentir heureux et épanoui. C\'est pourquoi ce matin Il Est Écrit vous propose quelques clefs pour trouver le vrai bonheur et le contentement dans la vie. Soyons simplement attentifs.                                                                                                                                                                                                                                                                   2-Méditation : CHRIST NOTRE ESPÉRANCE ! Nous devons nous appuyer fermement sur Jésus-Christ alors que nous entrons bientôt dans le dernier trimestre de l\'année. Partout dans le monde l\'insécurité a gagné du terrain, le chômage, les épidémies, les incendies, les guerres et les divisions dans les familles sont aussi monnaie courante. Restez des nôtres et découvrons ensemble comment avec Jésus-Christ pour Ami nous pouvons  faire la différence.                                                                                                                                                                                                               3- Page des nouvelles: Réveil et Réforme - Visite d\'un gouverneur dans un collège adventiste - Quelques échos de la 72e journée des jeunes Explorateurs adventistes...      4-De la musique sélectionnée avec soin pour nous édifier...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu protège nos familles pendant le weekend!', 'mqdefault-6331b2522b998814671090.jpg', '2022-09-26 16:08:18', '2022-09-26 16:08:58'),
(242, 16, NULL, 'proclamation-du-28-05-14-la-cupidite-6332d39347c5a.mp3', 'a quoi ça sert a un homme de gagné le monde s\'il perd son ame ?', 'index-6332d39348a0b533013241.jpg', '2022-09-27 12:42:27', '2022-09-27 12:42:27'),
(243, 16, NULL, '01-Tout-commence-avec-DIEU-6332d95b1dd63.mp3', 'Dans toutes nos entreprises n\'oublions jamais de donné a DIEU la première place', '2-6332d95b1e421034926846.jpg', '2022-09-27 13:07:07', '2022-09-27 13:07:07'),
(244, 7, NULL, 'etre-chretien-qui-brille-6332dd7986db6.mp3', 'nous devons savoir brillé a fin de montré la voie aux autres', '3-6332dd79874b1380230948.jpg', '2022-09-27 18:24:41', '2022-10-05 11:57:59'),
(245, 7, NULL, '02-LA-JUSTICE-du-10-07-14-6332e2fb16455.mp3', 'la justice consiste a choisir le camp de jésus-christ notre sauveur', '4-6332e2fb16a8b722885532.jpg', '2022-09-27 18:48:11', '2022-10-12 15:09:10'),
(246, 16, NULL, 'le-combat-spirituel-AB-01-12-15-6332e4b2415df.mp3', 'nous devons nous abandonnés au vainqueur jesus-christ', '5-6332e4b241ca4921708420.jpg', '2022-09-27 13:55:30', '2022-09-27 13:55:30'),
(247, 7, NULL, 'conserver-la-paix-et-l-unite-les-uns-aux-autres-22e-repere-6332e8cb3d27e.mp3', 'conserver l\'unité avec les autres', '6-6332e8cb3d941534325742.jpg', '2022-09-27 14:12:59', '2022-09-29 10:11:03'),
(248, 16, NULL, 'le-culte-de-famille-6332ea237b617.mp3', 'moi et ma maison nous servirons l\'eternel', '7-6332ea237c03f982838651.jpg', '2022-09-27 18:18:43', '2022-09-27 18:18:43'),
(249, 16, NULL, 'ELUS-DE-DIEU-ABRAHAM-BAKARI-6332ececf11bd.mp3', 'car DIEU nous a tant aimé', '8-6332ececf1cca343670883.jpg', '2022-09-27 14:30:36', '2022-09-27 14:30:36'),
(250, 7, NULL, 'la-souffrance-de-job-6332eefba9628.mp3', 'perseverons et gardons la foi', '9-6332eefba9daf009468278.jpg', '2022-09-27 14:39:23', '2022-09-27 20:46:02'),
(251, 7, NULL, 'la-souffrance-de-job-6332f1b6b0bda.mp3', 'perseverance et foi', '9-6332f1b6b123b596903396.jpg', '2022-09-27 14:51:02', '2022-09-27 20:44:47'),
(252, 7, NULL, 'les-secrets-de-l-amour-en-famille-ABdu-30-11-15-6332f3b196748.mp3', 'les secrets de l\'amour en famille', '10-6332f3b196dd8529006697.jpg', '2022-09-27 14:59:29', '2022-10-17 18:52:42'),
(253, 4, NULL, '40-il-est-ecrit-du-01-10-2022-Les-damnes-de-l-age-Pr-Joseph-Gaston-Nkou-6335bc2489aa4.mp3', 'Les damnes de l\'age Pr Joseph Gaston Nkou', 'les-damnes-de-l-age-6335bc248b16c815626127.jpg', '2022-09-29 17:39:16', '2022-09-29 17:39:16'),
(254, 19, NULL, '40-ENE-NTILAN-du-01-10-22-Mongo-sikolo-6335bd2c29965.mp3', 'Mongo sikolo Daniel Engamba', 'mongo-ya-sikolo-6335bd2c29f73785110383.jpg', '2022-09-29 17:43:40', '2022-09-29 17:43:40'),
(255, 4, NULL, '42-il-est-ecrit-15-10-2022-Petit-pourtant-grand-faible-pourtant-fort-Ancien-Jean-Claude-Mbolong-presentation-achille-bada-ngangoumou-634ac73a6373d.mp3', 'Petit pourtant grand, faible pourtant fort', 'petit-mais-fort-634ac73a64841735482201.jpg', '2022-10-15 16:44:10', '2022-10-15 16:44:10'),
(256, 4, NULL, 'IL-EST-ECRIT-DU-22-OCT-2022-L-AGNEAU-ET-LE-DRAGON-K-JOHNSON-635549339931c.mp3', 'Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : L\'IMPORTANCE DU SOMMEIL ! Le sommeil fait partie des fonctions vitales du corps, comme la respiration et l\'immunité par exemple. Malheureusement ils sont de plus en plus nombreux, ceux qui ne jouissent pas d\'un bon sommeil ou alors qui le négligent tout simplement. Cela a des conséquences négatives sur leur santé physique, leur vie de famille, leurs performances au travail et bien plus encore. Restez des nôtres et vous en saurez un peu plus.                                                                                                                                                                                                                                                                            2-Méditation : L\'agneau et le dragon! La foi en Dieu n\'est pas une garantie que nous ne connaitrons jamais la souffrance ou les problèmes dans cette vie. Au contraire, la foi nous permet de résister dans le mauvais jour et tenir ferme après avoir tout surmonté. Soyez attentifs chers amis, alors que nous en apprendrons davantage.                                                                                                        3- Page des nouvelles : Une nouvelle thèse PHD révolutionne l\'univers de l\'Orthopédie en Bio-mécanique - Les dernières infos de l\'Éducation Adventiste au Cameroun  Réveil et Réforme - .                                                                                                                  4- De la bonne musique pour nos âmes...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu protège nos familles pendant le weekend!', 'peche-635549339a435893800993.jpg', '2022-10-23 16:01:23', '2022-10-23 16:02:25'),
(257, 4, NULL, 'IL-EST-ECRIT-DU-12-NOV-2022-UNE-RENCONTRE-INOUBLIABLE-PST-JOHN-GRAZ-6371310d80a14.mp3', 'Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : COMMENT AMELIORER LA QUALITE DE SON SOMMEIL. Le sommeil est si utile à l\'équilibre de notre santé physique, mentale, spirituelle et même sociale. Voilà pourquoi les enseignants, les parents, les èlèves et même les étudiants doivent se rappeler constamment qu\'une bonne nuit de sommeil contribue grandement à la réussite scolaire et académique. Dans cette édition, nous partageons avec vous quelques conseils pratiques pour améliorer notre sommeil. Restez des nôtres et vous en saurez un peu plus.                                                                                                                                                                                                                                                              2-Méditation : UNE RENCONTRE INOUBLIABLE ! En chaque être humain, Jésus ne voit pas un pécheur, mais un homme qui souffre et a besoin de Lui. Et il désire tant nous soulager comme il l\'a fait pour l\'aveugle de naissance. Qu\'on soit riche ou pauvre, homme ou femme, quels que soient notre ethnie, notre âge, nos souffrances, Jésus veut nous surprendre en cette fin d\'année. Il nous suffit juste de croiser son chemin...                                                                                                                                                                                     3- Page des nouvelles: Réveil et Réforme - Des nouvelles du comité exécutif de la Division des adventistes de l\'Ouest et du Centre...                                 4-De la musique sélectionnée avec soin pour nous édifier...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu protège nos familles pendant le weekend!', '0000002566l-6371310d81dc2405839646.jpg', '2022-11-13 19:01:49', '2022-11-14 03:40:08'),
(259, 4, NULL, 'IL-EST-ECRIT-DU-19-NOV-2022-LA-VRAIE-GRANDEUR-PST-AIME-COSENDAI-6378dad59184b.mp3', 'Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : POURQUOI AVONS-NOUS BESOIN DE SOMMEIL? Le manque de sommeil conduit inévitablement à de terribles problèmes de santé. Mais pourquoi avons-nous même besoin de sommeil? Combien d\'heures devons-nous passer à dormir en fonction de notre âge? Dans cette édition, nous vous disons tout.                                                                                                                                                                                                                                                           2-Méditation : LA VRAIE GRANDEUR. Aux de Dieu, en réalité, la vraie grandeur ne réside pas dans ce que nous possedons, ni dans ce que nous savons, ni dans ce que nous faisons, ni dans la position que nous occupons dans la société, mais dans notre capacité à servir les autres et contribuer au bien commun. Dans ce magazine, découvrons ensemble ce qu\'il nous faut faire pour parvenir à cette vraie grandeur...                                                                                                                                                                                3- Page des nouvelles: Réveil et Réforme - La retraite spirituelle des anciens d\'église...                                 4-De la bonne musique pour rafraichir nos âmes...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu protège nos familles pendant le weekend!', 'zxi1625216952146-6378dad5922d9691080581.jpg', '2022-11-19 14:32:05', '2022-11-19 14:32:05'),
(260, 4, NULL, 'IL-EST-ECRIT-DU-26-NOV-2022-PRIER-A-QUOI-CA-SERT-PST-REMY-BALLAIS-1-638123db70c6f.mp3', 'Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : L\'IMPACT DU SOMMEIL SUR LA RÉUSSITE SCOLAIRE ! Selon le psychologue Abraham MASLOW, l\'une des conditions nécessaires à l\'épanouissement intellectuel serait le sommeil. Existe-t-il alors un lien entre le sommeil et les performances scolaires d\'un enfant? Est-il vrai que pour mieux réussir à l\'école, il faut commencer par bien dormir? Dans ce magazine, nous répondons à ces questions.                                                                                                                                                                                                                                                                         2-Méditation :  Prier, à quoi ça sert ? Dans un monde où la technologie occupe une place importante, beaucoup pensent que la prière est inutile puisqu\'il faut pour eux, savoir se battre avant tout et travailler dur pour nourrir sa famille ou réussir ses examens quand on étudiant. Mais qu\'est-ce réellement la prière? A quoi sert-elle vraiment? Pouvons-nous nous en passer? Y\'a-t-il des avantages à mener une vie de prière? Restez des nôtres alors que nous répondons à ces questions.                                                                                                                                                                                                                         3- Réveil et Réforme- Bilan de la journée mondiale des enfants orphelins...          4-De la bonne musique, douce et apaisante pour nos âmes ...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu protège nos familles pendant le weekend!', 'oser-638123db7221f405238015.png', '2022-11-25 21:21:47', '2022-11-26 19:35:42'),
(261, 4, NULL, 'IL-EST-ECRIT-DU-3-DEC-2022-1-638bf930f3b37.mp3', 'Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : COMMENT GÉRER LES TROUBLES DE L\'ANXIÉTÉ ET LE STRESS ! Selon l\'OMS, l\'anxiété touche une personne sur dix dans le monde, adulte comme enfant. C\'est un état de trouble psychique causé par une inquiétude intense et qui persiste face aux situations de la vie. En voici les symptômes : difficulté à respirer, sensation de fatigue, vertiges, transpiration, nausées, poids ou inconfort sur la poitrine, engourdissement des mains et des pieds. L\'anxiété a des conséquences négatives  sur la famille et le travail... Dans cette éditions, nous partageons 07 conseils pratiques pour gérer l\'anxiété.                                                                                                                                                                                                                                                        2-Méditation : NOTRE VIE EN JESUS.  Avez-vous besoin de donner un nouveau sens à votre existence dont vous n\'êtes plus satisfait ? Dans ce magazine, Il Est Écrit vous donne 04 solutions pour se rapprocher de Dieu et profiter pleinement de l\'accomplissement des promesses qu\'il nous a faites dans sa Parole.                                                                                                                                                                                                           3- Réveil et Réforme - Un sous-préfet dans un collège adventiste - Le service de bienfaisance...          4-De la musique sélectionnée avec soin pour rafraichir notre âme ...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu protège nos familles pendant le weekend!', 'vie-en-christ-638bf93100e26252654049.jpg', '2022-12-04 02:34:41', '2022-12-04 02:34:41'),
(262, 16, NULL, 'UN-MARIAGE-DE-REVE-AB-6390466bec685.mp3', 'Un mariage de rêve', 'mariage-de-reve-6390466bed718112347901.jpg', '2022-12-07 08:53:15', '2022-12-10 03:27:53'),
(265, 4, NULL, 'IL-EST-ECRIT-DU-10-DEC-2022-ARRETONS-LA-CORRUPTION-Pst-ASSEMBE-1-63947f60258f5.mp3', 'Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : Les dangers liés à la consommation du sucre blanc ! Selon le site Consoglobe, nous consommons en moyenne 127 grammes de sucre par jour, soit en moyenne 46 kilogrammes par an. C\'est énorme. Mais savez-vous que le sucre dans les boissons sucrées, les patisseries et les bonbons, n\'est pas sans danger pour notre santé? Dans ce magazine, découvrons ensemble 06 raisons qui devraient nous pousser dans chacune de nos familles à réduire notre consommation de sucre à partir de maintenant, alors que les fêtes de fin d\'année pointent à l\'horizon...                                                                                                                                                                                                                                           2-Méditation : Arrêtons la corruption ! Ce fléau qui constitue un frein au développement global de notre société. Comment en sortir? La Bible a-t-elle quelque chose à dire sur le sujet? Restez des nôtres alors que nous répondrons à ces questions et à bien d\'autres encore.                                                                                                                                                                                                          3- Réveil et Réforme - Écho des campus ...          4-De la louange simple et belle, pour communiquer avec le ciel ...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu protège nos familles pendant le weekend!', 'img-20181225-071326-63947f6028136241677502.jpg', '2022-12-10 13:45:20', '2022-12-10 13:45:20'),
(266, 16, NULL, '01-Merci-Maman-Premiere-Partie-6399525410170.mp3', 'Merci maman', 'merci-maman-63995254111d7478966214.jpg', '2022-12-14 05:34:28', '2022-12-14 05:34:28'),
(267, 16, NULL, '02-Merci-Maman-Deuxieme-Partie-639954aa088e4.mp3', 'Merci maman.', 'merci-maman-639954aa08ee5324607973.jpg', '2022-12-14 05:44:26', '2022-12-14 05:44:26'),
(268, 16, NULL, '03-Merci-Maman-Fin-63995ab28b124.mp3', 'Merci maman.', 'merci-maman-63995ab28bac8097043762.jpg', '2022-12-14 06:10:10', '2022-12-14 06:10:10'),
(269, 4, NULL, 'IL-EST-ECRIT-DU-17-DEC-2022-LE-SECRET-DU-SUCCES-Pst-NLO-NLO-639d82a67c33b.mp3', 'Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : La connexion corps-esprit ! Il existe une relation forte entre notre corps et notre esprit. Ainsi, des pensées et des émotions négatives peuvent s\'avérer destructives pour la santé. Le chagrin, l\'anxiété, le mécontentement, le remords, la culpabilité, la méfiance...sont des sentiments qui vont nous rendre malades. Par contre, le courage, l\'espoir, la sympathie, la foi et l\'amour vont nous aider à rester en bonne santé. Dans ce magazine, nous vous disons tout.                                                                                                                                                                                                                                                    2-Méditation :  Le secret du succès! Alors que les élèves par exemple, ont reçu leurs carnets de note pour la fin du premier trimestre, Il Est Écrit rappelle à tous, parents et enfants, ce qu\'il faut faire pour éviter l\'échec et pour que la fin d\'année scolaire soit couronnée par la joie de la réussite, pour tous...                                                                                                                                                                                                         3- Page de nouvelles : Réveil et Réforme - Un chef d\'orchestre adventiste honoré...              4-De la bonne musique pour fortifier notre foi...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu protège nos familles pendant le weekend!', '1f258b899016a964c4a56b13c53e0e8f-639d82a67d379638550711.jpg', '2022-12-17 09:49:42', '2022-12-17 09:49:42'),
(270, 4, NULL, 'IL-EST-ECRIT-DU-24-DEC-2022-SEULS-LES-PAUVRES-COMPRENNENT-NOEL-Pst-BALLAIS-63a661d3459af.mp3', 'menu :                                                                                                                                                 1-Rubrique santé et Bien-être : COMMENT AVOIR LA PAIX DU COEUR ! Beaucoup de gens  avancent dans cette vie, l\'âme en peine, ne faisant confiance à personne ni à rien, subissant simplement les évènements. Cela se traduit entre autres choses, par un manque de paix intérieure et il est grand temps que cela change. Dans ce magazine nous partagerons 07 étapes pour profiter de la paix que Dieu nous a promise dans sa Parole.                                                                                                                                                                                                                                                  2-Méditation :  SEULS LES PAUVRES COMPRENNENT NOËL ! Noël est une fête chrétienne qui rappelle à tous, enfants comme adultes, la naissance du Seigneur Jésus-Christ. Dans cette édition, Il Est Écrit vous invite à fixer les yeux sur \"Jésus, la majesté du ciel, le Roi des cieux, qui abandonna sa royauté, son trône de gloire, sa souveraineté, et vint dans ce monde pour apporter son aide divine à l\'homme déchu, corrompu par le péché et affaibli dans ses facultés morales\"...                                                                                                                                                                                                         3- Page de nouvelles : Réveil et Réforme - Échos de campus..              4-De la musique sélectionnée avec soin pour édification ...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu protège nos familles pendant le weekend!', 'adra-noel-carton-63a661d346b8f488731223.jpg', '2022-12-24 03:20:03', '2022-12-24 03:20:03'),
(271, 4, NULL, 'IL-EST-ECRIT-DU-31-DEC-2022-DESTINATION-ETERNITE-Pst-Jose-ELISEE-63b099fa5e393.mp3', 'menu :                                                                                                                                                 1-Rubrique santé et Bien-être : COMMENT ÉQUILIBRER UNE VIE BIEN REMPLIE ! Nous vivons désormais dans un monde où tout va très vite. Alors que nous éprouvons d\'énormes difficultés pour concilier la famille, le travail et nos autres activités, ce matin Il Est Écrit nous propose 06 conseils pour équilibrer une vie bien remplie...                                                                                                                                                                                                                                                2-Méditation :  DESTINATION : ÉTERNITÉ ! Le retour du Christ est un glorieux rendez-vous  auquel Dieu nous convie tous. Dans cette édition, nous verrons ensemble ce qu\'il nous faut faire pour être du côté de ceux pour qui ce sera un jour \"de joie et non de malheur\".                                                                                                                                                                                                    3- Page de nouvelles : Un premier ministre dans une chapelle adventiste - Réveil et Réforme - Un marché gratuit à Bandrefam....           4-De la bonne musique pour nourrir notre âme...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu nous conduise dans la nouvelle année !', 'bible-desafie-63b099fa5fa87215559634.jpg', '2022-12-31 21:22:18', '2022-12-31 21:22:18');
INSERT INTO `podcasts` (`id`, `program_id`, `time_space_id`, `file_name`, `description`, `image_name`, `created_at`, `updated_at`) VALUES
(272, 4, NULL, 'IL-EST-ECRIT-DU-07-JANV-2023-FORTIFIE-TOI-ET-PRENDS-COURAGE-Pst-John-GRAZ-63ba294502239.mp3', '1-Rubrique santé et Bien-être : LES REPAS PRIS EN FAMILLE ! Savez-vous que manger avec nos enfants peut avoir un impact très significatif sur leur santé mentale, physique et même spirituelle? Malheureusement nous sommes devenus tellement occupés que cela nous échappe. Dans ce magazine, nous découvrirons ensemble 04 avantages qu\'il y a à manger avec nos enfants, pour leur bien-être, avec l\'espoir qu\'en 2023 nous prenions la ferme résolution de réunir nos enfants autour de la salle à manger...                                                                                                                                                                                                                             2-Méditation : FORTIFIE-TOI ET PRENDS COURAGE ! (Pst John GRAZ) Quels que soient notre âge ou notre position sociale, Dieu se tient à nos côtés en cette nouvelle année, et malgré les défis immenses, les incertitudes, les maladies, les difficultés énormes, si nous lui faisons confiance il accomplira toutes ses promesses dans nos vies, pour que l\'année 2023 soit mémorable. Dans cette édition, nous étudierons l\'exemple de Josué et du peuple d\'Israël face aux murs de Jéricho et nous en retirerons des leçons pratiques.                                                                                                                                                                                  3- Page de nouvelles : Programme de 10 jours de prière du 11 au 21 janvier 2023- Réveil et Réforme - Jandira une Tabitha des temps modernes...           4-De la musique douce pour nous réconforter...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu nous conduise dans la nouvelle année !', 'fortifie-toi-square-63ba29450315f519796713.jpg', '2023-01-08 03:24:05', '2023-01-08 03:24:05'),
(273, 16, NULL, '000-Introduction-63bd312e34cfd.mp3', 'Dix jours de prière 2023', '10-jours-de-priere-63bd3cb065e9a192717642.jpg', '2023-01-10 10:34:38', '2023-01-10 11:23:44'),
(274, 16, NULL, '01-Jour-Ou-es-tu-63bdff34c83ea.mp3', 'Où  es-tu ?', 'fb-cover-fr-63bdff34c90bd560913753.jpg', '2023-01-11 01:13:40', '2023-01-11 07:06:50'),
(275, 16, NULL, '02-Jour-Consecration-et-comemoration-63bf7894793e9.mp3', 'Consécration et commémoration', 'fb-cover-fr-63bf78947a41a643236796.jpg', '2023-01-12 04:03:48', '2023-01-12 04:03:48'),
(276, 16, NULL, '03-Jour-Matin-et-soir-63c0c58e2f4a8.mp3', 'Matin et soir', 'fb-cover-fr-63c0c58e30207829607798.jpg', '2023-01-13 03:44:30', '2023-01-13 03:44:30'),
(277, 19, NULL, '02-ENE-NTILAN-sam-14-01-2023-Zene-ya-fek-Mbono-Simon-63c172e951d40.mp3', 'Zen ya Fek', 'zen-ya-fek-63c172e9526de236972715.jpg', '2023-01-13 16:04:09', '2023-01-13 16:04:09'),
(278, 4, NULL, '03-RIE-du-sam-14-01-2023-le-pouvoir-de-la-loi-past-joseph-gaston-nkou-63c173cf8e5ad.mp3', 'Le pouvoir de la loi', 'la-loi-63c173cf8ec4c774569060.jpg', '2023-01-13 16:07:59', '2023-01-13 16:07:59'),
(279, 16, NULL, '04-Jour-Dieu-revient-vers-l-homme-63c213491d053.mp3', 'Dieu revient vers l\'homme', 'fb-cover-fr-63c213491d81d949957865.jpg', '2023-01-14 03:28:25', '2023-01-14 03:28:25'),
(280, 4, NULL, 'IL-EST-ECRIT-DU-14-JANVIER-2023-LES-EXPLOITS-DE-L-EAU-VIVE-PsT-George-HERMANS-63c3e95529af9.mp3', 'Au menu :                                                                                                                                                 1-Rubrique santé et Bien-être : LES BIENFAITS DU RIRE ! Le rire peut être défini comme le fait de manifester un sentiment de gaieté par un élargissement de l\'ouverture de la bouche, accompagné d\'expirations saccadées et d\'un léger plissement des yeux. Les chercheurs considèrent désormais le rire comme un facteur d\'amélioration de notre santé physique et mentale. Alors que les situations de la vie nous rendent de plus en plus amers et malades, Il Est Écrit vous propose un traitement par le rire. Dans ce magazine, nous découvrirons ensemble 07 bienfaits du rire...                                                                                                                                                                                                                             2-Méditation : LES EXPLOITS DE L\'EAU VIVE ! (Pst George HERMANS) L\'eau, si indispensable à la vie sur terre, possède des propriétés fantastiques.  Dans cette édition, nous verrons comment l\'eau symbolise ce que Dieu par son Esprit veut accomplir dans nos vies en 2023.                                                                                                                                                                             3- Page de nouvelles : Programme de 10 jours de prière du 11 au 21 janvier 2023- Réveil et Réforme -             4-De la musique apaisante pour fortifier notre foi...                                                                                                                                    NB:  SVP, bien vouloir partager avec au moins une personne---                                                          Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu nous bénisse !', 'img-20230113-0820411-63c3e9552a4ba963283641.jpg', '2023-01-15 12:53:57', '2023-01-15 12:53:57'),
(281, 11, NULL, '05-Jour-JESUS-le-Matinal-63c4cec477afa.mp3', 'JESUS le Matinal', '10-jours-de-priere-63c4cec47a8f0055970079.jpg', '2023-01-16 05:12:52', '2023-01-16 05:12:52'),
(282, 11, NULL, '06-Jour-Le-combatant-de-priere-63c4cf68ec4de.mp3', 'Le combatant', '10-jours-de-priere-63c4cf68ed1c5326317685.jpg', '2023-01-16 05:15:36', '2023-01-16 05:15:36'),
(283, 11, NULL, '07-Jour-Une-Eglise-prosternee-devant-le-Seigneur-63c6cedb8f485.mp3', 'Une Eglise prosternée devant le Seigneur', '10-jours-de-priere-63c6cedb8ffab283547115.jpg', '2023-01-17 17:37:47', '2023-01-17 17:37:47'),
(284, 11, NULL, '08-Jour-Le-culte-et-le-message-des-trois-anges-63c77fcb5ac07.mp3', 'Le culte et le message des trois anges', '10-jours-de-priere-63c77fcb5cbe5305944646.jpg', '2023-01-18 06:12:43', '2023-01-18 06:12:43'),
(285, 11, NULL, '09-Jour-Garder-le-cap-63c8d96576873.mp3', 'Jour Garder le cap', '10-jours-de-priere-63c8d965796c3595875197.jpg', '2023-01-19 06:47:17', '2023-01-19 06:47:17'),
(286, 11, NULL, '10-Jour-J-irai-63ca26429d246.mp3', 'J\'irai', '10-jours-de-priere-63ca26429ef29811772877.jpg', '2023-01-20 06:27:30', '2023-01-20 06:27:30'),
(287, 19, NULL, '03-ENE-NTILAN-sam-21-01-2023-Wo-Moise-Daniel-Engamba-63cb7b4221cb5.mp3', 'Wo Moise Daniel Engamba', 'moise-63cb7b4222476962876968.jpeg', '2023-01-21 06:42:26', '2023-01-21 06:42:26'),
(288, 4, NULL, '03-RIE-du-sam-21-01-2023-prieres-dans-les-derniers-jours-Pr-Assembe-Minyono-valere-guillaume-63cb7dc9d9128.mp3', 'Prieres dans les derniers jours', 'priere-63cb7dc9da6d7119820027.webp', '2023-01-21 06:53:13', '2023-01-21 06:53:13'),
(289, 4, NULL, 'IL-EST-ECRIT-DU-21-JANVIER-2023-QUI-EST-LE-CHAUFFEUR-DE-TA-VIE-Pst-Michel-William-FOPAH-63cd11f288c50.mp3', 'Au menu : 1-Rubrique santé et Bien-être : 07 façons d\'intégrer le mouvement dans votre vie ! Notre corps est une fabuleuse machine offerte par notre Créateur. Savez-vous par exemple qu\'il y a environ 100 millions de nouveaux globules rouges qui se forment dans notre corps à chaque minute?  Et que notre cœur  pompe environ le tiers d\'une tasse de sang à chaque battement? Savez-vous que la longueur totale des vaisseaux sanguins dans notre corps est de 100 000 Km? Les découvertes les plus étonnantes continuent d\'être faites au sujet du corps humain, ce qui a poussé le Professeur André GIORDAN à écrire un livre intitulé : \"Mon corps, la première merveille du monde\". Cependant prendre soin de notre corps est une nécessité si nous voulons limiter les pannes de cette merveilleuse machine et jouir d\'une meilleure santé. Dans ce magazine, nous vous en disons un peu plus. 2-Méditation : QUI EST LE CHAUFFEUR DE TA VIE ? (Pst Michel William FOPAH). Nous devons un jour nous poser cette question si fondamentale : qu\'est-ce qui dirige notre vie? Est-ce la culpabilité, la colère, la haine, la peur, le désir de plaire à tout prix aux autres? De la réponse à ces questions dépendent notre échec ou notre succès en 2023 et pour la vie entière.      3- Page de nouvelles : Programme de 10 jours de prière du 11 au 21 janvier 2023- Réveil et Réforme - Le classement des meilleurs hôpitaux aux USA 4-De la bonne musique pour nous édifier', 'past-63cd11f289646750395783.jpg', '2023-01-22 11:37:38', '2023-01-22 11:37:38'),
(290, 7, NULL, '001-ECOUTE-ET-PARDON-AB-63cd4cec906b1.mp3', 'Ecoute et pardon', 'pardon-63cd4cec90fc9052595123.jpg', '2023-01-22 15:49:16', '2023-01-22 15:49:16'),
(291, 7, NULL, '002-LES-FAMILLES-COMPOSEES-63cd4e2e2cc3f.mp3', 'Les familles composées', 'famille-composee-63cd4e2e2e504518177535.jpg', '2023-01-22 15:54:38', '2023-01-22 15:54:38'),
(292, 7, NULL, '003-POUR-NOS-ENFANTS-63ce499a12207.mp3', 'Education familliale', 'education-des-enfants-63ce499a128ee145766392.jpg', '2023-01-23 09:47:22', '2023-01-23 09:47:22'),
(293, 7, NULL, '04-Foi-et-sentiment-63d11c3965193.mp3', 'Foi et sentiment', 'foi-et-sentiment-bon-63d11c39661b4348139792.jpg', '2023-01-25 13:10:33', '2023-01-25 13:10:33'),
(295, 5, NULL, 'Esaie-1-63d23e7273eb8.mp3', 'Esaie 1', 'esaie-63d23e7274ace567311491.jpg', '2023-01-26 09:48:50', '2023-01-26 09:48:50'),
(296, 4, NULL, '04-RIE-Sam-28-01-2023-le-courage-de-croire-Pst-aime-Cosendai-63d66b03b47a0.mp3', 'le courage de croire', 'oip-63d66b03b58f0303398351.jfif', '2023-01-29 13:48:03', '2023-01-29 13:48:03'),
(297, 19, NULL, '04-ENE-NTILAN-sam-28-01-2023-Bikote-kote-minyelan-Ndoumou-Daniel-63d66da2d586b.mp3', 'bikote kote minyelan', 'priere-63d66da2d86e3825567010.jfif', '2023-01-29 13:59:14', '2023-01-29 13:59:14'),
(298, 21, NULL, 'LPQ-001-YVES-MBENDE-63d6718ccf9a2.mp3', 'le pain quotidien 001', 'lpq-63d6718cd03e8764155686.jpg', '2023-01-29 14:15:56', '2023-01-29 14:15:56'),
(299, 21, NULL, 'LPQ-002-YVES-MBENDE-63d673a8b25e1.mp3', 'le pain quotidien 002', 'lpq-63d673a8b2cf5170498264.jpg', '2023-01-29 14:24:56', '2023-01-29 14:24:56'),
(300, 21, NULL, 'LPQ-003-YVES-MBENDE-63d674123ff81.mp3', 'le pain quotidien 003', 'lpq-63d674124061b021767339.jpg', '2023-01-29 14:26:42', '2023-01-29 14:26:42'),
(301, 21, NULL, 'LPQ-004-YVES-MBENDE-63d67473975b3.mp3', 'le pain quotidien 004', 'lpq-63d6747397c9a401731309.jpg', '2023-01-29 14:28:19', '2023-01-29 14:28:19'),
(302, 21, NULL, 'LPQ-005-YVES-MBENDE-63d674f140b59.mp3', 'le pain quotidien 005', 'lpq-63d674f1414f1989828553.jpg', '2023-01-29 14:30:25', '2023-01-29 14:30:25'),
(303, 14, NULL, 'MIX-FIN-LES-BHB-001-L-ORIGINE-DE-LA-VIE-63d677f3de53d.mp3', 'l\'origine de la vie', 'bhb-63d677f3df000894910163.jpg', '2023-01-29 14:43:15', '2023-01-29 14:43:15'),
(304, 14, NULL, 'MIX-FIN-LES-BHB-002-LE-PREMIER-JOUR-DE-CE-MONDE-63d678f61e9bb.mp3', 'le premier jour de ce monde', 'bhb-63d678f61f4c1404066888.jpg', '2023-01-29 14:47:34', '2023-01-29 14:47:34'),
(305, 14, NULL, 'MIX-FIN-LES-BHB-003-DIEU-CREA-LE-CIEL-LES-NUAGES-ET-L-AIR-63d6797f53d09.mp3', 'Dieu créa le ciel', 'bhb-63d6797f54367073438596.jpg', '2023-01-29 14:49:51', '2023-01-29 14:49:51'),
(306, 14, NULL, 'MIX-FIN-LES-BHB-004-DIEU-CReA-LES-PLANTES-63d67a1146c9f.mp3', 'Dieu créa les plantes', 'bhb-63d67a114770a310930321.jpg', '2023-01-29 14:52:17', '2023-01-29 14:52:17'),
(307, 14, NULL, 'MIX-FIN-LES-BHB-005-DIEU-CReA-LE-SOLEIL-LA-LUNE-ET-LES-ETOILES-63d67a7ba3bed.mp3', 'Dieu créa le soleil', 'bhb-63d67a7ba4706758700453.jpg', '2023-01-29 14:54:03', '2023-01-29 14:54:03'),
(308, 24, NULL, '01-DS-L-EAU-63d67d237a9a8.mp3', 'l\'eau', 'destination-sante-63d67d237c141222437389.jpg', '2023-01-29 15:05:23', '2023-01-29 15:05:23'),
(309, 24, NULL, '02-DS-LES-COMPLEMENTS-ALIMENTAIRES-63d67dd440e21.mp3', 'Les compléments alimentaires', 'destination-sante-63d67dd4425e2230246354.jpg', '2023-01-29 15:08:20', '2023-01-29 15:08:20'),
(310, 24, NULL, '03-DS-LE-SOLEIL-63d67e053c8c5.mp3', 'le soleil', 'destination-sante-63d67e053e191819888159.jpg', '2023-01-29 15:09:09', '2023-01-29 15:09:09'),
(311, 24, NULL, '04-DS-LES-ALIMENTS-FROIDS-OU-CHAUDS-63d67e4c6d5a4.mp3', 'les aliments froids ou chauds', 'destination-sante-63d67e4c6ebda974091677.jpg', '2023-01-29 15:10:20', '2023-01-29 15:10:20'),
(312, 24, NULL, '05-DS-LES-CONDIMENTS-63d67ede54173.mp3', 'Des condiments', 'destination-sante-63d67ede55a4f218465373.jpg', '2023-01-29 15:12:46', '2023-01-29 15:12:46'),
(313, 4, NULL, 'IL-EST-ECRIT-DU-04-FEVRIER-2023-pasteur-Andre-MAKON-63de77b36b998.mp3', 'Shalom ! Votre émission radiophonique IL EST ECRIT , sur la CRTV station régionale de l\'Ouest (93.5FM), chaque samedi matin à partir de 07h 00. Edition du samedi 04 Février 2023. Au menu : 1-Rubrique santé et Bien-être : Comment sortir de la fosse de la dépression ! La dépression est la maladie mentale la plus courante dans notre société et qui se caractérise par la tristesse ou une perte d\'intérêt. A cause des préjugés que suscite cette maladie, plusieurs personnes en souffrent et n\'osent pas en parler. Elles vivent renfermées sur elles et dans le pire des cas, elles développent des pensées suicidaires. Restez des nôtres alors que nous recevrons quelques conseils pratiques pour se sortir de la dépression. 2-Méditation : SAMSON-LA TRAGÉDIE D\'UN COEUR BRISÉ (Pst ANDRÉ MAKON) Dieu a des attentes à notre égard, et particulièrement pour la jeunesse. En effet, la volonté de Dieu est que chaque jeune réussisse sa vie. Pour cela, il les invite à lui consacrer toutes leurs énergies physiques, mentales et spirituelles, afin de ne pas passer à côté de l\'avenir radieux qu\'il leur réserve. Ce matin, à travers l\'exemple négatif de Samson dans la Bible, Il Est Écrit veut aider la jeunesse à canaliser son potentiel. 3- Page de nouvelles : Une nomination importante dans une Ambassade... - Réveil et Réforme -... 4-De la bonne musique :  sélectionnée avec soin pour élever notre âme... NB:  SVP, bien vouloir partager avec au moins une personne--- Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu nous bénisse !', '325921698-1567484303768330-1361611302751179185-n-63de77b36cfa2656991661.jpg', '2023-02-04 16:20:19', '2023-02-04 16:20:19'),
(314, 4, NULL, 'IL-EST-ECRIT-DU-11-FEVRIER-2023-LA-PROCRASTINATION-EST-L-ENNEMIE-A-ABRAHAM-BAKARI-63e802a3918ab.mp3', 'Shalom ! Votre émission radiophonique IL EST ECRIT , sur la CRTV station régionale de l\'Ouest (93.5FM), chaque samedi matin à partir de 07h 00. Edition \"spéciale Fête de la Jeunesse \" du samedi 11 Février 2023. Au menu : 1-Rubrique santé et Bien-être : COMMENT PRÉVENIR LES ADDICTIONS ! L\'addiction est un état de dépendance à un produit ou à une activité, avec des conséquences terribles pour la santé ou la vie de famille. Quelqu\'un a même déclaré que \" l\'addiction a trois destinations : l\'hôpital, la prison et le suicide \". Dès lors, comment prévenir et lutter efficacement contre toutes les formes d\'addictions? Dans ce magazine, nous vous disons tout. 2-Méditation : LA PROCRASTINATION EST L\'ENNEMIE ! (Anc ABRAHAM BAKARI). La procrastination est cette tendance à renvoyer à plus tard les décisions à prendre maintenant. Denis St-Pierre a affirmé : \"Savez-vous ce qui arrive dans la vie des gens qui abusent de la procrastination? La réponse en un mot est \"Rien\", c\'est-à-dire aucun progrès, aucune réussite\". Alors que notre pays le Cameroun célèbre la 57e édition de la fête nationale de la Jeunesse, IL EST ÉCRIT veut aider à guérir un fléau qui fait des ravages dans la société et particulièrement parmi cette jeunesse. 3- Page de nouvelles : Une Interview d\'une personnalité publique pour encourager la jeunesse - Réveil et Réforme - Une invitation pour un festival de musique religieuse... 4-De la bonne musique : pour transporter nos coeurs vers le ciel... NB:  SVP, bien vouloir partager avec au moins une personne--- Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu nous bénisse !', 'download-63e802a392cfa611654188.jpg', '2023-02-11 22:03:31', '2023-02-11 22:03:31'),
(316, 4, NULL, 'IL-EST-ECRIT-DU-18-FEVRIER-2023-L-AMOUR-CHANGE-TOUT-Pst-ASSEMBE-MINYONO-63f21551b556f.mp3', 'Pst ASSEMBE MINYONO', 'slide10-l-63f21551b6768381273016.jpg', '2023-02-19 13:25:53', '2023-02-19 13:25:53'),
(317, 16, NULL, 'La-Gare-terminale-63faa49088c47.mp3', 'La gare', 'la-gare-63faa49089ed9860299791.jpg', '2023-02-26 01:15:12', '2023-02-26 01:15:12'),
(318, 4, NULL, 'IL-EST-ECRIT-DU-25-FEVRIER-2023-LE-TEMPS-PROF-KARL-JOHNSON-63fce0ff7ca08.mp3', 'Pasteur Carl Johnson', '333050144-688245019713139-7342313501584654636-n-63fce0ff7e11b192216886.jpg', '2023-02-27 17:57:35', '2023-02-27 17:57:35'),
(319, 4, NULL, '09-il-est-ecrit-sam-04-03-2023-Le-pouvoir-transformateur-de-la-priere-presentation-J-C-Mbolong-64056dbd10f4d.mp3', 'Le pouvoir transformateur de la prière', '1395677837-83161-1200x667x0-64056dbd12219514663630.jpg', '2023-03-06 05:36:13', '2023-03-06 05:36:13'),
(320, 16, NULL, 'GENESE-24-640570293fe94.mp3', 'Genèse 1', 'genese-6405702941bd1645409176.jpg', '2023-03-06 05:46:33', '2023-03-06 05:46:33'),
(321, 4, NULL, 'IL-EST-ECRIT-DU-4-MARS-2023-LA-FEMME-DIAMANT-Anc-A-BAKARI-6409e50db870d.mp3', 'La femme diamant', '1102013255-univ-cnt-2-xl-6409e50db9db5992113642.jpg', '2023-03-09 14:54:21', '2023-03-09 14:54:21'),
(322, 19, NULL, '11-ENE-NTILAN-sam-18-03-2023-Edibiga-ya-nem-Etoundi-Lucas-641483b53bfe4.mp3', 'Edibiga ya nem', 'la-cle-du-coeur-641483b53f77c647292067.png', '2023-03-17 16:13:57', '2023-03-17 16:13:57'),
(323, 4, NULL, '11-RIE-du-18-03-2023-Les-heros-de-la-foi-du-pasteur-Karl-Johnson-64148577839b8.mp3', 'Les héros de la foi', '1102013273-univ-sqr-xl-641485778403f409744482.jpg', '2023-03-17 16:21:27', '2023-03-17 16:21:27'),
(324, 16, NULL, '01-Premier-Jour-Aimer-c-est-se-sacrifier-6416e841b777a.mp3', 'Aimer c\'est se sacrifier', 'ig-logo-annocement-6416e841b7ef5066690175.jpeg', '2023-03-19 11:47:29', '2023-03-19 11:47:29'),
(325, 16, NULL, '02-Deuxieme-Jour-Aimer-c-est-etre-reconnaissant-6416e8c46974f.mp3', 'Aimer c\'est être reconnaissant', 'ig-logo-annocement-6416e8c469e2b787953993.jpeg', '2023-03-19 11:49:40', '2023-03-19 11:49:40'),
(326, 4, NULL, 'IL-EST-ECRIT-DU-18-MARS-2023-AIMER-EST-UN-VERBE-Anc-Jean-Paul-KETCHA-6416f96275bed.mp3', 'Shalom ! Votre émission radiophonique IL EST ECRIT , sur la CRTV station régionale de l\'Ouest (93.5FM), chaque samedi matin à partir de 07h 00. Edition Spéciale Journée Mondiale de la Jeunesse du samedi 18 mars 2023. Au menu : 1-Rubrique santé et Bien-être :*COMMENT GARDER NOS REINS EN BONNE SANTÉ! Les statistiques montrent qu\'1 adulte sur 10 souffre d\'une affection rénale chronique, soit près de 850 millions de personnes dans le monde. D\'ailleurs selon les projections de l\'Organisation Mondiale de la santé (OMS), si rien ne change d\'ici 2033, plus d\"un milliard de personnes souffriront d\'une maladie rénale chronique. C\'est énorme et ça fait peur! Et pourtant il nous est possible à tous de prendre soin de nos reins chaque jour. Dans ce magazine, nous vous proposons 08 conseils pratiques pour garder nos reins en bonne santé. 2-Méditation :*AIMER EST UN VERBE Le plus grand et le plus bel exemple d\'un amour qui se sacrifie, nous est donné par le Seigneur Jésus-Christ. Que se passerait-il dans le monde si chacun manifestait un amour semblable à celui de notre Seigneur? Restez des nôtres alors que nous en apprendrons davantage sur le sacrifice d\'amour de Jésus pour nous. 3- Page de nouvelles : Réveil et Réforme - Une conférence santé à Nkongsamba... 4-De la bonne musique chrétienne : pour élever nos coeurs vers le ciel... NB:  SVP, bien vouloir partager avec au moins une personne--- Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu nous bénisse !', 'ig-logo-annocement-6416f9627664e454918202.jpeg', '2023-03-19 13:00:34', '2023-03-19 13:00:34'),
(327, 16, NULL, '03-Troisieme-jour-Aimer-c-est-Pardonner-641860b1c5553.mp3', 'Aimer c\'est être reconnaissant', 'ig-logo-annocement-641860b1c6083464261549.jpeg', '2023-03-20 14:33:37', '2023-03-20 14:33:37'),
(328, 16, NULL, '04-Quatrieme-jour-Aimer-c-est-faire-confiance-641a206417d24.mp3', 'Aimer c\'est faire confiance', 'ig-logo-annocement-641a206418eeb902999840.jpeg', '2023-03-21 22:23:48', '2023-03-21 22:23:48'),
(329, 16, NULL, '05-Cinquieme-jour-Aimer-c-est-obeir-641a2787c5b13.mp3', 'Aimer c\'est obéir', 'ig-logo-annocement-641a2787c6a26414420590.jpeg', '2023-03-21 22:54:15', '2023-03-21 22:54:15'),
(330, 16, NULL, '06-Sixieme-jour-Aimer-c-est-adorer-641c09395ecc1.mp3', 'Aimer c\'est adorer', 'pp-840x830-pad-1000x1000-f8f8f8-641c093960024607452624.jpg', '2023-03-23 09:09:29', '2023-03-23 09:09:29'),
(331, 4, NULL, '12-RIE-Sam-25-03-2023-Eclaire-ma-bougie-du-pasteur-Karl-Johnson-641cef9888954.mp3', 'Eclaire ma bougie', 'bougie-641cef988930e930615346.jpg', '2023-03-24 01:32:24', '2023-03-24 01:32:24'),
(332, 16, NULL, '07-Septieme-jour-Aimer-c-est-partager-641cf08e3b622.mp3', 'Aimer c\'est partager', 'pp-840x830-pad-1000x1000-f8f8f8-641cf08e3c159160695109.jpg', '2023-03-24 01:36:30', '2023-03-24 01:36:30'),
(333, 16, NULL, 'Dernier-jour-Aimer-c-est-Attendre-641edd6bf0b48.mp3', 'Aimer c\'est attendre', 'pp-840x830-pad-1000x1000-f8f8f8-641edd6bf15fb455861315.jpg', '2023-03-25 12:39:23', '2023-03-25 12:39:23'),
(334, 4, NULL, 'IL-EST-ECRIT-DU-25-MARS-2023-AIMER-C-EST-ATTENDRE-Pst-G-Olivier-NDIKI-BIAS-641f715662d9c.mp3', 'Au menu : 1-Rubrique santé et Bien-être :  07 CONSEILS POUR GÉRER L\'ANXIÉTÉ ET L\'INQUIÉTUDE!  Selon l\'Organisation Mondiale de la Santé, l\'anxiété (qui touche 1 personne sur 10, adulte comme enfant) est un état de trouble psychique causé par la crainte d\'un danger. En voici quelques symptômes : sensation de fatigue, difficulté à respirer, vertiges, nausées, transpiration, poids sur la poitrine, engourdissement des mains et pieds... L\'anxiété peut gâcher notre vie. Voilà pourquoi dans ce magazine, nous partagerons quelques conseils pratiques pour gérer la gérer.  2-Méditation :*AIMER C\'EST ATTENDRE -Pst G. Olivier NDIKI BIAS Le second retour de Jésus est un rendez-vous auquel il nous invite tous. Et en réalité, si nous aimons notre Seigneur, nous devons nous préparer avec grand soin pour ce grand évènement... 3- Page de nouvelles : Bilan de la Journée Mondiale de la Jeunesse - Une conférence santé à ne pas manquer... 4-De la bonne musique chrétienne : pour élever nos coeurs vers le ciel... NB:  SVP, bien vouloir partager avec au moins une personne--- Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu nous bénisse !', 'aimer-c-est-641f715663895098647811.jpg', '2023-03-25 23:10:30', '2023-03-25 23:10:58'),
(335, 19, NULL, '13-ENE-NTILAN-sam-01-0-4-2023-Miss-me-Yesus-Daniel-Engamba-642676d27c9f7.mp3', 'Miss me Yesus', 'les-yeux-de-jesus-642676d27dac7693605895.jpg', '2023-03-31 07:59:46', '2023-03-31 07:59:46'),
(336, 4, NULL, '13-RIE-du-1er-04-2023-Connu-que-de-Dieu-du-pasteur-Karl-Johnson-642677797ada6.mp3', 'Connu que de Dieu', 'connu-que-de-dieu-642677797b46d271117857.jpeg', '2023-03-31 08:02:33', '2023-03-31 08:02:33'),
(337, 4, NULL, 'IL-EST-ECRIT-DU-25-MARS-2023-AIMER-C-EST-ATTENDRE-Pst-G-Olivier-NDIKI-BIAS-64280892e1f51.mp3', 'Bonjour et bon réveil matinal ! Votre émission radiophonique IL EST ECRIT , sur la CRTV station régionale de l\'Ouest (93.5FM), chaque samedi matin à partir de 07h 00. Edition  du samedi 01 Avril 2023. Au menu : 1-Rubrique santé et Bien-être : LES BIENFAITS DE LA MARCHE. De nombreuses études ont prouvé que marcher est bénéfique à la fois pour notre santé physique et mentale. C\'est  une activité simple et gratuite que tous, jeunes et vieux, seuls ou en groupe, peuvent pratiquer quotidiennement pour améliorer la santé dans nos familles et réduire ainsi grandement les multiples dépenses liées à la santé. Dans cette édition, nous  analyserons quelques bienfaits de la marche. 2-Méditation : UNE PUISSANCE ILLIMITEE-Pst Jean-Marie TCHOUALEU. Le but de Dieu est de nous changer de l\'intérieur, de changer nos coeurs et de nous donner tellement de puissance que nous ayons toujours le désir de faire le bien. Nous étudierons l\'exemple de Jésus-Christ lorsqu\'il était sur terre pour découvrir quel était son secret face aux tentations et nous en tirerons des leçons pratiques pour chacun d\'entre nous. 3- Page de nouvelles : Heroes 2 : le jeu vidéo sur la Bible à télécharger', 'citation-aimer-dieu-64280892e2959593503182.png', '2023-04-01 12:33:54', '2023-04-01 12:34:45'),
(338, 19, NULL, '14-ENE-NTILAN-sam-08-04-2023-Nfan-Eding-Etoundi-Luc-6430378ed7db4.mp3', 'Eding', '38214-20-plus-belles-citations-amour-6430378ed8e42768641856.png', '2023-04-07 17:32:30', '2023-04-07 17:32:30'),
(339, 4, NULL, '14-RIE-du-Sam-08-04-23-Jesus-le-dernier-espoir-6430383d1847e.mp3', 'JESUS LE DERNIER ESPOIR', 'pictures-of-jesus-smiling-6430383d18c3d360509777.jpeg', '2023-04-07 17:35:25', '2023-04-07 17:35:25'),
(340, 4, NULL, 'IL-EST-ECRIT-DU-8-AVRIL-2023-L-AMOUR-DE-DIEU-Prof-Karl-JOHNSON-6431f9dfd03f1.mp3', 'Shalom et bon réveil matinal ! Votre émission radiophonique IL EST ECRIT , sur la CRTV station régionale de l\'Ouest (93.5FM), chaque samedi matin à partir de 07h 00. Edition  du samedi 08 Avril 2023. Au menu :  1-Rubrique santé et Bien-être : LES SIGNES POUVANT ALERTER SUR LES PROBLEMES DE REINS. Les reins sont deux petits organes indispensables à la vie. Selon l\'OMS, en 2040, les maladies rénales deviendront la 5e cause de décès dans le monde. Voilà nous devons tous agir pour une bonne santé de nos reins avant qu\'il ne se fasse tard, car prévenir vaut mieux que guérir…  2-Méditation : L\'AMOUR DE DIEU (Prof Karl JOHNSON). Dieu aime chacun de nous personnellement, d\'un amour profond et sans limite. Un amour manifesté en Jésus-Christ  qui a consenti à souffrir et mourir pour nos péchés, afin que nous soyons réconciliés avec notre Créateur et ayons la paix…  3- Page de nouvelles : l\'éducation adventiste \"apporte\" la lumière dans un village - Réveil et Réforme…  4-De la bonne musique chrétienne : pour diriger nos coeurs vers le ciel…  NB:  SVP, bien vouloir partager avec au moins une personne--- Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu nous bénisse !', 'maxresdefault-6431f9dfd0f00539107418.jpg', '2023-04-09 01:33:51', '2023-04-09 01:33:51'),
(341, 4, NULL, 'IL-EST-ECRIT-DU-15-AVRIL-FORTIFIE-TOI-ET-PRENDS-COURAGE-Pst-JOHN-G-643c2cfcd0187.mp3', 'Maranatha ! Votre émission radiophonique IL EST ECRIT , sur la CRTV station régionale de l\'Ouest (93.5FM), chaque samedi matin à partir de 07h 00. Edition  du samedi 15 Avril 2023. Au menu :  1-Rubrique santé et Bien-être : 07 aliments qui garderont vos reins en bonne santé ! Les reins  sont deux petits organes indispensables à la vie, et utiles notamment pour la filtration du sang et l\'évacuation des déchets du corps à travers l\'urine. Il est donc logique de les garder en bonne santé pour rester en forme. Dans cette édition, nous vous proposons les meilleurs aliments qui aident à maintenir le bon fonctionnement de vos reins.  2-Méditation : Fortifie-toi et prends courage ! Devant les difficultés de plus en plus croissantes de la vie, la tendance est à la peur et à l\'angoisse, à l\'inquiétude et au désespoir. Dans ce magazine, nous découvrirons que nous pouvons grandement faire confiance à Dieu, parce qu\'il a un plan pour chacun d\'entre nous.  3- Page de nouvelles : Réveil et Réforme - Une Conférence biblique pour Le Commencement d\'une vie nouvelle... …  4-De la musique  chrétienne : douce et belle, pour notre édification...  NB:  SVP, bien vouloir partager avec au moins une personne--- Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu nous bénisse !', 'page-1-643c2cfcd1652244099249.jpg', '2023-04-16 19:14:36', '2023-04-16 19:14:36'),
(342, 19, NULL, '16-ENE-NTILAN-sam-22-04-2023-Awu-Engamba-Daniel-64428ef9e506b.mp3', 'La mort', 'awu-64428ef9e6282772652837.jpg', '2023-04-21 15:26:17', '2023-04-21 15:26:17'),
(343, 4, NULL, '16-RIE-sam-22-04-2023-Dieu-n-est-pas-loin-pasteur-J-E-Nlo-Nlo-64429034470eb.mp3', 'DIEU n\'est pas loin', 'dieu-n-est-pas-loin-64429034477f1074926738.jpg', '2023-04-21 15:31:32', '2023-04-21 15:31:32'),
(345, 4, NULL, 'IL-EST-ECRIT-DU-22-AVRIL-2023-LE-POUVOIR-DE-LA-BIBLE-Pst-Michel-William-FOPAH-644452045d866.mp3', 'Pasteur Michel Fopah', 'bible-reading-644452045e317693220736.jpg', '2023-04-22 23:30:44', '2023-04-22 23:30:44'),
(346, 4, NULL, 'IL-EST-ECRIT-DU-29-AVRIL-DE-LA-CHENILLE-AU-PAPILLON-Pst-MICHEL-WILLIAM-FOPAH-644cdd126a70e.mp3', 'Shalom ! Votre émission radiophonique IL EST ECRIT , sur la CRTV stations régionale de l\'Ouest (93.5FM), chaque samedi matin à partir de 07h 00. Edition  du samedi 29 Avril 2023. Au menu :  1-Rubrique santé et Bien-être : L\'IMPORTANCE DE RESPIRER UN AIR DE QUALITÉ ! L\'air est certes l\'élément le plus vital et le plus courant dans notre environnement et nous le respirons naturellement. Mais savez-vous que bien respirer améliore notre capacité de réflexion, notre vigilance et notre bien-être physique? Ne bougez surtout pas parce que dans ce magazine, nous vous en disons plus...  2-Méditation : DE LA CHENILLE AU PAPILLON ! Avec Dieu, une vie nouvelle est encore possible, quelle que soit la situation malheureuse et même désastreuse dans laquelle le péché nous a plongés en ce moment. Avec le Seigneur Jésus-Christ se tenant à nos côtés, il nous est possible à tous de prendre un nouveau départ pour une vie meilleure. Restez des nôtres alors que dans cette édition nous vous proposons 5 étapes à suivre pour y parvenir... 3- Page de nouvelles : Réveil et Réforme - Des écoles d\'une école adventiste fournissent des provisions alimentaires à 56 familles...   4-De la bonne musique  chrétienne : pour rafraichir nos âmes...', 'bible-reading-644cdd576e23c979340539.jpg', '2023-04-29 11:02:10', '2023-04-29 11:03:19'),
(348, 19, NULL, '18-ENE-NTILAN-sam-06-05-2023-Minga-ya-Kana-Engamba-Daniel-64555240e55cd.mp3', 'Minga ya Kana', 'cana-64555240e5e73066701719.jpg', '2023-05-05 21:00:16', '2023-05-05 21:00:16'),
(349, 4, NULL, '18-il-est-ecrit-sam-06-05-2023-Deux-cles-du-bonheur-past-Jean-Emmanuel-Nlo-Nlo-645552b52ce8a.mp3', 'Deux clés du bonheur', NULL, '2023-05-05 21:02:13', '2023-05-05 21:02:13'),
(350, 4, NULL, 'IL-EST-ECRIT-DU-6-MAI-TERRE-DES-HOMMES-Past-J-G-NKOU-645b65da9f32f.mp3', '1-Rubrique santé et Bien-être : QUAND FAUT-IL BOIRE DE L\'EAU ? Boire de l\'eau est l\'une des meilleures habitudes quotidiennes,  parce qu\'elle est essentielle au bon fonctionnement  de tous nos organes. Cependant, il est essentiel de savoir que l\'heure à laquelle on boit de l\'eau, optimise les bienfaits qu\'elle apporte à notre corps. Restez des nôtres et vous en saurez un peu plus sur les meilleurs moments pour boire de l\'eau et rester en bonne santé.   2-Méditation : TERRE DES HOMMES Nous ne sommes pas sur terre par hasard. Mais plus tôt par la volonté de Dieu qui nous a créés par amour.  Et sa volonté est de nos avoir pour partenaires, avec tout ce que cela implique maintenant et pour l\'éternité...  3- Page des nouvelle : Réveil et Réforme - Session de formation des Communicateurs adventistes  ...  4-De la bonne musique chrétienne : pour rafraichir nos âmes...', 'download-645b65daa0788175507228.jpg', '2023-05-10 11:37:30', '2023-05-10 11:37:30'),
(351, 4, NULL, 'IL-EST-ECRIT-DU-13-MAI-2023-LA-CLE-POUR-MIEUX-VIVRE-ET-ETRE-EN-BONNE-SANTE-Anc-Abraham-BAKARI-6460c226df1da.mp3', 'Bonjour et beaucoup de bénédictions en ce jour !', 'channels4-profile-6460c226e06da150353885.jpg', '2023-05-14 13:12:38', '2023-05-14 13:12:38'),
(352, 4, NULL, 'IL-EST-ECRIT-DU-20-MAI-2023-Des-liens-de-sang-Pst-MICHEL-WILLIAM-FOPAH-646a776ade36e.mp3', 'Bonjour à tous ! Votre émission radiophonique IL EST ECRIT , sur la CRTV station régionale de l\'Ouest (93.5FM), tous les samedi matin dès 07h 00. Edition spéciale fête de l\'unité  du samedi 20 Mai 2023. Au menu :  1-Rubrique santé et Bien-être :Les dangers de l\'addiction ! L\'addiction, cet état de dépendance à un produit ou encore à une activité,  présente de grands dangers pour notre santé en plus de perturber l\'équilibre de nos familles. Dans cette édition, Il Est Écrit vous plonge au coeur d\'un fléau ô combien répandu dans notre société.   2-Méditation : Des liens de sang ! Quelles sont nos véritables origines, au-delà de la langue, de la tribu, de la race ou même encore de la religion? En vérité, nous sommes tous frères et soeurs de sang. Alors que notre pays célèbre sa 51e édition de la fête nationale de l\'unité, Il Est Écrit nous plonge dans ce que la Bible révèle sur notre identité commune véritable. Restez des nôtres et vous en saurez un peu plus... 3- Page des nouvelle : Réveil et Réforme - Des centaines de familles retrouvent le sourire...  4-De la bonne musique chrétienne : pour élever nos âmes vers le Seigneur...  NB:  SVP, bien vouloir partager avec au moins une personne--- Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu nous bénisse !', 'fpa-the-fire-protection-association-logo-vector-646a776adf43d290816509.png', '2023-05-21 21:56:26', '2023-05-21 21:56:26'),
(353, 4, NULL, 'IL-EST-ECRIT-DU-27-MAI-2023-VOUS-N-ETES-PAS-SEULS-Pst-EYA-MEDJO-Clemenceau-6471b940ed8dd.mp3', 'RDV ce matin à 7h00 sur YouTube Cliquez juste sur ce lien et bien sûr, cliquez ensuite sur \"J\'aime\",\" S\'abonner\", \"Commenter\" et \" Partager\". 👇🏾👇🏾👇🏾👇🏾👇🏾👇🏾👇🏾👇🏾 https://youtu.be/g2Jg4hjM_lI', 'page-1-thumb-large-6471b940eec92053878060.jpg', '2023-05-27 10:03:12', '2023-05-27 10:03:12'),
(354, 4, NULL, '22-RIE-du-sam-03-06-2023-Merci-maman-anc-Abraham-Bakari-64799a50f039f.mp3', 'Merci maman', 'mere-00-64799a50f29e3961626548.jpg', '2023-06-02 09:29:20', '2023-06-02 09:29:20'),
(355, 16, NULL, 'A-GENOUX-MAIS-FORTS-647b6877cae77.mp3', 'A GENOUX MAIS FORT', 'a-genoux-mais-forts-647b6877cb854738613124.jpg', '2023-06-03 18:21:11', '2023-06-03 18:21:11'),
(356, 16, NULL, NULL, 'Abus de pouvoir', 'abus-de-pouvoir-abraham-bakari-647b69b302e73129861550.jpg', '2023-06-03 18:26:27', '2023-06-03 18:26:27'),
(357, 4, NULL, 'IL-EST-ECRIT-DU-1er-Juin-2023-Prier-sans-cesse-pst-John-GRAZ-PAD-647c67f08f115.mp3', 'Maranatha ! Votre émission radiophonique IL EST ECRIT , sur la CRTV station régionale de l\'Ouest (93.5FM), tous les samedi matin dès 07h 00. Edition  samedi 03  Juin 2023. Au menu :  1-Rubrique santé et Bien-être :Comment rester jeune et en bonne santé ! De tout temps, les hommes ont toujours recherché la fontaine de Jouvence. Tous, sans exception, nous pouvons rester jeunes, frais, et en pleine forme, malgré le stress de tous les jours et des conditions de vie de plus en plus difficiles. Restez des nôtres et vous en saurez davantage...        2-Méditation :Prier sans cesse ! Nous pouvons chaque jour garder une relation vivante avec notre Créateur et avancer dans cette vie en étant à chaque instant, remplis de la force qu\'il nous communique. Dans cette édition nous vous disons comment... 3- Page des nouvelle : Réveil et Réforme - Visite d\'une Altesse Royale -...  4-De la musique douce et sélectionnée avec soin : pour nous édifier...  NB:  SVP, bien vouloir partager avec au moins une personne--- Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu nous bénisse !', '8835fa1eec4b43d99c6a48360fb54d07-647c67f090120252570016.png', '2023-06-04 12:31:12', '2023-06-04 12:31:12'),
(358, 4, NULL, '23-RIE-du-sam-10-06-2023-L-enfant-prodigue-Jean-Emmanuel-Nlo-Nlo-64822ce75043f.mp3', 'L\'enfant prodigue', 'enfant-prod-64822ce7517c1574412779.jpg', '2023-06-08 21:32:55', '2023-06-08 21:32:55'),
(359, 4, NULL, 'IL-EST-ECRIT-DU-10-JUIN-2023-LA-PERSONNE-DU-SAINT-ESPRIT-PAST-KARL-JOHNSON-64842efed2e80.mp3', 'Maranatha ! Votre émission radiophonique IL EST ECRIT , sur la CRTV station régionale de l\'Ouest (93.5FM), tous les samedi matin dès 07h 00. Edition  samedi 10 Juin 2023. Au menu :  1-Rubrique santé et Bien-être :Comment faire face à la dépression ! Ce trouble mental qui peut avoir des conséquences sur le sommeil, l\'alimentation, la famille, la scolarité ou le travail, ainsi que sur la santé en général; avec notamment un grand risque de suicide dans les cas les plus graves. Ce matin, Il Est Écrit  nous donne 06 conseils pour prendre soin de nous et faire face à la dépression.   2-Méditation : La personne du Saint-Esprit ! Comprendre la personne et l\'oeuvre du Saint-Esprit nous donne une meilleure compréhension de sa mission. Restez des nôtres alors que nous aborderons ensemble ce que la Bible nous révèle au sujet du Consolateur promis...                                                                                         3- Page des nouvelle : Réveil et Réforme - Le retour à  l\'école de plus de 1 000 enfants réfugiés...                                                         4-De la bonne musique pour nous élever vers le ciel ...  NB:  SVP, bien vouloir partager avec au moins une personne--- Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu nous bénisse !', '352518481-1999458477086157-1185468437052445082-n-64842efed464a769637630.jpg', '2023-06-10 10:06:22', '2023-06-10 10:06:22'),
(360, 4, NULL, 'IL-EST-ECRIT-DU-17-JUIN-2023-ENFIN-LES-VACANCES-PSTJOSEPH-G-NKOU-648ef895deace.mp3', 'Votre émission radiophonique IL EST ECRIT , sur la CRTV station régionale de l\'Ouest (93.5FM), tous les samedi matin dès 07h 00. Edition  samedi 17 Juin 2023. Au menu :  1-Rubrique santé et Bien-être :Les secrets du bonheur! Savez-vous que malgré la pression quotidienne et les immenses défis, tous,nous pouvons mener une existence plus épanouie? Dans ce magazine, nous vous livrons les clés du bonheur.  2-Méditation :Enfin les vacances! Voici a période des vacances. Beaucoup y trouveront l\'occasion pour se livrer à toutes sortes de mauvaises passions. Ce matin, IL EST ECRIT, vous délivre la clef pour faire de vos vacances des momenta utiles dans le Seigneur.', 'banner-648ef895dff39273253422.jpg', '2023-06-18 14:29:09', '2023-06-18 14:29:09'),
(361, 4, NULL, 'IL-EST-ECRIT-DU-26-JUIN-2023-Le-syndrome-de-Sodome-et-Gomorrhe-Pst-Samuel-MBOP-AKOK-64968a347c696.mp3', 'Shalom ! Votre émission radiophonique IL EST ECRIT , sur la CRTV station régionale de l\'Ouest (93.5FM), tous les samedi matin dès 07h 00. Edition du samedi 24 Juin 2023. Au menu :  1-Rubrique santé et Bien-être :L\'importance de l\'espoir sur notre santé mentale ! L\'espoir est une émotion qui donne de la motivation, du courage et de l\'endurance devant l\'adversité. Il nous incite à passer à l\'action. Quels sont les bienfaits de l\'espoir sur notre santé? La réponse se trouve dans cette édition.   2-Méditation :Le syndrome de Sodome et Gomorrhe. L\'homosexualité est devenue un sujet, ô combien sensible. Qu\'est-ce que la Bible a à nous dire sur cette pratique qui gagne du terrain dans nos familles? Est-ce une pratique acceptable pour le Seigneur? IL EST ECRIT vous plonge aujourd\'hui dans une question de société ...                                                                           3- Page des nouvelles : Réveil et Réforme - ADRA au secours des victimes d\'inondation - l\'Excellence Académique célébrée dans le Collèges adventistes...                                                         4-De la musique sélectionnée avec soin pour nous rapprocher du ciel...', 'maxresdefault-64968a347db57940812185.jpg', '2023-06-24 08:16:20', '2023-06-24 08:16:20'),
(362, 4, NULL, '1-1-64a005770496e.mp3', 'Au menu :  1-Rubrique santé et Bien-être :Les repas pris en famille ! Savez-vous que manger avec nos enfants peut avoir un impact significatif sur leur santé mentale, physique et spirituelle? Malheureusement, nous sommes devenus tellement occupés que cela nous échappe. Dans ce magazine,  découvrons ensemble 04 avantages qu\'il y a à manger avec nos enfants...  2-Méditation : Merci, merci, merci! Un petit mot qui peut changer beaucoup de choses dans nos relations. Et éviter bien de conflits, de tensions et de disputes dans nos maisons et dans notre société. Ce matin, Il Est Écrit nous montre comment faire de la gratitude une attitude... 3- Page des nouvelle : Réveil et Réforme - Interview du président de l\'Église adventiste au Cameroun - Une école adventiste innove dans la prévention des grossesses précoces... 4-De la musique douce, sélectionnée avec soin : pour nous édifier...  NB:  SVP, bien vouloir partager avec au moins une personne--- Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu nous bénisse !', 'getty-148989048-9706469704500120-55065-64a0057705bfc353068479.jpg', '2023-07-01 12:52:39', '2023-07-01 12:52:39'),
(363, 1, NULL, 'IL-EST-ECRIT-DU-8-JUILLET-2023-JESUS-ET-LES-FEMMES-Pst-K-JOHNSON-64a94c7a4295f.mp3', 'Au menu : 1-Rubrique santé et Bien-être : Comment réduire les dangers d\'une position assise prolongée ! Du matin au soir, pour manger, pour se rendre à son lieu de service, et même pendant les heures de travail, pour regarder le journal télévisé ou un match de football, etc., chacun de nous passe quotidiennement plus de 09 heures en position assise. C\'est énorme et cela nous expose à beaucoup de maladies graves. Dans cette édition, nous partagerons ensemble quelques conseils pour limiter les méfaits sur notre santé d\'une position assise prolongée. 2-Méditation : Jésus et les femmes ! Dans la mouvance du 3e Congrès national des Femmes Adventistes au Cameroun, nous nous attarderons à la lumière des Saintes Écritures sur la valeur que le Seigneur Jésus-Christ a accordé aux femmes dans ses paroles et ses actes, en contradiction avec la pensée dominante de son époque. 3- Page de nouvelles : Réveil et Réforme - Échos du 3e Congrès des Femmes Adventistes - Des familles pauvres reçoivent des transferts d\'argent... 4-De la musique douce et apaisante : pour nous inspirer...', 'comment-jesus-considerait-les-femmes-64a94c7a43eb7750462520.png', '2023-07-08 13:46:02', '2023-07-08 13:46:02'),
(364, 4, NULL, 'IL-EST-ECRIT-DU-15-JUILLET-2023-QUI-EST-LE-CHAUFFEUR-DE-TA-VIE-Pst-Michel-W-Fopah-64b25c9da1789.mp3', 'Shalom ! Votre émission radiophonique IL EST ECRIT , sur la CRTV station régionale de l\'Ouest (93.5FM), chaque samedi matin à partir de 07h 00. Edition du samedi 15 Juillet 2023. Au menu : 1-Rubrique santé et Bien-être :07 façons d\'intégrer le mouvement dans votre vie! Notre corps est une fabuleuse machine. Savez-vous par exemple qu\'il y a environ 100 millions de nouveaux globules rouges qui s\'y forment à chaque minute?  Et que notre cœur  pompe environ le tiers d\'une tasse de sang à chaque battement? Savez-vous que la longueur totale des vaisseaux sanguins dans notre corps est de 100 000 Km? Les découvertes les plus étonnantes continuent d\'être faites au sujet du corps humain, ce qui a poussé le Professeur André GIORDAN à écrire un livre intitulé : \"Mon corps, la première merveille du monde\". Cependant prendre soin de notre corps est une nécessité si nous voulons limiter les pannes de cette merveilleuse machine et jouir d\'une meilleure santé. Dans ce magazine, nous vous disons comment... 2-Méditation :QUI EST LE CHAUFFEUR DE TA VIE ? (Pst Michel William FOPAH). Qu\'est-ce qui dirige notre vie? Est-ce la culpabilité, la colère, la haine, la peur, la jalousie, le désir de plaire à tout prix aux autres? Nous devons chacun nous poser cette question fondamentale. Et notre réponse va  déterminer notre échec ou notre succès pour la vie entière.      3- Page de nouvelles : Des jeunes entre 11 et 17 ans, pour prêcher l\'Évangile - Réveil et Réforme - La journée mondiale des enfants... 4-De la bonne musique pour nous édifier NB:  SVP, bien vouloir partager avec au moins une personne--- Vos témoignages sont aussi vivement attendus. Bonne écoute et surtout que Dieu nous bénisse', 'image001-64b25c9da2bd3988761480.png', '2023-07-15 10:45:17', '2023-07-15 10:45:17'),
(365, 4, NULL, 'IL-EST-ECRIT-DU-29-JUILLET-2023-VENIR-A-BOUT-DE-LA-PARESSE-LE-TRAVAIL-EST-UN-TRESOR-Anc-Abra-64c698d116297.mp3', 'Au menu : 1-Rubrique santé et Bien-être : 07 CONSEILS POUR GÉRER L\'ANXIÉTÉ ET L\'INQUIÉTUDE! Selon l\'Organisation Mondiale de la Santé, l\'anxiété (qui touche 1 personne sur 10, adulte comme enfant) est un état de trouble psychique causé par la crainte d\'un danger. En voici quelques symptômes : sensation de fatigue, difficulté à respirer, vertiges, nausées, transpiration, poids sur la poitrine, engourdissement des mains et des pieds... L\'anxiété peut gâcher notre vie. Voilà pourquoi dans ce magazine, nous partagerons quelques conseils pratiques pour mieux la gérer.   2-Méditation :Venir à bout de la paresse : le travail est un trésor (Ancien A.BAKARI). Le travail a une valeur incommensurable : il évite à l\'homme de s\'ennuyer ou de sombrer dans le vice ou le désespoir, en plus de subvenir à ses besoins. Ce matin, IL EST ÉCRIT rappelle à tous que \" tout ce qui vaut la peine d\'être fait, mérite d\'être bien fait\".  3- Page de nouvelles : des Certifications Internationales gratuites pour tous - Réveil et Réforme - des adolescents impactent une ville pour Christ...  4-De la bonne musique chrétienne : pour élever nos coeurs vers le ciel...  NB:  SVP, bien vouloir partager avec au moins une personne--- Vos témoignages sont aussi vivement attendus.  Bonne écoute et surtout que Dieu nous bénisse !', 'capture00-64c698d119219578992381.png', '2023-07-30 19:07:29', '2023-07-30 19:07:29'),
(366, 4, NULL, 'IL-EST-ECRIT-DU-12-AOUT-2023-PRIER-A-QUOI-CA-SERT-PST-REMY-BALLAIS-64d79ad6b8bdc.mp3', '1-Rubrique santé et Bien-être : Améliorer notre capacité à gérer le stress ! Encore appelé le mal du 21e siècle, le stress peut être défini comme comme un état d\'inquiétude ou de tension mentale causé par les situations difficiles de la vie. Tous, nous le subissons et si nous ne faisons pas attention, notre santé physique et mentale en sera négativement affectée. Le stress peut causer par exemple : des maux de ventre et de tête, des problèmes de peau, des tensions musculaires, des palpitations cardiaques, des ulcères, dez troublea de sommeil et même un vieillissement accéléré. Et la liste est encore longue... Voilà pourquoi ce matin, Il Est Écrit nous livre la clef pour mieux gérer le stress.  2-Méditation :Prier, à quoi ça sert ? (Pasteur  REMY BALLAIS). Quelqu\'un a écrit :\" quand on ne prie plus, l\'âme se dessèche, se durcit, et finit par étouffer\". Mais c\'est quoi exactement la prière? Est-elle utile? Nous met-elle en relation avec Dieu? Dans ce magazine, nous répondrons à ces questions et à bien d\'autres encore...  3- Page de nouvelles : Heroes le jeu vidéo sur la Bible, à télécharger absolument - le Collège Adventiste de Kribi en fête - Réveil et Réforme...  4- De la musique religieuse, sélectionnée avec soin pour élever nos coeurs vers le ciel...  NB:  SVP, bien vouloir partager avec au moins une personne--- Vos témoignages sont aussi vivement attendus.  Bonne écoute et surtout que Dieu nous bénisse !', 'content-hub-stress-64d79ad6ba1b9129529442.png', '2023-08-12 16:44:38', '2023-08-12 16:44:38'),
(367, 4, NULL, 'IL-EST-ECRIT-DU-26-AOUT-2023-CHRETIEN-SOLITAIRE-PST-JOSE-ELISEE-64e944abec0ca.mp3', 'Le chretien solitaire - Josee Elysee', 'images-64e944abedc57112575145.jpg', '2023-08-26 02:17:47', '2023-08-26 02:17:47'),
(368, 16, NULL, '0003-Les-Maximes-sur-la-Priere-64edc38b18dbd.mp3', 'La prière', 'image-64edc38b19f22172835470.jpg', '2023-08-29 12:08:11', '2023-08-29 12:08:11'),
(369, 4, NULL, 'IL-EST-ECRIT-DU-2-SEPTEMBRE-2023-DES-PERSONNAGES-ANONYMES-PST-MICHEL-FOPAH-64f3124192263.mp3', 'Au menu : 1-Rubrique santé et Bien-être : 07 promesses  bibliques quand vous doutez de l\'amour de Dieu ! Les personnes avec une bonne santé émotionnelle contrôlent mieux leurs pensées, leurs sentiments et leurs comportements. Malheureusement, beaucoup plongent dans le désespoir et arrivent jusqu\'au suicide parce que les choses sont difficiles; et surtout ils pensent que personne, pas même Dieu, ne soucie d\'eux. Voilà pourquoi ce matin, Il Est Écrit nous propose 07 promesses  bibliques lorsque nous doutons de l\'amour de Dieu.   2-Méditation :Des personnages anonymes (Pst Michel William FOPAH). Les mères jouent un rôle primordial dans la réussite de leurs enfants. C\'est pourquoi Il Est Écrit voudrait encourager toutes les mères, car elles devront nécéssairement consentir d\'énormes sacrifices pour que leurs enfants passent une année scolaire réussie...  3-Page de nouvelles : Réveil et Réforme - semaine de prière centrée sur la Famille - Échos de la rentrée scolaire prochaine... \"  4- De la musique chrétienne, pour rafraichir nos âmes...  NB:  SVP, bien vouloir partager avec au moins une personne--- Vos témoignages sont aussi vivement attendus.  Bonne écoute et surtout que Dieu nous bénisse !', 'e1kqawoxmaet8-64f3124193b2f872017111.jpg', '2023-09-02 12:45:21', '2023-09-02 12:45:21'),
(370, 4, NULL, 'Education-et-redemption-Pr-Aime-cosendai-64fc23a57e737.mp3', 'Education et Rédemption', 'education-et-redemption-64fc23a57fcb3286741631.png', '2023-09-09 09:49:57', '2023-09-09 09:49:57'),
(371, 19, NULL, '37-Ene-Ntilan-Sam-15-09-23-Mininga-ya-kana-Engamba-Daniel-65048ab5dedfb.mp3', 'Mininga ya kana', 'la-cananeene-65048ab5dfefa939245242.jpg', '2023-09-15 18:47:49', '2023-09-15 18:47:49'),
(372, 4, NULL, '37-IEE-du-sam-16-09-2023-les-defis-d-une-rentree-scolaire-past-Joseph-Nkou-65048b3ea4bb9.mp3', 'Rentrée scolaire', 'les-defis-d-une-rentree-scolaire-65048b3ea6339997906858.jpg', '2023-09-15 18:50:06', '2023-09-15 18:50:06');
INSERT INTO `podcasts` (`id`, `program_id`, `time_space_id`, `file_name`, `description`, `image_name`, `created_at`, `updated_at`) VALUES
(373, 4, NULL, 'IL-EST-ECRIT-DU-16-SEPTEMBRE-2023-VA-avec-JESUS-Chef-Guide-Japhet-NTOUNGA-650543c09dfa4.mp3', 'Au menu : 1-Rubrique santé et Bien-être : 07 conseils bibliques pour devenir plus patients ! La patience est une qualité permettant de prendre le temps de bien réfléchir, de prêter attention aux détails. Elle est utile dans n\'importe quel domaine de la vie. Un proverbe fufuldé affirme même que \"la patience peut cuire un caillou\"...  2-Méditation :*\"Va avec Jésus\"* (Pst Japhet NTOUNGA). Les parents doivent encourager leurs enfants à servir le Seigneur, surtout les adolescents qui traversent une période très délicate de leur existence...  3-Page de nouvelles : Réveil et Réforme - Échos de la célébration du 73e anniversaire du club des Explorateurs de la Jeunesse Adventiste - Des jeunes renoncent au cannabis pour suivre Jésus-...  4- De la bonne musique chrétienne, sélectionnée avec soin pour nourrir nos âmes...', 'images-650543c09f00a122100121.jpg', '2023-09-16 07:57:20', '2023-09-16 07:57:20'),
(374, 4, NULL, '38-IEE-du-23-09-2023-le-caractere-social-d-un-prophete-de-Dieu-past-karl-johnson-650c5454b16ce.mp3', 'le caractere social d un prophete de Dieu past karl johnson', 'caractere-d-un-prophete-650c5454b507d542227121.png', '2023-09-21 16:33:56', '2023-09-21 16:33:56'),
(375, 1, NULL, 'IL-EST-ECRIT-DU-23-SEPTEMBRE-2023-Eduques-pour-le-ciel-Pst-Michel-William-FOPAH-650ee214e0223.mp3', 'Edition du samedi 23 Septembre  2023.  Au menu : 1-Rubrique santé et Bien-être : 05 façons d\'aimer les autres même en cas de désaccord ! La santé émotionnelle, cet équilibre entre notre bien-être physique, mental, émotionnel, spirituel et même sexuel, nous aide à bien traiter les gens, même quand il existe des tensions. Ce matin Il Est Écrit nous montre comment aimer les autres même en cas de conflits...  2-Méditation :,\"Éduqués pour le ciel \"(Pst Michel William FOPAH). Alors que la recherche du pain quotidien conduit parfois à oublier l\'essentiel en ce qui concerne nos enfants, Il Est Écrit rappelle avec force que : dans la famille, la mère a un rôle important à jouer quand il s\'agit de l\'éducation des enfants...  3-Page de nouvelles : Réveil et Réforme - Prévention des maladies cardio-vasculaires, les adventistes se mobilisent à l\'Est -	Lutte contre le choléra, ADRA au secours des. Populations en Haïti-...  4- De la musique chrétienne,  pour nous mettre en communion avec le ciel ...  NB:  SVP, bien vouloir partager avec au moins une personne--- Vos témoignages sont aussi vivement attendus.  Bonne écoute et surtout que Dieu nous bénisse !', 'whatsapp-image-2023-09-22-at-10-52-43-am-650ee214e1390770883457.jpeg', '2023-09-23 15:03:16', '2023-09-23 15:03:16'),
(376, 16, NULL, '01-Les-aiguillons-650fe8d9a20dd.mp3', 'Les aiguillons', 'les-aiguillons-650fe8d9a312b305704732.jpg', '2023-09-24 09:44:25', '2023-09-24 09:44:25'),
(377, 16, NULL, '01-Gagner-vos-plus-grandes-batailles-650feafad206d.mp3', 'batailles', '01-plus-grandes-batailles-650feafad27bf509162214.jpg', '2023-09-24 09:53:30', '2023-09-24 09:53:30'),
(378, 16, NULL, '02-La-recherche-de-la-verite-Pr-AH-Cosendai-650ff2a190f86.mp3', 'La recherche de la vérité', '02-recherche-de-la-verite-650ff2a191b2f013460350.jpg', '2023-09-24 10:26:09', '2023-09-24 10:26:09'),
(379, 16, NULL, '02-Soyez-saints-comme-je-suis-saint-6512f8f082f14.mp3', 'Soyez Saint', 'la-saintete-6512f8f086d7f462824740.jpg', '2023-09-26 17:29:52', '2023-09-26 17:29:52'),
(380, 1, NULL, 'IL-EST-ECRIT-DU-30-SEPTEMBRE-2023-LA-RENTREE-SCOLAIRE-PAST-KARL-JOHNSON-65184294a5d45.mp3', 'Edition du samedi 30 Septembre  2023.  Au menu : 1-Rubrique santé et Bien-être : Les bienfaits de la joie pour notre santé ! La santé émotionnelle est cette capacité à savoir gérer correctement nos émotions aussi bien positives que négatives pour pouvoir se sentir bien. Ce matin, Il Est Écrit fait un focus sur la joie, ce sentiment de bonheur, de satisfaction vive et intense. Quels sont les bénéfices de la joie pour notre santé ? Restez des nôtres et vous saurez tout.   2-Méditation :,\"La rentrée scolaire \"(Prof KARL JOHNSON ). Après 04 semaines de cours, depuis le retour des vacances, Il Est Écrit voudrait continuer à sensibiliser, à travers quelques conseils et suggestions afin que cette année scolaire soit une réussite pour tous...  3-Page de nouvelles : Réveil et Réforme -	 Tremblement de terre au Maroc, ADRA intensifie ses efforts pour aider les victimes-...  4- De la bonne musique chrétienne,  pour élever nos cœurs vers le ciel...', '11-65184294a71bf086474144.jpg', '2023-09-30 17:45:24', '2023-09-30 17:45:24'),
(381, 21, NULL, 'LPQ-NJ-276-lun-02-10-23-651a7c48e9020.mp3', 'Le pain', 'lpq-nj-276-lun-02-10-23-651a7c48ea0a5839390462.jpg', '2023-10-02 10:16:08', '2023-10-02 10:16:08'),
(382, 5, NULL, '18-MMMS-DE-EZECHIEL-43-DU-02-10-2023-DE-JEAN-CLAUDE-MB-Piste-1-651a7de93d34b.mp3', 'Ezéchiel 43', 'ezechiel-651a7de93d9e3370560696.jpg', '2023-10-02 10:23:05', '2023-10-02 10:23:05'),
(383, 19, NULL, '39-ENE-NTILAN-Sam-30-09-23-Vome-ya-Sobo-651aaa776f769.mp3', 'Vome ya sobo', 'cachette-651aaa7770221236263500.webp', '2023-10-02 13:33:11', '2023-10-02 13:33:11'),
(384, 4, NULL, '39-IEE-dusam-30-09-23-l-unite-et-la-paix-valeurs-inestimables-Pst-Assembe-Minyono-Valere-Guillaume-651aab39bca7c.mp3', 'L\'unite et la paix', 'unite-et-paix-651aaf3f1a486287751569.jpg', '2023-10-02 13:36:25', '2023-10-02 13:53:35'),
(385, 4, NULL, 'IL-EST-ECRIT-DU-7-OCTOBRE-2023-LES-CLEFS-DU-SUCCES-Anc-KETCHA-Jean-Paul-6520e9b874f81.mp3', 'Au menu : 1-Rubrique santé et Bien-être :06 façons d\'accroître notre bonheur! La santé émotionnelle nous permet de gérer correctement nos émotions, positives comme négatives, afin de se sentir bien dans sa peau. Malgré la vie de plus en plus difficile, il nous est possible à tous d\'être heureux chaque jour. Voilà pourquoi ce matin, Il Est Écrit nous propose 06 moyens pour y arriver...   2-Méditation :\"Les clefs du succès \"(Anc. Jean-Paul KETCHA). Dans le sillage de la célébration de la journée mondiale des enseignants le 05 Octobre dernier, Il Est Écrit s\'intéresse à ces nobles chevaliers de la craie, à travers une réflexion qui leur rappelle les principales conditions pour réussir dans leurs missions ô combien exaltantes, tout en rappelant aux autres acteurs de la chaîne éducative, comment collaborer avec les enseignants de leurs enfants...  3-Page de nouvelles : Réveil et Réforme - Une jeune musicienne adventiste(harpiste) de 17 ans obtient un prestigieux prix international en musique...  4- De la musique chrétienne, sélectionnée avec soin, pour rafraîchir nos cœurs...', '386493986-122118871160038142-2879388413770658320-n-6520e9b876f94219062588.jpg', '2023-10-07 07:16:40', '2023-10-07 07:16:40'),
(386, 16, NULL, 'Dieu-comprend-Abraham-B-6524fb7f40868.mp3', 'DIEU comprend', 'dieu-comprend-6524fb7f419bc703572441.jpg', '2023-10-10 09:21:35', '2023-10-10 09:21:35'),
(387, 5, NULL, '01-GENESE-1-DU-19-03-2020-de-BAKARI-652511df4c01d.mp3', 'Genese 1', 'genese-652511df4cd08902241994.jpg', '2023-10-10 10:57:03', '2023-10-10 10:57:03'),
(388, 7, NULL, '001-ECOUTE-ET-PARDON-AB-652516d5574e4.mp3', 'Ecoute et pardon', 'ecoute-et-pardon-652516d557c48956567407.jpg', '2023-10-10 11:18:13', '2023-10-10 11:18:13'),
(389, 18, NULL, 'RAC-01-ingrid-du-29-07-12-AB-652523d7ce128.mp3', 'Ingrid', 'rencontre-avec-le-christ-6525241e68c70128069322.jpg', '2023-10-10 12:13:43', '2023-10-10 12:37:51'),
(390, 18, NULL, 'RAC-02-ingrid-du-29-07-12-AB-6527860ceec7e.mp3', 'L\'histoire d\'Ingrid', 'rencontre-avec-le-christ-6527860cf0045371452685.jpg', '2023-10-12 07:37:16', '2023-10-12 07:37:16'),
(391, 5, NULL, '02-GENESE-2-du-20-03-2020-de-bakari-6527a798c3698.mp3', 'Genèse 2', 'genese-6527a798c4314253080272.jpg', '2023-10-12 10:00:24', '2023-10-12 10:00:24'),
(392, 2, NULL, 'Mixage-final-JRF-DU-22-03-18-CHANTAL-01-65280a91a3468.mp3', 'L\'histoire de Chantal', 'la-foi-65280a91a4285180710112.jpg', '2023-10-12 17:02:41', '2023-10-12 17:02:41'),
(393, 4, NULL, 'IL-EST-ECRIT-DU-14-OCTOBRE-2023-LE-COURAGE-DE-CROIRE-PASTEUR-AIME-COSENDAI-652a334212e9d.mp3', 'Edition du samedi 14 Octobre  2023.  Au menu : 1-Rubrique santé et Bien-être :Les bienfaits du sommeil! Le sommeil est cette fonction vitale de l\'organisme, tout comme la respiration, la digestion, ou l\'immunité et qui influe sur notre comportement dans la journée. Selon les spécialistes, nous passons environ un tiers de notre vie à dormir. Il est donc légitime que ce matin, Il Est Écrit s\'intéresse aux bénéfices du sommeil pour notre santé...   2-Méditation :\"Le courage de croire \"(pasteur Aimé COSENDAI ). Face à la vie de plus en plus chère, au chômage ambiant, aux guerres et conflits qui se généralisent, l\'homme moderne se sent profondément angoissé et découragé. Mais il existe une solution. Restez des nôtres alors que nous en parlons dans cette édition...   3-Page de nouvelles : Réveil et Réforme - la journée d\'appréciation du pasteur-des visiteurs spéciaux à l\'hôpital gynéco-obstétrique de Yassa ...  4- De la bonne musique chrétienne, sélectionnée avec soin, pour nous inspirer. ..', 'marcher-foi-652a3342142de012916746.jpg', '2023-10-14 08:20:50', '2023-10-14 08:20:50'),
(394, 4, NULL, 'IL-EST-ECRIT-DU-21-OCTOBRE-2023-LES-HEROS-DE-LA-FOI-Prof-KARL-JOHNSON-6532fef346730.mp3', 'Pasteur Carl Johnson, Les heros de la foi', 'heros-2-6532fef347c0e761493320.jpg', '2023-10-21 00:28:03', '2023-10-21 00:28:03'),
(395, 5, NULL, '05-Daniel-Le-festin-de-belschatsar-65360ca8d6bdf.mp3', 'Daniel 5 Le festin de belschatsar', 'daniel-65360ca8d7ab9889159568.jpg', '2023-10-23 08:03:20', '2023-10-23 08:07:21'),
(396, 5, NULL, '06-Daniel-Daniel-dans-la-fosse-aux-lions-AB-65360f418d62c.mp3', 'Daniel 6', 'daniel-65360f418dcbf450094923.jpg', '2023-10-23 08:14:25', '2023-10-23 08:14:25'),
(397, 5, NULL, '07-Daniel-vision-de-Daniel-des-4-animaux-65361110915c4.mp3', 'Daniel 7', 'daniel-6536111091c0a974264767.jpg', '2023-10-23 08:22:08', '2023-10-23 08:22:08'),
(398, 5, NULL, '08-Daniel-vision-de-Daniel-le-belier-et-le-bouc-6536136426124.mp3', 'Daniel 8', 'daniel-653613642681b752374399.jpg', '2023-10-23 08:32:04', '2023-10-23 08:32:04'),
(399, 5, NULL, 'Prophetie-des-70-semaines-par-DME-6537cd0e68327.mp3', 'Daniel 9', 'daniel-6537cd0e69237347699621.jpg', '2023-10-24 15:56:30', '2023-10-24 15:56:30'),
(400, 4, NULL, 'IL-EST-ECRIT-DU-28-OCTOBRE-2023-DIEU-MON-PARTENAIRE-PAST-VINCENT-ROGER-SAME-653c0dea83b8a.mp3', 'Pasteur Vincent Roger Same', 'lightoftheworld-653c0dea84f5f721787877.jpg', '2023-10-27 21:22:18', '2023-10-27 21:22:18'),
(401, 19, NULL, '44-ENE-NTILAN-sam-04-11-2023-Mimboan-ya-dibi-Daniel-Engamba-65449be11bf34.mp3', 'dibi', 'dibi-65449be11cb60543152136.jpg', '2023-11-03 08:06:09', '2023-11-03 08:06:09'),
(402, 4, NULL, '44-IEE-du-sam-04-11-2023-La-toussaint-Pr-Nang-Biyo-o-Jean-Paul-65449ddf30b93.mp3', 'Toussaint', 'toussaint-65449ddf312c9614683109.jpg', '2023-11-03 08:14:39', '2023-11-03 08:14:39'),
(403, 4, NULL, 'IL-EST-ECRIT-DU-4-NOVEMBRE-2023-PETIT-POURTANT-GRAND-FAIBLE-POURTANT-FORT-ANC-CLAUDE-MBOUOLO-65458166edead.mp3', 'Petit , grand', 'ryde-65458166ee945471623567.jpg', '2023-11-04 00:25:26', '2023-11-04 00:25:26'),
(404, 16, NULL, 'SOUVENIR-DU-RWANDA-6545f52e5f630.mp3', 'Rwanda', 'souvenir-du-rwanda-6545f52e604f3528895178.webp', '2023-11-04 08:39:26', '2023-11-04 08:39:26'),
(405, 16, NULL, 'A-genoux-mais-fort-AB-6545f6e488b92.mp3', 'A genoux', 'a-genoux-6545f6e489624844551879.jpg', '2023-11-04 08:46:44', '2023-11-04 08:46:44'),
(406, 16, NULL, 'ARME-DE-DISTRACTION-MASSIVE-6545f9240bcf7.mp3', 'Armes de distraction', 'arme-de-distraction-6545f9240c8cf413879140.png', '2023-11-04 08:56:20', '2023-11-04 08:56:20'),
(407, 25, NULL, 'EDS-04-11-23-6545ff4e61951.mp3', 'Ecole du Sabbat', 'ecole-du-sabbat-6545ff4e62059681960932.jpg', '2023-11-04 09:22:38', '2023-11-04 09:22:38'),
(408, 16, NULL, '01-Les-etonnantes-predictions-654b6b0f8df76.mp3', 'Prédictions', 'pexels-lachlan-ross-6510344-654b6b0f8f642640120903.jpg', '2023-11-08 12:03:43', '2023-11-08 12:03:43'),
(409, 16, NULL, '02-Les-signes-de-la-fin-654b6d2f44919.mp3', 'Les signes de la fin', 'pexels-lachlan-ross-6510344-654b6d2f45903814064366.jpg', '2023-11-08 12:12:47', '2023-11-08 12:12:47'),
(410, 4, NULL, 'IL-EST-ECRIT-DU-11-NOVEMBRE-2023-DESTINATION-ETERNITE-PAST-JOSE-ELISEE-65502bf25d369.mp3', 'Destination Eternite, Il Est Ecrit, Bafoussam', 'hqdefault-65502bf25e723354131583.jpg', '2023-11-12 02:35:46', '2023-11-12 02:35:46'),
(411, 5, NULL, '33-OSEE-14-DU-15-11-2023-DE-DANIEL-MONPROCHAIN-Piste-1-65547a972eeec.mp3', 'Osee 14', 'osee-65547a97300c2396789450.jpg', '2023-11-15 09:00:23', '2023-11-15 09:00:23'),
(412, 4, NULL, 'IL-EST-ECRIT-DU-18-NOVEMBRE-2023-LA-STRATEGIE-DE-DAVID-FACE-A-GOLIATHT-PASTEUR-JOHN-GRAZ-1-6558480a09106.mp3', 'La strategie de David', 'david-goliath-6558480a0abee010933508.jpeg', '2023-11-18 06:13:46', '2023-11-18 06:13:46'),
(413, 16, NULL, 'YES-WE-CAN-655aed63b21cb.mp3', 'Yes we can', 'yes-we-can-655aed63b3535568806185.jpg', '2023-11-20 06:23:47', '2023-11-20 06:23:47'),
(414, 16, NULL, 'Vous-n-etes-pas-seul-Pr-Eya-Medjo-C-655aeee352ce0.mp3', 'Vous n\'etes pas seul', 'vous-n-etes-pas-seul-655aeee3536d4391350068.jpg', '2023-11-20 06:30:11', '2023-11-20 06:30:11'),
(415, 16, NULL, 'VOUS-AVEZ-LE-CHOIX-ABRAHAM-BAKARI-655aeff8ddba9.mp3', 'Vous avez le choix', 'vous-avez-le-choix-655aeff8de4ca302051063.jpg', '2023-11-20 06:34:48', '2023-11-20 06:34:48'),
(416, 16, NULL, 'UNITE-DANS-LA-TEMPETE-655af17b03a6b.mp3', 'Unité dans la tempete', 'unite-dans-la-tempete-655af17b0531a398402120.jpeg', '2023-11-20 06:41:15', '2023-11-20 06:41:15'),
(417, 16, NULL, 'une-promesse-est-une-promesse-655b0bc8050a3.mp3', 'Une promesse est une promesse', 'une-promesse-655b0bc805e56085052605.jpg', '2023-11-20 08:33:28', '2023-11-20 08:33:28'),
(418, 16, NULL, 'Noire-et-Belle-Pr-JGN-du-04-01-2020-655d9bcc4a3e6.mp3', 'Noire et Belle', 'pexels-bruno-preto-10040621-655d9bcc4bcbf998491438.jpg', '2023-11-22 07:12:28', '2023-11-22 07:12:28'),
(419, 16, NULL, 'BONJOUR-LA-RUMEUR-655d9d24ea8f6.mp3', 'Bonjour la rumeur', 'pexels-roberto-nickson-2525903-655d9d24eb384514926084.jpg', '2023-11-22 07:18:12', '2023-11-22 07:18:12'),
(420, 16, NULL, 'les-mathematiques-modernes-655d9eb70a8dc.mp3', 'Les mathématiques', 'mathematiques-modernes-655d9eb70b079815379985.jpg', '2023-11-22 07:24:55', '2023-11-22 07:24:55'),
(421, 16, NULL, 'consacre-par-Dieu-Pr-nkou-655d9fe15d106.mp3', 'Consacré par DIEU', 'huile-d-onction-655d9fe15d8cf837540848.jpg', '2023-11-22 07:29:53', '2023-11-22 07:30:36');

-- --------------------------------------------------------

--
-- Table structure for table `programs`
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
-- Dumping data for table `programs`
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
(23, 'Liberté, Mode d\'emploi', 'Comment vivre sa liberté', 1, '2022-01-26 14:11:07', '2022-01-26 14:11:07', 'liberte-et-mode-d-emploi-61f1486b41786546044675.jpg'),
(24, 'Destination Santé', 'Des conseils salutaires pour une bonne santé.', 1, '2023-01-29 15:04:12', '2023-01-29 15:04:12', 'destination-sante-63d67cdc9971a656566746.jpg'),
(25, 'Ecole du Sabbat', 'Études bibliques', 1, '2023-11-04 09:18:48', '2023-11-04 09:18:48', 'ecole-du-sabbat-6545fe68d2b30686303679.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `resset_password_request`
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
-- Dumping data for table `resset_password_request`
--

INSERT INTO `resset_password_request` (`id`, `user_id`, `selector`, `hashed_token`, `requested_at`, `expires_at`) VALUES
(6, 48, 'nFG0l0gkKCAZtFjTfLmh', '+bao5YEZIVDFgPAhU5Nb9PiOu5WXJErJwex6CmLkQ+Q=', '2022-11-04 14:53:25', '2022-11-04 15:53:25');

-- --------------------------------------------------------

--
-- Table structure for table `temoignage`
--

CREATE TABLE `temoignage` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `visibility` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timespaces`
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
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `roles`, `password`, `github_id`, `github_access_token`, `facebook_access_token`, `googleplus_id`, `googleplus_access_token`, `linkedin_id`, `linkedin_access_token`, `stackexchange_id`, `stackexchange_access_token`, `first_name`, `last_name`, `is_verified`, `created_at`, `updated_at`, `image_name`, `facebook_id`) VALUES
(10, 'danielmonprochainetoundi@gmail.com', '[\"ROLE_USER\",\"ROLE_ADMIN\"]\r\n', '$argon2id$v=19$m=65536,t=4,p=1$6w/9ZmV3hw4R0E2VHfK5WQ$wq1ijVBOPK1Mcuc9vAI2BAW8WkT3kZbqAzd8Q8W18w0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Daniel', 'Monprochain', 1, '2021-08-17 16:41:57', '2021-08-17 16:41:57', NULL, NULL),
(37, 'fopoar@gmail.com', '[\"ROLE_USER\",\"ROLE_ADMIN\"]', '$2y$13$uskFdFccTOEGLayRghVPleyS0/Cz1iRmhFlqxAL/xQhuQ7447Gnaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arsene', 'Fokam P.', 1, '2021-08-20 19:28:23', '2021-09-20 10:13:04', NULL, NULL),
(39, 'dime.jean@outlook.fr', '[\"ROLE_USER\",\"ROLE_ADMIN\" ]\r\n', '$argon2id$v=19$m=65536,t=4,p=1$ghU+Qasn2iUI9C1i2CWFHw$FXcek7J+EbTAM8l1uOTHD4KAhuwYsOVZG3hcXpiF5wk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jean Bernard', 'Dimé', 1, '2021-08-27 07:45:06', '2021-08-27 07:45:06', NULL, NULL),
(40, 'MavisBaldosrg@seznam.cz', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$g+sOHp/z2pCKU81/7HLSIg$eYHmG3NGwtMB9jMgiZOtN8diqDHNV8ro93VngHKsKZU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inconu', 'Inconu', 1, '2021-08-28 11:30:00', '2021-08-28 11:30:00', NULL, NULL),
(42, 'danielfopah@gmail.com', '[\"ROLE_USER\",\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$y+3TOSu11hxpwCjRfiOTMA$vJV0KF5KjgATH1Q5uuonRf5DLB75x/IGCFctYJgMa9M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Clovis', 'FOPAH', 1, '2021-08-30 07:41:45', '2021-08-30 07:42:52', NULL, NULL),
(43, 'benoitndi@yahoo.fr', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$V6zyCBbuhQp8Dp8PiNADtA$YcpqoTL71Gb7zqdB2f+S9CaJkPUfDIcHr1qqgMk66Jc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BENOIT', 'NDI', 1, '2021-08-31 14:56:44', '2021-08-31 14:56:44', NULL, NULL),
(44, 'sarvaedouard1@gmail.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$Rmh0KdmFXgeV87yu15ByGQ$EDSXh2bk9dJ/rUO5/tTo55RGW5ETuCzCEjsCcN19pW0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Edouard', 'Azoumahaï', 1, '2021-09-05 00:30:26', '2021-09-05 00:31:12', NULL, NULL),
(45, 'ppanani3@gmail.com', '[\"ROLE_USER\",\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$Y3FWEaSM+fIuojsCTmOrhQ$zmcYSe9XcsSv0BXGIR1jwYmfAgpLaXkHj8+FoSCezEU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Patrick', 'Etoughé Anani', 1, '2021-09-05 03:36:11', '2021-09-05 03:37:13', NULL, NULL),
(46, 'bakari@rie.fm', '[\"ROLE_USER\",\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$X6UuZC4yHe3WHjHjmVTSZA$FWWulNINR47Pt5XfYXH7Bf+iuqJGbz0AF13HH1SIGRM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Abraham', 'Bakari', 1, '2021-09-05 03:37:58', '2021-09-05 03:37:58', NULL, NULL),
(48, 'yangmanavom@yahoo.fr', '[\"ROLE_USER\",\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$Vo9VMV/fKX39wKiQ2hqg8w$mrKWtNhEYbPPigYQrPxADSpzzckzt3eKtn59p9jtUhM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Armand Arnaud', 'Yangman Avom', 1, '2021-09-08 13:17:58', '2021-09-08 13:22:15', NULL, NULL),
(51, 'joseph_nkou@yahoo.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$myKdJx2zKcste+RQjKG3Fg$Qdl2WLz6YvA2JLmowG0BDrbVY9n6+lot6Ws23U8VMGU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Joseph', 'Nkou', 1, '2021-09-28 12:20:29', '2021-09-28 12:20:29', NULL, NULL),
(52, 'jcmbolong@yahoo.fr', '[\"ROLE_USER\", \"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$dB1RCponoL7vTIvaEAUHPA$TzKUyeonkDMidLmhYzRvyHLzE6WeLaSJGhd4iUl7ocg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jean Claude', 'Mbolong', 1, '2021-09-28 13:37:23', '2021-09-28 13:37:23', NULL, NULL),
(53, 'nomflorence2000@yahoo.fr', '[\"ROLE_USER\",\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$wRHZhvUlKKvxk63lGxwCag$7pA8Vj32Xhy6UDdknwBUIgWZIQTtAU+DE230dqJHf04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Florence Antoinette Suzy', 'Nom', 1, '2021-09-28 14:52:08', '2021-09-28 15:21:54', NULL, NULL),
(54, 'beyebiguij@gmail.com', '[\"ROLE_USER\",\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$OLjTPNulUE2W2FMlJVtE9g$95ChSVBvBGffWwKQ73JJ1jikOn2lzklnMeoYam93kPw', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jean François', 'Béyébigui', 1, '2021-09-28 15:23:26', '2021-09-28 15:23:26', NULL, NULL),
(55, 'bada1979ach@gmail.com', '[\"ROLE_USER\",\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$vFoqaYCGOPyoYJsZPJDInw$HsPhMwySgA8Neof2MrLcjaGwx4eYIYwBqtlUZdI0vTI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Achille', 'BADA NGANGOUMOU', 1, '2021-10-03 23:00:00', '2021-10-03 23:08:07', NULL, NULL),
(58, 'jtchoualeu@yahoo.fr', '[\"ROLE_USER\", \"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$3Z3prOdWSXeFYJZCyuvCZA$fEQwFDMbwoqe722h0BAKtxo0xWBTobrN0v2z+qngP5Q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jean Marie', 'Tchoualeu Nemangou', 1, '2021-10-07 21:04:14', '2021-10-07 21:04:14', NULL, NULL),
(59, 'joseelysee@gmail.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$85jnbkVCXrGNxkEjZNIg2g$U3pPyr4MzYohhowOgjWlZqqKsxsFnX0tbp5rK4Ynyco', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jean José', 'Elysée', 0, '2021-10-24 14:17:48', '2021-10-24 14:17:48', NULL, NULL),
(61, 'omme30772@gmail.com', '[\"ROLE_USER\",\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$Mv3btmNllCuVnMYnypwjzQ$rTAhXu2lVogw3bXw69t1pGN3FnLmkPB13wIqXXqmvl8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GUY OLIVIER', 'MBE MESSINA', 1, '2021-10-29 23:12:23', '2021-10-30 00:26:19', NULL, NULL),
(62, 'ikitanael@yahoo.fr', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$Ba/T+RDtSmzGuSKs3MxJag$OgDy9HADtWAVIHv2o2lHtyYqNh4Oo1TIf4oo7in5J5g', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'stephanie', 'IKITO', 1, '2021-10-31 12:01:57', '2021-10-31 12:01:57', NULL, NULL),
(63, 'nang_el@yahoo.fr', '[\"ROLE_USER\",\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$0ooPaW+NfbfWXe47l1yzyg$n3q7zHslIn6WnqnDqtupMrgJQ6Uy0TGzh9fVobLTFpk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Elisée', 'NANG', 1, '2021-11-11 06:49:57', '2021-11-11 06:49:57', NULL, NULL),
(64, 'ndjiddayerima38@gmail.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$BI94bZ2hUfOeznwDLt64ZQ$JJWo0qvEfhcsLn/MJLbetd0JACg0es9OQs5w8FD3l+0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SILAS', 'NDJIDDA', 1, '2022-01-21 19:51:18', '2022-01-21 19:51:18', NULL, NULL),
(65, 'azuwin.s.azuwin.shah@naturalgamma.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$n0n9KJwWWiPDU/b16I0EIA$1OuHSbEqtRWY11R/vR9IrR1orHEAot2wvIg1C4LNszE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bob', 'Okelola', 1, '2022-03-01 01:21:02', '2022-03-01 01:22:01', NULL, NULL),
(66, 'petrosianivannhh@mail.ru', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$sMnrf6UEbFMrsOxREhe0Sg$T7R3ta262lEFHZiTMdC1Hophke9YlmdMWfhm6yOtqfs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Backi to in WLRISS38504WLRISS2 vsm58. TEARYPR misutp sitee http://apple.com', 'Backi to in WLRISS38504WLRISS2 vsm58. TEARYPR misutp sitee http://apple.com', 1, '2022-04-19 17:29:52', '2022-04-19 17:29:52', NULL, NULL),
(67, 'portpranenas1977@mail.ru', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$B9V7lbtu8WqRFZWYigXdKg$Rt9GsGxKAQvp7/MiGQrWIV8TgDdNYZ7zosaVVhuPtGY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'krzykaverb', 'krzykaverb', 1, '2022-04-29 00:50:46', '2022-04-29 00:50:46', NULL, NULL),
(68, 'amhirwa2@gmail.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$lJ2+jpDCuF+cT6GxDhJ+LA$XI4YefOOi9JyF2W1hhnvjETEe5jeEFOWo8Ar98vsx9M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amiel', 'HIRWA', 1, '2022-04-30 08:43:06', '2022-04-30 08:43:06', NULL, NULL),
(69, 'njamiaurel@gmail.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$Uc9Oh+gEpsGJWOwXDyHfLQ$Mv+QUKBrTNUM00JjrMPdBQXRYb4gaQ2zhq6IYeV/4jU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vassili Aurel', 'Njami', 1, '2022-04-30 16:35:31', '2022-04-30 16:35:31', NULL, NULL),
(70, 'Virgi_christ@yahoo.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$BRwWAkfKPJqh9F2aesRjKw$kFnk4O1YjDfK1IiTDjgvB32c9rIc/mzc6SgHaAgFN1Q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Virginie', 'NYAGA', 1, '2022-06-08 03:46:15', '2022-06-08 03:46:15', NULL, NULL),
(71, 'shura.strelnikov.76@inbox.ru', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$qdJXv6Ga3Qjf4WEttmCkxw$6MdFFngNlWnml5nTkUvqMw8xqQkc9I2WqtywkCtdG/0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Выплачено: AAArie.fmBBB', 'Выплачено: AAArie.fmBBB', 0, '2022-07-17 18:00:18', '2022-07-17 18:00:18', NULL, NULL),
(79, 'kindengueministry@gmail.com', '[\"ROLE_USER\",\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$2m6rm8yilAT9NKmtGlEU2Q$g9qJBScS998oM/DanMdGQg9mdipSer1KyUw9Fyy5Sn0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jean', 'Kindengue', 1, '2022-10-09 16:21:04', '2022-10-09 16:21:04', NULL, NULL),
(80, 'jeannehemiebougaga@gmail.com', '[\"ROLE_USER\",\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$QwwveLLUz8ZVn8cCmGidQA$+8gfh9MuEdgsjfOpiqGdOau/VvbTV82+18KJ6zKUvpQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jean Néhémie', 'Bougaga', 0, '2022-10-19 00:11:46', '2022-10-19 00:11:46', NULL, NULL),
(81, 'kindengueminintry@gmail.com', '[\"ROLE_USER\",\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$QSNIBKauDRk4Y5hAdXW0zg$+/6ApkONCTaJ23nbJUR5fk+kFrcuaXwp9KAp6YhBorA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JEAN COLBERT', 'KINDENGUE', 1, '2022-11-03 14:56:09', '2022-11-03 14:56:09', NULL, NULL),
(82, 'ashantipit@yahoo.fr', '[\"ROLE_USER\",\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$ptwWnNYbwB9n0ecLmXAR8A$XEcuIjw4mH2QYhwMsgu26NXZ53n7h/u4iZTpv7tLXDk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Natacha', 'Ebongue', 0, '2022-11-15 12:16:38', '2022-11-15 12:16:38', NULL, NULL),
(83, 'krystalkrystal879@gmail.com', '[\"ROLE_USER\",\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$YhwSYrClQb413zntv/Lv5g$JVwYHoiZ30B9FLFiVbbpFpXrJWV1xF0jg3Ge0zHdN78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Krystal', 'Ebongue', 1, '2022-12-05 10:24:17', '2022-12-05 10:24:17', NULL, NULL),
(84, 'oumarron@yahoo.fr', '[\"ROLE_USER\",\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$ifcnVb2+v+PNKKXz+jPuTQ$fa/cguNPLyRjyaWK3Ej/JMAFVXkjpNbHZxjw1MfsjOY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arron Delor', 'OUM', 0, '2023-01-19 08:20:42', '2023-01-19 08:20:42', NULL, NULL),
(85, 'doranedal17@gmail.com', '[\"ROLE_USER\",\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$mYwMggzOg45WXpKFr1m62Q$yJUxj6F1CYQahletXlxyIjhmgSlBIPz7XnNB8enrFdU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EFUNDEM DORANE', 'OROCK', 0, '2023-04-13 18:46:29', '2023-04-13 18:46:29', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_category`
--

CREATE TABLE `user_category` (
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `verse`
--

CREATE TABLE `verse` (
  `id` int(11) NOT NULL,
  `reference` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `verse`
--

INSERT INTO `verse` (`id`, `reference`, `content`) VALUES
(1, 'Jean 10:11', 'Je suis le bon berger. Le bon berger donne sa vie pour ses brebis.'),
(2, 'Matthieu 24:35', 'Le ciel et la terre passeront, mais mes paroles ne passeront point.'),
(3, 'Psaume 23:1', 'L\'Eternel est mon berger: je ne manquerai de rien.');

-- --------------------------------------------------------

--
-- Table structure for table `video`
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
-- Dumping data for table `video`
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
(12, 37, 'https://www.youtube.com/embed/KSSjerQf2wg', '2021-09-20 10:40:34', '2021-09-20 10:40:34', 'GARDE ESPOIR'),
(13, 37, 'https://www.youtube.com/embed/5mlvQvTmmAY', '2021-09-21 04:03:34', '2021-09-21 04:03:34', 'UN PAS A LA FOIS'),
(14, 46, 'https://www.youtube.com/embed/MO_7L_U3g3k', '2021-09-25 09:48:06', '2021-09-25 09:48:06', 'Comment transporter ces montagnes?'),
(15, 37, 'https://www.youtube.com/embed/VM6PjbUvZDY', '2021-09-27 00:41:20', '2021-09-27 00:41:20', 'LA NEGLIGENCE FATALE'),
(16, 37, 'https://www.youtube.com/embed/BulLwlFsnWE', '2021-09-28 00:48:47', '2021-09-28 00:48:47', 'POINT DE DEFAUTS EN TOI'),
(17, 37, 'https://www.youtube.com/embed/zu0OtjtsQZc', '2021-10-01 07:05:09', '2021-10-01 07:05:09', 'LA MORT EST UN GAIN'),
(18, 45, 'https://www.youtube.com/embed/DBZy-sXu0Gc', '2021-10-03 14:40:26', '2021-10-03 14:40:26', 'Les épidémies qui font l’histoire'),
(19, 37, 'https://www.youtube.com/embed/ASVgp2cLk_Y', '2021-10-04 21:53:34', '2021-10-04 21:53:34', 'TU SERA ELEVE'),
(20, 37, 'https://www.youtube.com/embed/Mjv9QUGKz08', '2021-10-05 10:19:14', '2021-10-05 10:19:14', 'TU SERAS VISITE'),
(21, 37, 'https://www.youtube.com/embed/HhzouIQP3U8', '2021-10-11 09:17:34', '2021-10-11 09:17:34', 'TOUJOURS A MES COTES'),
(22, 37, 'https://www.youtube.com/embed/9MBOJAoiZXE', '2021-10-14 10:07:16', '2021-10-14 10:07:16', 'LA PUISSANCE DE LA GRATUITE'),
(23, 37, 'https://www.youtube.com/embed/OsF_IG09gpM', '2021-10-19 01:21:40', '2021-10-19 01:21:40', 'Série de conférences « Certitudes pour notre temps » | Pasteur José Élysée | 16 octobre 2021| Journee 1'),
(24, 46, 'https://www.youtube.com/embed/2jnVGtimNbA', '2021-10-19 01:25:15', '2021-10-19 01:25:15', 'Savoir écouter Dieu et entendre Sa voix'),
(25, 37, 'https://www.youtube.com/embed/5I2DjyYYu3c', '2021-10-19 01:28:11', '2021-10-19 01:28:11', '2ème certitude: « Pourquoi tant de catastrophes? Dieu nous a révélé où va le monde » | Pasteur Josee Elysee'),
(26, 37, 'https://www.youtube.com/embed/2DfNZACh_WU', '2021-10-19 11:58:05', '2021-10-19 11:58:05', 'M\'AIMES TU ?'),
(27, 37, 'https://www.youtube.com/embed/9bu94oIjkCA', '2021-10-20 13:24:31', '2021-10-20 13:24:31', '3ème certitude : « Qui tient le gouvernail du monde? Le seul et unique capitaine fiable » | Pasteur Josee Elysee'),
(28, 46, 'https://www.youtube.com/embed/sLHp3ruQ2i4', '2021-10-23 02:44:02', '2021-10-23 02:44:02', 'Que faire pour retrouver le sommeil sans somnifères ?'),
(29, 37, 'https://www.youtube.com/embed/C0VI6jmifrA', '2021-10-25 11:24:05', '2021-10-25 11:24:05', 'QUI EST TON CONSULTANT ?'),
(30, 37, 'https://www.youtube.com/embed/s-XYpqE_MN4', '2021-10-26 07:07:07', '2021-10-26 07:07:07', 'NE TE TROMPES PLUS'),
(31, 40, 'https://www.youtube.com/embed/fLxsuOpS-P8', '2021-10-26 10:06:42', '2021-10-26 10:06:42', '6ème certitude : « Où se trouvent nos morts? Un lieu parfaitement sûr où Jésus les a cachés »'),
(32, 37, 'https://www.youtube.com/embed/FWEs9gqxW7Q', '2021-10-28 06:32:45', '2021-10-28 06:32:45', 'CE QUI CAUSE TA RUINE'),
(33, 40, 'https://www.youtube.com/embed/NiwOJCPw7IQ', '2021-10-29 15:33:33', '2021-10-29 15:33:33', 'L\'âme est elle immortelle ? - Il Est Écrit'),
(34, 37, 'https://www.youtube.com/embed/i8r07nU3t-A', '2021-11-01 17:41:06', '2021-11-01 17:41:06', 'REVIENS A TON CREATEUR'),
(35, 37, 'https://www.youtube.com/embed/AaYXJPl1ihs', '2021-11-02 11:37:44', '2021-11-02 11:37:44', 'HAVE MERCY ON ME'),
(36, 37, 'https://www.youtube.com/embed/xpstcky6SzE', '2021-11-03 05:52:52', '2021-11-03 05:52:52', 'NE BAISSE PAS LES BRAS'),
(37, 37, 'https://www.youtube.com/embed/fAKLS2WW-Hk', '2021-11-04 08:24:08', '2021-11-04 08:24:08', 'JESUS S\'ARRETA'),
(38, 59, 'https://www.youtube.com/embed/FC4qXlRo_Go', '2021-11-05 07:41:20', '2021-11-05 07:41:20', 'Êtes-vous comme Thomas ? - Il Est Écrit'),
(39, 37, 'https://www.youtube.com/embed/M-csKazx8Fk', '2021-11-08 05:55:49', '2021-11-08 05:55:49', 'LE MENSONGE DE ABRAHAM'),
(40, 37, 'https://www.youtube.com/embed/oKvEcHGaVXM', '2021-11-09 09:49:57', '2021-11-09 09:49:57', 'MOISE OU LA PEUR DE L\'ECHEC'),
(41, 37, 'https://www.youtube.com/embed/Er7WTlzoklk', '2021-11-10 09:09:15', '2021-11-10 09:09:15', 'LA FUITE DU PROPHETE'),
(42, 37, 'https://www.youtube.com/embed/fdrmBn1s20o', '2021-11-11 06:46:34', '2021-11-11 06:46:34', 'VAS TU TRAHIR LE MAITRE?'),
(43, 37, 'https://www.youtube.com/embed/U-5UlwW0ceg', '2021-11-16 05:21:07', '2021-11-16 05:21:07', 'LE FOUET ET L\'EDUCATION'),
(44, 37, 'https://www.youtube.com/embed/lwd8-jRWUqQ', '2021-11-17 07:09:32', '2021-11-17 07:09:32', 'EDUCATION SEXUELLE TABOU?'),
(45, 37, 'https://www.youtube.com/embed/ehqZMxZ8tCs', '2021-11-18 05:15:05', '2021-11-18 05:15:05', 'VIOLE PAR MON PERE'),
(46, 37, 'https://www.youtube.com/embed/OtGf8mUQz4g', '2021-11-19 05:57:56', '2021-11-19 05:57:56', 'MON FOYER MON SANCTUAIRE'),
(47, 37, 'https://www.youtube.com/embed/oa2ym9JY3yE', '2021-11-22 02:06:08', '2021-11-22 02:06:08', 'MARIAGE GAY, QUE FAIRE?'),
(48, 37, 'https://www.youtube.com/embed/GCd82Ysnhzc', '2021-11-23 03:54:40', '2021-11-23 03:54:40', 'TOUJOURS CELIBATAIRE?'),
(49, 46, 'https://www.youtube.com/embed/gSP_NMeT3BE', '2021-11-26 16:21:15', '2021-11-26 16:21:15', 'Piégés en cherchant des miracles…'),
(50, 40, 'https://www.youtube.com/embed/JbxFwsDW_n8', '2021-11-29 02:49:03', '2021-11-29 02:49:03', 'Faisons La Différence'),
(51, 40, 'https://www.youtube.com/embed/3vjbrm3YsKs', '2021-11-29 02:50:33', '2021-11-29 02:50:33', 'Quand Dieu se révèle... Esaïe 51:4'),
(52, 37, 'https://www.youtube.com/embed/wRqLAweI1n0', '2021-11-29 07:49:32', '2021-11-29 07:49:32', 'VETEMENTS ET IDENTITE'),
(53, 37, 'https://www.youtube.com/embed/4iYtgtw9bXs', '2021-12-01 05:10:54', '2021-12-01 05:10:54', 'RESPECTEZ LES LMITES'),
(54, 40, 'https://www.youtube.com/embed/IEU2itXN_8o', '2021-12-01 08:09:06', '2021-12-01 08:09:06', 'Le Monde ou l\'Immortalité?'),
(55, 37, 'https://www.youtube.com/embed/LHcfs2REVEg', '2021-12-02 05:16:54', '2021-12-02 05:16:54', 'DEUX VALENT MIEUX'),
(56, 40, 'https://www.youtube.com/embed/bvwg5W-iZAY', '2021-12-10 21:49:58', '2021-12-10 21:49:58', 'Quand je prie pour les autres, Dieu exauce. Mais pour moi même…'),
(57, 10, 'https://www.youtube.com/embed/9EgCmMKhlQo', '2021-12-19 01:04:34', '2021-12-19 01:04:34', 'Venir à bout de la paresse: le travail est un trésor'),
(58, 46, 'https://www.youtube.com/embed/8zs9Zvhdkcc', '2021-12-25 02:51:45', '2021-12-25 02:51:45', 'Noël où Jésus n’était pas né, toutes les armes se turent.'),
(59, 37, 'https://www.youtube.com/embed/l7ZYbTupgDU', '2022-01-06 10:28:06', '2022-01-06 10:28:06', 'L\'URGENCE DE LA PRIERE'),
(60, 37, 'https://www.youtube.com/embed/J412m2PQD7g', '2022-01-06 10:31:15', '2022-01-06 10:31:15', 'L\'EVANGILE ETERNEL ET LA PRIERE'),
(61, 37, 'https://youtu.be/QR-0maEIplk', '2022-01-07 09:04:06', '2022-01-07 09:04:06', 'LA MISSION DE DIEU ET LA PRIERE'),
(62, 37, 'https://www.youtube.com/embed/QR-0maEIplk', '2022-01-07 09:05:40', '2022-01-07 09:05:40', 'LA MISSION DE DIEU ET LA PRIERE'),
(63, 37, 'https://www.youtube.com/embed/GjjlWvffrBA', '2022-01-08 07:20:59', '2022-01-08 07:20:59', 'LA MISSION DE DIEU ET LA PRIERE 2'),
(64, 37, 'https://www.youtube.com/embed/QDiOIWw1bqk', '2022-01-09 07:44:17', '2022-01-09 07:44:17', 'UNE VIE D\'OBEISSANCE ET DE PRIERE'),
(65, 37, 'https://www.youtube.com/embed/DjD37N60Mog', '2022-01-12 08:59:48', '2022-01-12 08:59:48', 'LA CHUTE DE BABYLONE ET LA PRIERE'),
(66, 37, 'https://www.youtube.com/embed/eWGqVEfMbkg', '2022-01-14 11:30:46', '2022-01-14 11:30:46', 'LE PEUPLE DE DIEU  LE RESTE ET LA PRIERE'),
(67, 59, 'https://www.youtube.com/embed/-KdrC0_gQ98', '2022-01-14 12:02:54', '2022-01-14 12:02:54', 'La foi, qu\'est-ce que c\'est ? - Il Est Écrit'),
(68, 46, 'https://www.youtube.com/embed/siaeH-SirGU', '2022-01-14 12:04:35', '2022-01-14 12:04:35', 'LE DIEU DES MONTAGNES ET DES VALLÉES, LE DIEU DES EXPLOITS'),
(69, 46, 'https://www.youtube.com/embed/4jo6V_1sAjg', '2022-01-20 21:05:26', '2022-01-20 21:05:26', 'Quand Dieu prend ta défense, la honte s’en va'),
(73, 37, 'https://www.youtube.com/embed/EjBgSyJKsFc', '2022-01-21 21:35:01', '2022-01-21 21:35:01', 'PRÊCHE LA PAROLE'),
(74, 37, 'https://www.youtube.com/embed/4uBWA_Bb2y4', '2022-01-30 12:07:07', '2022-01-30 12:07:07', 'NE NOUS PRECIPITONS PAS'),
(75, 37, 'https://www.youtube.com/embed/93zZp8F3wEE', '2022-01-30 12:10:46', '2022-01-30 12:10:46', 'BOITE DE NUIT Vs CHRISTIANISME'),
(76, 37, 'https://www.youtube.com/embed/ORU7a5vbtAA', '2022-01-30 12:15:18', '2022-01-30 12:15:18', 'BOITE DE NUIT Vs CHRISTIANISME 2'),
(77, 46, 'https://www.youtube.com/embed/Nloh2o7rvmE', '2022-02-11 14:39:21', '2022-02-11 14:39:21', 'Oser lui déclarer son amour…'),
(78, 37, 'https://www.youtube.com/embed/o48Fe6l7Zco', '2022-02-21 03:09:46', '2022-02-21 03:09:46', 'LIBERTE ET RESPONSABILITE'),
(79, 37, 'https://www.youtube.com/embed/Gq0CKtDRg3s', '2022-03-04 05:04:38', '2022-03-04 05:04:38', 'LA GRATUITE QUELLE UTOPIE'),
(80, 46, 'https://www.youtube.com/embed/UuOQC2ohZK4', '2022-03-13 11:59:44', '2022-03-13 11:59:44', 'OTS: Qui peut payer un enseignant?'),
(81, 45, 'https://www.youtube.com/embed/FfMyLOvDIxk', '2022-03-13 12:02:46', '2022-03-13 12:02:46', 'Marcelo Tunasi à-t-il raison sur ROMAINS 14?'),
(82, 46, 'https://www.youtube.com/embed/miQLfEEo4rM', '2022-03-13 13:06:00', '2022-03-13 13:06:00', 'https://youtu.be/miQLfEEo4rM'),
(83, 46, 'https://www.youtube.com/embed/fKJuXMqSZ3g', '2022-03-18 08:05:16', '2022-03-18 08:05:16', 'Comment arrêter de boire'),
(84, 59, 'https://www.youtube.com/embed/JWkn9z5X0kc', '2022-04-01 14:48:49', '2022-04-01 14:48:49', 'Cultivons la gratitude'),
(85, 46, 'https://www.youtube.com/embed/ywJgZmCQy10', '2022-04-01 22:43:19', '2022-04-01 22:43:19', 'Votre langue est-elle une station radio du diable?'),
(86, 37, 'https://www.youtube.com/embed/j0_5Vhd1qso', '2022-04-06 06:55:59', '2022-04-06 06:55:59', 'SI L\'ETERNEL NE BATIT LA MAISON...'),
(87, 46, 'https://www.youtube.com/embed/9ufpFGcGWxA', '2022-04-10 20:30:04', '2022-04-10 20:30:04', 'La Jalousie détruit'),
(88, 37, 'https://www.youtube.com/embed/EqIhEA7BHU0', '2022-04-13 02:59:10', '2022-04-13 02:59:10', 'ARRETE SW TE MWNTIR'),
(89, 46, 'https://www.youtube.com/embed/34ND0SSFaeI', '2022-04-15 13:53:33', '2022-04-15 13:53:33', 'Le vrai jeune'),
(90, 37, 'https://www.youtube.com/embed/jfsUA26BFT0', '2022-04-25 02:48:17', '2022-04-25 02:48:17', 'LA FORCE DU CONTROLE'),
(91, 46, 'https://www.youtube.com/embed/7xjBiekqIiE', '2022-05-01 11:41:18', '2022-05-01 11:41:18', 'Ne jamais se réjouir du malheur de l’autre'),
(92, 37, 'https://www.youtube.com/embed/PUvd2rtdsPw', '2022-05-03 06:15:37', '2022-05-03 06:15:37', 'LA VRAIE MAGIE LE TRAVAIL'),
(93, 46, 'https://www.youtube.com/embed/bkhUiUVvsjk', '2022-05-06 11:54:23', '2022-05-06 11:54:23', 'Où est Dieu quand je souffre'),
(94, 46, 'https://www.youtube.com/embed/STxLY_E9Thc', '2022-05-20 10:02:48', '2022-05-20 10:02:48', 'La cuisine : une science négligée qui sème la mort'),
(95, 46, 'https://www.youtube.com/embed/BLAC2yjEdCI', '2022-06-03 14:58:05', '2022-06-03 14:58:05', 'Concert du DJ Belzébul? Non, merci. Doit-on écouter la musique profane?'),
(96, 37, 'https://www.youtube.com/embed/_k81g8G9M1k', '2022-06-09 06:09:39', '2022-06-09 06:09:39', 'QUAND DIEU ME PARLE'),
(97, 37, 'https://www.youtube.com/embed/d2_WcF18zvY', '2022-06-13 06:47:12', '2022-06-13 06:47:12', 'S\'EN EST ASSEZ'),
(98, 37, 'https://www.youtube.com/embed/F5x_9Ib5jOs', '2022-06-22 04:21:19', '2022-06-22 04:21:19', 'VOTRE SANTE COMPTE POUR DIEU'),
(99, 46, 'https://www.youtube.com/embed/PC2mSYoiqPQ', '2022-06-26 13:44:17', '2022-06-26 13:44:17', 'Enseigne-moi à prier : Les soupirs d’un cœur'),
(100, 37, 'https://www.youtube.com/embed/UCx7T0QGi1I', '2022-06-27 03:47:02', '2022-06-27 03:47:02', 'FIERE DE L\'ETRE ET TOI?'),
(101, 37, 'https://www.youtube.com/embed/XZkOh4QP5mo', '2022-06-29 06:32:40', '2022-06-29 06:32:40', 'COMMENT BENIR PHARAON?'),
(102, 59, 'https://www.youtube.com/embed/Su3i_GrOYXo', '2022-07-18 09:32:56', '2022-07-18 09:32:56', 'Plus forts que le coronavirus - partie 1 - Il Est Écrit\r\n'),
(103, 59, 'https://www.youtube.com/embed/5WbA22zNBLQ', '2022-07-18 09:34:20', '2022-07-18 09:34:20', 'Abrite-moi'),
(104, 59, 'https://www.youtube.com/embed/JDut4W2HAP0', '2022-07-18 09:40:53', '2022-07-18 09:40:53', 'Plus forts que le coronavirus - partie 2 - Il Est Écrit'),
(105, 59, 'https://www.youtube.com/embed/_7JQZ8RcrdY', '2022-07-21 15:39:47', '2022-07-21 15:39:47', 'Plus forts que le coronavirus - partie 4 - Il Est Écrit'),
(106, 46, 'https://www.youtube.com/embed/Bu3qF0pwZz0', '2022-08-01 11:17:38', '2022-08-01 11:17:38', 'L’honnêteté, un héritage des plus grands'),
(107, 46, 'https://www.youtube.com/embed/UjTD0nSECwE', '2022-08-01 11:20:50', '2022-08-01 11:20:50', 'Réponses miraculeuses à la prière'),
(108, 59, 'https://www.youtube.com/embed/wfjRa8avn8U', '2022-08-31 18:37:23', '2022-08-31 18:37:23', 'La dîme : scandale ou bénédiction ? - Il Est Écrit'),
(109, 46, 'https://www.youtube.com/embed/N786EamqZdQ', '2022-09-02 03:56:28', '2022-09-02 03:56:28', 'Manges-tu le fruit de la tricherie ?'),
(110, 46, 'https://www.youtube.com/embed/7gKsjHS0B-8', '2022-10-07 13:19:30', '2022-10-07 13:19:30', 'Une mère, c\'est une mère'),
(111, 59, 'https://www.youtube.com/embed/rOt6rmhLmm0', '2022-10-10 14:27:07', '2022-10-10 14:27:07', 'Pourquoi prier ensemble ?'),
(112, 40, 'https://www.youtube.com/embed/OZ5zpTpIpIs', '2022-11-03 15:35:47', '2022-11-03 15:35:47', 'SENTINELLE DE PRIERES'),
(113, 46, 'https://www.youtube.com/embed/cl_FQpLa-CU', '2022-11-14 08:50:19', '2022-11-14 08:50:19', 'Halloween : où vont les morts? PARTIE 1'),
(114, 46, 'https://www.youtube.com/embed/3_DOzz68dxM', '2022-11-14 08:51:02', '2022-11-14 08:51:02', 'Halloween Où vont les morts PARTIE 2'),
(115, 59, 'https://www.youtube.com/embed/fUxhfZZHpUY', '2022-12-16 15:30:40', '2022-12-16 15:30:40', 'Noël ou pas Noël ? - Il Est Écrit'),
(116, 46, 'https://www.youtube.com/embed/Yrt5Trq6C70', '2022-12-23 12:16:28', '2022-12-23 12:16:28', '10 JOURS DE PRIÈRE : JOUR 1 - Louanges à Dieu'),
(117, 46, 'https://www.youtube.com/embed/LiJm4pAxdJU', '2022-12-27 14:07:15', '2022-12-27 14:07:15', '10 JOURS DE PRIÈRE pour entrer dans la nouvelle année: JOUR 2 - CONFESSION ET REPENTANCE'),
(118, 46, 'https://www.youtube.com/embed/VavWAI_kgWg', '2022-12-27 14:07:19', '2022-12-27 14:07:19', '10 JOURS DE PRIÈRE pour entrer dans la nouvelle année : JOUR 3 – Réconciliation et pardon'),
(119, 46, 'https://www.youtube.com/embed/89YkIKssNWM', '2022-12-27 14:08:34', '2022-12-27 14:08:34', '10 JOURS DE PRIÈRE pour entrer dans la nouvelle année : JOUR 4 – Renoncement et abandon total'),
(120, 46, 'https://www.youtube.com/embed/e99-15UgRqQ', '2022-12-27 14:09:29', '2022-12-27 14:09:29', '10 JOURS DE PRIÈRE pour entrer dans la nouvelle année : JOUR 5 – Faim et soif de la Justice de Dieu'),
(121, 46, 'https://www.youtube.com/embed/6JsiXaqJ6h4', '2022-12-28 13:49:57', '2022-12-28 13:49:57', '10 JOURS DE PRIÈRE pour entrer dans la nouvelle année : JOUR 6 – Un cœur pur'),
(122, 46, 'https://www.youtube.com/embed/gsy3sKCuKcQ', '2022-12-30 11:44:55', '2022-12-30 11:44:55', '10 JOURS DE PRIÈRE pour la nouvelle année : JOUR 8– Contre les autels sataniques & les malédictions'),
(123, 46, 'https://www.youtube.com/embed/yFv6xC3peFA', '2023-01-13 16:14:52', '2023-01-13 16:14:52', 'Les plus belles résolutions'),
(124, 81, 'https://www.youtube.com/embed/U_T3-qLJkvA', '2023-01-18 20:36:36', '2023-01-18 20:36:36', 'OU ES TU?'),
(125, 81, 'https://www.youtube.com/embed/NqvWsNb47b0', '2023-01-18 20:41:01', '2023-01-18 20:41:01', 'CONSECRATION ET COMMEMORATION'),
(126, 81, 'https://www.youtube.com/embed/LyFZq-ksWWA', '2023-01-18 20:43:53', '2023-01-18 20:43:53', 'MATIN ET SOIR'),
(127, 81, 'https://www.youtube.com/embed/IttXQyWM7K0', '2023-01-18 20:47:04', '2023-01-18 20:47:04', 'DIEU REVIENT VERS L\'HOMME'),
(128, 81, 'https://www.youtube.com/embed/2Yr8VlUvMXk', '2023-01-18 20:49:05', '2023-01-18 20:49:05', 'JESUS LE MATINAL'),
(129, 81, 'https://www.youtube.com/embed/5kOQxzZIJMs', '2023-01-18 20:51:10', '2023-01-18 20:51:10', 'LE COMBATTANT DE PRIERE'),
(130, 10, 'https://www.youtube.com/embed/AftIa5IjCIM', '2023-01-18 20:53:32', '2023-01-18 20:53:32', 'UNE EGLISE PROSTERNEE DEVANT LE SEIGNEUR'),
(131, 81, 'https://www.youtube.com/embed/AftIa5IjCIM', '2023-01-18 20:55:08', '2023-01-18 20:55:08', 'UNE EGLISE PROSTERNEE DEVANT LE SEIGNEUR'),
(132, 81, 'https://www.youtube.com/embed/DO8mpfiZGMI', '2023-01-18 20:58:54', '2023-01-18 20:58:54', 'LE CULTE ET LE MESSAGE DES TROIS ANGES'),
(133, 81, 'https://www.youtube.com/embed/ydYnOT-o_bc', '2023-01-26 07:27:33', '2023-01-26 07:27:33', 'COMMENT REPONDRE A LA GRACE'),
(134, 42, 'https://www.youtube.com/embed/YT6yvCrZgjo', '2023-01-28 10:48:09', '2023-01-28 10:48:09', 'IL EST ECRIT DU 28 JANVIER 2023 QUEL SENS DONNER À LA VIE Pst Samuel MBOP AKOK'),
(135, 81, 'https://www.youtube.com/embed/EVIhsOvxX8U', '2023-02-04 05:54:53', '2023-02-04 05:54:53', 'INLUENCE ET RESPONSABILITES'),
(136, 81, 'https://www.youtube.com/embed/a4TZMJPzCvU', '2023-02-06 10:37:54', '2023-02-06 10:37:54', 'LA PAROLE EN QUESTION'),
(137, 81, 'https://www.youtube.com/embed/8td2Y8CKbio', '2023-02-07 17:43:04', '2023-02-07 17:43:04', 'LA PAROLE EN QUESTION APAISE ET MOTIVE'),
(138, 81, 'https://www.youtube.com/embed/Kurh4qHwuN0', '2023-02-08 07:07:27', '2023-02-08 07:07:27', 'LA PAROLE EN QUESTION CHANGE LES TEMPS ET LES CIRCONSTANCES'),
(139, 46, 'https://www.youtube.com/embed/5OlpwT7BADc', '2023-02-10 08:54:26', '2023-02-10 08:54:26', 'Le refuge le plus sûr'),
(140, 42, 'https://www.youtube.com/embed/0jO3pXoSUYc', '2023-02-11 13:42:51', '2023-02-11 13:42:51', 'IL EST ECRIT DU 11 FEVRIER 2023 - LA PROCRASTINATION EST L\'ENNEMIE ! (A. ABRAHAM BAKARI)'),
(141, 81, 'https://www.youtube.com/embed/I68sjjpPt-g', '2023-02-13 07:45:32', '2023-02-13 07:45:32', 'RELEVE TOI ET AVANCE'),
(142, 81, 'https://www.youtube.com/embed/VJQ6L8bwyPA', '2023-02-14 13:21:19', '2023-02-14 13:21:19', 'SI TU TOMBES RELEVE TOI'),
(143, 81, 'https://www.youtube.com/embed/zdYi8dqogf4', '2023-02-15 07:27:29', '2023-02-15 07:27:29', 'AVANCE AVEC DISCERNEMENT'),
(144, 81, 'https://www.youtube.com/embed/1MvTilQTDs4', '2023-02-16 11:19:32', '2023-02-16 11:19:32', 'RELEVE TOI ET AVANCE MALGRE TOUT'),
(145, 42, 'https://www.youtube.com/embed/x790VNfF-dw\"', '2023-02-18 13:23:21', '2023-02-18 13:23:21', 'IL EST ECRIT DU 18 FEVRIER 2023 L\'AMOUR CHANGE TOUT ! Pst ASSEMBE MINYONO'),
(146, 81, 'https://www.youtube.com/embed/NlnqIv5H4Cc', '2023-03-01 12:26:16', '2023-03-01 12:26:16', 'DISCIPLINE ET SPIRITUALITE'),
(147, 79, 'https://www.youtube.com/embed/OFBQP860kyY', '2023-03-02 17:36:53', '2023-03-02 17:36:53', 'DISCIPLINE ET SPIRITUALITE (suite)'),
(148, 79, 'https://www.youtube.com/embed/C2CR1y6qClU', '2023-03-03 07:34:51', '2023-03-03 07:34:51', 'DISCIPLINE ET SPIRITUALITE (Fin)'),
(149, 81, 'https://www.youtube.com/embed/C2CR1y6qClU', '2023-03-06 19:07:12', '2023-03-06 19:07:12', 'CONFLITS ET RESOLUTIONS'),
(150, 81, 'https://www.youtube.com/embed/o9DqvTX-nr4', '2023-03-06 19:14:24', '2023-03-06 19:14:24', 'CONFLITS ET RESOLUTIONS'),
(151, 81, 'https://www.youtube.com/embed/Xp731iadwko', '2023-04-03 17:53:43', '2023-04-03 17:53:43', 'QUAND VIENT LE MALHEUR'),
(152, 81, 'https://www.youtube.com/embed/bl0DzrBkPak', '2023-04-12 20:42:07', '2023-04-12 20:42:07', 'RESTER A SA PLACE'),
(153, 81, 'https://www.youtube.com/embed/dsvfmn0F6bQ', '2023-05-02 09:22:34', '2023-05-02 09:22:34', 'JE SUS NOTRE AMI'),
(154, 81, 'https://www.youtube.com/embed/zlfa5SljKUA', '2023-05-15 08:24:14', '2023-05-15 08:24:14', 'TRANSMISSION DES VALEURS'),
(155, 81, 'https://www.youtube.com/embed/XhFuyqIE0qU', '2023-05-29 17:42:00', '2023-05-29 17:42:00', 'QUE ME RESERVE L\'AVENIR?'),
(156, 81, 'https://www.youtube.com/embed/A4-JMdXZ7Ek', '2023-06-01 18:20:06', '2023-06-01 18:20:06', 'ANNE FACE A L\'ADVERSITE'),
(157, 40, 'https://www.youtube.com/embed/lfyiHmwmakw?si=bce_VrWAM1CrMTwW', '2023-08-11 14:05:28', '2023-08-11 14:05:28', 'Les généalogies sont sélectives'),
(158, 46, 'https://www.youtube.com/embed/ZuMDSULkUeg?si=6LNG8vfrtLNeFScb', '2023-10-07 07:19:16', '2023-10-07 07:19:16', '5 Leçons pour un champion'),
(159, 46, 'https://www.youtube.com/embed/jYRNtg2xF-I?si=M5tw2fS1BrkwL_O7', '2023-10-14 09:00:05', '2023-10-14 09:00:05', 'Une double vie, c’est compliqué'),
(160, 46, 'https://www.youtube.com/embed/bDroKwtqbuI?si=1jClx2MYO-kdxDhf', '2023-10-28 20:40:58', '2023-10-28 20:40:58', 'Tu peux guérir de ces blessures');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9474526C727ACA70` (`parent_id`),
  ADD KEY `IDX_9474526CF675F31B` (`author_id`),
  ADD KEY `IDX_9474526C126F525E` (`item_id`);

--
-- Indexes for table `domain`
--
ALTER TABLE `domain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9D996984F675F31B` (`author_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1F1B251EF675F31B` (`author_id`),
  ADD KEY `IDX_1F1B251E12469DE2` (`category_id`);

--
-- Indexes for table `news_letter`
--
ALTER TABLE `news_letter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `podcasts`
--
ALTER TABLE `podcasts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_AE09E83F3EB8070A` (`program_id`),
  ADD KEY `IDX_AE09E83F87D2108C` (`time_space_id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resset_password_request`
--
ALTER TABLE `resset_password_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_477BC208A76ED395` (`user_id`);

--
-- Indexes for table `temoignage`
--
ALTER TABLE `temoignage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BDADBC46F675F31B` (`author_id`);

--
-- Indexes for table `timespaces`
--
ALTER TABLE `timespaces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_126169983EB8070A` (`program_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1483A5E9E7927C74` (`email`);

--
-- Indexes for table `user_category`
--
ALTER TABLE `user_category`
  ADD PRIMARY KEY (`user_id`,`category_id`),
  ADD KEY `IDX_E6C1FDC1A76ED395` (`user_id`),
  ADD KEY `IDX_E6C1FDC112469DE2` (`category_id`);

--
-- Indexes for table `verse`
--
ALTER TABLE `verse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7CC7DA2CF675F31B` (`author_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT for table `domain`
--
ALTER TABLE `domain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=422;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `resset_password_request`
--
ALTER TABLE `resset_password_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `temoignage`
--
ALTER TABLE `temoignage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timespaces`
--
ALTER TABLE `timespaces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `verse`
--
ALTER TABLE `verse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD CONSTRAINT `FK_5C755F1EBF396750` FOREIGN KEY (`id`) REFERENCES `item` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `FK_9474526C727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `comment` (`id`),
  ADD CONSTRAINT `FK_9474526CF675F31B` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD CONSTRAINT `FK_9D996984F675F31B` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `FK_1F1B251E12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_1F1B251EF675F31B` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `news_letter`
--
ALTER TABLE `news_letter`
  ADD CONSTRAINT `FK_2AB2D7EBF396750` FOREIGN KEY (`id`) REFERENCES `item` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `podcasts`
--
ALTER TABLE `podcasts`
  ADD CONSTRAINT `FK_AE09E83F3EB8070A` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`),
  ADD CONSTRAINT `FK_AE09E83F87D2108C` FOREIGN KEY (`time_space_id`) REFERENCES `timespaces` (`id`),
  ADD CONSTRAINT `FK_AE09E83FBF396750` FOREIGN KEY (`id`) REFERENCES `item` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `resset_password_request`
--
ALTER TABLE `resset_password_request`
  ADD CONSTRAINT `FK_477BC208A76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `temoignage`
--
ALTER TABLE `temoignage`
  ADD CONSTRAINT `FK_BDADBC46F675F31B` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `timespaces`
--
ALTER TABLE `timespaces`
  ADD CONSTRAINT `FK_126169983EB8070A` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`);

--
-- Constraints for table `user_category`
--
ALTER TABLE `user_category`
  ADD CONSTRAINT `FK_E6C1FDC112469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E6C1FDC1A76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `FK_7CC7DA2CF675F31B` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
