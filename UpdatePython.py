import mysql.connector

conn = mysql.connector.connect(host='localhost', database='FinalAssignment_21280896', user='Imam', password='Tianjio32@1')

cursor = conn.cursor()

# Update Player

updatequery = """
	UPDATE Players
	SET Goals = 25
	WHERE firstName = 'Bamster' AND lastName = 'Wamster';
"""
cursor.execute(updatequery)
conn.commit()
print("Player Data Updated")

query = """
	SELECT TeamName, JerseyNo, Position, CONCAT(firstName, ' ', lastName) AS FullName, Goals, CAPS 
	FROM Players 
    	WHERE TeamName = 'Australia' ORDER BY JerseyNo ASC;
"""

cursor.execute(query)

result2= cursor.fetchall()

print("Result 2:", result2)

cursor.close()
conn.close()
