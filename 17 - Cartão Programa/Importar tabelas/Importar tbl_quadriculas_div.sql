truncate tbl_quadriculas;

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\10 - tbl_dimensao\\cartao_programa\\tbl_quadriculas.csv'  -- Aqui vc especifica o local do arquivo
replace into table tbl_quadriculas       -- Aqui você especifica o nome da tabela
fields terminated by ';'
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines
(

FID,
OBJECTID,
NM_TXTMEMO,
@MINX,
@MINY,
@MAXX,
@MAXY,
@CNTX,
@CNTY,
MUNICIPIO,
TIPO,
SETOR,
@LATITUDE,
@LONGITUDE,
ENDE,
OPERACAO,
SUBSETOR,
SUBSETOR2,
SUBAREA,
BAIRRO,
ENDERECO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 


MINX =  replace(@MINX, '.', ','),
MINY =  replace(@MINY, '.', ','),
MAXX =  replace(@MAXX, '.', ','),
MAXY =  replace(@MAXY, '.', ','),
CNTX =  replace(@CNTX, '.', ','),
CNTY =  replace(@CNTY, '.', ','),
LATITUDE =  replace(@LATITUDE, '.', ','),
LONGITUDE =  replace(@LONGITUDE, '.', ',');


