TRUNCATE tbl_un_especializada;



LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\10 - tbl_dimensao\\GDO\\tbl_un_especializada.csv'

-- LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\10 - tbl_dimensao\\GDO\\tbl_un_especializada.csv'  -- Aqui vc especifica o local do arquivo


replace into table tbl_un_especializada         -- Aqui você especifica o nome da tabela
fields terminated by ';'
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines
(

@'Unid Registro Nível 6',
TIPO_UN_REGISTRO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	UN_REGISTRO = @'Unid Registro Nível 6'