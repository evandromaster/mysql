-- importa rat efetivos 1 dezena de janeiro 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20190101_20190110.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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
    
 
 
 -- importa rat efetivos 2 dezena janeiro 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20190111_20190120.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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
    
    
    -- importa rat efetivos 3 dezena janeiro 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20190121_20190131.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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
    
    -- importa rat efetivos 1 dezena de fevereiro 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20190201_20190210.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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
    
 
 
 -- importa rat efetivos 2 dezena fevereiro 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20190211_20190220.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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
    
    
    -- importa rat efetivos 3 dezena fevereiro 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20190221_20190228.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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
    

 -- importa rat efetivos 1 dezena marco 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20190301_20190310.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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
    
     -- importa rat efetivos 2 dezena marco 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20190311_20190320.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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
    
    -- importa rat efetivos 3 dezena marco 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20190321_20190331.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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
    
 -- importa rat efetivos 1 dezena ABRIL 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20190401_20190410.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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
    
    
-- Importa rat efetivos 2 dezena ABRIL 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20190411_20190420.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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
    
-- Importa rat efetivos 3 dezena ABRIL 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20190421_20190430.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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
    
-- Importa rat efetivos 1 dezena MAIO 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20190501_20190510.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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

-- Importa rat efetivos 2 dezena MAIO 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20190511_20190520.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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


-- Importa rat efetivos 3 dezena MAIO 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20190521_20190531.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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
    
-- Importa rat efetivos 1 dezena JUNHO 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20190601_20190610.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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
    
-- Importa rat efetivos 2 dezena JUNHO 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20190611_20190620.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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
    
-- Importa rat efetivos 3 dezena JUNHO 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20190621_20190630.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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
    
-- Importa rat efetivos 1 dezena JULHO 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20190701_20190710.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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
    
-- Importa rat efetivos 2 dezena JULHO 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20190711_20190720.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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
    
-- Importa rat efetivos 3 dezena JULHO 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20190721_20190731.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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


-- Importa rat efetivos 1º dezena AGOSTO 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20190801_20190810.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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

-- Importa rat efetivos 2º dezena AGOSTO 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20190811_20190820.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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

-- Importa rat efetivos 3º dezena AGOSTO 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20190821_20190831.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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
    
-- Importa rat efetivos 1º dezena SETEMBRO 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20190901_20190910.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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
    
-- Importa rat efetivos 2º dezena SETEMBRO 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20190911_20190920.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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

-- Importa rat efetivos 3º dezena SETEMBRO 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20190921_20190930.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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
    
-- Importa rat efetivos 1º dezena OUTUBRO 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20191001_20191010.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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
    
    
-- Importa rat efetivos 2º dezena OUTUBRO 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20191011_20191020.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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
    
    
-- Importa rat efetivos 3º dezena OUTUBRO 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20191021_20191031.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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
    
    
-- Importa rat efetivos 1º dezena NOVEMBRO 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20191101_20191110.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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
    
    
-- Importa rat efetivos 2º dezena NOVEMBRO 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20191111_20191120.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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
    
    
-- Importa rat efetivos 3º dezena NOVEMBRO 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20191121_20191130.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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
    
-- Importa rat efetivos 1º dezena DEZEMBRO 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20191201_20191210.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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
    
    
-- Importa rat efetivos 2º dezena DEZEMBRO 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20191211_20191220.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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
    
    
-- Importa rat efetivos 3º dezena DEZEMBRO 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20191221_20191231.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_efetivos          -- Aqui você especifica o nome da tabela
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