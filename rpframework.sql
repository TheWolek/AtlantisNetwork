-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 09 Sie 2019, 21:15
-- Wersja serwera: 10.1.35-MariaDB
-- Wersja PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `rpframework`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `crimecategories`
--

CREATE TABLE `crimecategories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `crimeclasses`
--

CREATE TABLE `crimeclasses` (
  `id` int(11) NOT NULL,
  `class` varchar(255) NOT NULL,
  `punishment` int(15) NOT NULL,
  `maxpunishment` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `crimes`
--

CREATE TABLE `crimes` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `garage`
--

CREATE TABLE `garage` (
  `id` int(11) NOT NULL,
  `license` varchar(45) DEFAULT NULL,
  `class` varchar(45) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `finish` varchar(45) DEFAULT NULL,
  `rims` varchar(45) DEFAULT NULL,
  `windows` varchar(45) DEFAULT NULL,
  `lights` varchar(45) DEFAULT NULL,
  `owner` varchar(64) NOT NULL,
  `statuses` varchar(1000) NOT NULL,
  `spoiler` varchar(45) NOT NULL,
  `fuel` varchar(45) NOT NULL,
  `damage` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `garage`
--
-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `general`
--

CREATE TABLE `general` (
  `id` int(11) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(10000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `general`
--

INSERT INTO `general` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(16, 'govtBank', '500000', '2019-07-21 08:59:14', '2019-08-09 15:18:29'),
(17, 'MafiaBank', '30000', '2019-07-21 09:00:50', '2019-08-02 21:25:21'),
(18, 'casinoVault', '50000', '2019-07-21 09:00:50', '2019-08-09 15:13:56');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `licenses`
--

CREATE TABLE `licenses` (
  `id` int(11) NOT NULL,
  `steamid` varchar(255) NOT NULL,
  `license` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `licenses`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  `description` longtext,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mail`
--

CREATE TABLE `mail` (
  `idmail` int(11) NOT NULL,
  `message` varchar(10000) DEFAULT NULL,
  `title` varchar(145) DEFAULT NULL,
  `sender` varchar(145) DEFAULT NULL,
  `receiver` varchar(45) DEFAULT NULL,
  `readmail` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `mail`
--
-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `messages`
--

CREATE TABLE `messages` (
  `idmessages` int(11) NOT NULL,
  `message` varchar(10000) DEFAULT NULL,
  `title` varchar(145) DEFAULT NULL,
  `sender` varchar(145) DEFAULT NULL,
  `receiver` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `messages`
--
-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `racetimes`
--

CREATE TABLE `racetimes` (
  `id` int(11) NOT NULL,
  `time` varchar(45) DEFAULT NULL,
  `name` varchar(245) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rallyracetimes`
--

CREATE TABLE `rallyracetimes` (
  `id` int(11) NOT NULL,
  `time` varchar(45) DEFAULT NULL,
  `name` varchar(245) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `bankaccount` int(11) NOT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `battleyeid` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `cash` decimal(13,2) DEFAULT NULL,
  `bank` decimal(13,2) DEFAULT NULL,
  `cop` enum('0','1','2','3','4','5','6','7','8','9','10','11','12') NOT NULL DEFAULT '0',
  `ems` enum('0','1','2','3','4','5','6','7','8','9','10') NOT NULL DEFAULT '0',
  `mafia` enum('0','1','2','3','4','5','6','7','8','9','10') NOT NULL DEFAULT '0',
  `legal` enum('0','1','2','3','4','5','6','7','8','9','10') NOT NULL DEFAULT '0',
  `fire` int(13) DEFAULT NULL,
  `mobster` int(13) DEFAULT NULL,
  `biker` int(13) DEFAULT NULL,
  `dmv` int(13) DEFAULT NULL,
  `doc` int(13) DEFAULT NULL,
  `da` enum('0','1','2','3','4','5','6','7','8','9','10') NOT NULL DEFAULT '0',
  `admin` enum('0','1','2','3','4','5','6','7','8','9','10') NOT NULL DEFAULT '0',
  `position` varchar(50) DEFAULT NULL,
  `items` varchar(1500) DEFAULT NULL,
  `phoneBackground` varchar(55) DEFAULT NULL,
  `messages` varchar(2500) DEFAULT NULL,
  `statuses` varchar(2500) DEFAULT NULL,
  `houselevel` int(11) DEFAULT NULL,
  `housecontent` varchar(10000) DEFAULT NULL,
  `shopcontent` varchar(10000) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT NULL,
  `prison` varchar(45) DEFAULT NULL,
  `prisonreason` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `users`
--
-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wanted`
--

CREATE TABLE `wanted` (
  `caseID` int(10) NOT NULL,
  `suspect` varchar(45) DEFAULT NULL,
  `suspectGUID` varchar(45) DEFAULT NULL,
  `officer` varchar(45) DEFAULT NULL,
  `officerGUID` varchar(45) DEFAULT NULL,
  `approved` varchar(45) DEFAULT NULL,
  `approvedGUID` varchar(45) DEFAULT NULL,
  `closed` varchar(45) DEFAULT NULL,
  `closedGUID` varchar(45) DEFAULT NULL,
  `charges` varchar(3000) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `evidence` varchar(45) DEFAULT NULL,
  `active` varchar(45) DEFAULT NULL,
  `jailtime` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `wanted`
--  
--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `crimecategories`
--
ALTER TABLE `crimecategories`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `crimeclasses`
--
ALTER TABLE `crimeclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `crimes`
--
ALTER TABLE `crimes`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `garage`
--
ALTER TABLE `garage`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vehicleID_UNIQUE` (`id`);

--
-- Indeksy dla tabeli `general`
--
ALTER TABLE `general`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indeksy dla tabeli `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indeksy dla tabeli `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`idmail`),
  ADD UNIQUE KEY `idmail_UNIQUE` (`idmail`);

--
-- Indeksy dla tabeli `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`idmessages`),
  ADD UNIQUE KEY `idmessages_UNIQUE` (`idmessages`);

--
-- Indeksy dla tabeli `racetimes`
--
ALTER TABLE `racetimes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indeksy dla tabeli `rallyracetimes`
--
ALTER TABLE `rallyracetimes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`bankaccount`),
  ADD UNIQUE KEY `uid` (`uid`);

--
-- Indeksy dla tabeli `wanted`
--
ALTER TABLE `wanted`
  ADD PRIMARY KEY (`caseID`),
  ADD UNIQUE KEY `caseID_UNIQUE` (`caseID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `crimecategories`
--
ALTER TABLE `crimecategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `crimeclasses`
--
ALTER TABLE `crimeclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `crimes`
--
ALTER TABLE `crimes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `garage`
--
ALTER TABLE `garage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT dla tabeli `general`
--
ALTER TABLE `general`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT dla tabeli `licenses`
--
ALTER TABLE `licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3257;

--
-- AUTO_INCREMENT dla tabeli `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `mail`
--
ALTER TABLE `mail`
  MODIFY `idmail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT dla tabeli `messages`
--
ALTER TABLE `messages`
  MODIFY `idmessages` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT dla tabeli `racetimes`
--
ALTER TABLE `racetimes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `rallyracetimes`
--
ALTER TABLE `rallyracetimes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `bankaccount` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1355;

--
-- AUTO_INCREMENT dla tabeli `wanted`
--
ALTER TABLE `wanted`
  MODIFY `caseID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
