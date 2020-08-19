import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="gsq4234",
  database="gdo"
)

mycursor = mydb.cursor()

from datetime import datetime
start_time = datetime.now()

print('Importando validadores....')

sql = """LOAD DATA INFILE  'F:/Mega/MySql/10 - Tbl_dimensao/gdo/tbl_validadores.csv' 


REPLACE into table tbl_validadores         -- Aqui você especifica o nome da tabela
fields terminated by ';'
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines

(

MUNICIPIO,


VALIDADOR,


VALIDADOR_TIPO,


CIA_BASE,


BAIRRO,


TIPO,


SETOR,


SUBSETOR,


COD_SETOR,


OBSERVACAO


);

"""

mycursor.execute(sql)

mydb.commit()
print("Tabela validadores importada com sucesso!")

print(mycursor.rowcount, "registro(s) inserido(s)")

# do your work here
end_time = datetime.now()
print('tempo de execução: {}'.format(end_time - start_time))