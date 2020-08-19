-- importa registros  de RAT da 1º dezena de janeiro de 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20200101_20200110.csv'  -- Aqui vc especifica o local do arquivo
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
    
-- importa registros  de RAT da 2º dezena de janeiro de 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20200111_20200120.csv'  -- Aqui vc especifica o local do arquivo
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
    
-- importa registros  de RAT da 3º dezena de janeiro de 2020

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20200121_20200131.csv'  -- Aqui vc especifica o local do arquivo
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

-- importa registros  de RAT da 1º dezena de fevereiro de 2020    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20200201_20200210.csv'  -- Aqui vc especifica o local do arquivo
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
    
    -- importa registros  de RAT da 2º dezena de fevereiro de 2020    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20200211_20200220.csv'  -- Aqui vc especifica o local do arquivo
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
    -- importa registros  de RAT da 3º dezena de fevereiro de 2020    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20200221_20200229.csv'  -- Aqui vc especifica o local do arquivo
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
    
    -- importa registros  de RAT da 1º dezena de marco de 2020    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20200301_20200310.csv'  -- Aqui vc especifica o local do arquivo
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
    
         -- importa registros  de RAT da 2º dezena de marco de 2020    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20200311_20200320.csv'  -- Aqui vc especifica o local do arquivo
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
    
         -- importa registros  de RAT da 3º dezena de marco de 2020    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20200321_20200331.csv'  -- Aqui vc especifica o local do arquivo
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
    
       -- importa registros  de RAT da 1º dezena de ABRIL de 2020    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20200401_20200410.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
                 -- importa registros  de RAT da 2º dezena de ABRIL de 2020    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20200411_20200420.csv'  -- Aqui vc especifica o local do arquivo
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
    
                 -- importa registros  de RAT da 3º dezena de ABRIL de 2020    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20200421_20200430.csv'  -- Aqui vc especifica o local do arquivo
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
    
 /*  -- importa registros  de RAT da 1º dezena de MAIO de 2020    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20200501_20200510.csv'  -- Aqui vc especifica o local do arquivo
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
    
   -- importa registros  de RAT da 2º dezena de MAIO de 2020    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20200511_20200520.csv'  -- Aqui vc especifica o local do arquivo
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
    
   -- importa registros  de RAT da 3º dezena de MAIO de 2020    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20200521_20200531.csv'  -- Aqui vc especifica o local do arquivo
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
        
   -- importa registros  de RAT da 1º dezena de JUNHO de 2020    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20200601_20200610.csv'  -- Aqui vc especifica o local do arquivo
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
    
   -- importa registros  de RAT da 2º dezena de JUNHO de 2020    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20200611_20200620.csv'  -- Aqui vc especifica o local do arquivo
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
    
  -- importa registros  de RAT da 3º dezena de JUNHO de 2020    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20200621_20200630.csv'  -- Aqui vc especifica o local do arquivo
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
    
  -- importa registros  de RAT da 1º dezena de JULHO de 2020    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20200701_20200710.csv'  -- Aqui vc especifica o local do arquivo
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
    
  -- importa registros  de RAT da 2º dezena de JULHO de 2020    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20200711_20200720.csv'  -- Aqui vc especifica o local do arquivo
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
    
  -- importa registros  de RAT da 3º dezena de JULHO de 2020    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20200721_20200731.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
  -- importa registros  de RAT da 1º dezena de AGOSTO de 2020    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20200801_20200810.csv'  -- Aqui vc especifica o local do arquivo
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

  -- importa registros  de RAT da 2º dezena de AGOSTO de 2020    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20200811_20200820.csv'  -- Aqui vc especifica o local do arquivo
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
    
   -- importa registros  de RAT da 3º dezena de AGOSTO de 2020    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20200821_20200831.csv'  -- Aqui vc especifica o local do arquivo
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
    
       -- importa registros  de RAT da 1º dezena de SETEMBRO de 2020    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20200901_20200910.csv'  -- Aqui vc especifica o local do arquivo
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
    -- importa registros  de RAT da 1º dezena de SETEMBRO de 2020    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20200901_20200910.csv'  -- Aqui vc especifica o local do arquivo
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
    
 -- importa registros  de RAT da 2º dezena de SETEMBRO de 2020    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20200911_20200920.csv'  -- Aqui vc especifica o local do arquivo
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
            
  -- importa registros  de RAT da 3º dezena de SETEMBRO de 2020    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20200921_20200930.csv'  -- Aqui vc especifica o local do arquivo
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
    
-- importa registros  de RAT da 1º dezena de OUTUBRO de 2020    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20201001_20201010.csv'  -- Aqui vc especifica o local do arquivo
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
            
-- importa registros  de RAT da 2º dezena de OUTUBRO de 2020    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20201011_20201020.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
-- importa registros  de RAT da 3º dezena de OUTUBRO de 2020    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20201021_20201031.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
-- importa registros  de RAT da 1º dezena de NOVEMBRO de 2020    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20201101_20201110.csv'  -- Aqui vc especifica o local do arquivo
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
            
-- importa registros  de RAT da 2º dezena de NOVEMBRO de 2020    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20201111_20201120.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
-- importa registros  de RAT da 3º dezena de NOVEMBRO de 2020    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20201121_20201130.csv'  -- Aqui vc especifica o local do arquivo
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
            
            
            
-- importa registros  de RAT da 1º dezena de DEZEMBRO de 2020    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20201201_20201210.csv'  -- Aqui vc especifica o local do arquivo
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
            
-- importa registros  de RAT da 2º dezena de DEZEMBRO de 2020    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20201211_20201220.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
-- importa registros  de RAT da 3º dezena de DEZEMBRO de 2020    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20201221_20201231.csv'  -- Aqui vc especifica o local do arquivo
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
            
            
            
