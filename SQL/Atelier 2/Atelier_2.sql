-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 25 fév. 2021 à 11:13
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `atelier_2`
--

-- --------------------------------------------------------

--
-- Structure de la table `departments`
--

CREATE TABLE `departments` (
  `Code` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Budget` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `departments`
--

INSERT INTO `departments` (`Code`, `Name`, `Budget`) VALUES
(11, 'Quality Assurance', '40000'),
(14, 'IT', '65000'),
(37, 'Accounting', '15000'),
(59, 'Human Resources', '240000'),
(77, 'Research', '55000');

-- --------------------------------------------------------

--
-- Structure de la table `employees`
--

CREATE TABLE `employees` (
  `SSN` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Department` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `employees`
--

INSERT INTO `employees` (`SSN`, `Name`, `LastName`, `Department`) VALUES
(123234877, 'Michael', 'Rogers', 14),
(152934485, 'Anand', 'Manikutty', 14),
(222364883, 'Carol', 'Smith', 37),
(326587417, 'Joe', 'Stevens', 37),
(332154719, 'Mary-Anne', 'Foster', 14),
(332569843, 'George', 'ODonnell', 77),
(546523478, 'John', 'Doe', 59),
(631231482, 'David', 'Smith', 77),
(654873219, 'Zacary', 'Efron', 59),
(745685214, 'Eric', 'Goldsmith', 59),
(845657245, 'Elizabeth', 'Doe', 14),
(845657246, 'Kumar', 'Swamy', 14);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`Code`);

--
-- Index pour la table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`SSN`),
  ADD KEY `Department` (`Department`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`Department`) REFERENCES `departments` (`Code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
