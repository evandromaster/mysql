import csv
import datetime
import mysql.connector
mydb = mysql.connector.connect(host='localhost', user='root', passwd='seo23', db='gdo')
cursor = mydb.cursor()

with open('C:/Users/Geo/Documents/MEGAsync/MySql/200 - PythonMySQL/Arquivos/tbl_crimes.csv', 'r', encoding="utf8") as entrada:
    ler = csv.reader(entrada, delimiter=';', quotechar='|')
    next(entrada)# pula a primeira linha
    for linha in ler:
        print(linha[0])
        # print(datetime.datetime.strptime(linha[16], '%d/%m/%Y').date())  #converte string para date do mysql

    # for linha in ler:
    #     cursor.execute(
    #         "INSERT INTO tbl_crimes(NREDS)"
    #         "VALUES(%s)", linha)
mydb.commit()

print("Tabela crimes importada com sucesso!")
print(cursor.rowcount, "registro(s) inserido(s)")