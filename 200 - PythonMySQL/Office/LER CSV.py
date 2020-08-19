import mysql.connector
# open the connection to the MySQL server.
# using MySQLd
mydb = mysql.connector.connect(host='localhost', user='root', passwd='seo23', db='gdo')
cursor = mydb.cursor()

from datetime import datetime
start_time = datetime.now()

cursor.execute("truncate tbl_crimes")

from datetime import datetime
import csv
#with open('arquivos/entrada.csv', 'r') as entrada:
with open('C:/Users/Geo/Documents/MEGAsync/MySql/200 - PythonMySQL/Arquivos/tbl_crimes.csv', 'r') as entrada:
    ler = csv.reader(entrada)
    next(entrada)  # discard header
    for linha in ler:
        cursor.execute("INSERT INTO tbl_crimes(NREDS)"
                       "VALUES(%s)", linha)


mydb.commit()

print("Tabela crimes importada com sucesso!")
print(cursor.rowcount, "registro(s) inserido(s)")

# do your work here
end_time = datetime.now()
print('tempo de execução: {}'.format(end_time - start_time))
