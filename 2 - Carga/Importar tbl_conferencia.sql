LOAD DATA LOCAL INFILE 'Z:\\MySql\\CONFERENCIA.csv'  -- Aqui vc especifica o local do arquivo
replace into table tbl_conferencia         -- Aqui você especifica o nome da tabela
fields terminated by ';'
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines
(
@'Número REDS', -- 
@AUDITORIA,
@'Data Fato',
@'Município',
@'Código Subclasse Nat Principal'

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NREDS = @'Número REDS',
    AUDITORIA = @AUDITORIA,
	DATA_FATO = str_to_date(@'Data Fato', '%d/%m/%Y'),
	MUNICIPIO = @'Município',
    COD_DIAO = @'Código Subclasse Nat Principal'
    ;
