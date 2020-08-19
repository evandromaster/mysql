LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\10 - tbl_Dimensao\\tbl_horas.csv'  -- Aqui vc especifica o local do arquivo
REPLACE into table tbl_horas          -- Aqui você especifica o nome da tabela
fields terminated by ';'
-- ENCLOSED BY '"'   
LINES TERMINATED BY '\r\n'
ignore 1 lines

(
HORA,


FAIXA_1H,


FAIXA_3H,


FAIXA_6H,


TURNO,

HS

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
;