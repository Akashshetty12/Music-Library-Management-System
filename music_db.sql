-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2022 at 04:52 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `albumID` int(11) NOT NULL,
  `albumTitle` varchar(72) NOT NULL,
  `artistID` int(11) NOT NULL,
  `genreName` varchar(72) NOT NULL,
  `tracks` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`albumID`, `albumTitle`, `artistID`, `genreName`, `tracks`, `duration`, `year`) VALUES
(201, 'Whatever', 1, 'DANCE', 13, 3750, 2014),
(202, '1977-10-29 - Evans Field House', 2, 'Rock', 15, 2784, 2018),
(203, 'Nostalgia, Ultra.', 3, 'R&B', 14, 2207, 2011),
(204, 'SOME OTHER ONES', 4, 'Indie Rock', 14, 3992, 2015),
(205, 'Shelter', 5, 'Pop', 15, 5771, 2010),
(206, 'Midnight', 1, 'Pop', 15, 5771, 2022),
(207, 'Miss Matched', 2, 'Dance', 14, 5771, 2020),
(208, 'Proof', 3, 'Dance', 13, 5771, 2021),
(209, 'ABCD2', 4, 'Dance', 14, 5771, 2021);

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `artistID` int(11) NOT NULL,
  `artistName` varchar(72) DEFAULT NULL,
  `Description` varchar(72) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`artistID`, `artistName`, `Description`) VALUES
(1, 'Weeknd', 'Abel Makkonen Tesfaye, aka Weeknd, is a Canadian singer and songwriter'),
(2, 'Green Day', 'Green Day is an American band formed in California in 1987'),
(3, 'R3HAB', 'Fadil El Ghoul, aka R3hab, is a Moroccan Dutch DJ'),
(4, 'Coldplay', 'Coldplay are a British rock band formed in London in 1996.'),
(5, 'Porter Robinson', 'Porter Weston Robinson is an American DJ, musician, and singer');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `songName` varchar(72) NOT NULL,
  `artistName` varchar(72) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`songName`, `artistName`) VALUES
('Faded', 'Alan Walker'),
('suna hai', 'arijit singh'),
('Vaaste', 'Dhvani Bhanushali'),
('cartoon -on and on', 'Daniel Levi');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genreName` varchar(72) NOT NULL,
  `description` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genreName`, `description`) VALUES
('DANCE', 'broad range of electronic music made for nightclubs, and festivals'),
('Indie Rock', 'independent record labels, used interchangeably with alternative rock'),
('Pop', 'Describes all music that is popular and includes many styles'),
('R&B', 'soul and funk-influenced pop music originated as disco music'),
('Rock', 'music centered on the electric guitar, with electric bass and drums');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `playlistID` int(11) NOT NULL,
  `playlistName` varchar(72) DEFAULT NULL,
  `tracks` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`playlistID`, `playlistName`, `tracks`, `duration`) VALUES
(1, 'PL1', 0, 0),
(2, 'PL2', 0, 0),
(3, 'PL3', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `songfile`
--

CREATE TABLE `songfile` (
  `songID` int(11) NOT NULL,
  `songTitle` varchar(72) NOT NULL,
  `artistID` int(11) NOT NULL,
  `albumID` int(11) NOT NULL,
  `trackno` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `format` varchar(6) NOT NULL,
  `genreName` varchar(72) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `songfile`
--

INSERT INTO `songfile` (`songID`, `songTitle`, `artistID`, `albumID`, `trackno`, `duration`, `format`, `genreName`) VALUES
(1001, 'On My Way', 2, 202, 15, 336, 'mp3', 'Rock'),
(1002, 'Faded', 5, 205, 8, 332, 'mp3', 'Pop'),
(1003, 'On and On', 5, 205, 15, 328, 'flac', 'Pop'),
(1004, 'The Power', 5, 205, 9, 350, 'ogg', 'Pop'),
(1005, 'Ertugrul', 2, 202, 2, 100, 'mp3', 'Rock'),
(1006, 'My Heart', 3, 203, 10, 427, 'mp3', 'R&B'),
(1007, 'Agar Tum Saath Ho', 3, 203, 11, 541, 'mp3', 'R&B'),
(1008, 'Suna Hai', 3, 203, 14, 313, 'ogg', 'R&B'),
(1009, 'Dilbar', 3, 203, 12, 304, 'mp3', 'R&B'),
(1010, 'Duniya', 3, 203, 13, 342, 'flac', 'R&B'),
(1011, 'Lag Di Lahore Di', 3, 203, 6, 335, 'mp3', 'R&B'),
(1012, 'Putt Jatt Da', 1, 201, 13, 244, 'mp3', 'DANCE'),
(1013, 'Baarishein', 3, 203, 3, 410, 'mp3', 'R&B'),
(1014, 'Vaaste', 3, 203, 4, 316, 'ogg', 'R&B'),
(1015, 'Lut Gate', 5, 205, 3, 457, 'mp3', 'Pop');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`albumID`),
  ADD KEY `artistID` (`artistID`),
  ADD KEY `genreName` (`genreName`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`artistID`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genreName`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`playlistID`);

--
-- Indexes for table `songfile`
--
ALTER TABLE `songfile`
  ADD PRIMARY KEY (`songID`),
  ADD KEY `artistID` (`artistID`),
  ADD KEY `albumID` (`albumID`),
  ADD KEY `genreName` (`genreName`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`artistID`) REFERENCES `artist` (`artistID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `album_ibfk_2` FOREIGN KEY (`genreName`) REFERENCES `genre` (`genreName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `songfile`
--
ALTER TABLE `songfile`
  ADD CONSTRAINT `songfile_ibfk_1` FOREIGN KEY (`artistID`) REFERENCES `artist` (`artistID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `songfile_ibfk_2` FOREIGN KEY (`albumID`) REFERENCES `album` (`albumID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `songfile_ibfk_3` FOREIGN KEY (`genreName`) REFERENCES `genre` (`genreName`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
