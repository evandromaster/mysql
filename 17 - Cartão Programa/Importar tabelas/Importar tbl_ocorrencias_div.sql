TRUNCATE TABLE geo.tbl_ocorrencias_obj;

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\10 - tbl_dimensao\\cartao_programa\\tbl_ocorrencias.csv'  -- Aqui vc especifica o local do arquivo
replace into table geo.tbl_ocorrencias_obj       -- Aqui você especifica o nome da tabela
fields terminated by ';'
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines
(
@'Número REDS',
@'Órgão Unidade Registro',
@'Unidade Área Militar',
@'Unidade Relato Nível 6',
@'Unid Digitação Nível 6',
@'Unid Registro Nível 6',
@'Código Subclasse Nat Principal',
@'Tentado/Consumado Nat Principal',
@'Código Subclasse Nat Sec1',
@'Tentado/Consumado Nat Sec1',
@'Código Subclasse Nat Sec2',
@'Tentado/Consumado Nat Sec2',
@'Código Subclasse Nat Sec3',
@'Tentado/Consumado Nat Sec3',
@ALVO,
@'Descrição Meio Utilizado',
@'Data Comunicação Fato',
@'Horário Comunicação Fato',
@'Data Fato',
@'Horário Fato',
@'Data Última Atualização',
@'Logradouro Ocorrência - Tipo',
@'Logradouro Ocorrência',
@'Logradouro Ocorrência Não Cadastrado',
@'Logradouro Cruzamento',
@'Logradouro Cruzamento Não Cadastrado',
@'Número Logradouro',
@Bairro,
@'Bairro Não Cadastrado',
@'Complemento Endereço',
@'Ponto de Referência',
@'Município',
@Latitude,
@Longitude,
@'Matrícula Digitador',
@'Matrícula Relator',
@'Qtde Ocorrências',
@fnc_quadricula
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NREDS = @'Número REDS',
    ORG_UN_REG = @'Órgão Unidade Registro',
	UN_AREA_MIL = @'Unidade Área Militar',
	UN_RELATO = @'Unidade Relato Nível 6',
	UN_DIGITACAO = @'Unid Digitação Nível 6',
	UN_REGISTRO = @'Unid Registro Nível 6',
    COD_DIAO = @'Código Subclasse Nat Principal',
	T_C = @'Tentado/Consumado Nat Principal',
    COD_DIAO1 = @'Código Subclasse Nat Sec1',
	T_C1 = @'Tentado/Consumado Nat Sec1',
	COD_DIAO2 = @'Código Subclasse Nat Sec2',
	T_C2 =@'Tentado/Consumado Nat Sec2',
	COD_DIAO3 = @'Código Subclasse Nat Sec3',
	T_C3 = @'Tentado/Consumado Nat Sec3',
    ALVO = @ALVO,
	DESC_MEIO_UTILIZADO = @'Descrição Meio Utilizado',
    DATA_COM = str_to_date(@'Data Comunicação Fato', '%d/%m/%Y'),
	HORA_COM = @'Horário Comunicação Fato',
	DATA_FATO = str_to_date(@'Data Fato', '%d/%m/%Y'),
	HORA_FATO = @'Horário Fato',
	DATA_ULT_ATT = str_to_date(@'Data Última Atualização', '%d/%m/%Y'),
    LOG_TIPO = @'Logradouro Ocorrência - Tipo',
	LOGRADOURO = @'Logradouro Ocorrência',
	LOGRADOURO_NAO_CAD = @'Logradouro Ocorrência Não Cadastrado',
	LOGRADOURO_CRUZ = @'Logradouro Cruzamento',
	LOGRADOURO_CRUZ_NAO_CAD = @'Logradouro Cruzamento Não Cadastrado',
	N_LOG = @'Número Logradouro',
	BAIRRO = @Bairro,
	BAIRRO_NAO_CAD = @'Bairro Não Cadastrado',
	COMPLEMENTO_END = @'Complemento Endereço',
	PONTO_REF = @'Ponto de Referência',
	MUNICIPIO = @'Município',
    LATITUDE =  replace(@Latitude, '.', ','),
	LONGITUDE = replace(@Longitude, '.', ','),
	MATRICULA_DIGITADOR = @'Matrícula Digitador',
	MATRICULA_RELATOR = @'Matrícula Relator',
    QTDE = @'Qtde Ocorrências',
    OBJECTID = fnc_quadricula (@Latitude, @Longitude)-- , @MINY, @MAXY, @MINX, @MAXX, @OBJECTID) 
;
INSERT INTO
	tbl_ocorrencias (OBJECTID)
    
    
select 




 (select max(OBJECTID) from geo.tbl_quadriculas as q
 where o.latitude < q.MINY and o.latitude > q.MAXY and o.LONGITUDE < q.MINX and LONGITUDE > q.MAXX) 


from geo.tbl_ocorrencias as o
;