-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 15, 2024 at 10:19 AM
-- Server version: 10.3.39-MariaDB-0ubuntu0.20.04.2
-- PHP Version: 7.4.3-4ubuntu2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `S224DB_arielcs`
--

-- --------------------------------------------------------

--
-- Table structure for table `biome`
--

CREATE TABLE `biome` (
  `BID` int(11) NOT NULL,
  `Biome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `biome`
--

INSERT INTO `biome` (`BID`, `Biome`) VALUES
(1, 'Grass'),
(2, 'Mountain'),
(3, 'Forest'),
(4, 'Cave'),
(5, 'Ocean'),
(6, 'Snow'),
(7, 'Plains'),
(8, 'Lake'),
(9, 'Special');

-- --------------------------------------------------------

--
-- Table structure for table `eggGroup`
--

CREATE TABLE `eggGroup` (
  `EGID` int(11) NOT NULL,
  `EggGroup` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eggGroup`
--

INSERT INTO `eggGroup` (`EGID`, `EggGroup`) VALUES
(1, 'Monster'),
(2, 'Human Like'),
(3, 'Water'),
(4, 'Bug'),
(5, 'Mineral'),
(6, 'Flying'),
(7, 'Amorphous'),
(8, 'Field'),
(9, 'Grass'),
(10, 'Dragon'),
(11, 'Special');

-- --------------------------------------------------------

--
-- Table structure for table `generation`
--

CREATE TABLE `generation` (
  `GID` int(11) NOT NULL,
  `Generation` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `generation`
--

INSERT INTO `generation` (`GID`, `Generation`) VALUES
(1, 'Generation One'),
(2, 'Generation Two');

-- --------------------------------------------------------

--
-- Table structure for table `pokedex_number`
--

CREATE TABLE `pokedex_number` (
  `PNID` int(11) NOT NULL,
  `Pokedex_Number` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pokedex_number`
--

INSERT INTO `pokedex_number` (`PNID`, `Pokedex_Number`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31),
(32, 32),
(33, 33),
(34, 34),
(35, 35),
(36, 36),
(37, 37),
(38, 38),
(39, 39),
(40, 40),
(41, 41),
(42, 42),
(43, 43),
(44, 44),
(45, 45),
(46, 46),
(47, 47),
(48, 48),
(49, 49),
(50, 50),
(51, 51),
(52, 152),
(53, 153),
(54, 154),
(55, 155),
(56, 156),
(57, 157),
(58, 158),
(59, 159),
(60, 160),
(61, 161),
(62, 162),
(63, 163),
(64, 164),
(65, 165),
(66, 166),
(67, 167),
(68, 168),
(69, 169),
(70, 170),
(71, 171),
(72, 172),
(73, 173),
(74, 174),
(75, 175),
(76, 176),
(77, 177),
(78, 178),
(79, 179),
(80, 180),
(81, 181),
(82, 182),
(83, 183),
(84, 184),
(85, 185),
(86, 186),
(87, 187),
(88, 188),
(89, 189),
(90, 190),
(91, 191),
(92, 192),
(93, 193),
(94, 194),
(95, 195),
(96, 196),
(97, 197),
(98, 198),
(99, 199),
(100, 200);

-- --------------------------------------------------------

--
-- Table structure for table `pokemon`
--

CREATE TABLE `pokemon` (
  `PID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Generation` int(1) NOT NULL,
  `Pokedex_Number` int(255) NOT NULL,
  `Region_ID` int(11) NOT NULL,
  `Biome_ID` int(11) NOT NULL,
  `Type_ID` int(100) NOT NULL,
  `EggGroup_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pokemon`
--

INSERT INTO `pokemon` (`PID`, `Name`, `Generation`, `Pokedex_Number`, `Region_ID`, `Biome_ID`, `Type_ID`, `EggGroup_ID`) VALUES
(1, 'Bulbasaur', 1, 1, 1, 9, 18, 9),
(2, 'Ivysaur', 1, 2, 1, 9, 18, 9),
(3, 'Venusaur', 1, 3, 1, 9, 18, 9),
(4, 'Charmander', 1, 4, 1, 9, 2, 10),
(5, 'Charmeleon	', 1, 5, 1, 9, 2, 10),
(6, 'Charizard', 1, 6, 1, 9, 19, 10),
(7, 'Squirtle', 1, 7, 1, 9, 3, 3),
(8, 'Wartortle', 1, 8, 1, 9, 3, 3),
(9, 'Blastoise', 1, 9, 1, 9, 3, 3),
(10, 'Caterpie', 1, 10, 1, 1, 12, 4),
(11, 'Metapod', 1, 11, 1, 1, 12, 4),
(12, 'Butterfree', 1, 12, 1, 1, 20, 4),
(13, 'Weedle', 1, 13, 1, 1, 21, 4),
(14, 'Kakuna', 1, 14, 1, 1, 21, 4),
(15, 'Beedrill', 1, 15, 1, 1, 21, 4),
(16, 'Pidgey', 1, 16, 1, 1, 22, 6),
(17, 'Pidgeotto', 1, 17, 1, 1, 22, 6),
(18, 'Pidgeot', 1, 18, 1, 1, 22, 6),
(19, 'Rattata', 1, 19, 1, 1, 1, 8),
(20, 'Raticate', 1, 20, 1, 1, 1, 8),
(21, 'Spearow', 1, 21, 1, 3, 22, 6),
(22, 'Fearow', 1, 22, 1, 3, 22, 6),
(23, 'Ekans', 1, 23, 1, 4, 8, 1),
(24, 'Arbok', 1, 24, 1, 4, 8, 1),
(25, 'Pikachu', 1, 25, 1, 9, 4, 11),
(26, 'Raichu', 1, 26, 1, 9, 4, 11),
(27, 'Sandshrew', 1, 27, 1, 2, 9, 8),
(28, 'Sandslash', 1, 28, 1, 2, 9, 8),
(29, 'Nidoran/Female', 1, 29, 1, 1, 8, 8),
(30, 'Nidorina', 1, 30, 1, 3, 8, 8),
(31, 'Nidoqueen', 1, 31, 1, 3, 23, 8),
(32, 'Nidoran/Male', 1, 32, 1, 3, 8, 8),
(33, 'Nidorino', 1, 33, 1, 3, 8, 8),
(34, 'Nidoking', 1, 34, 1, 3, 23, 8),
(35, 'Clefairy', 1, 35, 1, 2, 1, 11),
(36, 'Clefable', 1, 36, 1, 2, 1, 11),
(37, 'Vulpix', 1, 37, 1, 9, 2, 8),
(38, 'Ninetales', 1, 38, 1, 9, 2, 8),
(39, 'Jigglypuff', 1, 39, 1, 3, 1, 1),
(40, 'Wigglytuff', 1, 40, 1, 3, 1, 1),
(41, 'Zubat', 1, 41, 1, 4, 24, 6),
(42, 'Golbat', 1, 42, 1, 4, 24, 6),
(43, 'Oddish', 1, 43, 1, 1, 18, 9),
(44, 'Gloom', 1, 44, 1, 1, 18, 9),
(45, 'Vileplume', 1, 45, 1, 1, 18, 9),
(46, 'Paras', 1, 46, 1, 1, 25, 9),
(47, 'Parasect', 1, 46, 1, 1, 25, 9),
(48, 'Venonat', 1, 48, 1, 3, 21, 4),
(49, 'Venomoth', 1, 49, 1, 3, 21, 4),
(50, 'Diglett', 1, 50, 1, 4, 9, 1),
(51, 'Diglett', 1, 51, 1, 4, 9, 1),
(52, 'Chikorita', 2, 152, 2, 9, 5, 11),
(53, 'Bayleef', 2, 153, 2, 9, 5, 11),
(54, 'Meganium', 2, 154, 2, 9, 5, 11),
(55, 'Cyndaquil', 2, 155, 2, 9, 2, 11),
(56, 'Quilava', 2, 156, 2, 9, 2, 11),
(57, 'Typhlosion', 2, 157, 2, 9, 2, 11),
(58, 'Totodile', 2, 158, 2, 9, 3, 11),
(59, 'Croconaw', 2, 159, 2, 9, 3, 11),
(60, 'Feraligatr', 2, 160, 2, 9, 3, 11),
(61, 'Sentret', 2, 161, 2, 3, 1, 1),
(62, 'Furret', 2, 162, 2, 3, 1, 1),
(63, 'Hoothoot', 2, 163, 2, 3, 22, 6),
(64, 'Noctowl', 2, 164, 2, 3, 22, 6),
(65, 'Ledyba', 2, 165, 2, 3, 20, 4),
(66, 'Ledian', 2, 166, 2, 3, 20, 4),
(67, 'Spinarak', 2, 167, 2, 3, 21, 4),
(68, 'Ariados', 2, 168, 2, 3, 21, 4),
(69, 'Crobat', 2, 169, 2, 4, 24, 6),
(70, 'Chinchou', 2, 170, 2, 5, 42, 3),
(71, 'Lanturn', 2, 171, 2, 5, 42, 3),
(72, 'Pichu', 2, 172, 2, 1, 4, 1),
(73, 'Cleffa', 2, 173, 2, 1, 1, 1),
(74, 'Igglybuff', 2, 174, 2, 3, 1, 1),
(75, 'Togepi', 2, 175, 2, 9, 1, 11),
(76, 'Togetic', 2, 176, 2, 9, 10, 11),
(77, 'Natu', 2, 177, 2, 9, 43, 6),
(78, 'Xatu', 2, 178, 2, 9, 43, 6),
(79, 'Mareep', 2, 179, 2, 7, 4, 8),
(80, 'Flaaffy', 2, 180, 2, 7, 4, 8),
(81, 'Ampharos', 2, 181, 2, 7, 4, 8),
(82, 'Bellossom	', 2, 182, 2, 1, 5, 9),
(83, 'Marill', 2, 183, 2, 5, 3, 3),
(84, 'Azumarill', 2, 184, 2, 5, 3, 3),
(85, 'Sudowoodo', 2, 185, 2, 3, 13, 2),
(86, 'Politoed', 2, 186, 2, 9, 3, 11),
(87, 'Hoppip', 2, 187, 2, 1, 59, 9),
(88, 'Skiploom', 2, 188, 2, 1, 59, 9),
(89, 'Jumpluff', 2, 189, 2, 1, 59, 9),
(90, 'Aipom', 2, 190, 2, 3, 1, 1),
(91, 'Aipom', 2, 191, 2, 7, 5, 9),
(92, 'Sunflora', 2, 192, 2, 7, 5, 9),
(93, 'Yanma', 2, 193, 2, 3, 20, 4),
(94, 'Wooper', 2, 194, 2, 5, 44, 3),
(95, 'Quagsire', 2, 195, 2, 5, 44, 3),
(96, 'Espeon', 2, 196, 2, 9, 11, 11),
(98, 'Umbreon', 2, 197, 2, 9, 16, 11),
(99, 'Murkrow', 2, 198, 2, 3, 45, 6),
(100, 'Slowking', 2, 199, 2, 9, 30, 11),
(101, 'Misdreavus', 2, 200, 2, 2, 14, 7);

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `RID` int(11) NOT NULL,
  `Region` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`RID`, `Region`) VALUES
(1, 'Kanto'),
(2, 'Johto');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `TID` int(70) NOT NULL,
  `Type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`TID`, `Type`) VALUES
(1, 'Normal'),
(2, 'Fire'),
(3, 'Water'),
(4, 'Electric'),
(5, 'Grass'),
(6, 'Ice'),
(7, 'Fighting'),
(8, 'Poison'),
(9, 'Ground'),
(10, 'Flying'),
(11, 'Psychic'),
(12, 'Bug'),
(13, 'Rock'),
(14, 'Ghost'),
(15, 'Dragon'),
(16, 'Dark'),
(17, 'Steel'),
(18, 'Grass/Poison'),
(19, 'Fire/Flying'),
(20, 'Bug/Flying'),
(21, 'Bug/Poison'),
(22, 'Normal/Flying'),
(23, 'Poison/Ground'),
(24, 'Poison/Flying'),
(25, 'Bug/Grass'),
(26, 'Bug/Poison'),
(27, 'Water/Fighting'),
(28, 'Water/Poison'),
(29, 'Rock/Ground'),
(30, 'Water/Psychic'),
(31, 'Electric/Steel'),
(32, 'Water/Ice'),
(33, 'Ghost/Poison'),
(34, 'Grass/Psychic'),
(35, 'Ice/Psychic'),
(36, 'Water/Flying'),
(37, 'Rock/Water'),
(38, 'Rock/Flying'),
(39, 'Ice/Flying'),
(40, 'Electric/Flying'),
(41, 'Dragon/Flying'),
(42, 'Water/Electric'),
(43, 'Psychic/Flying'),
(44, 'Water/Ground'),
(45, 'Dark/Flying'),
(46, 'Normal/Psychic'),
(47, 'Bug/Steel'),
(48, 'Ground/Flying'),
(49, 'Steel/Ground'),
(50, 'Bug/Rock'),
(51, 'Bug/Fighting'),
(52, 'Dark/Ice'),
(53, 'Fire/Rock'),
(54, 'Ice/Ground'),
(55, 'Steel/Flying'),
(56, 'Dark/Fire'),
(57, 'Water/Dragon'),
(58, 'Rock/Dark'),
(59, 'Grass/Flying');

-- --------------------------------------------------------

--
-- Table structure for table `typeAdvantage`
--

CREATE TABLE `typeAdvantage` (
  `Type` int(100) NOT NULL,
  `Advantage` varchar(50) NOT NULL,
  `Disadvantage` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `typeAdvantage`
--

INSERT INTO `typeAdvantage` (`Type`, `Advantage`, `Disadvantage`) VALUES
(1, 'None', 'Fighting/Ghost'),
(2, 'Grass/Ice', 'Water/Ground'),
(3, 'Fire/Ground', 'Electric/Grass'),
(4, 'Water/Flying', 'Ground'),
(5, 'Ground/Rock', 'Fire/Poison'),
(6, 'Grass/Dragon', 'Fighting/Steel'),
(7, 'Normal/Rock', 'Flying/Psychic'),
(8, 'Grass', 'Ground/Psychic'),
(9, 'Fire/Electric', 'Water/Grass'),
(10, 'Grass/Fighting', 'Electric/Rock'),
(11, 'Fighting/Poison', 'Ghost/Dark'),
(12, 'Grass/Dark', 'Fire/Rock'),
(13, 'Fire/Bug', 'Fighting/Dark'),
(14, 'Normal/Psychic', 'Ghost/Dark'),
(15, 'Dragon', 'Ice/Dragon'),
(16, 'Psychic/Ghost', 'Fighting/Bug'),
(17, 'Ice/Rock', 'Fighting/Ground');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biome`
--
ALTER TABLE `biome`
  ADD PRIMARY KEY (`BID`);

--
-- Indexes for table `eggGroup`
--
ALTER TABLE `eggGroup`
  ADD PRIMARY KEY (`EGID`);

--
-- Indexes for table `generation`
--
ALTER TABLE `generation`
  ADD PRIMARY KEY (`GID`);

--
-- Indexes for table `pokedex_number`
--
ALTER TABLE `pokedex_number`
  ADD PRIMARY KEY (`PNID`);

--
-- Indexes for table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`RID`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`TID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biome`
--
ALTER TABLE `biome`
  MODIFY `BID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `eggGroup`
--
ALTER TABLE `eggGroup`
  MODIFY `EGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `generation`
--
ALTER TABLE `generation`
  MODIFY `GID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pokedex_number`
--
ALTER TABLE `pokedex_number`
  MODIFY `PNID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `PID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `RID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `TID` int(70) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
