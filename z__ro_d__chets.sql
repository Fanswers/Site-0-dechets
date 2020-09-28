-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 28 sep. 2020 à 09:36
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `zéro_déchets`
--

-- --------------------------------------------------------

--
-- Structure de la table `actualites`
--

CREATE TABLE `actualites` (
  `id_actu` int(100) NOT NULL,
  `id_img` int(100) NOT NULL,
  `id_commerce` int(100) NOT NULL,
  `date` varchar(30) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `commerce`
--

CREATE TABLE `commerce` (
  `id_commerce` int(100) NOT NULL,
  `id_utilisateur` int(100) NOT NULL,
  `proprietaire` varchar(40) NOT NULL,
  `nom_commerce` varchar(40) DEFAULT NULL,
  `region` varchar(40) NOT NULL DEFAULT 'Région',
  `departement` varchar(40) NOT NULL DEFAULT 'Département',
  `ville` varchar(40) NOT NULL DEFAULT 'Ville',
  `rue` varchar(40) NOT NULL DEFAULT 'Rue',
  `numero` int(40) NOT NULL,
  `telephone` int(10) NOT NULL,
  `email` varchar(100) NOT NULL DEFAULT 'E-mail'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

CREATE TABLE `images` (
  `id_img` int(100) NOT NULL,
  `image` text NOT NULL,
  `id_utilisateur` text NOT NULL,
  `id_commerce` text NOT NULL,
  `id_actualite` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id_utilisateur` int(4) NOT NULL,
  `id_img` int(11) NOT NULL,
  `id_commerce` int(11) NOT NULL,
  `nom` varchar(40) NOT NULL DEFAULT 'Nom',
  `prenom` varchar(40) NOT NULL DEFAULT 'Prénom',
  `prenom2` varchar(40) DEFAULT NULL,
  `prenom3` varchar(40) DEFAULT NULL,
  `prenom4` varchar(40) DEFAULT NULL,
  `prenom5` varchar(40) DEFAULT NULL,
  `typecompte` int(1) NOT NULL DEFAULT 0 COMMENT '0 pour utilisateur, 1 pour commerçant et 2 pour admin',
  `telephone` int(10) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `adresse` varchar(150) NOT NULL DEFAULT 'Adresse',
  `nom_commerce` varchar(40) NOT NULL DEFAULT 'Nom de commerce',
  `mdp` varchar(30) NOT NULL DEFAULT 'Example: !Azerty123',
  `pfp` varchar(40) DEFAULT NULL COMMENT 'lien vers le storage de l''image.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `actualites`
--
ALTER TABLE `actualites`
  ADD PRIMARY KEY (`id_actu`);

--
-- Index pour la table `commerce`
--
ALTER TABLE `commerce`
  ADD PRIMARY KEY (`id_commerce`);

--
-- Index pour la table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id_img`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id_utilisateur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `actualites`
--
ALTER TABLE `actualites`
  MODIFY `id_actu` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commerce`
--
ALTER TABLE `commerce`
  MODIFY `id_commerce` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `images`
--
ALTER TABLE `images`
  MODIFY `id_img` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id_utilisateur` int(4) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
