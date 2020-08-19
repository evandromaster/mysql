TRUNCATE TABLE tbl_transacional;

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\10 - tbl_dimensao\\transacional\\tbl_transacional.csv'  -- Aqui vc especifica o local do arquivo
replace into table tbl_transacional        -- Aqui você especifica o nome da tabela
fields terminated by ';'
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines
(
		@'Num REDS',
		@'Codigo Natureza',
		@'Natureza',
		@'Tentado/Consumado',
		@'Orgao',
		@'Codigo Unidade Responsavel',
		@'Nome Unidade Responsavel',
		@'Data do fato',
		@'Hora do fato',
		@'Municipio',
		@Latitude,
		@Longitude,
		@'Codigo Municipio',
		@'Historico',
		@'Tipo Logradouro',
		@'Nome Logradouro',
		@'Complemento Alfanumerico',
		@'Numero Endereco',
		@'Numero Complementar',
		@'Tipo Logradouro Cruzamento',
		@'Nome Logradouro Cruzamento',
		@'Nome Bairro',
     --    '',
		@'Codigo Unidade Area Militar',
		@'Nome Unidade Area Militar',
		@'Codigo Unidade Area Civil',
        @'Nome Unidade Area Civil',
		@'Codigo Complemento',
		@'Descricao Complemento',
		@'Codigo Tipo Local',
		@'Descricao Tipo Local',
		@'Codigo Instrumento Utilizado',
		@'Descricao Instrumento Utilizado',
		@'Data registro', 
		@'Hora registro',
		@fnc_ueop, 
		@fnc_companhia_reds_7rpm, 
		@fnc_fracao_reds_7rpm, 
		@fnc_setor_reds_7rpm, 
		@fnc_tipo_validador_reds



) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set
		NREDS = @'Num REDS',
		COD_DIAO = @'Codigo Natureza',
		DESC_DIAO = @'Natureza',
		T_C = @'Tentado/Consumado',
		ORG_UN_REG = @'Orgao',
		UN_RESP = @'Codigo Unidade Responsavel',
		UN_RESP_NOME = @'Nome Unidade Responsavel',
		DATA_FATO = str_to_date(@'Data do fato', '%d/%m/%Y'),
		HORA_FATO = @'Hora do fato',
		MUNICIPIO = @'Municipio',
		LATITUDE =  replace(@Latitude, '.', ','),
		LONGITUDE = replace(@Longitude, '.', ','),
		COD_MUNI = @'Codigo Municipio',
		HISTORICO= @'Historico',
		LOG_TIPO = @'Tipo Logradouro',
		LOGRADOURO = @'Nome Logradouro',
		COMPLEMENTO_END = @'Complemento Alfanumerico',
		N_LOG = @'Numero Endereco',
		N_LOG_COMPL = @'Numero Complementar',
		LOG_TIPO_CRUZ = @'Tipo Logradouro Cruzamento',
		LOGRADOURO_CRUZ = @'Nome Logradouro Cruzamento',
		BAIRRO = @'Nome Bairro',
--         BAIRRO_NAO_CAD = '',
		UN_AREA_MIL = @'Codigo Unidade Area Militar',
		UN_AREA_MIL_NOME = @'Nome Unidade Area Militar',
		COD_AREA_CIVIL = @'Codigo Unidade Area Civil',
		NOME_AREA_CIVIL = @'Nome Unidade Area Civil',
		COD_COMPL = @'Codigo Complemento',
		DESC_COMPL = @'Descricao Complemento',
		COD_TIPO_LOCAL = @'Codigo Tipo Local',
		DESC_TIPO_LOCAL = @'Descricao Tipo Local',
		COD_INSTRUMENTO_UTIL = @'Codigo Instrumento Utilizado',
		DESC_INSTRUMENTO_UTIL = @'Descricao Instrumento Utilizado',
		DATA_REG = str_to_date(@'Data registro', '%d/%m/%Y'),
		HORA_REG= @'Hora registro',
		UEOP = fnc_ueop(@'Municipio'),
        
		COMPANHIA = fnc_companhia_reds_7rpm (@'Municipio', @'Num REDS', @'Nome Bairro', @'Bairro Não Cadastrado', @'Nome Logradouro', @'Logradouro Ocorrência Não Cadastrado', @'Nome Logradouro Cruzamento', @'Logradouro Cruzamento Não Cadastrado', @'Complemento Alfanumerico', @'Ponto de Referência'),
		FRACAO = fnc_fracao_reds_7rpm (@'Municipio', @'Num REDS', @'Nome Bairro', @'Bairro Não Cadastrado', @'Nome Logradouro', @'Logradouro Ocorrência Não Cadastrado', @'Nome Logradouro Cruzamento', @'Logradouro Cruzamento Não Cadastrado', @'Complemento Alfanumerico', @'Ponto de Referência'),
		-- SETOR = fnc_setor_reds_7rpm (@'Municipio', @'Num REDS', @'Nome Bairro', @'Bairro Não Cadastrado', @'Nome Logradouro', @'Logradouro Ocorrência Não Cadastrado', @'Nome Logradouro Cruzamento', @'Logradouro Cruzamento Não Cadastrado', @'Complemento Alfanumerico', @'Ponto de Referência'),
 		VALIDADOR = fnc_tipo_validador_reds (@'Municipio', @'Num REDS', @'Nome Bairro', @'Bairro Não Cadastrado', @'Nome Logradouro', @'Logradouro Ocorrência Não Cadastrado', @'Nome Logradouro Cruzamento', @'Logradouro Cruzamento Não Cadastrado', @'Complemento Alfanumerico', @'Ponto de Referência')
;





