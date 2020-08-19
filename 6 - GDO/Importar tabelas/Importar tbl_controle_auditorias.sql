TRUNCATE tbl_controle_auditorias ;

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\10 - tbl_dimensao\\GDO\\tbl_controle_auditorias_2020.csv'  -- Aqui vc especifica o local do arquivo

-- 'C:\Users\Geo\Documents\MEGAsync\MySql\10 - Tbl_dimensao\gdo

-- LOAD DATA INFILE  'F:\\Mega\\MySql\\10 - Tbl_dimensao\\gdo\\tbl_controle_auditorias_2020.csv' 
REPLACE into table tbl_controle_auditorias       -- Aqui você especifica o nome da tabela
fields terminated by ';'
-- ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines 
(

@REDS,

@UNIDADE,

@'MUNICIPIO',

@NATUREZA,

@INDICADOR,

@'DATA ENVIO',

@'DATA RESPOSTA CINDS',

@AUDITADO,

@PROTOCOLO,

@OBSERVACAO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
	NREDS = rtrim(@REDS),
    UEOP = rtrim(@UNIDADE),
	MUNICIPIO = rtrim(@'MUNICIPIO'),
    NATUREZA = rtrim(@NATUREZA),
    INDICADOR = rtrim(@INDICADOR),
    DATA_ENVIO = str_to_date(rtrim(@'DATA ENVIO'), '%d/%m/%Y'),
    DATA_RESPOSTA_CINDS = str_to_date(rtrim(@'DATA RESPOSTA CINDS'), '%d/%m/%Y'),
    AUDITADO = rtrim(@AUDITADO), 
    PROTOCOLO = rtrim(@PROTOCOLO),
    OBSERVACAO = rtrim(@OBSERVACAO);
    
    -- SELECT COUNT(*) FROM TBL_D_AUDITORIA;
	
    
-- REDS	UNIDADE	MUNICÍPIO	NATUREZA	INDICADOR	DATA ENVIO	DATA RESPOSTA CINDS	AUDITADO	PROTOCOLO
