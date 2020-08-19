-- importa rat produtividade 1 dezena de janeiro de 2019
LOAD DATA LOCAL INFILE  'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20190101_20190110.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    
    -- importa rat produtividade 2 dezena de janeiro de 2019
LOAD DATA LOCAL INFILE  'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20190111_20190120.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 

    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    
        -- importa rat produtividade 3 dezena de janeiro de 2019
LOAD DATA LOCAL INFILE  'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20190121_20190131.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    
        -- importa rat produtividade 1 dezena de fevereiro de 2019
LOAD DATA LOCAL INFILE  'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20190201_20190210.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    
      -- importa rat produtividade 2 dezena de fevereiro de 2019
LOAD DATA LOCAL INFILE  'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20190211_20190220.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    
          -- importa rat produtividade 3 dezena de fevereiro de 2019
LOAD DATA LOCAL INFILE  'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20190221_20190228.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
              -- importa rat produtividade 1 dezena de marco de 2019
LOAD DATA LOCAL INFILE  'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20190301_20190310.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
		-- importa rat produtividade 2 dezena de marco de 2019
LOAD DATA LOCAL INFILE  'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20190311_20190320.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);

-- importa rat produtividade 3 dezena de marco de 2019
LOAD DATA LOCAL INFILE  'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20190321_20190331.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    
-- importa rat produtividade 1 dezena de ABRIL de 2019
LOAD DATA LOCAL INFILE  'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20190401_20190410.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    
    
-- importa rat produtividade 2 dezena de ABRIL de 2019
LOAD DATA LOCAL INFILE  'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20190411_20190420.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    
    
    -- importa rat produtividade 3 dezena de ABRIL de 2019
LOAD DATA LOCAL INFILE  'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20190421_20190430.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    
-- importa rat produtividade 1 dezena de MAIO de 2019
LOAD DATA LOCAL INFILE  'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20190501_20190510.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
-- importa rat produtividade 2 dezena de MAIO de 2019
LOAD DATA LOCAL INFILE  'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20190511_20190520.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
-- importa rat produtividade 3 dezena de MAIO de 2019
LOAD DATA LOCAL INFILE  'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20190521_20190531.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    -- importa rat produtividade 1 dezena de JUNHO de 2019
LOAD DATA LOCAL INFILE  'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20190601_20190610.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    -- importa rat produtividade 2 dezena de JUNHO de 2019
LOAD DATA LOCAL INFILE  'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20190611_20190620.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
-- importa rat produtividade 3 dezena de JUNHO de 2019
LOAD DATA LOCAL INFILE  'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20190621_20190630.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
-- Importa rat efetivos 1 dezena JULHO 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20190701_20190710.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    
-- Importa rat efetivos 2 dezena JULHO 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20190711_20190720.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    -- Importa rat efetivos 3 dezena JULHO 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20190721_20190731.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);

    -- Importa rat efetivos 1º dezena AGOSTO 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20190801_20190810.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    -- Importa rat efetivos 2º dezena AGOSTO 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20190811_20190820.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    -- Importa rat efetivos 3º dezena AGOSTO 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20190821_20190831.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    -- Importa rat efetivos 1º dezena SETEMBRO 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20190901_20190910.csv'  -- Aqui vc especifica o local do arquivo

-- C:\Users\Geo\Documents\MEGAsync\MySql\15 -  RAT BOS\rat_produtividade

into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
-- Importa rat efetivos 2º dezena SETEMBRO 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20190911_20190920.csv'  -- Aqui vc especifica o local do arquivo

-- C:\Users\Geo\Documents\MEGAsync\MySql\15 -  RAT BOS\rat_produtividade

into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    
-- Importa rat efetivos 3º dezena SETEMBRO 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20190921_20190930.csv'  -- Aqui vc especifica o local do arquivo

-- C:\Users\Geo\Documents\MEGAsync\MySql\15 -  RAT BOS\rat_produtividade

into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    
-- Importa rat efetivos 1º dezena OUTUBRO 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20191001_20191010.csv'  -- Aqui vc especifica o local do arquivo

-- C:\Users\Geo\Documents\MEGAsync\MySql\15 -  RAT BOS\rat_produtividade

into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    
-- Importa rat efetivos 2º dezena OUTUBRO 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20191011_20191020.csv'  -- Aqui vc especifica o local do arquivo

-- C:\Users\Geo\Documents\MEGAsync\MySql\15 -  RAT BOS\rat_produtividade

into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
-- Importa rat efetivos 3º dezena OUTUBRO 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20191021_20191031.csv'  -- Aqui vc especifica o local do arquivo

-- C:\Users\Geo\Documents\MEGAsync\MySql\15 -  RAT BOS\rat_produtividade

into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    
    
-- Importa rat efetivos 1º dezena NOVEMBRO 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20191101_20191110.csv'  -- Aqui vc especifica o local do arquivo

-- C:\Users\Geo\Documents\MEGAsync\MySql\15 -  RAT BOS\rat_produtividade

into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    
-- Importa rat efetivos 2º dezena NOVEMBRO 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20191111_20191120.csv'  -- Aqui vc especifica o local do arquivo

-- C:\Users\Geo\Documents\MEGAsync\MySql\15 -  RAT BOS\rat_produtividade

into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
-- Importa rat efetivos 3º dezena NOVEMBRO 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20191121_20191130.csv'  -- Aqui vc especifica o local do arquivo

-- C:\Users\Geo\Documents\MEGAsync\MySql\15 -  RAT BOS\rat_produtividade

into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
-- Importa rat efetivos 1º dezena DEZEMBRO 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20191201_20191210.csv'  -- Aqui vc especifica o local do arquivo

-- C:\Users\Geo\Documents\MEGAsync\MySql\15 -  RAT BOS\rat_produtividade

into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    
-- Importa rat efetivos 2º dezena DEZEMBRO 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20191211_20191220.csv'  -- Aqui vc especifica o local do arquivo

-- C:\Users\Geo\Documents\MEGAsync\MySql\15 -  RAT BOS\rat_produtividade

into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
-- Importa rat efetivos 3º dezena DEZEMBRO 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20191221_20191231.csv'  -- Aqui vc especifica o local do arquivo

-- C:\Users\Geo\Documents\MEGAsync\MySql\15 -  RAT BOS\rat_produtividade

into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);