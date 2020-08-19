# #!/usr/bin/python
#
# import pymysql
#
# # Open database connection
# db = pymysql.connect(host="localhost", user="testuser", password="test123",db="TESTDB" )
#
# # # prepare a cursor object using cursor() method
# # cursor = db.cursor()
# #
# # # Drop table if it already exist using execute() method.
# # cursor.execute("DROP TABLE IF EXISTS EMPLOYEE")
# #
# # # Create table as per requirement
# # sql = """CREATE TABLE EMPLOYEE11 (
# #          FIRST_NAME  CHAR(20) NOT NULL,
# #          LAST_NAME  CHAR(20),
# #          AGE INT,
# #          SEX CHAR(1),
# #          INCOME FLOAT )"""
# #
# # cursor.execute(sql)
# #
# # # disconnect from server
# db.close()

#!/usr/bin/python

import csv
import mysql.connector
# open the connection to the MySQL server.
# using MySQLd
mydb = mysql.connector.connect(host='localhost', user='root', passwd='seo23', db='gdo')
cursor = mydb.cursor()
csv_data = csv.reader('arquivos/tbl_reds.csv', delimiter=',')

# execute and insert the csv into the database.
for row in csv_data:
    #cursor.execute('INSERT INTO tbl_reds(NREDS)''VALUES(%s)', row)
    print(row)
# #close the connection to the database.
#
#
#
# mydb.commit()
# cursor.close()
# print("CSV has been imported into the database")
