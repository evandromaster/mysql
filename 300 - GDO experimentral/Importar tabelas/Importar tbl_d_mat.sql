TRUNCATE TABLE tbl_d_mat;

LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\10 - tbl_dimensao\\pdca\\tbl_d_mat.csv'  -- Aqui vc especifica o local do arquivo
replace into table tbl_d_mat       -- Aqui você especifica o nome da tabela
fields terminated by ';'
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines
(
@'Código Grupo Tipo Material',
@'Descrição Longa Grupo Tipo Material',
@'Código Tipo Material',
@'Descrição Longa Tipo Material',
@'Descrição Longa Unidade Medida',
@Valor
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set    
    COD_GRUPO_TIPO_MATERIAL = @'Código Grupo Tipo Material',
	DESC_GRUPO_TIPO_MATERIAL = @'Descrição Longa Grupo Tipo Material',
	COD_TIPO_MATERIAL = @'Código Tipo Material',
	DESC_TIPO_MATERIAL = @'Descrição Longa Tipo Material',
	UNIDADE_MEDIDA = @'Descrição Longa Unidade Medida',
	VALOR = @Valor;
    
