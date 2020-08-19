TRUNCATE tbl_populacoes;

-- LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\10 - tbl_dimensao\\populacoes\\tbl_populacoes.csv'  -- Aqui vc especifica o local do arquivo
LOAD DATA INFILE 'F:\\Mega\\MySql\\10 - Tbl_dimensao\\populacoes\\tbl_populacoes.csv'
into table tbl_populacoes       -- Aqui você especifica o nome da tabela
fields terminated by ';'
LINES TERMINATED by '\n'
ignore 1 lines
(

UEOP,
COD_MUNI,
MUNICIPIO,
COMPANHIA,
FRACAO,
POP2017,
POP2018,
POP2019,
REDUCAO_PERC_CV,
REDUCAO_PERC_HC,
REDUCAO_PERC_TQF


); -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
