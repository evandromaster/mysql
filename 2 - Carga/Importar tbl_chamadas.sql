-- TRUNCATE TABLE tbl_chamadas;

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\10 - Tbl_dimensao\\chamadas\\chamadas_07.csv' -- pc antigo
-- LOAD DATA INFILE  '//home//ferramentas//mysql//10 - Tbl_dimensao//gdo//tbl_crimes.csv' -- servido linux
-- LOAD DATA INFILE 'F:\\Mega\\MySql\\10 - Tbl_dimensao\\gdo\\tbl_crimes.csv'  -- Aqui vc especifica o local do arquivo-- pc novo
-- LOAD DATA INFILE 'I:\\Meganz\\PMMG\\MySql\\10 - Tbl_dimensao\\chamadas\\tbl_chamadas.csv' --  home pc

replace into table tbl_chamadas       -- Aqui você especifica o nome da tabela
fields terminated by ';' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines
(
@'Nº chamada',
@'Data/hora de criação',
@'Local do fato',
@'Latitude  do local',
@'Longitude do local',
@'Natureza',
@'Unidade Responsável',
@'Recursos empenhados',
@'Alerta',
@'Destaque',
@'Envolve autoridade',
@'Tipo de classificação',
@'Situação',
@'Data/hora da situação atual',
@fnc_ueop

/*, 
@fnc_companhia_reds_7rpm, 
@fnc_fracao_reds_7rpm, 
@fnc_setor_reds_7rpm, 
@fnc_tipo_validador_reds*/

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	NCHAMADA = @'Nº chamada',
    DATA_HR_CRIACAO = str_to_date(@'Data/hora de criação', '%d/%m/%Y %H:%i'), -- str_to_date(@'Data Comunicação Fato', '%d/%m/%Y'),  (STR_TO_DATE('5/15/2012 8:06:26 AM', '%c/%e/%Y %r'))
	DATA_CRIACAO = str_to_date(SUBSTRING_INDEX(@'Data/hora de criação',' ',1), '%d/%m/%Y'),
    HORA_CRIACAO = SUBSTRING_INDEX(@'Data/hora de criação',' ',-1),
    LOCAL_FATO = SUBSTRING_INDEX(@'Local do fato','-',1), -- SELECT SUBSTRING_INDEX('www.mytestpage.info','.',1)
	BAIRRO = RTRIM(LTRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(@'Local do fato','-',-2),'-',1))),
   	MUNICIPIO = ltrim(SUBSTRING_INDEX(@'Local do fato','-',-1)),
    LATITUDE =  CONCAT(LEFT(REPLACE(@'Latitude  do local', '.', ''),3),',' ,MID(REPLACE(@'Latitude  do local', '.', ''),4,10)),-- replace(@'Latitude  do local', '.', ','),
	LONGITUDE = CONCAT(LEFT(REPLACE(@'Longitude do local', '.', ''),3),',' ,MID(REPLACE(@'Longitude do local', '.', ''),4,10)), -- replace(@'Longitude do local', '.', ','),
    COD_DIAO = SUBSTRING_INDEX(@'Natureza','-',1), --  SELECT IF(500<1000, "YES", "NO");
    NATUREZA = SUBSTRING_INDEX(@'Natureza','-',-2),
	UN_RESPONSAVEL = @'Unidade Responsável',
	RECURSOS_EMPENHADOS = @'Recursos empenhados',
    ALERTA = @'Alerta',
	DESTAQUE = @'Destaque',
    ENVOLVE_AUTORIDADE = @'Envolve autoridade',
	CLASSIFICACAO = @'Tipo de classificação',
    SITUACAO =@'Situação',
    DTA_HR_SIT_ATUAL = str_to_date(@'Data/hora da situação atual', '%d/%m/%Y %H:%i'),
	
    UEOP = fnc_ueop(ltrim(SUBSTRING_INDEX(@'Local do fato','-',-1)))
    
    /*,
	COMPANHIA = fnc_companhia_reds_7rpm (@'Município', @'Número REDS', @Bairro, @'Bairro Não Cadastrado', @'Logradouro Ocorrência', @'Logradouro Ocorrência Não Cadastrado', @'Logradouro Cruzamento', @'Logradouro Cruzamento Não Cadastrado', @'Complemento Endereço', @'Ponto de Referência'),
	FRACAO = fnc_fracao_reds_7rpm (@'Município', @'Número REDS', @Bairro, @'Bairro Não Cadastrado', @'Logradouro Ocorrência', @'Logradouro Ocorrência Não Cadastrado', @'Logradouro Cruzamento', @'Logradouro Cruzamento Não Cadastrado', @'Complemento Endereço', @'Ponto de Referência'),
	SETOR = fnc_setor_reds_7rpm (@'Município', @'Número REDS', @Bairro, @'Bairro Não Cadastrado', @'Logradouro Ocorrência', @'Logradouro Ocorrência Não Cadastrado', @'Logradouro Cruzamento', @'Logradouro Cruzamento Não Cadastrado', @'Complemento Endereço', @'Ponto de Referência'), 
	VALIDADOR = fnc_tipo_validador_reds (@'Município', @'Número REDS', @Bairro, @'Bairro Não Cadastrado', @'Logradouro Ocorrência', @'Logradouro Ocorrência Não Cadastrado', @'Logradouro Cruzamento', @'Logradouro Cruzamento Não Cadastrado', @'Complemento Endereço', @'Ponto de Referência')
    */
    ;
   

