import mysql.connector
conn = mysql.connector.connect(host='localhost', database='FinalAssignment_21280896', user='Imam', password='Tianjio32@1')
cursor = conn.cursor()

# 1) Gets the total goals scored by all the players in each Team:
query = """
    	SELECT TeamName, SUM(Goals) AS TotalGoals 
    	FROM Players GROUP BY TeamName;
"""

cursor.execute(query)
result= cursor.fetchall()
print("Result :", result)


# 2) Using concat and finding one specific country players ordered by JerseyNo
query = """
	SELECT TeamName, JerseyNo, Position, CONCAT(firstName, ' ', lastName) AS FullName, Goals, CAPS 
	FROM Players 
    	WHERE TeamName = 'Australia' ORDER BY JerseyNo ASC;
"""

cursor.execute(query)
result1= cursor.fetchall()
print("Result 1:", result1)

# 3) Finds the teams managed by a manager from a specific country
query = """
	SELECT * FROM Teams 
	WHERE TeamName IN (SELECT TeamName FROM Managers WHERE Nationality = 'Sweden');
"""

cursor.execute(query)
result2= cursor.fetchall()
print("Result 2:", result2)

# 4) Changes date format and time format and finds matches that held before 8am'
query = """
	SELECT DATE_FORMAT(GameDate, '%d-%M-%Y') AS GmDate, TIME_FORMAT(GameTime, '%h:%i %p') AS GmTime, MatchNo, TeamName, StadiumName 
	FROM Host 
	WHERE GameTime < '08:00:00';
"""

cursor.execute(query)
result3= cursor.fetchall()
print("Result 3:", result3)

# 5) Gets the total NUmbers of matches played by the teams
query = """
	SELECT Teams.TeamName, COUNT(*) AS MatchesPlayed 
	FROM Teams 
	JOIN Host ON Teams.TeamName = Host.TeamName 
	GROUP BY Teams.TeamName;
"""

cursor.execute(query)
result4= cursor.fetchall()
print("Result 4:", result4)

# 6) Used this to find an error in my data
query = """
	SELECT TeamName, COUNT(*) AS NumberOfPlayers 
	FROM Players 
	GROUP BY TeamName;
"""

cursor.execute(query)
result5= cursor.fetchall()
print("Result 5:", result5)

# 7) Calculates the average age of the Referees in the Referees Table
query = """
	SELECT AVG(Age) AS Avg_RefereeAge 
	FROM Referees;
"""

cursor.execute(query)
result6= cursor.fetchall()
print("Result 6:", result6)

cursor.close()
conn.close()


