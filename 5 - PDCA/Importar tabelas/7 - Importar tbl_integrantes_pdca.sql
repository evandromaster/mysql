TRUNCATE TABLE tbl_integrantes;

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\10 - tbl_dimensao\\pdca\\tbl_integrantes.csv'  -- Aqui vc especifica o local do arquivo
-- LOAD DATA INFILE 'F:\\Mega\\MySql\\10 - Tbl_dimensao\\pdca\\tbl_integrantes.csv'  
replace into table tbl_integrantes       -- Aqui você especifica o nome da tabela
fields terminated by ';'
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines


(
@'Número REDS',
@'Município',
@'Data Fato',
@'Cargo Integrante - Data do Fato',
@'Nome Integrante',
@'Matrícula Integrante',
@'Unidade Integrante Nível 6',
@'Qtde Integrantes Guarnição'



) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 

	NREDS = @'Número REDS',
	MUNICIPIO = @'Município',
    DATA_FATO = str_to_date(@'Data Fato', '%d/%m/%Y'),
    CARGO_INTEGRANTE = @'Cargo Integrante - Data do Fato',
	NOME_INTEGRANTE = @'Nome Integrante',
	MATRICULA_INTEGRANTE = @'Matrícula Integrante',
	UNIDADE_INTEGRANTE = @'Unidade Integrante Nível 6',
    QTDE_INTEGRANTE = @'Qtde Integrantes Guarnição';
    

    
    ;
    
