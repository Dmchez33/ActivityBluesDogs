-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 12 juil. 2022 à 10:09
-- Version du serveur : 10.4.20-MariaDB
-- Version de PHP : 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_odc`
--

-- --------------------------------------------------------

--
-- Structure de la table `activite`
--

CREATE TABLE `activite` (
  `id_Activite` int(11) NOT NULL,
  `date_Activite` date DEFAULT NULL,
  `intitule` varchar(255) NOT NULL,
  `annee` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `activite`
--

INSERT INTO `activite` (`id_Activite`, `date_Activite`, `intitule`, `annee`) VALUES
(1, '2022-06-01', 'DEVELOPPEMENT WEB ET MOBILE FULL STACK', 2022),
(2, '2022-05-01', 'AWS re/Start', 2021),
(3, '2021-12-02', 'Les Directions de Système d’Information face à la transformation numérique', 2021),
(4, '2022-02-10', 'L’Entrepreneuriat innovant en Afrique, cas du Mali', 2022),
(5, '2022-03-28', 'création de site web dynamique avec HTM, CSS et Js', 2022);

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nom_admin` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id_admin`, `nom_admin`) VALUES
(1, 'Ali');

-- --------------------------------------------------------

--
-- Structure de la table `etat`
--

CREATE TABLE `etat` (
  `id_Etat` int(11) NOT NULL,
  `id_Activite` int(11) NOT NULL,
  `statut` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `etat`
--

INSERT INTO `etat` (`id_Etat`, `id_Activite`, `statut`) VALUES
(1, 1, 'Encours'),
(2, 2, 'Encours'),
(3, 3, 'Terminés'),
(4, 4, 'Terminés'),
(5, 5, 'Terminés');

-- --------------------------------------------------------

--
-- Structure de la table `postulant`
--

CREATE TABLE `postulant` (
  `id_postulant` int(11) NOT NULL,
  `Nom` varchar(20) NOT NULL,
  `Prenom` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Numero` varchar(20) NOT NULL,
  `Date_de_naissance` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `postulant`
--

INSERT INTO `postulant` (`id_postulant`, `Nom`, `Prenom`, `Email`, `Numero`, `Date_de_naissance`) VALUES
(1, 'Coulibaly', 'Moussa', 'iddem83@gmail.com', '84234561', '2000-07-03'),
(2, 'Dembele', 'Kadiatou', 'Kali83@gmail.com', '23456798', '1999-06-15'),
(3, 'Traore', 'Lamine', 'laminetraore@gmail.com', '78788903', '1998-02-01'),
(4, 'Kone', 'Aliou', 'konealiou@gmail.com', '89302913', '1996-12-10'),
(5, 'Diarra', 'Fanta', 'fantadiarra@gmail.com', '66789012', '2001-05-23');

-- --------------------------------------------------------

--
-- Structure de la table `postulantactivite`
--

CREATE TABLE `postulantactivite` (
  `id_postulantactivite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `postulantactivite`
--

INSERT INTO `postulantactivite` (`id_postulantactivite`) VALUES
(1),
(2),
(3),
(4),
(5);

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `id_Type` int(11) NOT NULL,
  `id_Activite` int(11) NOT NULL,
  `duree` varchar(50) DEFAULT NULL,
  `nomType` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `type`
--

INSERT INTO `type` (`id_Type`, `id_Activite`, `duree`, `nomType`) VALUES
(1, 1, '6 mois', 'Formation'),
(2, 2, '6 mois', 'Formation'),
(3, 3, '1 Jour', 'Talk'),
(4, 4, '1 Jour', 'Talk'),
(5, 5, '2 Jours', 'Evenement');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `activite`
--
ALTER TABLE `activite`
  ADD PRIMARY KEY (`id_Activite`);

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Index pour la table `etat`
--
ALTER TABLE `etat`
  ADD PRIMARY KEY (`id_Etat`),
  ADD KEY `PK_EA` (`id_Activite`);

--
-- Index pour la table `postulant`
--
ALTER TABLE `postulant`
  ADD PRIMARY KEY (`id_postulant`);

--
-- Index pour la table `postulantactivite`
--
ALTER TABLE `postulantactivite`
  ADD PRIMARY KEY (`id_postulantactivite`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id_Type`),
  ADD KEY `PK_TA` (`id_Activite`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `activite`
--
ALTER TABLE `activite`
  MODIFY `id_Activite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `etat`
--
ALTER TABLE `etat`
  MODIFY `id_Etat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `postulant`
--
ALTER TABLE `postulant`
  MODIFY `id_postulant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `postulantactivite`
--
ALTER TABLE `postulantactivite`
  MODIFY `id_postulantactivite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `type`
--
ALTER TABLE `type`
  MODIFY `id_Type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `etat`
--
ALTER TABLE `etat`
  ADD CONSTRAINT `PK_EA` FOREIGN KEY (`id_Activite`) REFERENCES `activite` (`id_Activite`);

--
-- Contraintes pour la table `postulantactivite`
--
ALTER TABLE `postulantactivite`
  ADD CONSTRAINT `postulantactivite_ibfk_1` FOREIGN KEY (`id_postulantactivite`) REFERENCES `activite` (`id_Activite`),
  ADD CONSTRAINT `postulantactivite_ibfk_2` FOREIGN KEY (`id_postulantactivite`) REFERENCES `postulant` (`id_postulant`);

--
-- Contraintes pour la table `type`
--
ALTER TABLE `type`
  ADD CONSTRAINT `PK_TA` FOREIGN KEY (`id_Activite`) REFERENCES `activite` (`id_Activite`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
