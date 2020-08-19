-- importa tabelas rat_produtividade janeiro 2017


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_Produtividade_20170101_20170131.csv'  -- Aqui vc especifica o local do arquivo
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
    
  
  -- importa tabelas rat_produtividade fevereiro 2017


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_Produtividade_20170201_20170228.csv'  -- Aqui vc especifica o local do arquivo
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
    
    -- importa tabelas rat_produtividade marco 2017


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_Produtividade_20170301_20170331.csv'  -- Aqui vc especifica o local do arquivo
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
    
    -- importa tabelas rat_produtividade abril 2017


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_Produtividade_20170401_20170430.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
    -- importa tabelas rat_produtividade maio 2017


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_Produtividade_20170501_20170531.csv'  -- Aqui vc especifica o local do arquivo
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
    
    -- importa tabelas rat_produtividade junho 2017


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_Produtividade_20170601_20170630.csv'  -- Aqui vc especifica o local do arquivo
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
    
    -- importa tabelas rat_produtividade julho 2017


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_Produtividade_20170701_20170731.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
    -- importa tabelas rat_produtividade agosto 2017


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_Produtividade_20170801_20170831.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
    -- importa tabelas rat_produtividade setembro 2017


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_Produtividade_20170901_20170930.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
    -- importa tabelas rat_produtividade outubro 2017


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_Produtividade_20171001_20171031.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
    -- importa tabelas rat_produtividade novembro 2017


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_Produtividade_20171101_20171130.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
    -- importa tabelas rat_produtividade dezembro 2017


LOAD DATA LOCAL INFILE  'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_Produtividade_20171201_20171231.csv'  -- Aqui vc especifica o local do arquivo
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