TRUNCATE TABLE tbl_validadores;
 LOAD DATA local INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\10 - Tbl_dimensao\\gdo\\tbl_validadores.csv'
-- LOAD DATA INFILE  '//home//ferramentas//mysql//10 - Tbl_dimensao//gdo//tbl_validadores.csv'  -- Aqui vc especifica o local do arquivo
-- LOAD DATA INFILE  'F:\\Mega\\MySql\\10 - Tbl_dimensao\\gdo\\tbl_validadores.csv'  -- Aqui vc especifica o local do arquivo
-- LOAD DATA INFILE 'I:\\Meganz\\PMMG\\MySql\\10-2 - Tbl_dimensao\\GDO\\tbl_validadores.csv'

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
