-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 08 oct. 2025 à 17:54
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bruno_uber`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id_article` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prix` decimal(19,4) DEFAULT NULL,
  `description` text,
  `id_categorie` int(11) NOT NULL,
  PRIMARY KEY (`id_article`),
  KEY `id_categorie` (`id_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id_article`, `nom`, `prix`, `description`, `id_categorie`) VALUES
(1, 'Anchois 23cm', '7.9000', 'sauce tomate premium, origan, huile d\'olive extra vierge, anchois, olive', 1),
(2, 'Anchois 33cm', '11.9000', 'sauce tomate premium, origan, huile d\'olive extra vierge, anchois, olive', 1),
(3, 'Emmental 23cm', '7.9000', 'sauce tomate premium, origan, huile d\'olive extra vierge, emmental, basilic, olive', 1),
(4, 'Emmental 33cm', '11.9000', 'sauce tomate premium, origan, huile d\'olive extra vierge, emmental, basilic, olive', 1),
(5, 'Margherita 23cm', '7.9000', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella', 1),
(6, 'Margherita 33cm', '11.9000', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella', 1),
(7, '3 fromages 23cm', '8.4000', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, emmental, chevre', 1),
(8, '3 fromages 33cm', '12.9000', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, emmental, chevre', 1),
(9, '4 fromages 23cm', '8.9000', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, emmental, chevre, roquefort', 1),
(10, '4 fromages 33cm', '13.9000', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, emmental, chevre, roquefort', 1),
(11, 'Royale 23cm', '8.9000', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, jambon label rouge, champignon brun, olive', 2),
(12, 'Royale 33cm', '13.9000', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, jambon label rouge, champignon brun, olive', 2),
(13, 'Vegetarienne 23cm', '8.9000', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, roquette, oignon rouge, poivron, champignon brun, olive', 2),
(14, 'Vegetarienne 33cm', '13.9000', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, roquette, oignon rouge, poivron, champignon brun, olive', 2),
(15, 'Provencale 23cm', '8.9000', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, filets de poulet rôti, oignon rouge, poivron, olive', 2),
(16, 'Provencale 33cm', '13.9000', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, filets de poulet rôti, oignon rouge, poivron, olive', 2),
(17, 'Espagnol 23cm', '8.9000', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, chorizo de León, poivron, olive', 2),
(18, 'Espagnol 33cm', '13.9000', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, chorizo de León, poivron, olive', 2),
(19, 'Italienne 23cm', '10.4000', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, jambon cru IGP, roquette, parmigiano reggiano, olive', 2),
(20, 'Italienne 33cm', '16.9000', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, jambon cru IGP, roquette, parmigiano reggiano, olive', 2),
(21, 'Armenienne 23cm', '8.9000', 'sauce crème fraîche premium, mozzarella, viande hachée 100% pur bœuf, oignon rouge, olive', 3),
(22, 'Armenienne 33cm', '13.9000', 'sauce crème fraîche premium, mozzarella, viande hachée 100% pur bœuf, oignon rouge, olive', 3),
(23, 'White royale 23cm', '8.9000', 'sauce crème fraîche premium, mozzarella, jambon label rouge, champignon brun, olive', 3),
(24, 'White royale 33cm', '13.9000', 'sauce crème fraîche premium, mozzarella, jambon label rouge, champignon brun, olive', 3),
(25, 'Chevre miel 23cm', '8.9000', 'sauce crème fraîche premium, mozzarella, chevre, miel, olive', 3),
(26, 'Chevre miel 33cm', '13.9000', 'sauce crème fraîche premium, mozzarella, chevre, miel, olive', 3),
(27, 'Tiramisu', '3.9000', 'boudoirs imbibés ou non de café, mascarpone, œufs, sucre, arôme vanille, cacao en poudre', 4),
(28, 'Gourmande', '6.9000', 'nutella, avec une glace noix de coco râpé ou chocolat, supplément fruits frais possible', 4),
(29, 'Eaux', '1.9000', 'eaux cristalline, san pellegrino, badoit', 5),
(30, 'Soda 33cl', '1.9000', 'coca original, zero, cherry', 5),
(31, 'Soda 1L+', '3.0000', 'coca, icetea, orangina, sprite, oasis', 5),
(32, 'Biere', '3.5000', 'desperados, heineken', 5),
(33, 'Vin AOP 25cl', '4.9000', 'rouge, rose', 5),
(34, 'Vin AOP 50cl', '7.5000', 'rouge, rose', 5);

-- --------------------------------------------------------

--
-- Structure de la table `assoc_article_commande`
--

DROP TABLE IF EXISTS `assoc_article_commande`;
CREATE TABLE IF NOT EXISTS `assoc_article_commande` (
  `id_article` int(11) NOT NULL,
  `id_commande` int(11) NOT NULL,
  `quantite_article` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id_article`,`id_commande`),
  KEY `id_commande` (`id_commande`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `assoc_article_commande`
--

INSERT INTO `assoc_article_commande` (`id_article`, `id_commande`, `quantite_article`) VALUES
(1, 1, '1.00'),
(1, 2, '1.00'),
(1, 3, '3.00'),
(1, 4, '2.00'),
(3, 2, '1.00'),
(3, 4, '1.00'),
(5, 2, '1.00'),
(5, 4, '2.00'),
(7, 5, '1.00'),
(27, 5, '1.00'),
(33, 5, '1.00');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id_categorie` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  PRIMARY KEY (`id_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id_categorie`, `nom`) VALUES
(1, 'classic'),
(2, 'tradition'),
(3, 'creme'),
(4, 'dessert maison'),
(5, 'boisson');

-- --------------------------------------------------------

--
-- Structure de la table `chauffeur`
--

DROP TABLE IF EXISTS `chauffeur`;
CREATE TABLE IF NOT EXISTS `chauffeur` (
  `chauffeur_id` int(11) NOT NULL,
  `chauffeur_nom` varchar(50) DEFAULT NULL,
  `chauffeur_telephone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`chauffeur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `chauffeur`
--

INSERT INTO `chauffeur` (`chauffeur_id`, `chauffeur_nom`, `chauffeur_telephone`) VALUES
(1, 'Ali Karim', '0600000001'),
(2, 'Sarah Leïla', '0600000002'),
(3, 'Julien Moreau', '0600000003'),
(4, 'Lina Kassem', '0600000004'),
(5, 'Marc N’Guessan', '0600000005');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `client_id` int(11) NOT NULL,
  `client_nom` varchar(50) DEFAULT NULL,
  `client_telephone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`client_id`, `client_nom`, `client_telephone`) VALUES
(1, 'Jean Dubois', '0700000001'),
(2, 'Emma Lemoine', '0700000002'),
(3, 'Sophie Martin', '0700000003'),
(4, 'Youssef Amar', '0700000004'),
(5, 'Carla Ruiz', '0700000005');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `id_commande` int(11) NOT NULL,
  `date_commande` datetime DEFAULT NULL,
  `prix_total` double DEFAULT NULL,
  `etat` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_commande`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id_commande`, `date_commande`, `prix_total`, `etat`) VALUES
(1, '2024-10-25 00:00:00', 7.9, 'en cours'),
(2, '2024-10-25 00:00:00', 23.2, 'en cours'),
(3, '2024-10-25 00:00:00', 23.7, 'en cours'),
(4, '2024-10-25 00:00:00', 34.2, 'en cours'),
(5, '2024-10-25 00:00:00', 17.7, 'en cours');

-- --------------------------------------------------------

--
-- Structure de la table `possede`
--

DROP TABLE IF EXISTS `possede`;
CREATE TABLE IF NOT EXISTS `possede` (
  `client_id` int(11) NOT NULL,
  `trajet_id` int(11) NOT NULL,
  PRIMARY KEY (`client_id`,`trajet_id`),
  KEY `trajet_id` (`trajet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `possede`
--

INSERT INTO `possede` (`client_id`, `trajet_id`) VALUES
(1, 1),
(2, 1),
(3, 2),
(2, 3),
(4, 3),
(5, 4),
(1, 5);

-- --------------------------------------------------------

--
-- Structure de la table `trajet`
--

DROP TABLE IF EXISTS `trajet`;
CREATE TABLE IF NOT EXISTS `trajet` (
  `trajet_id` int(11) NOT NULL,
  `trajet_date_et_heure` datetime DEFAULT NULL,
  `chauffeur_id` int(11) NOT NULL,
  PRIMARY KEY (`trajet_id`),
  KEY `chauffeur_id` (`chauffeur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `trajet`
--

INSERT INTO `trajet` (`trajet_id`, `trajet_date_et_heure`, `chauffeur_id`) VALUES
(1, '2025-06-13 09:00:00', 1),
(2, '2025-06-14 14:30:00', 1),
(3, '2025-06-14 08:15:00', 3),
(4, '2025-06-14 12:45:00', 4),
(5, '2025-06-15 10:00:00', 5);

-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

DROP TABLE IF EXISTS `voiture`;
CREATE TABLE IF NOT EXISTS `voiture` (
  `voiture_id` int(11) NOT NULL,
  `voiture_marque` varchar(50) DEFAULT NULL,
  `voiture_modele` varchar(50) DEFAULT NULL,
  `voiture_immatriculation` varchar(50) DEFAULT NULL,
  `chauffeur_id` int(11) NOT NULL,
  PRIMARY KEY (`voiture_id`),
  KEY `chauffeur_id` (`chauffeur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `voiture`
--

INSERT INTO `voiture` (`voiture_id`, `voiture_marque`, `voiture_modele`, `voiture_immatriculation`, `chauffeur_id`) VALUES
(1, 'Tesla', 'Model 3', 'AB-123-CD', 1),
(2, 'Renault', 'Zoé', 'CD-456-EF', 1),
(3, 'Peugeot', '208', 'EF-789-GH', 2),
(4, 'Dacia', 'Spring', 'GH-321-RT', 3),
(5, 'Volkswagen', 'ID.3', 'JK-852-LM', 4);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id_categorie`);

--
-- Contraintes pour la table `assoc_article_commande`
--
ALTER TABLE `assoc_article_commande`
  ADD CONSTRAINT `assoc_article_commande_ibfk_1` FOREIGN KEY (`id_article`) REFERENCES `article` (`id_article`),
  ADD CONSTRAINT `assoc_article_commande_ibfk_2` FOREIGN KEY (`id_commande`) REFERENCES `commande` (`id_commande`);

--
-- Contraintes pour la table `possede`
--
ALTER TABLE `possede`
  ADD CONSTRAINT `possede_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`),
  ADD CONSTRAINT `possede_ibfk_2` FOREIGN KEY (`trajet_id`) REFERENCES `trajet` (`trajet_id`);

--
-- Contraintes pour la table `trajet`
--
ALTER TABLE `trajet`
  ADD CONSTRAINT `trajet_ibfk_1` FOREIGN KEY (`chauffeur_id`) REFERENCES `chauffeur` (`chauffeur_id`);

--
-- Contraintes pour la table `voiture`
--
ALTER TABLE `voiture`
  ADD CONSTRAINT `voiture_ibfk_1` FOREIGN KEY (`chauffeur_id`) REFERENCES `chauffeur` (`chauffeur_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
