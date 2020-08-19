import mysql.connector
# open the connection to the MySQL server.
# using MySQLd
mydb = mysql.connector.connect(host='localhost', user='root', passwd='gsq4234', db='gdo')
cursor = mydb.cursor()
import csv
with open('I:/Meganz/PMMG/MySql/200 - PythonMySQL/testes/arquivos/tbl_crimes.csv', 'r') as entrada:
    ler = csv.reader(entrada)
    for linha in ler:
        print(linha)

from datetime import datetime
start_time = datetime.now()

#cursor.execute("truncate tbl_crimes")

from datetime import datetime
