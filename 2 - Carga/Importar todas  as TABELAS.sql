-- importar tbl_crimes
LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\10 - tbl_Dimensao\\tbl_crimes.csv'  -- Aqui vc especifica o local do arquivo
replace into table tbl_crimes         -- Aqui você especifica o nome da tabela
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
@ALVO,
@'Descrição Meio Utilizado',
@'Data Comunicação Fato',
@'Horário Comunicação Fato',
@'Data Fato',
@'Horário Fato',
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
@'Qtde Ocorrências'
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NREDS = @'Número REDS',
    ORG_UN_REG = @'Órgão Unidade Registro',
	UN_AREA_MIL = @'Unidade Área Militar',
	UN_RELATO = @'Unidade Relato Nível 6',
	UN_DIGITACAO = @'Unid Digitação Nível 6',
	UN_REGISTRO = @'Unid Registro Nível 6',
    COD_DIAO = @'Código Subclasse Nat Principal',
	T_C = @'Tentado/Consumado Nat Principal',
	ALVO = @ALVO,
	DESC_MEIO_UTILIZADO = @'Descrição Meio Utilizado',
    DATA_COM = str_to_date(@'Data Comunicação Fato', '%d/%m/%Y'),
	HORA_COM = @'Horário Comunicação Fato',
	DATA_FATO = str_to_date(@'Data Fato', '%d/%m/%Y'),
	HORA_FATO = @'Horário Fato',
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
    QTDE = @'Qtde Ocorrências';
-- importar tbl_envolvidos

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\10 - tbl_Dimensao\\tbl_envolvidos.csv'  -- Aqui vc especifica o local do arquivo
replace into table tbl_envolvidos       -- Aqui você especifica o nome da tabela
fields terminated by ';'
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines
(
@'Número REDS',
@'Órgão Unidade Registro',
@'Unidade Área Militar',
@'Unid Registro Nível 6',
@'Código Subclasse Nat Principal',
@'Tentado/Consumado Nat Principal',
@'Tipo Envolvimento',
@'Prisão / Apreensão',
@'Data Fato',
@'Horário Fato',
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
@'Nome Envolvido',
@'Data Nascimento',
@'Sexo',
@'Cútis',
@'Idade Aparente',
@'Estado Civil',
@'Ocupação Atual',
@'Escolaridade',
@'Logradouro Envolvido',
@'Bairro Envolvido',
@'Tipo Logradouro Envolvido',
@'Município Envolvido',
@'Qtde Envolvidos'

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	NREDS = @'Número REDS',
    ORG_UN_REG = @'Órgão Unidade Registro',
    UN_AREA_MIL = @'Unidade Área Militar',
    UN_REGISTRO = @'Unid Registro Nível 6',
    COD_DIAO = @'Código Subclasse Nat Principal',
    T_C = @'Tentado/Consumado Nat Principal',
    TIPO_ENVOLVIMENTO = @'Tipo Envolvimento',
	PRISAO_APREES = @'Prisão / Apreensão',
    DATA_FATO = str_to_date(@'Data Fato', '%d/%m/%Y'),
	HORA = @'Horário Fato',
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
	NOME_ENVOL = @'Nome Envolvido',
	DATA_NASC = str_to_date(@'Data Nascimento', '%d/%m/%Y'),
    SEXO = @'Sexo',
	CUTIS = @'Cútis',
	IDADE = @'Idade Aparente',
	ESTADO_CIVIL = @'Estado Civil',
	OCUPACAO = @'Ocupação Atual',
	ESCOLARIDADE = @'Escolaridade',
	LOGRADOURO_ENVOL = @'Logradouro Envolvido',
	BAIRRO_ENVOL = @'Bairro Envolvido',
	TIPO_LOG_ENVOL = @'Tipo Logradouro Envolvido',
	MUNICIPIO_ENVOL = @'Município Envolvido',
	QTDE_ENVOL = @'Qtde Envolvidos';
    
-- Importar tbl_arm-fgo
LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\10 - tbl_Dimensao\\tbl_arm_fgo.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_arm_fgo         -- Aqui você especifica o nome da tabela
fields terminated by ';'
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines 
(
@'Número REDS',
@'Órgão Unidade Registro',
@'Unidade Área Militar',
@'Unidade Relato Nível 6',
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
    UN_REGISTRO = @'Unid Registro Nível 6',
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

-- Importar tbl_arm-fgo

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\10 - tbl_Dimensao\\tbl_materiais.csv'  -- Aqui vc especifica o local do arquivo
replace into table tbl_materiais         -- Aqui você especifica o nome da tabela
fields terminated by ';'
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines 
(
@'Número REDS',
@'Órgão Unidade Registro',
@'Unidade Área Militar',
@'Unidade Relato Nível 6',
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
@'Data Fato',
@'Horário Fato',
@'Descrição Tipo Material',
@'Situação Material',
@'Qtde Ocorrências'
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	NREDS = @'Número REDS',
	ORG_UN_REG = @'Órgão Unidade Registro',
    UN_AREA_MIL = @'Unidade Área Militar',
    UN_REGISTRO = @'Unid Registro Nível 6',
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
	DATA_FATO = str_to_date(@'Data Fato', '%d/%m/%Y'),
	HORA_FATO = @'Horário Fato',
	DESC_TIPO_MATERIAL = @'Descrição Tipo Material',
	SITUACAO_MATERIAL = @'Situação Material',
	QTDE_MAT = @'Qtde Ocorrências';