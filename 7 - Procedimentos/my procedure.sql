DELIMITER //

CREATE PROCEDURE TESTE2 ()
BEGIN

	TRUNCATE TABLE tbl_arm_fgo_aux;

	LOAD DATA LOCAL INFILE 'C:\\Mysql\\Tbl_Dimensao\\tbl_arm_fgo.csv'  -- Aqui vc especifica o local do arquivo
	into table tbl_arm_fgo_aux          -- Aqui você especifica o nome da tabela
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
		
	DELETE FROM tbl_arm_fgo_aux WHERE NREDS = "";
		   
	INSERT INTO tbl_arm_fgo (SELECT * FROM tbl_arm_fgo_aux WHERE NREDS NOT IN (SELECT NREDS FROM tbl_arm_fgo));

	SELECT COUNT(*) FROM tbl_arm_fgo;

END//


DELIMITER ;

CALL TESTE();