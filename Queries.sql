/*1) Gets the total goals scored by all the players in each Team*/
SELECT TeamName, SUM(Goals) AS TotalGoals FROM Players GROUP BY TeamName;

/*2) Using concat and finding one specific country players ordered by JerseyNo*/ 
SELECT TeamName, JerseyNo, Position, CONCAT(firstName, ' ', lastName) AS FullName, Goals, CAPS FROM Players WHERE TeamName = 'Australia' ORDER BY JerseyNo ASC;

/*3)Finds the teams managed by a manager from a specific country*/
SELECT * FROM Teams WHERE TeamName IN (SELECT TeamName FROM Managers WHERE Nationality = 'Sweden');

/*4)Changes date format and time format and finds matches that held before 8am*/
SELECT DATE_FORMAT(GameDate, '%d-%M-%Y') AS GmDate, TIME_FORMAT(GameTime, '%h:%i %p') AS GmTime, MatchNo, TeamName, StadiumName FROM Host WHERE GameTime < '08:00:00';

/*5)Gets the total NUmbers of matches played by the teams*/
SELECT Teams.TeamName, COUNT(*) AS MatchesPlayed FROM Teams JOIN Host ON Teams.TeamName = Host.TeamName GROUP BY Teams.TeamName;

/*6)Used this to correct my code*/
SELECT TeamName, COUNT(*) AS NumberOfPlayers FROM Players GROUP BY TeamName;

/*7) Calculates the average age of the Referees in the Referees Table*/
SELECT AVG(Age) AS Avg_RefereeAge FROM Referees;

