LOAD DATA LOCAL INFILE 'c:\\Mysql\\rat\\REDS_RAT_20180511_20180520.csv'  -- Aqui vc especifica o local do arquivo
into table rat          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@NAT.CODIGO,
@NAT.DESCRICAO,
@DTA_HRA_INCLUSAO,
@DTA_INICIO,
HRA_INICIO,
@DTA_TERMINO,
HRA_TERMINO,
@DES_ALVO_EVENTO,
@DES_LUGAR,
@NOM_OPERACAO,
@COD_UNIDADE_SERVICO,
@NOM_UNID_RESPONSAVEL,
@TIPO_LOGRADOURO,
@LOGRADOURO,
@DES_ENDERECO,
@NUM_ENDERECO,
@COMPLEMENTO_ALFA,
@COMPLEMENTO_ENDERECO,
@NUM_COMPLEMENTAR,
@COD_BAIRRO,
@NOME_BAIRRO,
@TIPO_LOGRADOURO2,
@LOGRADOURO2,
@DES_ENDERECO2,
COD_MUNICIPIO,
@MUNICIPIO,
@LATITUDE,
@LONGITUDE,
@COD_UNIDADE_AREA,
NOM_UNIDADE_AREA,
DIGITADOR) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	NATCODIGO = rtrim(@NAT.CODIGO),
    /*NATCODIGO = @NAT.CODIGO,*/
	NATDESCRICAO = rtrim(@NAT.DESCRICAO),
    DTA_HRA_INCLUSAO = str_to_date(@DTA_HRA_INCLUSAO, '%d/%m/%Y'),
    DTA_INICIO = str_to_date(@DTA_INICIO, '%d/%m/%Y'),
    DTA_TERMINO = str_to_date(@DTA_TERMINO, '%d/%m/%Y'),
    DES_ALVO_EVENTO = rtrim(@DES_ALVO_EVENTO),
    DES_LUGAR = rtrim(@DES_LUGAR),
    NOM_OPERACAO = rtrim(@NOM_OPERACAO),
    COD_UNIDADE_SERVICO= rtrim(@COD_UNIDADE_SERVICO),
    NOM_UNID_RESPONSAVEL = rtrim(@NOM_UNID_RESPONSAVEL),
    TIPO_LOGRADOURO = rtrim(@TIPO_LOGRADOURO),
    LOGRADOURO = rtrim(@LOGRADOURO),
    DES_ENDERECO = rtrim(@DES_ENDERECO),
    COMPLEMENTO_ALFA = rtrim(@COMPLEMENTO_ALFA),
    COMPLEMENTO_ENDERECO = rtrim(@COMPLEMENTO_ENDERECO),
    NUM_COMPLEMENTAR = rtrim(@NUM_COMPLEMENTAR),
    COD_BAIRRO = rtrim(@COD_BAIRRO),
    NOME_BAIRRO = rtrim(@NOME_BAIRRO),
    TIPO_LOGRADOURO2 = rtrim(@TIPO_LOGRADOURO2),
    LOGRADOURO2 = rtrim(@LOGRADOURO2),
    DES_ENDERECO2 = rtrim(@DES_ENDERECO2),
    NUM_ENDERECO = rtrim(@NUM_ENDERECO),
    MUNICIPIO = rtrim(@MUNICIPIO),
    COD_UNIDADE_AREA= rtrim(@COD_UNIDADE_AREA),
    LATITUDE= rtrim(@LATITUDE),
	LONGITUDE= rtrim(@LONGITUDE),
    LATITUDE =  replace(@LATITUDE, '.', ','),
	LONGITUDE = replace(@LONGITUDE, '.', ',');