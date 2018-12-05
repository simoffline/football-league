--
-- Datenbank: `db_fussballliga`
--
DROP DATABASE db_fussballliga
CREATE DATABASE db_fussballliga

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tbl_mannschaften`
--
USE db_fussballliga

CREATE TABLE tbl_mannschaften (
  id int IDENTITY NOT NULL,
  mannschaftsname varchar(30) NOT NULL,
  PRIMARY KEY (id)
) 

--
-- Daten für Tabelle `tbl_mannschaften`
--

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
  heimtore tinyint,
  auswaertstore tinyint,
  PRIMARY KEY (id),
  FOREIGN KEY (fk_heimteam) REFERENCES tbl_mannschaften(id),
  FOREIGN KEY (fk_auswaertsteam) REFERENCES tbl_mannschaften(id)
) 

--
-- Daten für Tabelle `tbl_spielerergebnisse`
--

INSERT INTO tbl_spielergebnisse(fk_heimteam, fk_auswaertsteam) VALUES
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(2, 1),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(3, 1),
(3, 2),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(4, 1),
(4, 2),
(4, 3),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(5, 10),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 7),
(6, 8),
(6, 9),
(6, 10),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(7, 5),
(7, 6),
(7, 8),
(7, 9),
(7, 10),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(8, 5),
(8, 6),
(8, 7),
(8, 9),
(8, 10),
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(9, 5),
(9, 6),
(9, 7),
(9, 8),
(9, 10),
(10, 1),
(10, 2),
(10, 3),
(10, 4),
(10, 5),
(10, 6),
(10, 7),
(10, 8),
(10, 9);