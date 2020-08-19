import mysql.connector
# open the connection to the MySQL server.
# using MySQLd
mydb = mysql.connector.connect(host='localhost', user='root', passwd='gsq4234', db='gdo')
cursor = mydb.cursor()

from datetime import datetime
start_time = datetime.now()

cursor.execute("truncate tbl_crimes")

from datetime import datetime
import csv
#with open('arquivos/entrada.csv', 'r') as entrada:

with open('C:/Users/Geo/Documents/MEGAsync/MySql/200 - PythonMySQL/Arquivos/tbl_crimes.csv', 'r', encoding="utf8") as entrada:
    ler = csv.reader(entrada, delimiter=';', quotechar='|')
    next(entrada)  # discard header
    for linha in ler:
        cursor.execute("INSERT INTO tbl_crimes(NREDS, ORG_UN_REG, UN_AREA_MIL, UN_RELATO, UN_DIGITACAO, UN_REGISTRO, COD_DIAO, T_C, COD_DIAO1, T_C1, COD_DIAO2, T_C2, COD_DIAO3, T_C3, ALVO, DESC_MEIO_UTILIZADO)"
                       "VALUES(%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", linha)
        #print(datetime.strptime(linha[1], '%d/%m/%Y').date())

mydb.commit()

print("Tabela crimes importada com sucesso!")
print(cursor.rowcount, "registro(s) inserido(s)")

# do your work here
end_time = datetime.now()
print('tempo de execução: {}'.format(end_time - start_time))