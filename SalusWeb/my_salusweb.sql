-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Nov 19, 2022 alle 18:18
-- Versione del server: 8.0.26
-- Versione PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_salusweb`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `luogo`
--

CREATE TABLE `luogo` (
  `ID` int NOT NULL,
  `Descrizione` varchar(10) DEFAULT NULL,
  `Indirizzo` varchar(10) DEFAULT NULL,
  `citta` varchar(10) DEFAULT NULL,
  `Codice_Medico` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `luogo`
--

INSERT INTO `luogo` (`ID`, `Descrizione`, `Indirizzo`, `citta`, `Codice_Medico`) VALUES
(3333, 'Salues Web', 'Via Roma', 'Latina', 1111),
(3334, 'Domus Lab', 'Via Libett', 'Roma', 1111),
(4545, 'Multicolor', 'Via carull', 'Velletri', 1112),
(4546, 'Memoise', 'Via Rossel', 'Genzano di', 1111),
(5656, 'Omnisphere', 'Via Clauso', 'Roma', 1111);

-- --------------------------------------------------------

--
-- Struttura della tabella `medici`
--

CREATE TABLE `medici` (
  `ID` int NOT NULL,
  `Nome` varchar(10) DEFAULT NULL,
  `Cognome` varchar(10) DEFAULT NULL,
  `Specializzazione` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `medici`
--

INSERT INTO `medici` (`ID`, `Nome`, `Cognome`, `Specializzazione`) VALUES
(1111, 'Antonio', 'Vitos', 'Chirurgia'),
(1112, 'Salvatore', 'Esposito', 'chirurgo p');

-- --------------------------------------------------------

--
-- Struttura della tabella `pazienti`
--

CREATE TABLE `pazienti` (
  `IDPaziente` int NOT NULL,
  `Nome` varchar(10) DEFAULT NULL,
  `Cognome` varchar(10) DEFAULT NULL,
  `Eta` int DEFAULT NULL,
  `DataNascita` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `pazienti`
--

INSERT INTO `pazienti` (`IDPaziente`, `Nome`, `Cognome`, `Eta`, `DataNascita`) VALUES
(0, 'Niccoló', 'Fruncillo', 20, '2000-11-06'),
(12, 'Mattia', 'Fruncillo', 30, '1990-11-12'),
(555, 'Antonella', 'Calabrò', 56, '2021-06-16'),
(665, 'Giulia', 'Cavaterra', 19, '2002-04-12'),
(3333, 'santina', 'luzo', 45, '1978-11-12'),
(4567, 'Idilio', 'Leopardi ', 74, '1947-04-29'),
(6767, 'mattia', 'michetti', 12, '1990-12-11'),
(7777, 'Armando ', 'Ramires', 30, '2000-01-09'),
(8888, 'fabrizio', 'molinari', 45, '1990-12-11'),
(9078, 'ass', 'ssa', 23, '1990-12-11'),
(9999, 'francesco', 'cela', 12, '1990-12-11');

-- --------------------------------------------------------

--
-- Struttura della tabella `registrazione`
--

CREATE TABLE `registrazione` (
  `Nome` varchar(10) DEFAULT NULL,
  `Cognome` varchar(10) DEFAULT NULL,
  `Password` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `registrazione`
--

INSERT INTO `registrazione` (`Nome`, `Cognome`, `Password`) VALUES
('niccolo', 'fruncillo', 'password'),
('mario', 'rossi', '123'),
('gino', 'verdi', '434030'),
('franco', 'bianchi', 'franco1'),
('gino', 'buonvino', '234'),
('robby', 'scg', '1'),
('jerry', 'scotti', '1'),
('robby', 'eee', 'password'),
('Niccoló', 'Fruncillo', 'Bono '),
('valerio', 'santarossi', 'er'),
('Mattia', 'Fruncillo', 'ciao'),
('Mattia', 'Michetti', 'canna'),
('Francesco', 'Cela', '123'),
('Antonella', 'Calabrò', 'q23'),
('Idilio', 'Leopardi', 'nemo'),
('santina', 'luzo', 'er'),
('mario', 'ortensi', 'password'),
('daniele', 'felicetta', 'soldi'),
('Francesco', 'Cavaterra', '123456789'),
('ass', 'saa', 'ciao'),
('erte', 'uiop', '1111'),
('Giulia ', 'Cavaterra ', 'Carciofo'),
('Giulia', 'Cavaterra ', 'password');

-- --------------------------------------------------------

--
-- Struttura della tabella `riceve`
--

CREATE TABLE `riceve` (
  `ID_Medico` int DEFAULT NULL,
  `ID_Paziente` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `visite`
--

CREATE TABLE `visite` (
  `ID` int NOT NULL,
  `Orario` time DEFAULT NULL,
  `Codice_Paziente` int DEFAULT NULL,
  `tipologia` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `visite`
--

INSERT INTO `visite` (`ID`, `Orario`, `Codice_Paziente`, `tipologia`) VALUES
(0, '11:40:00', 8888, 'chirurgia'),
(9, '11:30:00', 0, 'Generica'),
(78, '12:30:00', 555, 'Urine'),
(98, '12:30:00', 4567, 'Analisi'),
(454, '12:30:00', 3333, 'chirurgia'),
(555, '12:30:00', 6767, 'urine'),
(1234, '00:00:16', 12, 'analisi '),
(3333, '12:30:00', 12, 'prostata'),
(4321, '11:30:00', 9078, 'urine'),
(8888, '11:30:00', 9999, 'urine'),
(37482948, '11:30:00', 665, 'Prostata ');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `luogo`
--
ALTER TABLE `luogo`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Codice_Medico` (`Codice_Medico`);

--
-- Indici per le tabelle `medici`
--
ALTER TABLE `medici`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `pazienti`
--
ALTER TABLE `pazienti`
  ADD PRIMARY KEY (`IDPaziente`);

--
-- Indici per le tabelle `riceve`
--
ALTER TABLE `riceve`
  ADD KEY `ID_Medico` (`ID_Medico`),
  ADD KEY `ID_Paziente` (`ID_Paziente`);

--
-- Indici per le tabelle `visite`
--
ALTER TABLE `visite`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Codice_Paziente` (`Codice_Paziente`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `luogo`
--
ALTER TABLE `luogo`
  ADD CONSTRAINT `luogo_ibfk_1` FOREIGN KEY (`Codice_Medico`) REFERENCES `medici` (`ID`);

--
-- Limiti per la tabella `riceve`
--
ALTER TABLE `riceve`
  ADD CONSTRAINT `riceve_ibfk_1` FOREIGN KEY (`ID_Medico`) REFERENCES `medici` (`ID`),
  ADD CONSTRAINT `riceve_ibfk_2` FOREIGN KEY (`ID_Paziente`) REFERENCES `pazienti` (`IDPaziente`);

--
-- Limiti per la tabella `visite`
--
ALTER TABLE `visite`
  ADD CONSTRAINT `visite_ibfk_1` FOREIGN KEY (`Codice_Paziente`) REFERENCES `pazienti` (`IDPaziente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
