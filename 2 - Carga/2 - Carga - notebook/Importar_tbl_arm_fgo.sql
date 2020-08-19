LOAD DATA LOCAL INFILE 'C:\\Mysql\\Tbl_Dimensao\\tbl_arm_fgo.csv'  -- Aqui vc especifica o local do arquivo
into table tbl_arm_fgo          -- Aqui você especifica o nome da tabela
fields terminated by ';'
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines 
(
@'Número REDS',
@'Órgão Unidade Registro',
@'Município',
@'Situação Arma',
@'Tipo Arma',
@'Data Fato',
@'Horário Fato',

@'Qtde Ocorrências'
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	NREDS = @'Número REDS',
	ORG_UN_REG = @'Órgão Unidade Registro',
    MUNICIPIO = @'Município',
	SITUACAO_ARMA = @'Situação Arma',
	TIPO_ARMA = @'Tipo Arma',
	DATA_FATO = str_to_date(@'Data Fato', '%d/%m/%Y'),
	HORA = @'Horário Fato',
    QTDE_ARM_FOGO = @'Qtde Ocorrências';
       
       select count(*) from tbl_arm_fgo;
/*DELETE FROM tbl_arm_fgo
WHERE NREDS = '';
select count(*) from tbl_arm_fgo