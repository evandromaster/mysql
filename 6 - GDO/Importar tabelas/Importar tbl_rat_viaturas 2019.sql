-- importa registros  de RAT da 1º dezena de janeiro de 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20190101_20190110.csv'  -- Aqui vc especifica o local do arquivo
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
    
-- importa registros  de RAT da 2º dezena de janeiro de 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20190111_20190120.csv'  -- Aqui vc especifica o local do arquivo
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
    
-- importa registros  de RAT da 3º dezena de janeiro de 2019

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20190121_20190131.csv'  -- Aqui vc especifica o local do arquivo
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

-- importa registros  de RAT da 1º dezena de fevereiro de 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20190201_20190210.csv'  -- Aqui vc especifica o local do arquivo
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
    
    -- importa registros  de RAT da 2º dezena de fevereiro de 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20190211_20190220.csv'  -- Aqui vc especifica o local do arquivo
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
    -- importa registros  de RAT da 3º dezena de fevereiro de 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20190221_20190228.csv'  -- Aqui vc especifica o local do arquivo
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
    
     -- importa registros  de RAT da 1º dezena de marco de 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20190301_20190310.csv'  -- Aqui vc especifica o local do arquivo
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
    
         -- importa registros  de RAT da 2º dezena de marco de 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20190311_20190320.csv'  -- Aqui vc especifica o local do arquivo
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
    
         -- importa registros  de RAT da 3º dezena de marco de 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20190321_20190331.csv'  -- Aqui vc especifica o local do arquivo
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
    
             -- importa registros  de RAT da 1º dezena de ABRIL de 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20190401_20190410.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
                 -- importa registros  de RAT da 2º dezena de ABRIL de 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20190411_20190420.csv'  -- Aqui vc especifica o local do arquivo
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
    
                 -- importa registros  de RAT da 3º dezena de ABRIL de 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20190421_20190430.csv'  -- Aqui vc especifica o local do arquivo
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
    
   -- importa registros  de RAT da 1º dezena de MAIO de 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20190501_20190510.csv'  -- Aqui vc especifica o local do arquivo
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
    
   -- importa registros  de RAT da 2º dezena de MAIO de 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20190511_20190520.csv'  -- Aqui vc especifica o local do arquivo
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
    
   -- importa registros  de RAT da 3º dezena de MAIO de 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20190521_20190531.csv'  -- Aqui vc especifica o local do arquivo
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
        
   -- importa registros  de RAT da 1º dezena de JUNHO de 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20190601_20190610.csv'  -- Aqui vc especifica o local do arquivo
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
    
   -- importa registros  de RAT da 2º dezena de JUNHO de 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20190611_20190620.csv'  -- Aqui vc especifica o local do arquivo
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
    
  -- importa registros  de RAT da 3º dezena de JUNHO de 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20190621_20190630.csv'  -- Aqui vc especifica o local do arquivo
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
    
  -- importa registros  de RAT da 1º dezena de JULHO de 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20190701_20190710.csv'  -- Aqui vc especifica o local do arquivo
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
    
  -- importa registros  de RAT da 2º dezena de JULHO de 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20190711_20190720.csv'  -- Aqui vc especifica o local do arquivo
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
    
  -- importa registros  de RAT da 3º dezena de JULHO de 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20190721_20190731.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
  -- importa registros  de RAT da 1º dezena de AGOSTO de 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20190801_20190810.csv'  -- Aqui vc especifica o local do arquivo
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

  -- importa registros  de RAT da 2º dezena de AGOSTO de 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20190811_20190820.csv'  -- Aqui vc especifica o local do arquivo
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
    
   -- importa registros  de RAT da 3º dezena de AGOSTO de 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20190821_20190831.csv'  -- Aqui vc especifica o local do arquivo
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
    
       -- importa registros  de RAT da 1º dezena de SETEMBRO de 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20190901_20190910.csv'  -- Aqui vc especifica o local do arquivo
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
    -- importa registros  de RAT da 1º dezena de SETEMBRO de 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20190901_20190910.csv'  -- Aqui vc especifica o local do arquivo
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
    
 -- importa registros  de RAT da 2º dezena de SETEMBRO de 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20190911_20190920.csv'  -- Aqui vc especifica o local do arquivo
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
            
  -- importa registros  de RAT da 3º dezena de SETEMBRO de 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20190921_20190930.csv'  -- Aqui vc especifica o local do arquivo
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
    
-- importa registros  de RAT da 1º dezena de OUTUBRO de 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20191001_20191010.csv'  -- Aqui vc especifica o local do arquivo
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
            
-- importa registros  de RAT da 2º dezena de OUTUBRO de 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20191011_20191020.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
-- importa registros  de RAT da 3º dezena de OUTUBRO de 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20191021_20191031.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
-- importa registros  de RAT da 1º dezena de NOVEMBRO de 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20191101_20191110.csv'  -- Aqui vc especifica o local do arquivo
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
            
-- importa registros  de RAT da 2º dezena de NOVEMBRO de 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20191111_20191120.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
-- importa registros  de RAT da 3º dezena de NOVEMBRO de 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20191121_20191130.csv'  -- Aqui vc especifica o local do arquivo
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
            
            
            
-- importa registros  de RAT da 1º dezena de DEZEMBRO de 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20191201_20191210.csv'  -- Aqui vc especifica o local do arquivo
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
            
-- importa registros  de RAT da 2º dezena de DEZEMBRO de 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20191211_20191220.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
-- importa registros  de RAT da 3º dezena de DEZEMBRO de 2019    
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\15 - RAT BOS\\rat_viaturas\\REDS_RAT_VIATURAS_20191221_20191231.csv'  -- Aqui vc especifica o local do arquivo
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
            
            
            
