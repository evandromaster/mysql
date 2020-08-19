TRUNCATE TABLE tbl_parametros;


LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\10 - tbl_dimensao\\pdca\\tbl_parametros.csv'  -- Aqui vc especifica o local do arquivo
-- LOAD DATA INFILE 'F:\\Mega\\MySql\\10 - Tbl_dimensao\\pdca\\tbl_parametros.csv'
replace into table tbl_parametros       -- Aqui você especifica o nome da tabela
fields terminated by ';'
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines
(


FONTE,
TIPO,
PARAMETROS,
PESO,
REGRAS,
OBSERVACAO



) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv


