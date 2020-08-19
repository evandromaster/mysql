-- importa registros  de RAT da 1º dezena de janeiro de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20170101_20170110.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);
    


-- importa registros  de RAT da 2º dezena de janeiro de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20170111_20170120.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);
    
    
    
-- importa registros  de RAT da 3º dezena de janeiro de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20170121_20170131.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);
    
    
        
-- importa registros  de RAT da 1º dezena de fevereiro de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20170201_20170210.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);


-- importa registros  de RAT da 2º dezena de fevereiro de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20170211_20170220.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);
    
    
    -- importa registros  de RAT da 3º dezena de fevereiro de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20170221_20170228.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);
    
    
    -- importa registros  de RAT da 1º dezena de marco de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20170301_20170310.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);
    
    -- importa registros  de RAT da 2º dezena de marco de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20170311_20170320.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);
    
     -- importa registros  de RAT da 3º dezena de marco de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20170321_20170331.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);
    
     -- importa registros  de RAT da 1º dezena de abril de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20170401_20170410.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);
    
    
      -- importa registros  de RAT da 2º dezena de abril de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20170411_20170420.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);
    
    
      -- importa registros  de RAT da 3º dezena de abril de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20170421_20170430.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);
    
    
    -- importa registros  de RAT da 1º dezena de maio de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20170501_20170510.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);
    
    
     -- importa registros  de RAT da 2º dezena de maio de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20170511_20170520.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);
    
    
      -- importa registros  de RAT da 3º dezena de maio de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20170521_20170531.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);
    
    
    -- importa registros  de RAT da 1º dezena de junho de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20170601_20170610.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);
    
     -- importa registros  de RAT da 2º dezena de junho de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20170611_20170620.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);
    
     -- importa registros  de RAT da 3º dezena de junho de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20170621_20170630.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);
    
     -- importa registros  de RAT da 1º dezena de julho de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20170701_20170710.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);
    
      -- importa registros  de RAT da 2º dezena de julho  de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20170711_20170720.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);
    
    -- importa registros  de RAT da 3º dezena de julho  de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20170721_20170731.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);
    
     -- importa registros  de RAT da 1º dezena de agsto  de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20170801_20170810.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);
    
     -- importa registros  de RAT da 2º dezena de agsto  de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20170811_20170820.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);
    
     -- importa registros  de RAT da 3º dezena de agsto  de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20170821_20170831.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);
    
    
     -- importa registros  de RAT da 1º dezena de setembro  de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20170901_20170910.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);
    
    
    -- importa registros  de RAT da 2º dezena de setembro  de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20170911_20170920.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);
    
    
     -- importa registros  de RAT da 3º dezena de setembro  de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20170921_20170930.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);
    
    
     -- importa registros  de RAT da 1º dezena de outubro  de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20171001_20171010.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);
    
    
     -- importa registros  de RAT da 2º dezena de outubro  de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20171011_20171020.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);
    
      
     -- importa registros  de RAT da 3º dezena de outubro  de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20171021_20171031.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);
    
    
      -- importa registros  de RAT da 1º dezena de novembro  de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20171101_20171110.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);
    
    -- importa registros  de RAT da 2º dezena de novembro  de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20171111_20171120.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);
    
     -- importa registros  de RAT da 3º dezena de novembro  de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20171121_20171130.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);
    
    
      -- importa registros  de RAT da º dezena de dezembro  de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20171201_20171210.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);
    
      -- importa registros  de RAT da 2º dezena de dezembro  de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20171211_20171220.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);
    
      -- importa registros  de RAT da 3º dezena de dezembro  de 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\RQV_JOIN\\REDS_RAT_VIATURAS_20171221_20171231.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO);