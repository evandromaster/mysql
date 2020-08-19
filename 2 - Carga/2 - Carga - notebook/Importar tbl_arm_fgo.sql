-- truncate table tbl_arm_fgo_aux;

LOAD DATA LOCAL INFILE 'Z:\\MySql\\10- tbl_Dimensao\\tbl_arm_fgo.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_arm_fgo         -- Aqui você especifica o nome da tabela
fields terminated by ';'
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines 
(
@'Número REDS',
@'Órgão Unidade Registro',
@'Unidade Área Militar',
@'Código Subclasse Nat Principal',
@'Tentado/Consumado Nat Principal',
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
@'Situação Arma',
@'Tipo Arma',
@'Data Fato',
@'Horário Fato',
@'Qtde Ocorrências'
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	NREDS = @'Número REDS',
	ORG_UN_REG = @'Órgão Unidade Registro',
    UN_AREA_MIL = @'Unidade Área Militar',
	COD_DIAO = @'Código Subclasse Nat Principal',
	T_C = @'Tentado/Consumado Nat Principal',
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
    SITUACAO_ARMA = @'Situação Arma',
	TIPO_ARMA = @'Tipo Arma',
	DATA_FATO = str_to_date(@'Data Fato', '%d/%m/%Y'),
	HORA = @'Horário Fato',
    QTDE_ARM_FOGO = @'Qtde Ocorrências';
    
/*DELETE FROM tbl_arm_fgo_aux WHERE NREDS = "";
       
INSERT INTO tbl_arm_fgo (SELECT * FROM tbl_arm_fgo_aux WHERE NREDS NOT IN (SELECT NREDS FROM tbl_arm_fgo));

SELECT COUNT(*) FROM tbl_arm_fgo;

-- SELECT * FROM tbl_arm_fgo;
-- SELECT * FROM tbl_arm_fgo_aux;


/*DELETE FROM tbl_arm_fgo
WHERE NREDS = '';
select count(*) from tbl_arm_fgo
*/