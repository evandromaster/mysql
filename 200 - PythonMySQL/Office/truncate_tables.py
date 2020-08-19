import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="seo23",
  database="gdo"
)

mycursor = mydb.cursor()

from datetime import datetime
start_time = datetime.now()

print('Aguarde criando ambiente....')

sql0 = """truncate tbl_validadores;"""
sql1 = """truncate tbl_crimes;"""
sql2 = """truncate tbl_envolvidos;"""
sql3 = """truncate tbl_armas_fgo;"""
sql4 = """truncate tbl_materiais;"""

mycursor.execute(sql0)
mycursor.execute(sql1)
mycursor.execute(sql2)
mycursor.execute(sql3)
mycursor.execute(sql4)
mydb.commit()
print("Ambiente  criado com sucesso!")

# do your work here
end_time = datetime.now()
print('tempo de execução: {}'.format(end_time - start_time))




