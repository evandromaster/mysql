LOAD DATA LOCAL INFILE 'Z:\\MySql\\10- tbl_Dimensao\\tbl_meta_linear.csv'  -- Aqui vc especifica o local do arquivo
replace into table tbl_meta_linear         -- Aqui você especifica o nome da tabela
fields terminated by ';'
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines
(
CIA_BASE,
IAF,
TRI,
RQV_EFICI_EFICA,
RQV_EFETIV,
ROLS,
DDU_CONCL,
DDU_CONCL_SUCES,
INT_COM,
TX_ATEND_VIT
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
