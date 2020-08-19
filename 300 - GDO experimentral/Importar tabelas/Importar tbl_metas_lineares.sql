LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\10 - tbl_dimensao\\GDO\\tbl_metas_lineares.csv'  -- Aqui vc especifica o local do arquivo
replace into table tbl_metas_lineares         -- Aqui você especifica o nome da tabela
fields terminated by ';'
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines
(
UEOP,
CIA_BASE,
IAF,
TRI,
RQV_EFICI_EFICA,
RQV_EFETIV,
ROLS,
DDU_CONCL,
DDU_CONCL_SUCES,
INT_COM,
TX_ATEND_VIT,
META_THC,
META_ICV,
META_TSS

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
