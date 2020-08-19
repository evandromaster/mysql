TRUNCATE TABLE tbl_escolas;

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\10 - tbl_dimensao\\Estabelecimentos\\tbl_escolas.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_escolas        -- Aqui você especifica o nome da tabela
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
	NREDS = @COD_SRE,
	COD_MUNICIPIO = @'COD_MUNICÍPIO',
    MUNICIPIO = @MUNICIPIO,
    COD_ESCOLA = @COD_ESCOLA,
    NOME_ESTABELECIMENTO_ENSINO = @NOME_ESTABELECIMENTO_ENSINO,
	LATITUDE =  replace(@Latitude, '.', ','),
	LONGITUDE = replace(@Longitude, '.', ','),
	DEPENDENCIA_ADMINISTRATIVA = @'DEPENDÊNCIA ADMINISTRATIVA',
	LOCALIZACAO = @'LOCALIZAÇÃO',
    ENDERECO = @'ENDEREÇO',
    N_LOG = @'NÚMERO',
    COMPLEMENTO = @COMPLEMENTO,
	BAIRRO = @BAIRRO,
    CEP = @CEP,
	DDD = @DDD,
	TELEFONE = @TELEFONE,
	TELEFONE_PUBLICO = @TELEFONE_PUBLICO,
	EMAIL = @EMAIL
	;
    

COD_SRE varCHAR (18) NOT null,
COD_MUNICÍPIO VARCHAR (30) NULL,
MUNICIPIO VARCHAR (50) NULL,
COD_ESCOLA VARCHAR (9) NULL,
NOME_ESTABELECIMENTO_ENSINO VARCHAR (150) NULL,
LATITUDE VARCHAR (15) NULL,
LONGITUDE VARCHAR (15) NULL,
DEPENDENCIA_ADMINISTRATIVA VARCHAR (50) NULL,
LOCALIZACAO VARCHAR (100) NULL,
ENDERECO VARCHAR (100) NULL,
N_LOG VARCHAR (20) NULL,
COMPLEMENTO VARCHAR (30) NULL,
BAIRRO VARCHAR (50) NULL,
CEP VARCHAR (50) NULL,
DDD VARCHAR (3) NULL,
TELEFONE VARCHAR (50) NULL,
TELEFONE_PUBLICO VARCHAR (50) NULL,
EMAIL VARCHAR (50) NULL

COD_SRE
SRE
COD_MUNICÍPIO
MUNICÍPIO
COD_ESCOLA
NOME DO ESTABELECIMENTO DE ENSINO
Lat
Long
DEPENDÊNCIA ADMINISTRATIVA
LOCALIZAÇÃO
ENDEREÇO
NÚMERO
COMPLEMENTO
BAIRRO
CEP
DDD
TELEFONE
TELE FONE PUBLICO
EMAIL
