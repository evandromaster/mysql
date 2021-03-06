LOAD DATA LOCAL INFILE 'c:/Mysql/rat/REDS_RAT_20180111_20180120.csv'  -- Aqui vc especifica o local do arquivo
replace into table rat          -- Aqui você especifica o nome da tabela
FIELDS TERMINATED BY ';'    -- Aqui será o tipo de separador
 LINES TERMINATED BY '\r\n'   -- Aqui é a quebra de cada linha por inserts
 IGNORE 1 ROWS
(@RAT.NUM_ATIVIDADE,
@NAT.CODIGO,
@NAT.DESCRICAO,
DTA_HRA_INCLUSAO,
DTA_INICIO,
HRA_INICIO,
DTA_TERMINO,
HRA_TERMINO,
DES_ALVO_EVENTO,
DES_LUGAR,
NOM_OPERACAO,
COD_UNIDADE_SERVICO,
NOM_UNID_RESPONSAVEL,
TIPO_LOGRADOURO,
LOGRADOURO,
DES_ENDERECO,
NUM_ENDERECO,
COMPLEMENTO_ALFA,
COMPLEMENTO_ENDERECO,
NUM_COMPLEMENTAR,
COD_BAIRRO,
NOME_BAIRRO,
TIPO_LOGRADOURO2,
LOGRADOURO2,
DES_ENDERECO2,
COD_MUNICIPIO,
MUNICIPIO,
LATITUDE,
LONGITUDE,
COD_UNIDADE_AREA,
NOM_UNIDADE_AREA,
DIGITADOR) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
	NATCODIGO = @NAT.CODIGO,
	NATDESCRICAO = @NAT.DESCRICAO   