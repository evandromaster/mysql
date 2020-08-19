-- importa tabelas rat_produtividade janeiro 2018


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20180101_20180131.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	-- -- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
   -- importa tabelas rat_produtividade fevereiro 2018


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20180201_20180228.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	-- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    
     -- importa tabelas rat_produtividade 1 dezena de marco 2018


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20180301_20180310.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	-- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
     -- importa tabelas rat_produtividade 2 dezena de marco 2018


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20180311_20180320.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	-- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    -- importa tabelas rat_produtividade 3 dezena de marco 2018


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20180321_20180331.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	-- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    
     -- importa tabelas rat_produtividade 1 dezena de abril 2018


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20180401_20180410.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	-- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    
    
     -- importa tabelas rat_produtividade 2 dezena de abril 2018


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20180411_20180420.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	-- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    
    -- importa tabelas rat_produtividade 3 dezena de abril 2018


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20180421_20180430.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	-- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
     -- importa tabelas rat_produtividade 1 dezena de maio 2018


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20180501_20180510.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	-- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    
     
      -- importa tabelas rat_produtividade 3 dezena de maio 2018


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20180521_20180531.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	-- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
     -- importa tabelas rat_produtividade 1 dezena de junho 2018


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20180601_20180610.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	-- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
     
     
      -- importa tabelas rat_produtividade 2 dezena de junho 2018


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20180611_20180620.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	-- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
     
     
       -- importa tabelas rat_produtividade 3 dezena de junho 2018


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20180621_20180630.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	-- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
     
     
     -- importa tabelas rat_produtividade 1 dezena de julho 2018


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20180701_20180710.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	-- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
     -- importa tabelas rat_produtividade 2 dezena de julho 2018


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20180711_20180720.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	-- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
     -- importa tabelas rat_produtividade 3 dezena de julho 2018


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20180721_20180731.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	-- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    
     -- importa tabelas rat_produtividade 1 dezena de agosto 2018


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20180801_20180810.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	-- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    -- importa tabelas rat_produtividade 2 dezena de agosto 2018


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20180811_20180820.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	-- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    -- importa tabelas rat_produtividade 3 dezena de agosto 2018


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20180821_20180831.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	-- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    
     -- importa tabelas rat_produtividade 1 dezena de setembro 2018


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20180901_20180910.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	-- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    
      -- importa tabelas rat_produtividade 2 dezena de setembro 2018


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20180911_20180920.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	-- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
     -- importa tabelas rat_produtividade 3 dezena de setembro 2018


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20180921_20180930.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	-- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    
     -- importa tabelas rat_produtividade 1 dezena de outubro 2018


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20181001_20181010.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	-- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
     -- importa tabelas rat_produtividade 2 dezena de outubro 2018


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20181011_20181020.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	-- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    
      -- importa tabelas rat_produtividade 3 dezena de outubro 2018


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20181021_20181031.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	-- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    
       -- importa tabelas rat_produtividade 1 dezena de novembro 2018


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20181101_20181110.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	-- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    
      -- importa tabelas rat_produtividade 2 dezena de novembro 2018


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20181111_20181120.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	-- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    
     -- importa tabelas rat_produtividade 3 dezena de novembro 2018


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20181121_20181130.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	-- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    
    -- importa tabelas rat_produtividade 1 dezena de dezembro 2018


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20181201_20181210.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	-- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    
     -- importa tabelas rat_produtividade 2 dezena de dezembro 2018


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20181211_20181220.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	-- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);
    
    
      -- importa tabelas rat_produtividade 3 dezena de dezembro 2018


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_produtividade\\REDS_RAT_Produtividade_20181221_20181231.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	-- RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE);