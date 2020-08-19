LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\10 - Tbl_dimensao\\efetivo policial\\tbl_policiais.csv'
-- LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\10 - tbl_dimensao\\tbl_policiais.csv'  -- Aqui vc especifica o local do arquivo
replace into table tbl_policiais        -- Aqui você especifica o nome da tabela
fields terminated by ';'
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines
(
@'Órgão Relator',
@'Cargo Relator',
@'Nome Relator',
@'Município Relator',
@'CPF Relator',
@'Matrícula Relator'
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	ORG_SERVIDOR  = @'Órgão Relator',
	CARGO  = @'Cargo Relator',
	NOME  = @'Nome Relator',
	MUNICIPIO = @'Município Relator',
	CPF = @'CPF Relator',
	MATRICULA = @'Matrícula Relator'