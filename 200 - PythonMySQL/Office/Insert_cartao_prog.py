import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="seo23",
  database="geo"
)

mycursor = mydb.cursor()

from datetime import datetime
start_time = datetime.now()

print('Inserindo ocorrencias do cartão programa....')

sql = """INSERT INTO
	tbl_ocorrencias_obj (NREDS, ORG_UN_REG, UN_AREA_MIL, UN_RELATO, UN_DIGITACAO, UN_REGISTRO, COD_DIAO, T_C, COD_DIAO1, T_C1,
						COD_DIAO2, T_C2, COD_DIAO3, T_C3, ALVO, DESC_MEIO_UTILIZADO, DATA_COM, HORA_COM, DATA_FATO, HORA_FATO,
						DATA_ULT_ATT, LOG_TIPO, LOGRADOURO, LOGRADOURO_NAO_CAD, LOGRADOURO_CRUZ, LOGRADOURO_CRUZ_NAO_CAD,
						N_LOG, BAIRRO, BAIRRO_NAO_CAD, COMPLEMENTO_END, PONTO_REF, MUNICIPIO, LATITUDE, LONGITUDE,
						MATRICULA_DIGITADOR, MATRICULA_RELATOR, QTDE, OBJECTID)
    
    
select 
						NREDS, ORG_UN_REG, UN_AREA_MIL, UN_RELATO, UN_DIGITACAO, UN_REGISTRO, COD_DIAO, T_C, COD_DIAO1, T_C1,
						COD_DIAO2, T_C2, COD_DIAO3, T_C3, ALVO, DESC_MEIO_UTILIZADO, DATA_COM, HORA_COM, DATA_FATO, HORA_FATO,
						DATA_ULT_ATT, LOG_TIPO, LOGRADOURO, LOGRADOURO_NAO_CAD, LOGRADOURO_CRUZ, LOGRADOURO_CRUZ_NAO_CAD,
						N_LOG, BAIRRO, BAIRRO_NAO_CAD, COMPLEMENTO_END, PONTO_REF, MUNICIPIO, LATITUDE, LONGITUDE,
						MATRICULA_DIGITADOR, MATRICULA_RELATOR, QTDE,



(select max(OBJECTID) from geo.tbl_quadriculas as q where o.latitude < q.MINY and o.latitude > q.MAXY and o.LONGITUDE < q.MINX and LONGITUDE > q.MAXX) 
 as OBJECTID


from geo.tbl_ocorrencias as o;
"""

mycursor.execute(sql)

mydb.commit()
print("Tabela ocorrencias - para o Cartão Programa importada com sucesso!")

print(mycursor.rowcount, "registro(s) inserido(s)")

# do your work here
end_time = datetime.now()
print('tempo de execução: {}'.format(end_time - start_time))