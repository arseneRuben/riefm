-- phpMyAdmin SQL Dump
-- version 4.9.6
-- https://www.phpmyadmin.net/
--
-- Hôte : 134cc.myd.infomaniak.com
-- Généré le :  sam. 05 mars 2022 à 02:26
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

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `pod_cast`
--
ALTER TABLE `pod_cast`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_AE5601493EB8070A` (`program_id`),
  ADD KEY `IDX_AE56014987D2108C` (`time_space_id`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `pod_cast`
--
ALTER TABLE `pod_cast`
  ADD CONSTRAINT `FK_AE5601493EB8070A` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`),
  ADD CONSTRAINT `FK_AE56014987D2108C` FOREIGN KEY (`time_space_id`) REFERENCES `timespaces` (`id`),
  ADD CONSTRAINT `FK_AE560149BF396750` FOREIGN KEY (`id`) REFERENCES `item` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
