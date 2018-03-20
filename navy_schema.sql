
DROP TABLE fleets;
DROP TABLE ships;
DROP TABLE toursOfDuty;
DROP TABLE duties;
DROP TABLE sailors;
DROP TABLE ranks;

CREATE TABLE fleets (fleetID INTEGER PRIMARY KEY, fleetName varchar(255));
INSERT INTO fleets (fleetName)
VALUES ('Indefatigable Flotilla of Chris');

CREATE TABLE ships (shipID INTEGER PRIMARY KEY, shipName varchar(50), fleetID INTEGER, dateBuilt varchar(25));
INSERT INTO ships (shipName, fleetID, dateBuilt)
VALUES ('HES Rockstar', 1,'1997-09-01'), ('HES Jupiter',1, '2001-06-01'),
('HES Phosphor',1, '2006-01-01'), ('HES Boss',1, '2008-03-01'), ('HES Code Sorceror',1, '2018-02-15');

CREATE TABLE duties (dutyID INTEGER PRIMARY KEY, dutyName varchar(255));
INSERT INTO duties (dutyName)
VALUES ('Mess Cook'),('Petty Officer'),('Court Jester'),('Cat Herder'),('Rabblerouser'),('Skipper'),('Minstrel');

CREATE TABLE ranks (rankID INTEGER PRIMARY KEY, rankName varchar(255), rankLevel INTEGER);
INSERT INTO ranks (rankName, rankLevel)
VALUES ('Mook',3),('Extraordinaire', 1),('RunOTheMill',2);

CREATE TABLE sailors (sailorID INTEGER PRIMARY KEY, sailorName varchar(255), sailorDOB varchar(25));
INSERT INTO sailors (sailorName, sailorDOB)
VALUES ('Kai Kurosawa', '1978-08-13'),('Stephanie Delk', '1979-03-16'),('Marty Gasper', '1979-10-14'),
('Chris Chatham', '1980-04-11'), ('Josh Hyde', '1797-10-23');

CREATE TABLE toursOfDuty (tourID INTEGER PRIMARY KEY, sailorID INTEGER, sailorRank varchar(50),
dutyID INTEGER, shipID INTEGER, activeTour BOOLEAN, tourStartDate varchar(25), tourEndDate varchar(25));
INSERT INTO toursOfDuty (sailorID, sailorRank, dutyID, shipID, activeTour, tourStartDate, tourEndDate)
VALUES (1, 1, 7, 1, 0, '1997-09-01','2001-04-21'),
       (2, 1, 4, 1, 0, '1997-09-01','2005-04-21'),
       (3, 3, 3, 2, 1, '2001-09-01', '2018-03-21'),
       (4, 2, 7, 1, 0, '1998-09-01','2001-04-21'),
       (4, 3, 7, 2, 0, '1998-09-01','2001-04-21'),
       (5, 1, 5, 3, 0, '2005-08-03', '2008-09-15'),
       (5, 1, 5, 4, 0, '2005-08-03', '2008-09-15');
