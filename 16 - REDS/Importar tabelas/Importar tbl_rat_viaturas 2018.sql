-- importa registros  de RAT da 1º dezena de janeiro de 2018

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20180101_20180110.csv'  -- Aqui vc especifica o local do arquivo
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
    

 -- importa registros  de RAT da 2º dezena de janeiro de 2018

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20180111_20180120.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
    -- importa registros  de RAT mes de janeiro de 2018

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20180101_20180131.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
     -- importa registros  de RAT mes de fevereiro de 2018

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20180201_20180228.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
    -- importa registros  de RAT da 1º dezena de marco de 2018

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20180301_20180310.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
     -- importa registros  de RAT da 2º dezena de marco de 2018

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20180311_20180320.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
      -- importa registros  de RAT da 3º dezena de marco de 2018

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20180321_20180331.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
      -- importa registros  de RAT da 1º dezena de abril de 2018

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20180401_20180410.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
     -- importa registros  de RAT da 2º dezena de abril de 2018

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20180411_20180420.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
      -- importa registros  de RAT da 3º dezena de abril de 2018

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20180421_20180430.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
    
     -- importa registros  de RAT da 1º dezena de maio de 2018

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20180501_20180510.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
    -- importa registros  de RAT da 2º dezena de maio de 2018

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20180511_20180520.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
    -- importa registros  de RAT da 3º dezena de maio de 2018

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20180521_20180531.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
    -- importa registros  de RAT da 1º dezena de Junho de 2018

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20180601_20180610.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
    -- importa registros  de RAT da 2º dezena de Junho de 2018

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20180611_20180620.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
     -- importa registros  de RAT da 3º dezena de Junho de 2018

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20180621_20180630.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
     -- importa registros  de RAT da 1º dezena de Julho de 2018

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20180701_20180710.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
    -- importa registros  de RAT da 2º dezena de Julho de 2018

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20180711_20180720.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
    -- importa registros  de RAT da 3º dezena de Julho de 2018

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20180721_20180731.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
     -- importa registros  de RAT da 1º dezena de agosto de 2018

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20180801_20180810.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
    
      -- importa registros  de RAT da 2º dezena de agosto de 2018

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20180811_20180820.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
    -- importa registros  de RAT da 3º dezena de agosto de 2018

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20180821_20180831.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
     -- importa registros  de RAT da 1º dezena de setembro de 2018

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20180901_20180910.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
    -- importa registros  de RAT da 2º dezena de setembro de 2018

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20180911_20180920.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
    -- importa registros  de RAT da 3º dezena de setembro de 2018

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20180921_20180930.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
     -- importa registros  de RAT da 1º dezena de outubro de 2018

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20181001_20181010.csv'  -- Aqui vc especifica o local do arquivo
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
    
    -- importa registros  de RAT da 2º dezena de outubro de 2018

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20181011_20181020.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
     -- importa registros  de RAT da 3º dezena de outubro de 2018

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20181021_20181031.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
     -- importa registros  de RAT da 1º dezena de novembro de 2018

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20181101_20181110.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
    -- importa registros  de RAT da 2º dezena de novembro de 2018

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20181111_20181120.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
     -- importa registros  de RAT da 3º dezena de novembro de 2018

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20181121_20181130.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
     -- importa registros  de RAT da 1º dezena de dezembro de 2018

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20181201_20181210.csv'  -- Aqui vc especifica o local do arquivo
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
    
     -- importa registros  de RAT da 2º dezena de dezembro de 2018

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20181211_20181220.csv'  -- Aqui vc especifica o local do arquivo
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
    
     -- importa registros  de RAT da 3º dezena de dezembro de 2018

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20181221_20181231.csv'  -- Aqui vc especifica o local do arquivo
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