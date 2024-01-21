-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : Dim 21 jan. 2024 à 01:57
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
-- Base de données : `afcon`
--

-- --------------------------------------------------------

--
-- Structure de la table `afcon_2023`
--

CREATE TABLE `afcon_2023` (
  `MatchNumber` varchar(12) DEFAULT NULL,
  `RoundNumber` varchar(12) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Location` varchar(41) DEFAULT NULL,
  `HomeTeam` varchar(17) DEFAULT NULL,
  `AwayTeam` varchar(17) DEFAULT NULL,
  `Group` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `afcon_2023`
--

INSERT INTO `afcon_2023` (`MatchNumber`, `RoundNumber`, `Date`, `Location`, `HomeTeam`, `AwayTeam`, `Group`) VALUES
('1', '1', '2024-01-13 20:00:00', 'Alassane Ouattara Stadium, Abidjan', 'cote d\'Ivoire', 'Guinea-Bissau', 'Group A'),
('2', '1', '2024-01-14 14:00:00', 'Alassane Ouattara Stadium, Abidjan', 'Nigeria', 'Equatorial Guinea', 'Group A'),
('3', '1', '2024-01-14 17:00:00', 'Felix Houphouet Boigny Stadium, Abidjan', 'Egypt', 'Mozambique', 'Group B'),
('4', '1', '2024-01-14 20:00:00', 'Felix Houphouet Boigny Stadium, Abidjan', 'Ghana', 'Cabo Verde', 'Group B'),
('5', '1', '2024-01-15 14:00:00', 'Charles Konan Banny Stadium, Yamoussoukro', 'Senegal', 'Gambia', 'Group C'),
('6', '1', '2024-01-15 17:00:00', 'Charles Konan Banny Stadium, Yamoussoukro', 'Cameroon', 'Guinea', 'Group C'),
('7', '1', '2024-01-15 20:00:00', 'Stade de la Paix, Bouaké', 'Algeria', 'Angola', 'Group D'),
('8', '1', '2024-01-16 14:00:00', 'Stade de la Paix, Bouaké', 'Burkina Faso', 'Mauritania', 'Group D'),
('9', '1', '2024-01-16 17:00:00', 'Amadou Gon Coulibaly Stadium, Korhogo', 'Tunisia', 'Namibia', 'Group E'),
('10', '1', '2024-01-16 20:00:00', 'Amadou Gon Coulibaly Stadium, Korhogo', 'Mali', 'South Africa', 'Group E'),
('11', '1', '2024-01-17 17:00:00', 'Laurent Pokou Stadium, San Pédro', 'Morocco', 'Tanzania', 'Group F'),
('12', '1', '2024-01-17 20:00:00', 'Laurent Pokou Stadium, San Pédro', 'Congo DR', 'Zambia', 'Group F'),
('13', '2', '2024-01-18 14:00:00', 'Alassane Ouattara Stadium, Abidjan', 'Equatorial Guinea', 'Guinea-Bissau', 'Group A'),
('14', '2', '2024-01-18 17:00:00', 'Alassane Ouattara Stadium, Abidjan', 'cote d\'Ivoire', 'Nigeria', 'Group A'),
('15', '2', '2024-01-18 20:00:00', 'Felix Houphouet Boigny Stadium, Abidjan', 'Egypt', 'Ghana', 'Group B'),
('16', '2', '2024-01-19 14:00:00', 'Felix Houphouet Boigny Stadium, Abidjan', 'Cabo Verde', 'Mozambique', 'Group B'),
('17', '2', '2024-01-19 17:00:00', 'Charles Konan Banny Stadium, Yamoussoukro', 'Senegal', 'Cameroon', 'Group C'),
('18', '2', '2024-01-19 20:00:00', 'Charles Konan Banny Stadium, Yamoussoukro', 'Guinea', 'Gambia', 'Group C'),
('19', '2', '2024-01-20 14:00:00', 'Stade de la Paix, Bouaké', 'Algeria', 'Burkina Faso', 'Group D'),
('20', '2', '2024-01-20 17:00:00', 'Stade de la Paix, Bouaké', 'Mauritania', 'Angola', 'Group D'),
('21', '2', '2024-01-20 20:00:00', 'Amadou Gon Coulibaly Stadium, Korhogo', 'Tunisia', 'Mali', 'Group E'),
('23', '2', '2024-01-21 14:00:00', 'Laurent Pokou Stadium, San Pédro', 'Morocco', 'Congo DR', 'Group F'),
('24', '2', '2024-01-21 17:00:00', 'Laurent Pokou Stadium, San Pédro', 'Zambia', 'Tanzania', 'Group F'),
('22', '2', '2024-01-21 20:00:00', 'Amadou Gon Coulibaly Stadium, Korhogo', 'South Africa', 'Namibia', 'Group E'),
('25', '3', '2024-01-22 17:00:00', 'Alassane Ouattara Stadium, Abidjan', 'Equatorial Guinea', 'cote d\'Ivoire', 'Group A'),
('26', '3', '2024-01-22 17:00:00', 'Felix Houphouet Boigny Stadium, Abidjan', 'Guinea-Bissau', 'Nigeria', 'Group A'),
('27', '3', '2024-01-22 20:00:00', 'Charles Konan Banny Stadium, Yamoussoukro', 'Mozambique', 'Ghana', 'Group B'),
('28', '3', '2024-01-22 20:00:00', 'Felix Houphouet Boigny Stadium, Abidjan', 'Cabo Verde', 'Egypt', 'Group B'),
('29', '3', '2024-01-23 17:00:00', 'Charles Konan Banny Stadium, Yamoussoukro', 'Guinea', 'Senegal', 'Group C'),
('30', '3', '2024-01-23 17:00:00', 'Stade de la Paix, Bouaké', 'Gambia', 'Cameroon', 'Group C'),
('31', '3', '2024-01-23 20:00:00', 'Charles Konan Banny Stadium, Yamoussoukro', 'Angola', 'Burkina Faso', 'Group D'),
('32', '3', '2024-01-23 20:00:00', 'Stade de la Paix, Bouaké', 'Mauritania', 'Algeria', 'Group D'),
('33', '3', '2024-01-24 17:00:00', 'Amadou Gon Coulibaly Stadium, Korhogo', 'South Africa', 'Tunisia', 'Group E'),
('34', '3', '2024-01-24 17:00:00', 'Laurent Pokou Stadium, San Pédro', 'Namibia', 'Mali', 'Group E'),
('35', '3', '2024-01-24 20:00:00', 'Amadou Gon Coulibaly Stadium, Korhogo', 'Tanzania', 'Congo DR', 'Group F'),
('36', '3', '2024-01-24 20:00:00', 'Laurent Pokou Stadium, San Pédro', 'Zambia', 'Morocco', 'Group F');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `email`, `username`, `password`) VALUES
(4, 'ousssama', 'chaieb', 'o.c@gmail.com', 'oussama', 'oussama'),
(5, '', '', '', '44444444444', '44444444444');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
