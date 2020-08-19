LOAD DATA LOCAL INFILE 'Z:\\MySql\\10 - tbl_Dimensao\\validadores\\tbl_validador.csv'  -- Aqui vc especifica o local do arquivo
REPLACE into table tbl_validador        -- Aqui você especifica o nome da tabela
fields terminated by ';'
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines
(

MUNICIPIO,
NREDS,
NRAT,
PONTO_REF,
LOGRADOURO_NAO_CAD,
LOGRADOURO,
COMPLEMENTO_END,
BAIRRO,
BAIRRO_NAO_CAD,
CIA_BASE,
BAIRRO_REF,
SETOR,
SUBSETOR,
OBSERVACAO



); -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv

