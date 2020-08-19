-- importa rat efetivos 1 dezena de janeiro 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20200101_20200110.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);
    
 
 
 -- importa rat efetivos 2 dezena janeiro 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20200111_20200120.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);
    
    
    -- importa rat efetivos 3 dezena janeiro 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20200121_20200131.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);
    
    -- importa rat efetivos 1 dezena de fevereiro 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20200201_20200210.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);
    
 
 
 -- importa rat efetivos 2 dezena fevereiro 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20200211_20200220.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);
    
    
    -- importa rat efetivos 3 dezena fevereiro 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20200221_20200229.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);
    

 -- importa rat efetivos 1 dezena marco 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20200301_20200310.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);
    
     -- importa rat efetivos 2 dezena marco 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20200311_20200320.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);
    
    -- importa rat efetivos 3 dezena marco 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20200321_20200331.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);
    
 -- importa rat efetivos 1 dezena ABRIL 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20200401_20200410.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);
    
    
-- Importa rat efetivos 2 dezena ABRIL 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20200411_20200420.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);
    
-- Importa rat efetivos 3 dezena ABRIL 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20200421_20200430.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);
    
/*-- Importa rat efetivos 1 dezena MAIO 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20200501_20200510.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);

-- Importa rat efetivos 2 dezena MAIO 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20200511_20200520.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);


-- Importa rat efetivos 3 dezena MAIO 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20200521_20200531.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);
    
-- Importa rat efetivos 1 dezena JUNHO 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20200601_20200610.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);
    
-- Importa rat efetivos 2 dezena JUNHO 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20200611_20200620.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);
    
-- Importa rat efetivos 3 dezena JUNHO 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20200621_20200630.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);
    
-- Importa rat efetivos 1 dezena JULHO 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20200701_20200710.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);
    
-- Importa rat efetivos 2 dezena JULHO 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20200711_20200720.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);
    
-- Importa rat efetivos 3 dezena JULHO 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20200721_20200731.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);


-- Importa rat efetivos 1º dezena AGOSTO 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20200801_20200810.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);

-- Importa rat efetivos 2º dezena AGOSTO 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20200811_20200820.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);

-- Importa rat efetivos 3º dezena AGOSTO 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20200821_20200831.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);
    
-- Importa rat efetivos 1º dezena SETEMBRO 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20200901_20200910.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);
    
-- Importa rat efetivos 2º dezena SETEMBRO 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20200911_20200920.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);

-- Importa rat efetivos 3º dezena SETEMBRO 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20200921_20200930.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);
    
-- Importa rat efetivos 1º dezena OUTUBRO 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20201001_20201010.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);
    
    
-- Importa rat efetivos 2º dezena OUTUBRO 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20201011_20201020.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);
    
    
-- Importa rat efetivos 3º dezena OUTUBRO 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20201021_20201031.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);
    
    
-- Importa rat efetivos 1º dezena NOVEMBRO 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20201101_20201110.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);
    
    
-- Importa rat efetivos 2º dezena NOVEMBRO 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20201111_20201120.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);
    
    
-- Importa rat efetivos 3º dezena NOVEMBRO 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20201121_20201130.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);
    
-- Importa rat efetivos 1º dezena DEZEMBRO 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20201201_20201210.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);
    
    
-- Importa rat efetivos 2º dezena DEZEMBRO 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20201211_20201220.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);
    
    
-- Importa rat efetivos 3º dezena DEZEMBRO 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\bos_efetivos\\REDS_BOS_EFETIVOS_20201221_20201231.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_bos_efetivos         -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_MATRICULA,
@NOME,
@NOM_CARGO,
@COD_UNIDADE_SERVICO,
@NOM_UNIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_MATRICULA = rtrim(@NUM_MATRICULA),
	NOME = rtrim(@NOME),
    NOM_CARGO = rtrim(@NOM_CARGO),
	COD_UNIDADE_SERVICO = rtrim(@COD_UNIDADE_SERVICO),
	NOM_UNIDADE = rtrim(@NOM_UNIDADE);