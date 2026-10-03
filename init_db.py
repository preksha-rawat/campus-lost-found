import sqlite3

# 1. Create and connect to a new database file called database.db
connection = sqlite3.connect('database.db')

# 2. Open our blueprint file (schema.sql) and read the instructions
with open('schema.sql') as f:
    connection.executescript(f.read())

# 3. Save the changes and close the connection
connection.commit()
connection.close()

print("Database created successfully!")