TRUNCATE TABLE tbl_infracoes;

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\10 - tbl_dimensao\\pdca\\tbl_infracoes.csv'  -- Aqui vc especifica o local do arquivo
-- LOAD DATA INFILE 'F:\\Mega\\MySql\\10 - Tbl_dimensao\\pdca\\tbl_infracoes.csv' 
replace into table tbl_infracoes    -- Aqui você especifica o nome da tabela
fields terminated by ';'
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines
(
@'Número REDS',
@'Data Fato',
@'Município',
@'Código da Infração',
@'AIT/ AINA - Número Documento',
@'AIT/AINA - Órgão Origem -Autoridade Responsável',
@'Qtde Infrações'
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NREDS = @'Número REDS',
    DATA_FATO = str_to_date(@'Data Fato', '%d/%m/%Y'),
    MUNICIPIO = @'Município',
    COD_INFRACAO = @'Código da Infração',
	AIT_NUMERO_DOC = @'AIT/ AINA - Número Documento',
    AIT_ORGAO_ORIGEM = @'AIT/AINA - Órgão Origem -Autoridade Responsável',
	QTDE_INF = @'Qtde Infrações';
    
-- Número REDS
-- Código da Infração
-- AIT/ AINA - Número Documento
-- AIT/AINA - Órgão Origem -Autoridade Responsável
-- Qtde Infrações
-- 
-- ID_INFR INT PRIMARY KEY AUTO_INCREMENT,
-- DATA_FATO DATE NULL,
-- MUNICIPIO VARCHAR (50) NULL,
-- COD_INFRACAO VARCHAR (6),
-- AIT_NUMERO_DOC VARCHAR (12),
-- AIT_ORGAO_ORIGEM VARCHAR (50),
-- DATA_FATO DATE NULL,
-- QTDE_INF int(2)