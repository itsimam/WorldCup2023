import mysql.connector

conn = mysql.connector.connect(host='localhost', database='FinalAssignment_21280896', user='Imam', password='Tianjio32@1')

cursor = conn.cursor()

# Delete Player

deletequery = """
	DELETE FROM Players
	WHERE firstname = 'Bamster' AND lastname = 'Wamster';
"""
cursor.execute(deletequery)
conn.commit()
print("Player Data Deleted")

query = """
	SELECT TeamName, JerseyNo, Position, CONCAT(firstName, ' ', lastName) AS FullName, Goals, CAPS 
	FROM Players 
    	WHERE TeamName = 'Australia' ORDER BY JerseyNo ASC;
"""

cursor.execute(query)

result3= cursor.fetchall()

print("Result 3:", result3)

cursor.close()
conn.close()
