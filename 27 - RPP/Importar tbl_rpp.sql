TRUNCATE TABLE tbl_rpp;

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\10 - Tbl_dimensao\\RPP\\tbl_rpp.csv'  -- Aqui vc especifica o local do arquivo
replace into table tbl_rpp      -- Aqui você especifica o nome da tabela
fields terminated by ';'
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines
(
@'Carimbo de data/hora',
@'Nº do Laço',
@'Subárea Unidade Militar',
@'Bairro - Localidade',
-- @'Município',
@'Membro 1',
@'Membro 2',
@'Membro 3',
@Logradouro,
@'Número do Logradouro',
@'Função do Membro',
@'Observações adicionais',
@'Telefone 1',
@'Telefone 2',
@'Apartamento',
@'Coordenadas Geográficas'
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set
	DATA_HORA_CADASTRO = @'Carimbo de data/hora',
	N_LACO = @'Nº do Laço',
	CIA_SEDE = @'Subárea Unidade Militar',
	BAIRRO = @'Bairro - Localidade',
	-- MUNICIPIO = @'Município',
	MEMBRO_1 = @'Membro 1',
	MEMBRO_2 = @'Membro 2',
	MEMBRO_3 = @'Membro 3',
    LOGRADOURO =@Logradouro,
	N_LOG = @'Número do Logradouro',
	FUNCAO = @'Função do Membro',
	OBSERVACOES_ADD = @'Observações adicionais',
	TELEFONE_1 = @'Telefone 1',
	TELEFONE_2 = @'Telefone 2',
	COMPLEMENTO_END = @'Apartamento',
	-- COORD_GEOGRAFICAS = @'Coordenadas Geográficas',
    LATITUDE =  LEFT(replace(@'Coordenadas Geográficas', '.', ','),10),
	LONGITUDE = RIGHT(replace(@'Coordenadas Geográficas', '.', ','),10)
	-- LATITUDE =  left(@'Coordenadas Geográficas', 10),
    -- LONGITUDE = right(@'Coordenadas Geográficas', 10)
	;



