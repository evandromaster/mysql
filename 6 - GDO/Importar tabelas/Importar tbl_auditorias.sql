TRUNCATE tbl_auditorias;

-- LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\10 - tbl_dimensao\\GDO\\tbl_auditorias.csv'  -- Aqui vc especifica o local do arquivo
LOAD DATA INFILE  'F:\\Mega\\MySql\\10 - Tbl_dimensao\\gdo\\tbl_auditorias.csv' 
REPLACE into table tbl_auditorias       -- Aqui você especifica o nome da tabela
fields terminated by ';'
-- ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines 
(
@NREDS,
@DATA_PA,
@PROTOCOLO,
@MOTIVO,
@UEOP,
@COMPANHIA,
@MUNICIPIO,
@COD_DIAO,
@NATUREZA,
@ACAO
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
	NREDS = rtrim(@NREDS),
    DATA_PA = str_to_date(rtrim(@DATA_PA), '%d/%m/%Y'),
    PROTOCOLO = rtrim(@PROTOCOLO),
    MOTIVO = rtrim(@MOTIVO),
    UEOP = rtrim(@CIA),
    COMPANHIA = rtrim(@CIA),
    MUNICIPIO = rtrim(@MUNICIPIO),
    COD_DIAO = rtrim(@COD_DIAO),
    NATUREZA = rtrim(@NATUREZA),
    ACAO = rtrim(@ACAO);
    -- SELECT COUNT(*) FROM TBL_D_AUDITORIA;
	
    
