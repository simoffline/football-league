--
-- Datenbank: `db_fussballliga`
--
CREATE DATABASE db_fussballliga

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tbl_mannschaften`
--


--
-- Daten für Tabelle `tbl_mannschaften`
--

CREATE TABLE tbl_mannschaften (
  id int IDENTITY NOT NULL,
  mannschaftsname varchar(30) NOT NULL,
  punkte smallint,
  PRIMARY KEY (id)
) 

INSERT INTO tbl_mannschaften (mannschaftsname) VALUES
('SV Sissach'),
('FC Basel'),
('FC Zürich'),
('FC Allschwil'),
('Arsenal FC'),
('FC Barcelona'),
('Real Madrid'),
('PSG'),
('Manchester United'),
('Manchester City');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tbl_spieler`
--

CREATE TABLE tbl_spieler (
  id_spieler int NOT NULL IDENTITY,
  fk_mannschaft int NOT NULL,
  spielername varchar(30),
  spielervorname varchar(30),
  rueckennummer varchar(2) NOT NULL,
  anzahltore tinyint,
  PRIMARY KEY (id_spieler),
  FOREIGN KEY (fk_mannschaft) REFERENCES tbl_mannschaften(id)
) 


--
-- Daten für Tabelle `tbl_spieler`
--

INSERT INTO tbl_spieler (fk_mannschaft, spielername, spielervorname, rueckennummer, anzahltore) VALUES
('1', 'Pfister', 'Simon', '14', '0'),
('1', 'Yeloegrue', 'Emre', '5', '0'),
('1', 'Thottiyil', 'Arun', '2', '0'),
('1', 'Bralic', 'Ilija', '3', '0'),
('1', 'Reist', 'Timo', '7', '0'),
('2', 'Omlin', 'Jonas', '1', '0'),
('2', 'Widmer', 'Silvan', '5', '0'),
('2', 'Suchy', 'Marek', '17', '0'),
('2', 'Frei', 'Fabian', '6', '0'),
('2', 'Oberlin', 'Dimitri', '19', '0'),
('3', 'Brecher', 'Yanick', '25', '0'),
('3', 'Nef', 'Alain', '13', '0'),
('3', 'Marchesano', 'Antonio', '10', '0'),
('3', 'Khelifi', 'Toni', '14', '0'),
('3', 'Odey', 'Stephen', '15', '0'),
('4', 'Zelger', 'Olivier', '10', '0'),
('4', 'Bumann', 'Mark', '2', '0'),
('4', 'Mörbitz', 'Max', '5', '0'),
('4', 'Rivero', 'Yvette', '7', '0'),
('4', 'Heinzer', 'Mischa', '8', '0'),
('5', 'Ramsey', 'Aaron', '8', '0'),
('5', 'Lacazette', 'Alexandre', '9', '0'),
('5', 'Pierre-Emerick', 'Aubameyang', '14', '0'),
('5', 'Xhaka', 'Granit', '34', '0'),
('5', 'Torreira', 'Lucas', '11', '0'),
('6', 'Messi', 'Lionel', '10', '0'),
('6', 'Suarez', 'Luis', '9', '0'),
('6', 'Dembele', 'Ousmane', '11', '0'),
('6', 'Coutinho', 'Philipe', '14', '0'),
('6', 'Pique', 'Gerard', '5', '0'),
('7', 'Bale', 'Gareth', '11', '0'),
('7', 'Benzema', 'Karim', '9', '0'),
('7', 'Keylor', 'Navas', '1', '0'),
('7', 'Ramos', 'Sergio', '4', '0'),
('7', 'Modric', 'Luca', '10', '0'),
('8', 'Mbappe', 'Kylian', '7', '0'),
('8', 'Cavani', 'Edison', '9', '0'),
('8', 'Silva', 'Thiago', '2', '0'),
('8', 'Buffon', 'Gianluigi', '1', '0'),
('8', 'Neymar', 'Jr', '10', '0'),
('9', 'Pogba', 'Paul', '6', '0'),
('9', 'Mata', 'Juan', '8', '0'),
('9', 'Lukaku', 'Romelu', '9', '0'),
('9', 'Martial', 'Anthony', '11', '0'),
('9', 'Matic', 'Nemanja', '31', '0'),
('10', 'Aguero', 'Sergio', '10', '0'),
('10', 'Sane', 'Leroy', '19', '0'),
('10', 'Sterling', 'Raheem', '7', '0'),
('10', 'Walker', 'Kyle', '2', '0'),
('10', 'Stones', 'John', '5', '0');


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tbl_spielergebnisse`
--

CREATE TABLE tbl_spielergebnisse (
  id int IDENTITY NOT NULL,
  fk_heimteam int NOT NULL,
  fk_auswaertsteam int NOT NULL,
  datum date,
  heimtore tinyint,
  auswaertstore tinyint,
  PRIMARY KEY (id),
  FOREIGN KEY (fk_heimteam) REFERENCES tbl_mannschaften(id),
  FOREIGN KEY (fk_auswaertsteam) REFERENCES tbl_mannschaften(id)
) 

--
-- Daten für Tabelle `tbl_spielerergebnisse`
--

INSERT INTO tbl_spielergebnisse(fk_heimteam, fk_auswaertsteam, datum) VALUES
(1, 2, CONVERT(date,'26.01.2019')),
(1, 3, '06.04.2019'),
(1, 4, '02.02.2019'),
(1, 5, '16.03.2019'),
(1, 6, '23.02.2019'),
(1, 7, '27.04.2019'),
(1, 8, '30.03.2019'),
(1, 9, '12.01.2019'),
(1, 10, '16.02.2019'),
(2, 1, '23.03.2019'),
(2, 3, '12.01.2019'),
(2, 4, '02.03.2019'),
(2, 5, '09.02.2019'),
(2, 6, '13.04.2019'),
(2, 7, '02.02.2019'),
(2, 8, '20.04.2019'),
(2, 9, '30.03.2019'),
(2, 10, '19.01.2019'),
(3, 1, '09.02.2019'),
(3, 2, '09.03.2019'),
(3, 4, '23.03.2019'),
(3, 5, '27.04.2019'),
(3, 6, '02.02.2019'),
(3, 7, '13.04.2019'),
(3, 8, '19.01.2019'),
(3, 9, '23.02.2019'),
(3, 10, '30.03.2019'),
(4, 1, '30.03.2019'),
(4, 2, '27.04.2019'),
(4, 3, '26.01.2019'),
(4, 5, '23.02.2019'),
(4, 6, '19.01.2019'),
(4, 7, '09.02.2019'),
(4, 8, '09.03.2019'),
(4, 9, '13.04.2019'),
(4, 10, '02.02.2019'),
(5, 1, '19.01.2019'),
(5, 2, '06.04.2019'),
(5, 3, '02.03.2019'),
(5, 4, '20.04.2019'),
(5, 6, '06.04.2019'),
(5, 7, '23.03.2019'),
(5, 8, '16.02.2019'),
(5, 9, '02.02.2019'),
(5, 10, '09.03.2019'),
(6, 1, '20.04.2019'),
(6, 2, '16.02.2019'),
(6, 3, '30.03.2019'),
(6, 4, '16.03.2019'),
(6, 5, '02.02.2019'),
(6, 7, '12.01.2019'),
(6, 8, '02.03.2019'),
(6, 9, '26.01.2019'),
(6, 10, '06.04.2019'),
(7, 1, '02.03.2019'),
(7, 2, '30.03.2019'),
(7, 3, '16.02.2019'),
(7, 4, '06.04.2019'),
(7, 5, '26.01.2019'),
(7, 6, '09.03.2019'),
(7, 8, '02.02.2019'),
(7, 9, '16.03.2019'),
(7, 10, '20.04.2019'),
(8, 1, '02.02.2019'),
(8, 2, '23.02.2019'),
(8, 3, '16.03.2019'),
(8, 4, '12.01.2019'),
(8, 5, '13.04.2019'),
(8, 6, '27.04.2019'),
(8, 7, '30.03.2019'),
(8, 9, '09.02.2019'),
(8, 10, '23.03.2019'),
(9, 1, '09.03.2019'),
(9, 2, '02.02.2019'),
(9, 3, '20.04.2019'),
(9, 4, '16.02.2019'),
(9, 5, '30.03.2019'),
(9, 6, '23.03.2019'),
(9, 7, '19.01.2019'),
(9, 8, '06.04.2019'),
(9, 10, '02.03.2019'),
(10, 1, '13.04.2019'),
(10, 2, '16.03.2019'),
(10, 3, '02.02.2019'),
(10, 4, '30.03.2019'),
(10, 5, '12.01.2019'),
(10, 6, '09.02.2019'),
(10, 7, '23.02.2019'),
(10, 8, '26.01.2019'),
(10, 9, '27.04.2019');