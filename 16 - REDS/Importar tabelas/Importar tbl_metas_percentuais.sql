LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\10 - tbl_dimensao\\GDO\\tbl_metas_percentuais.csv'  -- Aqui vc especifica o local do arquivo
replace into table tbl_metas_percentuais     -- Aqui você especifica o nome da tabela
fields terminated by ';'
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines
(
UEOP,
POP2018,
MUNICIPIO,
REDUCAO_PERC_CV, 
REDUCAO_PERC_HC, 
REDUCAO_PERC_TQF

/*IAF,
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
META_TSS*/

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv

