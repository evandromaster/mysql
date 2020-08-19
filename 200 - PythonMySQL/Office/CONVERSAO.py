import mysql.connector
import datetime
import csv
# Open database connection
mydb = mysql.connector.connect(host='localhost', user='root', passwd='seo23', db='gdo')


# prepare a cursor object using cursor() method
cursor = mydb.cursor()
cursor.execute("truncate tbl_crimes")
inputFile = 'C:/Users/Geo/Documents/MEGAsync/MySql/200 - PythonMySQL/Arquivos/tbl_crimes37.csv'

with open(inputFile, 'r', encoding="utf8") as fr:
    data = fr.readlines()
    #next(fr)  # pula a primeira linha
    for line in data:
        words = line.strip().split(";")

        NREDS = words[0]
        DATA_COM = datetime.datetime.strptime(words[16], '%d-%m-%Y').date()
        print(DATA_COM)
        #print(NREDS, ";", DATA_COM)

    #  =====================================================================
    # Prepare SQL query to INSERT a record into the database.
    sql = """INSERT INTO tbl_crimes (NREDS)
VALUES (%s)"""

    try:
       # Execute the SQL command
       cursor.execute(sql)
       # Commit your changes in the database
       mydb.commit()
    except:
       # Rollback in case there is any error
       mydb.rollback()

    # disconnect from server
    mydb.close()

fr.close()