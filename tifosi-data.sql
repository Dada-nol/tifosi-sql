-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 20 juin 2024 à 18:28
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

--
-- Déchargement des données de la table `achete`
--

INSERT INTO `achete` (`id_client`, `jour`, `id_focaccia`) VALUES
(1, '2024-06-18', 2),
(2, '2024-06-18', 6),
(3, '2024-06-18', 1);

--
-- Déchargement des données de la table `boisson`
--

INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES
(1, 'Coca-cola zéro', 1),
(2, 'Coca-cola original', 1),
(3, 'Fanta citron', 1),
(4, 'Fanta orange', 1),
(5, 'Capri-sun', 1),
(6, 'Pepsi', 4),
(7, 'Pepsi Max Zéro', 4),
(8, 'Lipton zéro citron ', 4),
(9, 'Lipton Peach', 4),
(10, 'Monster energy ultra gild', 3),
(11, 'Monster energy ultra blue', 3),
(12, 'Eau de source', 2);

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `nom_client`, `age`, `cp_client`) VALUES
(1, 'Jhon Doe', 18, 4),
(2, 'Maria', 18, 50),
(3, 'Victor', 18, 60);

--
-- Déchargement des données de la table `focaccia`
--

INSERT INTO `focaccia` (`id_focaccia`, `nom_focaccia`, `prix_focaccia`, `ingrédient 1`, `ingrédient 2`, `ingrédient 3`, `ingrédient 4`, `ingrédient 5`, `ingrédient 6`, `ingrédient 7`, `ingrédient 8`, `ingrédient 9`, `ingrédient 10`, `ingrédient 11`, `ingrédient 12`) VALUES
(1, 'Mozaccia', 9.8, 5, 9, 13, 1, 3, 7, 18, 20, 16, NULL, NULL, NULL),
(2, 'Gorgonzollacia', 10.8, 5, 11, 9, 1, 7, 18, 20, 16, NULL, NULL, NULL, NULL),
(3, 'Raclaccia', 8.9, 5, 22, 9, 1, 7, 18, 20, NULL, NULL, NULL, NULL, NULL),
(4, 'Emmentalaccia', 9.8, 6, 10, 9, 7, 18, 20, 15, NULL, NULL, NULL, NULL, NULL),
(5, 'Tradizione', 8.9, 5, 9, 12, 7, 18, 20, 16, 17, NULL, NULL, NULL, NULL),
(6, 'Hawaienne', 11.2, 5, 9, 4, 2, 19, 18, 20, 16, NULL, NULL, NULL, NULL),
(7, 'Américaine', 10.8, 5, 9, 4, 21, 18, 20, 16, NULL, NULL, NULL, NULL, NULL),
(8, 'Paysanne', 12.8, 6, 8, 9, 21, 13, 1, 3, 7, 18, 20, 16, 14);

--
-- Déchargement des données de la table `ingrédient`
--

INSERT INTO `ingrédient` (`id_ingrédient`, `nom_ingrédient`) VALUES
(1, 'Ail'),
(2, 'Ananas'),
(3, 'Artichaut'),
(4, 'Bacon'),
(5, 'Base Tomate'),
(6, 'Base crème'),
(7, 'Champignon'),
(8, 'Chevre'),
(9, 'Cresson'),
(10, 'Emmental'),
(11, 'Gorgonzola'),
(12, 'Jambon cuit'),
(13, 'Jambon fumé'),
(14, 'Oeuf'),
(15, 'Oignon'),
(16, 'Olive noire'),
(17, 'Olive verte'),
(18, 'Parmesan'),
(19, 'Piment'),
(20, 'Poivre'),
(21, 'Pomme de terre'),
(22, 'Raclette'),
(23, 'Salami'),
(24, 'Tomate cerise');

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`id_marque`, `nom_marque`) VALUES
(1, 'Coca-cola'),
(2, 'Cristalline'),
(3, 'Monster'),
(4, 'Pepsico');

--
-- Déchargement des données de la table `menu`
--

INSERT INTO `menu` (`id_menu`, `nom_menu`, `prix_menu`, `id_boisson`) VALUES
(1, NULL, 10.8, 9),
(2, NULL, 9.8, 1),
(3, NULL, 11.2, 2);

--
-- Déchargement des données de la table `paye`
--

INSERT INTO `paye` (`id_client`, `jour`, `id_menu`) VALUES
(1, '2024-06-17', 1),
(2, '2024-06-17', 1),
(3, '2024-06-17', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
