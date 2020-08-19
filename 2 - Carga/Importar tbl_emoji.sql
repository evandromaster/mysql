LOAD DATA LOCAL INFILE 'Z:\\MySql\\10 - tbl_Dimensao\\tbl_emoji.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_emoji          -- Aqui você especifica o nome da tabela
fields terminated by ';'
LINES TERMINATED by '\n'
ignore 1 lines
(

ID,
COD,
SIMBOL,
DESCRICAO,
CARINHA


); -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv Z:\MySql\10 - tbl_Dimensao