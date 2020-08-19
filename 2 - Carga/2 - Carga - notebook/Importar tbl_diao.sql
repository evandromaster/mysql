LOAD DATA LOCAL INFILE 'Z:\\Mysql\\10- Tbl_Dimensao\\tbl_natureza.csv'  -- Aqui vc especifica o local do arquivo
replace into table tbl_natureza     -- Aqui você especifica o nome da tabela
fields terminated by ';'
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines
(
@'Código Grupo Nat Principal' ,
@'Desc Longa Grupo Nat Principal',
@'Código Classe',
@'Descrição Classe',
@'Código Subclasse Nat Principal',
@'Desc Longa Subclasse Nat Principal'
-- @'Tentado/Consumado Nat Principal',
-- @TIPO_REL
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
	COD_GRUPO  = @'Código Grupo Nat Principal' ,
	DESC_GRUPO  = @'Desc Longa Grupo Nat Principal',
    COD_CLASSE = @'Código Classe',
	DESC_CLASSE = @'Descrição Classe',
	COD_SUBCLASSE  = @'Código Subclasse Nat Principal',
	DESC_SUBCLASSE  = @'Desc Longa Subclasse Nat Principal';
    


    
