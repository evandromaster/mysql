LOAD DATA LOCAL INFILE 'c:/Mysql/rat_efetivo/REDS_RAT_EFETIVOS_20180221_20180228.csv'  -- Aqui vc especifica o local do arquivo
into table rat_efetivo          -- Aqui você especifica o nome da tabela
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
	NOM_UNIDADE = rtrim(@NOM_UNIDADE)