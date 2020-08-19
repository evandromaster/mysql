LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\10 - tbl_Dimensao\\tbl_validadores.csv'  -- Aqui vc especifica o local do arquivo

-- Y:\ServidorMega\MySql\10 - tbl_Dimensao
REPLACE into table tbl_validadores         -- Aqui você especifica o nome da tabela
fields terminated by ';'
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines
(

MUNICIPIO,


VALIDADOR,


VALIDADOR_TIPO,


CIA_BASE,


BAIRRO,

TIPO,


SETOR,


SUBSETOR,


COD_SETOR,


OBSERVACAO


); -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
