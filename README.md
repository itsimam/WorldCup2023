# WorldCup2023
This database is based of the 2023 Fifa WorldCup

mysql -u Imam -p 
CREATE DATABASE FinalAssignment_21280896; 
exit; 
mysql --local-infile -u Imam -p FinalAssignment_21280896 
\. tables1.sql 
LOAD DATA LOCAL INFILE ’Teams.csv’ INTO TABLE Teams FIELDS TERMINATED BY ’,’ ENCLOSED
 BY ’"’ LINES TERMINATED BY ’\n’ IGNORE 1 ROWS; 
LOAD DATA LOCAL INFILE ’Referees.csv’ INTO TABLE Referees FIELDS TERMINATED BY ’,’ ENCLO
 SED BY ’"’ LINES TERMINATED BY ’\n’ IGNORE 1 ROWS; 
LOAD DATA LOCAL INFILE ’Managers.csv’ INTO TABLE Managers FIELDS TERMINATED BY ’,’ ENCL
 OSED BY ’"’ LINES TERMINATED BY ’\n’ IGNORE 1 ROWS; 
LOAD DATA LOCAL INFILE ’Stadiums.csv’ INTO TABLE Stadiums FIELDS TERMINATED BY ’,’ ENCLO
 SED BY ’"’ LINES TERMINATED BY ’\n’ IGNORE 1 ROWS; 
LOAD DATA LOCAL INFILE ’Players.csv’ INTO TABLE Players FIELDS TERMINATED BY ’,’ ENCLOSE
 D BY ’"’ LINES TERMINATED BY ’\n’ IGNORE 1 ROWS; 
\. Awards.sql 
LOAD DATA LOCAL INFILE ’Matches.csv’ INTO TABLE Matches FIELDS TERMINATED BY ’,’ ENCLOS
 ED BY ’"’ LINES TERMINATED BY ’\n’ IGNORE 1 ROWS; 
LOAD DATA LOCAL INFILE ’Host.csv’ INTO TABLE Host FIELDS TERMINATED BY ’,’ ENCLOSED BY ’
 "’ LINES TERMINATED BY ’\n’ IGNORE 1 ROWS; 
SHOW TABLES; 
DESCRIBE Teams; 
DESCRIBE Referees; 
DESCRIBE Managers; 
DESCRIBE Stadiums; 
DESCRIBE Players; 
DESCRIBE Awards; 
DESCRIBE Matches; 
DESCRIBE Host; 
SELECT * FROM Teams; 
SELECT * FROM Referees; 
SELECT * FROM Managers; 
SELECT * FROM Stadiums; 
SELECT * FROM Players; 
SELECT * FROM Awards; 
SELECT * FROM Matches; 
SELECT * FROM Host; 
\. Queries.sql 
\. Procedure1.sql 
CALL TeamWins(’Spain’, @result); SELECT @result; 
\. Procedure2.sql 
CALL AddPlayer(69, ’GK’, ’Rawad’, ’Hassan’, 99, 199, ’Morocco’); 
\. View1.sql 
SELECT * FROM PlayerAwards; 
\. Trigger1.sql 
SELECT * FROM Teams; 
INSERT INTO Matches (MatchNo, HomeTeam, OutsiderTeam, HomeGoals, OutsiderGoals, Winner, Won
 by, Attendance, RefereeName) VALUES (’126’, ’Argentina’, ’Australia’, 4, 4, ’DRAW’, ’-’, 50000, ’Oh-Hyeo
 n Jeong’); 
SELECT * FROM Teams; 
exit; 
Python Implementation :-  
python Python.py 
python InsertPython.py 
python UpdatePython.py 
python DeletePython.py
