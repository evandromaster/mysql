LOAD DATA LOCAL INFILE 'Z:\\MySql\\10 - tbl_Dimensao\\tbl_gdo_ref_2017.csv'  -- Aqui vc especifica o local do arquivo
replace into table tbl_gdo_ref_2017       -- Aqui você especifica o nome da tabela
fields terminated by ';'
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines
(
@'Número REDS',
@Associado,
@'Órgão Unidade Registro',
@'Código Subclasse Nat Principal',
@'Tentado/Consumado Nat Principal',
@ALVO,
@'Data Fato',
@'Dezena Mês Fato',
@'Horário Fato',
@'Logradouro Ocorrência - Tipo',
@'Logradouro Ocorrência',
@'Número Logradouro',
@Bairro,
@'Bairro_Final',
@'Ueop',
@'Cia_base',
@'Município',
@Latitude,
@Longitude,
@'Qtde Ocorrências'
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NREDS = @'Número REDS',
    ASSOCIADO = @Associado,
    ORG_UN_REG = @'Órgão Unidade Registro',
	COD_DIAO = @'Código Subclasse Nat Principal',
	T_C = @'Tentado/Consumado Nat Principal',
	ALVO = @ALVO,
	DATA_FATO = str_to_date(@'Data Fato', '%d/%m/%Y'),
    DEZENA = @'Dezena Mês Fato',
	HORA = @'Horário Fato',
	LOG_TIPO = @'Logradouro Ocorrência - Tipo',
	LOGRADOURO = @'Logradouro Ocorrência',
	N_LOG = @'Número Logradouro',
	BAIRRO = @Bairro,
	BAIRRO_FINAL= @'Bairro_Final',
	UEOP = @'Ueop',
	CIA_BASE = @'Cia_base',
	MUNICIPIO = @'Município',
	LATITUDE =  replace(@Latitude, '.', ','),
	LONGITUDE = replace(@Longitude, '.', ','),
    QTDE = @'Qtde Ocorrências';

