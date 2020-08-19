TRUNCATE tbl_quadriculas_7rpm;

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\10 - tbl_dimensao\\cartao_programa\\tbl_quadriculas_7rpm.csv'  -- Aqui vc especifica o local do arquivo
replace into table tbl_quadriculas_7rpm       -- Aqui você especifica o nome da tabela
fields terminated by ';'
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines
(

FID,
@ID,
@MINX,
@MINY,
@MAXX,
@MAXY,
@CREA,
@MUNICOpIO_,
TIPO,
SETOR,
@LAT,
@LONG,
SUBSETOR,
SUBAREA,
ENDERECO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 

OBJECTID = @ID,
MINX =  replace(@MINX, '.', ','),
MINY =  replace(@MINY, '.', ','),
MAXX =  replace(@MAXX, '.', ','),
MAXY =  replace(@MAXY, '.', ','),
UEOP = @CREA,
MUNICIPIO = @MUNICOpIO_,
LATITUDE =  replace(@LAT, '.', ','),
LONGITUDE = replace(@'LONG', '.', ',')


