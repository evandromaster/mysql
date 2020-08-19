TRUNCATE tbl_d_auditorias;

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\10 - tbl_dimensao\\GDO\\tbl_d_auditorias.csv'  -- Aqui vc especifica o local do arquivo
REPLACE into table tbl_d_auditorias       -- Aqui você especifica o nome da tabela
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
@MUNICIPIO,
@NATUREZA
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
	NREDS = rtrim(@NREDS),
    DATA_PA = str_to_date(rtrim(@DATA_PA), '%d/%m/%Y'),
    PROTOCOLO = rtrim(@PROTOCOLO),
    MOTIVO = rtrim(@MOTIVO),
    CIA = rtrim(@CIA),
    MUNICIPIO = rtrim(@MUNICIPIO),
    NATUREZA = rtrim(@NATUREZA);
    -- SELECT COUNT(*) FROM TBL_D_AUDITORIA;
	
    
    -- 1114 row(s) affected, 1 warning(s): 1364 Field 'NREDS' doesn't have a default value Records: 1114  Deleted: 0  Skipped: 0  Warnings: 1
