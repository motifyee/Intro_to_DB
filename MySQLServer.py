
import mysql.connector

# Replace with your connection details
mydb = mysql.connector.connect(
    host="localhost",
    user="username",
    password="password",
)

mycursor = mydb.cursor()

try:
    mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")

    print("Database created succesfully")
except:
    print("Something went wrong, couldn't create a new database")
