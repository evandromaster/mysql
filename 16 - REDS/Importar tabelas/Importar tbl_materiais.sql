TRUNCATE TABLE tbl_materiais;
LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\10 - tbl_dimensao\\GDO\\tbl_materiais.csv'  -- Aqui vc especifica o local do arquivo
-- LOAD DATA INFILE 'I:\\Meganz\\PMMG\\MySql\\10-2 - Tbl_dimensao\\gdo\\tbl_materiais.csv'
replace into table tbl_materiais         -- Aqui você especifica o nome da tabela
fields terminated by ';'
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines 
(
@'Número REDS',
@'Órgão Unidade Registro',
@'Unidade Área Militar',
@'Unid Registro Nível 6',
@'Código Subclasse Nat Principal',
@'Tentado/Consumado Nat Principal',
@'Logradouro Ocorrência - Tipo',
@'Logradouro Ocorrência',
@'Logradouro Ocorrência Não Cadastrado',
@'Logradouro Cruzamento',
@'Logradouro Cruzamento Não Cadastrado',
@'Número Logradouro',
@Bairro,
@'Bairro Não Cadastrado',
@'Complemento Endereço',
@'Ponto de Referência',
@'Município',
@Latitude,
@Longitude,
@'Data Fato',
@'Horário Fato',
@'Descrição Tipo Material',
-- @'Descrição Longa Unidade Medida',
@'Situação Material',
@'Qtde Materiais',
-- @'Qtde/Volume Material'
@fnc_ueop, 
@fnc_companhia_reds, 
@fnc_fracao_reds_7rpm, 
@fnc_setor_reds_7rpm, 
@fnc_tipo_validador_reds
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv

set 
	NREDS = @'Número REDS',
	ORG_UN_REG = @'Órgão Unidade Registro',
    UN_AREA_MIL = @'Unidade Área Militar',
    UN_REGISTRO = @'Unid Registro Nível 6',
    COD_DIAO = @'Código Subclasse Nat Principal',
	T_C = @'Tentado/Consumado Nat Principal',
    LOG_TIPO = @'Logradouro Ocorrência - Tipo',
	LOGRADOURO = @'Logradouro Ocorrência',
	LOGRADOURO_NAO_CAD = @'Logradouro Ocorrência Não Cadastrado',
	LOGRADOURO_CRUZ = @'Logradouro Cruzamento',
	LOGRADOURO_CRUZ_NAO_CAD = @'Logradouro Cruzamento Não Cadastrado',
	N_LOG = @'Número Logradouro',
	BAIRRO = @Bairro,
	BAIRRO_NAO_CAD = @'Bairro Não Cadastrado',
	COMPLEMENTO_END = @'Complemento Endereço',
	PONTO_REF = @'Ponto de Referência',
	MUNICIPIO = @'Município',
    LATITUDE =  replace(@Latitude, '.', ','),
	LONGITUDE = replace(@Longitude, '.', ','),
	DATA_FATO = str_to_date(@'Data Fato', '%d/%m/%Y'),
	HORA_FATO = @'Horário Fato',
	DESC_TIPO_MATERIAL = @'Descrição Tipo Material',
    -- UNIDADE_MEDIDA = @'Descrição Longa Unidade Medida',
	SITUACAO_MATERIAL = @'Situação Material',
    QTDE_MAT = @'Qtde Materiais',
	-- QTDE_MAT_VOL = @'Qtde/Volume Material';
	UEOP = fnc_ueop(@'Município'), 
	COMPANHIA = fnc_companhia_reds_7rpm(@'Município', @'Número REDS', @Bairro, @'Bairro Não Cadastrado', @'Logradouro Ocorrência', @'Logradouro Ocorrência Não Cadastrado', @'Logradouro Cruzamento', @'Logradouro Cruzamento Não Cadastrado', @'Complemento Endereço', @'Ponto de Referência'),
-- 	CIA_SEDE = fnc_cia_sede_reds_7rpm (@'Município', @'Número REDS', @Bairro, @'Bairro Não Cadastrado', @'Logradouro Ocorrência', @'Logradouro Ocorrência Não Cadastrado', @'Logradouro Cruzamento', @'Logradouro Cruzamento Não Cadastrado', @'Complemento Endereço', @'Ponto de Referência'), 
	FRACAO = fnc_fracao_reds_7rpm (@'Município', @'Número REDS', @Bairro, @'Bairro Não Cadastrado', @'Logradouro Ocorrência',@'Logradouro Ocorrência Não Cadastrado', @'Logradouro Cruzamento', @'Logradouro Cruzamento Não Cadastrado', @'Complemento Endereço', @'Ponto de Referência'),
	SETOR = fnc_setor_reds_7rpm (@'Município', @'Número REDS', @Bairro, @'Bairro Não Cadastrado', @'Logradouro Ocorrência', @'Logradouro Ocorrência Não Cadastrado', @'Logradouro Cruzamento', @'Logradouro Cruzamento Não Cadastrado', @'Complemento Endereço', @'Ponto de Referência'), 
	VALIDADOR = fnc_tipo_validador_reds(@'Município', @'Número REDS', @Bairro, @'Bairro Não Cadastrado', @'Logradouro Ocorrência', @'Logradouro Ocorrência Não Cadastrado', @'Logradouro Cruzamento', @'Logradouro Cruzamento Não Cadastrado', @'Complemento Endereço', @'Ponto de Referência')
    










