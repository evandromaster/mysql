LOAD DATA LOCAL INFILE 'c:/Mysql/rat_produtividade/REDS_RAT_Produtividade_20180201_20180228.csv'  -- Aqui vc especifica o local do arquivo
into table rat_produtividade          -- Aqui você especifica o nome da tabela
fields terminated by '|'
LINES TERMINATED by '\n'
ignore 1 lines
(@RAT.NUM_ATIVIDADE,
@DESCRICAO,
@QUANTIDADE
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	RATNUM_ATIVIDADE = @RAT.NUM_ATIVIDADE,
    RATNUM_ATIVIDADE = rtrim(@RAT.NUM_ATIVIDADE),
	DESCRICAO = rtrim(@DESCRICAO),
    QUANTIDADE = (@QUANTIDADE)