import mysql.connector
# open the connection to the MySQL server.
# using MySQLd
mydb = mysql.connector.connect(host='localhost', user='root', passwd='seo23', db='gdo')
cursor = mydb.cursor()


import csv

#with open('arquivos/entrada.csv', 'r') as entrada:
with open('I:/Meganz/PMMG/MySql/200 - PythonMySQL/testes/arquivos/tbl_crimes.csv', 'r') as entrada:
    ler = csv.reader(entrada)
    next(entrada)  # discard header
    for linha in ler:
        #cursor.execute("INSERT INTO tbl_reds(NREDS, DATA_FATO) VALUES(%s)", linha)
        print(linha)


mydb.commit()

print(cursor.rowcount, "record inserted.")