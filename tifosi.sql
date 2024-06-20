-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 20 juin 2024 à 18:27
-- Version du serveur : 8.2.0
-- Version de PHP : 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tifosi`
--

-- --------------------------------------------------------

--
-- Structure de la table `achete`
--

DROP TABLE IF EXISTS `achete`;
CREATE TABLE IF NOT EXISTS `achete` (
  `id_client` int NOT NULL,
  `jour` date NOT NULL,
  `id_focaccia` int NOT NULL,
  PRIMARY KEY (`id_client`,`id_focaccia`),
  KEY `id_focaccia` (`id_focaccia`),
  KEY `id_client` (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `boisson`
--

DROP TABLE IF EXISTS `boisson`;
CREATE TABLE IF NOT EXISTS `boisson` (
  `id_boisson` int NOT NULL AUTO_INCREMENT,
  `nom_boisson` varchar(45) NOT NULL,
  `id_marque` int DEFAULT NULL,
  PRIMARY KEY (`id_boisson`),
  KEY `id_boisson` (`id_boisson`),
  KEY `id_marque` (`id_marque`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id_client` int NOT NULL AUTO_INCREMENT,
  `nom_client` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `age` int DEFAULT NULL,
  `cp_client` int DEFAULT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `focaccia`
--

DROP TABLE IF EXISTS `focaccia`;
CREATE TABLE IF NOT EXISTS `focaccia` (
  `id_focaccia` int NOT NULL AUTO_INCREMENT,
  `nom_focaccia` varchar(45) NOT NULL,
  `prix_focaccia` float NOT NULL,
  `ingrédient 1` int DEFAULT NULL,
  `ingrédient 2` int DEFAULT NULL,
  `ingrédient 3` int DEFAULT NULL,
  `ingrédient 4` int DEFAULT NULL,
  `ingrédient 5` int DEFAULT NULL,
  `ingrédient 6` int DEFAULT NULL,
  `ingrédient 7` int DEFAULT NULL,
  `ingrédient 8` int DEFAULT NULL,
  `ingrédient 9` int DEFAULT NULL,
  `ingrédient 10` int DEFAULT NULL,
  `ingrédient 11` int DEFAULT NULL,
  `ingrédient 12` int DEFAULT NULL,
  PRIMARY KEY (`id_focaccia`),
  KEY `prix_focaccia` (`prix_focaccia`),
  KEY `ingrédient 2` (`ingrédient 2`),
  KEY `ingrédient 3` (`ingrédient 3`),
  KEY `ingrédient 4` (`ingrédient 4`),
  KEY `ingrédient 5` (`ingrédient 5`),
  KEY `ingrédient 6` (`ingrédient 6`),
  KEY `ingrédient 7` (`ingrédient 7`),
  KEY `ingrédient 8` (`ingrédient 8`),
  KEY `ingrédient 9` (`ingrédient 9`),
  KEY `ingrédient 10` (`ingrédient 10`),
  KEY `ingrédient 11` (`ingrédient 11`),
  KEY `ingrédient 12` (`ingrédient 12`),
  KEY `ingrédient 1` (`ingrédient 1`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ingrédient`
--

DROP TABLE IF EXISTS `ingrédient`;
CREATE TABLE IF NOT EXISTS `ingrédient` (
  `id_ingrédient` int NOT NULL AUTO_INCREMENT,
  `nom_ingrédient` varchar(45) NOT NULL,
  PRIMARY KEY (`id_ingrédient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

DROP TABLE IF EXISTS `marque`;
CREATE TABLE IF NOT EXISTS `marque` (
  `id_marque` int NOT NULL AUTO_INCREMENT,
  `nom_marque` varchar(45) NOT NULL,
  PRIMARY KEY (`id_marque`),
  UNIQUE KEY `nom_marque` (`nom_marque`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id_menu` int NOT NULL AUTO_INCREMENT,
  `nom_menu` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `prix_menu` float DEFAULT NULL,
  `id_boisson` int DEFAULT NULL,
  PRIMARY KEY (`id_menu`),
  KEY `id_boisson` (`id_boisson`),
  KEY `prix_menu` (`prix_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `paye`
--

DROP TABLE IF EXISTS `paye`;
CREATE TABLE IF NOT EXISTS `paye` (
  `id_client` int NOT NULL,
  `jour` date NOT NULL,
  `id_menu` int NOT NULL,
  PRIMARY KEY (`id_client`,`id_menu`),
  KEY `id_menu` (`id_menu`),
  KEY `id_client` (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `achete`
--
ALTER TABLE `achete`
  ADD CONSTRAINT `achete_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `achete_ibfk_2` FOREIGN KEY (`id_focaccia`) REFERENCES `focaccia` (`id_focaccia`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `boisson`
--
ALTER TABLE `boisson`
  ADD CONSTRAINT `boisson_ibfk_1` FOREIGN KEY (`id_marque`) REFERENCES `marque` (`id_marque`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `focaccia`
--
ALTER TABLE `focaccia`
  ADD CONSTRAINT `focaccia_ibfk_1` FOREIGN KEY (`ingrédient 1`) REFERENCES `ingrédient` (`id_ingrédient`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `focaccia_ibfk_10` FOREIGN KEY (`ingrédient 10`) REFERENCES `ingrédient` (`id_ingrédient`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `focaccia_ibfk_11` FOREIGN KEY (`ingrédient 11`) REFERENCES `ingrédient` (`id_ingrédient`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `focaccia_ibfk_12` FOREIGN KEY (`ingrédient 12`) REFERENCES `ingrédient` (`id_ingrédient`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `focaccia_ibfk_2` FOREIGN KEY (`ingrédient 2`) REFERENCES `ingrédient` (`id_ingrédient`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `focaccia_ibfk_3` FOREIGN KEY (`ingrédient 3`) REFERENCES `ingrédient` (`id_ingrédient`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `focaccia_ibfk_4` FOREIGN KEY (`ingrédient 4`) REFERENCES `ingrédient` (`id_ingrédient`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `focaccia_ibfk_5` FOREIGN KEY (`ingrédient 5`) REFERENCES `ingrédient` (`id_ingrédient`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `focaccia_ibfk_6` FOREIGN KEY (`ingrédient 6`) REFERENCES `ingrédient` (`id_ingrédient`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `focaccia_ibfk_7` FOREIGN KEY (`ingrédient 7`) REFERENCES `ingrédient` (`id_ingrédient`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `focaccia_ibfk_8` FOREIGN KEY (`ingrédient 8`) REFERENCES `ingrédient` (`id_ingrédient`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `focaccia_ibfk_9` FOREIGN KEY (`ingrédient 9`) REFERENCES `ingrédient` (`id_ingrédient`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`id_boisson`) REFERENCES `boisson` (`id_boisson`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `menu_ibfk_2` FOREIGN KEY (`prix_menu`) REFERENCES `focaccia` (`prix_focaccia`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `paye`
--
ALTER TABLE `paye`
  ADD CONSTRAINT `paye_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `paye_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
