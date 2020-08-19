LOAD DATA LOCAL INFILE 'c:/Mysql/Tbl_Dimensao/dim_populacao.csv'  -- Aqui vc especifica o local do arquivo
into table dim_populacao          -- Aqui você especifica o nome da tabela
fields terminated by ';'
LINES TERMINATED by '\n'
ignore 1 lines
(

UEOP,
COD_MUNI,
FRACAO,
POP2017,
POP2018

); -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
