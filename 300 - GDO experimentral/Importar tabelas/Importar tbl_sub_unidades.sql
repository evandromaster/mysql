LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\10 - tbl_dimensao\\tbl_sub_unidades.csv'  -- Aqui vc especifica o local do arquivo
replace into table tbl_sub_unidades       -- Aqui você especifica o nome da tabela
fields terminated by ';'
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines
(
NOM_UNID_RESPONSAVEL,
COMPANHIA,
CIA_SEDE

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
-- set 
	-- UN_REGISTRO = @'Unid Registro Nível 6'
    
    
    