import mysql.connector

conn = mysql.connector.connect(host='localhost', database='FinalAssignment_21280896', user='Imam', password='Tianjio32@1')

cursor = conn.cursor()

# Insert Player 

insertquery = """
	INSERT INTO Players (JerseyNo, Position, firstName, lastName, Goals, CAPS, TeamName)
	VALUES ('24','DF','Bamster','Wamster','99','160', 'Australia');
"""
cursor.execute(insertquery)
conn.commit()
print("Player Data Inserted")

query = """
	SELECT TeamName, JerseyNo, Position, CONCAT(firstName, ' ', lastName) AS FullName, Goals, CAPS 
	FROM Players 
    	WHERE TeamName = 'Australia' ORDER BY JerseyNo ASC;
"""

cursor.execute(query)

result1= cursor.fetchall()

print("Result 1:", result1)

cursor.close()
conn.close()
