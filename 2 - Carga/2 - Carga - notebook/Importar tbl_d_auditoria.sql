LOAD DATA LOCAL INFILE 'C:\\Mysql\\Tbl_Dimensao\\tbl_d_auditoria.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_d_auditoria       -- Aqui você especifica o nome da tabela
fields terminated by ';'
-- ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines 
(
@NREDS,
@DATA_PA,
@PROTOCOLO,
@MOTIVO,
@CIA,
@MUNICIPIO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
	NREDS = rtrim(@NREDS),
    DATA_PA = str_to_date(rtrim(@DATA_PA), '%d/%m/%Y'),
    PROTOCOLO = rtrim(@PROTOCOLO),
    MOTIVO = rtrim(@MOTIVO),
    CIA = rtrim(@CIA),
    MUNICIPIO = rtrim(@MUNICIPIO);
    
    -- SELECT COUNT(*) FROM TBL_D_AUDITORIA;
	
    
    -- 1114 row(s) affected, 1 warning(s): 1364 Field 'NREDS' doesn't have a default value Records: 1114  Deleted: 0  Skipped: 0  Warnings: 1
