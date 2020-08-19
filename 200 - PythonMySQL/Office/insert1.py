import csv
import datetime
import mysql.connector
mydb = mysql.connector.connect(host='localhost', user='root', passwd='seo23', db='gdo')
cursor = mydb.cursor()
cursor.execute("truncate tbl_crimes")
query = """INSERT INTO tbl_crimes (NREDS)
VALUES (%s)"""


with open('C:/Users/Geo/Documents/MEGAsync/MySql/200 - PythonMySQL/Arquivos/tbl_crimes1.csv', 'r', encoding="utf8") as entrada:
    ler = csv.reader(entrada, delimiter=';', quotechar='|')
    next(entrada)# pula a primeira linha

    for linha in ler:
        print(linha[0])
        cursor.execute(query, linha)
mydb.commit()

print("Tabela crimes importada com sucesso!")
print(cursor.rowcount, "registro(s) inserido(s)")
