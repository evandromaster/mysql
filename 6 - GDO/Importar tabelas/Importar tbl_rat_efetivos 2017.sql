-- importa tabelas rat_efetivo mes de janeiro 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20170101_20170131.csv'  -- Aqui vc especifica o local do arquivo
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
    

-- importa tabelas rat_efetivo mes de fevereiro 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20170201_20170228.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
    -- importa tabelas rat_efetivo mes de marco 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20170301_20170331.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
    -- importa tabelas rat_efetivo mes de abril 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20170401_20170430.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
    -- importa tabelas rat_efetivo mes de maio 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20170501_20170531.csv'  -- Aqui vc especifica o local do arquivo
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
    
     -- importa tabelas rat_efetivo mes de junho 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20170601_20170630.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
       -- importa tabelas rat_efetivo mes de julho 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20170701_20170731.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
    -- importa tabelas rat_efetivo mes de agosto 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20170801_20170831.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
     -- importa tabelas rat_efetivo mes de setembro 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20170901_20170930.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
     -- importa tabelas rat_efetivo 1 dezena de outubro 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20171001_20171010.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
     -- importa tabelas rat_efetivo 2 dezena de outubro 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20171011_20171020.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
    -- importa tabelas rat_efetivo 3 dezena outubro 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20171021_20171031.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
     
    -- importa tabelas rat_efetivo 1 dezena novembro 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20171101_20171110.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
     
    -- importa tabelas rat_efetivo 2 dezena novembro 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20171111_20171120.csv'  -- Aqui vc especifica o local do arquivo
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
    
     -- importa tabelas rat_efetivo 3 dezena novembro 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20171121_20171130.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
      -- importa tabelas rat_efetivo 1 dezena dezembr 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20171201_20171210.csv'  -- Aqui vc especifica o local do arquivo
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
    
    
     
      -- importa tabelas rat_efetivo 2 dezena dezembr 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20171211_20171220.csv'  -- Aqui vc especifica o local do arquivo
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
    
     -- importa tabelas rat_efetivo 3 dezena dezembr 2017

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\15 -  RAT BOS\\rat_efetivos\\REDS_RAT_EFETIVOS_20171221_20171231.csv'  -- Aqui vc especifica o local do arquivo
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
    