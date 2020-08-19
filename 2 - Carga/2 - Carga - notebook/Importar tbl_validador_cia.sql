LOAD DATA INFILE 'C:\\Users\\wende\\Google Drive (seo23bpm@gmail.com)\\MySql\\10- tbl_Dimensao\\tbl_validador_cia.csv'  -- Aqui vc especifica o local do arquivo
REPLACE into table tbl_validador_cia          -- Aqui você especifica o nome da tabela
fields terminated by ';'
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines
(

MUNICIPIO,


VALIDADOR,


VALIDADOR_TIPO,


CIA_BASE,

OBSERVACAO


); -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv

show variables;

Error Code: 29. File 'C:\Users\wende\Google Drive (seo23bpm@gmail.com)\MySql\10- tbl_Dimensao\tbl_validador_cia.csv' not found (OS errno 13 - Permission denied)

'datadir', 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Data\\'
