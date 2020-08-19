LOAD DATA LOCAL INFILE 'Z:\\MySql\\10- tbl_Dimensao\\tbl_ddu_jan.csv'  -- Aqui vc especifica o local do arquivo
replace into table tbl_ddu       -- Aqui você especifica o nome da tabela
fields terminated by ';'
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines
(
@RESPOSTA,
@RESTANTE,
@'DATA',
@DDU,
@ASSUNTO,
@'RUA / AV',
@BAIRRO,
@CIDADE,
@CEP,
@DENUNCIADO,
@CIA,
@DOCUMENTO,
@SUCESSO,
@NATUREZA,
@'DATA RESPOTA',
@'CONCLUSÃO'
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv

set PRAZO_RESPOSTA = str_to_date(@RESPOSTA, '%d/%m/%Y'),
	RESTANTE =  @RESTANTE,
	DATA_DEN = str_to_date(@'DATA', '%d/%m/%Y'),
	DDU = @DDU,
	ASSUNTO =  @ASSUNTO,
	ENDERECO =@'RUA / AV',
	BAIRRO = @BAIRRO,
	MUNICIPIO = @CIDADE,
	CEP = @CEP,
	DENUNCIADO = @DENUNCIADO,
	CIA_BASE = @CIA,
	DOCUMENTO = @DOCUMENTO,
	SUCESSO = @SUCESSO,
	NATUREZA = @NATUREZA,
	DATA_RESPOSTA = str_to_date(@'DATA RESPOTA', '%d/%m/%Y'),
	CONCLUSAO = @'CONCLUSÃO';
