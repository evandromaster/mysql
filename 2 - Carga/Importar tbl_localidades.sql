TRUNCATE TABLE tbl_localidades;


LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\10 - tbl_Dimensao\\setorizacao\\tbl_localidades_wgs84.csv'  -- Aqui vc especifica o local do arquivo
replace into table tbl_localidades        -- Aqui você especifica o nome da tabela
fields terminated by ';'
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines
(
CIA,
@LATITUDE,
@LONGITUDE,
LOCALIDADE,
TIPO,
SETOR,
SUBSETOR,


POPULACAO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 

LATITUDE =  replace(@LATITUDE, '.', ','),
LONGITUDE =  replace(@LONGITUDE, '.', ',');





