TRUNCATE TABLE tbl_envolvidos;

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\10 - tbl_dimensao\\pdca\\tbl_envolvidos.csv'  -- Aqui vc especifica o local do arquivo
-- LOAD DATA INFILE 'F:\\Mega\\MySql\\10 - Tbl_dimensao\\pdca\\tbl_envolvidos.csv'
into table tbl_envolvidos       -- Aqui você especifica o nome da tabela
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
@'Código Subclasse Natureza',
@'Tentado/Consumado',
@'Grau Lesão',
@'Tipo Envolvimento',
@'Grupo Tipo Envolvimento',
@'Prisão / Apreensão',
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
    COD_DELITO = @'Código Subclasse Natureza',
	T_C_DELITO =@'Tentado/Consumado',
	GRAU_LESAO = @'Grau Lesão',
	TIPO_ENVOLVIMENTO = @'Tipo Envolvimento',
    GRUPO_TIPO_ENVOL = @'Grupo Tipo Envolvimento',
    PRISAO_APREES = @'Prisão / Apreensão',
    DATA_FATO = str_to_date(@'Data Fato', '%d/%m/%Y'),
	HORA = @'Horário Fato',
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
	QTDE_ENVOL = @'Qtde Envolvidos'
    
    



