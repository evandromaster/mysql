-- importa registros  de RAT da 1º dezena de janeiro de 2019
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 -  RAT BOS\\rat\\REDS_RAT_20190101_20190110.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat          -- Aqui você especifica o nome da tabela
fields terminated by '|'
-- ENCLOSED BY '"'   
LINES TERMINATED BY '\n'
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
DIGITADOR

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set -- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
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

-- importa registros  de RAT da 2º dezena de janeiro de 2019
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 -  RAT BOS\\rat\\REDS_RAT_20190111_20190120.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat          -- Aqui você especifica o nome da tabela
fields terminated by '|'
-- ENCLOSED BY '"'   
LINES TERMINATED BY '\n'
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
DIGITADOR

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set -- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
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
    
    -- importa registros  de RAT da 3º dezena de janeiro de 2019
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 -  RAT BOS\\rat\\REDS_RAT_20190121_20190131.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat          -- Aqui você especifica o nome da tabela
fields terminated by '|'
-- ENCLOSED BY '"'   
LINES TERMINATED BY '\n'
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
DIGITADOR

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set -- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
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

    -- importa registros  de RAT da 1º dezena de FEVEREIRO de 2019
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 -  RAT BOS\\rat\\REDS_RAT_20190201_20190210.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat          -- Aqui você especifica o nome da tabela
fields terminated by '|'
-- ENCLOSED BY '"'   
LINES TERMINATED BY '\n'
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
DIGITADOR

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set -- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
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

    -- importa registros  de RAT da 2º dezena de FEVEREIRO de 2019
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 -  RAT BOS\\rat\\REDS_RAT_20190211_20190220.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat          -- Aqui você especifica o nome da tabela
fields terminated by '|'
-- ENCLOSED BY '"'   
LINES TERMINATED BY '\n'
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
DIGITADOR

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set -- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
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
    
    -- importa registros  de RAT da 3º dezena de FEVEREIRO de 2019
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 -  RAT BOS\\rat\\REDS_RAT_20190221_20190228.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat          -- Aqui você especifica o nome da tabela
fields terminated by '|'
-- ENCLOSED BY '"'   
LINES TERMINATED BY '\n'
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
DIGITADOR

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set -- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
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
    
    -- importa registros  de RAT da 1º dezena de MARÇO de 2019
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 -  RAT BOS\\rat\\REDS_RAT_20190301_20190310.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat          -- Aqui você especifica o nome da tabela
fields terminated by '|'
-- ENCLOSED BY '"'   
LINES TERMINATED BY '\n'
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
DIGITADOR

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set -- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
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
    
    -- importa registros  de RAT da 2º dezena de MARÇO de 2019
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 -  RAT BOS\\rat\\REDS_RAT_20190311_20190320.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat          -- Aqui você especifica o nome da tabela
fields terminated by '|'
-- ENCLOSED BY '"'   
LINES TERMINATED BY '\n'
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
DIGITADOR

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set -- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
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
    
       -- importa registros  de RAT da 3º dezena de MARÇO de 2019
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 -  RAT BOS\\rat\\REDS_RAT_20190321_20190331.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat          -- Aqui você especifica o nome da tabela
fields terminated by '|'
-- ENCLOSED BY '"'   
LINES TERMINATED BY '\n'
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
DIGITADOR

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set -- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
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
    
-- importa registros  de RAT da 1º dezena de ABRIL de 2019
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 -  RAT BOS\\rat\\REDS_RAT_20190401_20190410.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat          -- Aqui você especifica o nome da tabela
fields terminated by '|'
-- ENCLOSED BY '"'   
LINES TERMINATED BY '\n'
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
DIGITADOR

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set -- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
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
    
    
    
-- importa registros  de RAT da 2º dezena de ABRIL de 2019
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 -  RAT BOS\\rat\\REDS_RAT_20190411_20190420.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat          -- Aqui você especifica o nome da tabela
fields terminated by '|'
-- ENCLOSED BY '"'   
LINES TERMINATED BY '\n'
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
DIGITADOR

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set -- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
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
    
    
    -- importa registros  de RAT da 3º dezena de ABRIL de 2019
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 -  RAT BOS\\rat\\REDS_RAT_20190421_20190430.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat          -- Aqui você especifica o nome da tabela
fields terminated by '|'
-- ENCLOSED BY '"'   
LINES TERMINATED BY '\n'
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
DIGITADOR

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set -- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
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
    
    
        -- importa registros  de RAT da 1º dezena de MAIO de 2019
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 -  RAT BOS\\rat\\REDS_RAT_20190501_20190510.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat          -- Aqui você especifica o nome da tabela
fields terminated by '|'
-- ENCLOSED BY '"'   
LINES TERMINATED BY '\n'
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
DIGITADOR

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set -- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
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
    
    
        -- importa registros  de RAT da 2º dezena de MAIO de 2019
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 -  RAT BOS\\rat\\REDS_RAT_20190511_20190520.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat          -- Aqui você especifica o nome da tabela
fields terminated by '|'
-- ENCLOSED BY '"'   
LINES TERMINATED BY '\n'
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
DIGITADOR

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set -- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
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
    
    
        -- importa registros  de RAT da 3º dezena de MAIO de 2019
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 -  RAT BOS\\rat\\REDS_RAT_20190521_20190531.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat          -- Aqui você especifica o nome da tabela
fields terminated by '|'
-- ENCLOSED BY '"'   
LINES TERMINATED BY '\n'
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
DIGITADOR

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set -- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
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
    
       -- importa registros  de RAT da 1º dezena de JUNHO de 2019
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 -  RAT BOS\\rat\\REDS_RAT_20190601_20190610.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat          -- Aqui você especifica o nome da tabela
fields terminated by '|'
-- ENCLOSED BY '"'   
LINES TERMINATED BY '\n'
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
DIGITADOR

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set -- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
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
    
    
       -- importa registros  de RAT da 2º dezena de JUNHO de 2019
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 -  RAT BOS\\rat\\REDS_RAT_20190611_20190620.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat          -- Aqui você especifica o nome da tabela
fields terminated by '|'
-- ENCLOSED BY '"'   
LINES TERMINATED BY '\n'
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
DIGITADOR

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set -- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
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