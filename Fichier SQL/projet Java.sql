-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : Dim 14 fév. 2021 à 17:21
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projet`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `Num_Abonne` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(40) NOT NULL,
  `Nom` varchar(20) NOT NULL,
  `motdepasse` varchar(20) NOT NULL,
  `Statut` varchar(12) NOT NULL,
  `Prenom` varchar(15) NOT NULL,
  PRIMARY KEY (`Num_Abonne`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `emprunts`
--

DROP TABLE IF EXISTS `emprunts`;
CREATE TABLE IF NOT EXISTS `emprunts` (
  `idexemplaire` int(10) NOT NULL,
  `date_emprunt` date NOT NULL,
  `date_retour` date DEFAULT NULL,
  `Livre_retourne` tinyint(1) DEFAULT NULL,
  `Num_ab` int(11) NOT NULL,
  PRIMARY KEY (`date_emprunt`,`idexemplaire`,`Num_ab`),
  KEY `FK3` (`Num_ab`),
  KEY `FK5` (`idexemplaire`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `exemplaire`
--

DROP TABLE IF EXISTS `exemplaire`;
CREATE TABLE IF NOT EXISTS `exemplaire` (
  `id_exp` int(6) NOT NULL AUTO_INCREMENT,
  `id_livre` int(4) NOT NULL,
  PRIMARY KEY (`id_exp`),
  KEY `FK1` (`id_livre`)
) ENGINE=MyISAM AUTO_INCREMENT=1031 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

DROP TABLE IF EXISTS `livre`;
CREATE TABLE IF NOT EXISTS `livre` (
  `IDlivre` int(4) NOT NULL,
  `nisbn` varchar(10) NOT NULL,
  `titre` varchar(25) NOT NULL,
  `auteur` varchar(35) NOT NULL,
  `quantite` int(5) NOT NULL,
  PRIMARY KEY (`IDlivre`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
