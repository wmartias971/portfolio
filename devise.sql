-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 26 mars 2025 à 04:04
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `devise`
--

-- --------------------------------------------------------

--
-- Structure de la table `prestations`
--

CREATE TABLE `prestations` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `caracteristiques` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `temps_estime` varchar(50) DEFAULT NULL,
  `prix` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `prestations`
--

INSERT INTO `prestations` (`id`, `nom`, `caracteristiques`, `description`, `temps_estime`, `prix`) VALUES
(1, 'Lavage extérieur', 'Carrosserie, vitres, pare-brise et jantes', 'Prise de rendez-vous nécessaire', '2 heures', 69.00),
(2, 'Lavage intérieur', 'Aspiration, lavage des moquettes et tissus, nettoyage des plastiques', 'Prise de rendez-vous nécessaire', '1 heure', 59.00),
(3, 'Lavage extérieur et intérieur', 'Carrosserie, vitres, pare-brise, jantes, aspiration, lavage moquettes et tissus, nettoyage des plastiques', 'Prise de rendez-vous nécessaire', '3 heures', 109.00),
(4, 'Traitement céramique', 'Protection carrosserie avec traitement céramique', 'Prise de rendez-vous nécessaire. Nécessite un lavage extérieur préalable', '1 heure', 39.00),
(5, 'Lustrage intégral', 'Nourrir le vernis ou la peinture pour un effet brillant, voire miroir', 'Prise de rendez-vous nécessaire. Nécessite un lavage extérieur préalable', '2 heures', 49.00);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `caracteristiques` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `prix` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id`, `nom`, `caracteristiques`, `description`, `prix`) VALUES
(1, 'Coffret lavage normal', 'Bouteille de savon ultra moussant, Éponge désincrustante, Peau de chamois', 'Sous réserve de stock disponible. Pas de livraison possible, passez en magasin.', 12.00),
(2, 'Coffret lavage prémium', 'Bouteille de savon ultra moussant, Éponge désincrustante, Peau de chamois, Pulvérisateur lustrage déperlant, Micro fibre', 'Sous réserve de stock disponible. Pas de livraison possible, passez en magasin.', 21.00),
(3, 'Coffret lavage exclusif', 'Bouteille de savon ultra moussant, Éponge désincrustante, Peau de chamois, Pulvérisateur lustrage déperlant, Micro fibre, Cire lustrante, Patin d’application de cire', 'Sous réserve de stock disponible. Pas de livraison possible, passez en magasin.', 35.00),
(4, 'Bouteille de savon ultra moussant', 'Savon permettant la décontamination de la carrosserie et la désincrustation de salissures et goudron', 'Sous réserve de stock disponible. Pas de livraison possible, passez en magasin.', 6.90),
(5, 'Pulvérisateur lustrant déperlant', 'Les salissures adhèrent moins à la carrosserie et évitent les traces de calcaire.', 'Sous réserve de stock disponible. Pas de livraison possible, passez en magasin.', 4.90),
(6, 'Cire lustrante', 'S’applique sur une carrosserie sèche et permet une brillance extrême.', 'Sous réserve de stock disponible. Pas de livraison possible, passez en magasin.', 16.90);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `prestations`
--
ALTER TABLE `prestations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `prestations`
--
ALTER TABLE `prestations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
