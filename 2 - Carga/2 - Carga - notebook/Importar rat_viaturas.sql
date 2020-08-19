LOAD DATA LOCAL INFILE 'c:/Mysql/rat_viaturas/REDS_RAT_VIATURAS_20180111_20180120.csv'  -- Aqui vc especifica o local do arquivo
into table rat_viaturas          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@NUM_ATIVIDADE,
@NUM_SEQ_RECURSO,
@NUM_PLACA,
@NUM_PREFIXO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	NUM_ATIVIDADE = @NUM_ATIVIDADE,
    NUM_ATIVIDADE = rtrim(@NUM_ATIVIDADE),
    NUM_SEQ_RECURSO = rtrim(@NUM_SEQ_RECURSO),
	NUM_PLACA = rtrim(@NUM_PLACA),
    NUM_PREFIXO = (@NUM_PREFIXO)