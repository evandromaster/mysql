truncate tbl_recursos_humanos;

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\10 - Tbl_dimensao\\efetivo policial\\tbl_recursos_humanos.csv'
-- LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\10 - tbl_dimensao\\tbl_recursos_humanos.csv'  -- Aqui vc especifica o local do arquivo
replace into table tbl_recursos_humanos       -- Aqui você especifica o nome da tabela
fields terminated by ';'
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines
(
@'Órgão Atual Integrante',
@'Matrícula Integrante Recurso',
@'Cargo Atual Integrante',
@'Nome Integrante Recurso',
@'CPF Integrante Recurso',
@'Unidade Serviço Atual Integrante',
@'Município Atual Integrante'

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	ORG_SERVIDOR  = @'Órgão Atual Integrante',
	MATRICULA = @'Matrícula Integrante Recurso',
    CARGO = @'Cargo Atual Integrante',
	NOME  = @'Nome Integrante Recurso',
    CPF = @'CPF Integrante Recurso',
    UNIDADE_SERVICO = @'Unidade Serviço Atual Integrante',
	MUNICIPIO = @'Município Atual Integrante';
	



/*
truncate tbl_recursos_humanos;

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\10 - Tbl_dimensao\\efetivo policial\\tbl_recursos_humanos.csv'
-- LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\10 - tbl_dimensao\\tbl_recursos_humanos.csv'  -- Aqui vc especifica o local do arquivo
replace into table tbl_recursos_humanos       -- Aqui você especifica o nome da tabela
fields terminated by ';'
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines
(
@'Órgão Atual Integrante',
@'Matrícula Integrante',
@'Cargo Integrante - Data do Fato',
@'Nome Integrante',
@'CPF Integrante',
@'Unidade Serviço Atual Integrante',
@'Município Atual Integrante'

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	ORG_SERVIDOR  = @'Órgão Atual Integrante',
	MATRICULA = @'Matrícula Integrante',
    CARGO = @'Cargo Integrante - Data do Fato',
	NOME  = @'Nome Integrante',
    CPF = @'CPF Integrante',
    UNIDADE_SERVICO = @'Unidade Serviço Atual Integrante',
	MUNICIPIO = @'Município Atual Integrante';
	
	*/
    
