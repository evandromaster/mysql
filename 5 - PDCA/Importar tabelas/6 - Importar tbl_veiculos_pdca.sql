TRUNCATE TABLE tbl_veiculos;

LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\10 - tbl_dimensao\\pdca\\tbl_veiculos.csv'  -- Aqui vc especifica o local do arquivo
-- LOAD DATA INFILE 'F:\\Mega\\MySql\\10 - Tbl_dimensao\\pdca\\tbl_veiculos.csv'
replace into table tbl_veiculos     -- Aqui você especifica o nome da tabela
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
@'Data Fato',
@'Horário Fato',
@'Município',
@'Situação Veículo',
@'Tipo Veículo',
@'Ano Modelo',
@'Marca / Modelo',
@'Qtde Veículos'
) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set NREDS = @'Número REDS',
    ORG_UN_REG = @'Órgão Unidade Registro',
	UN_AREA_MIL = @'Unidade Área Militar',
	UN_REGISTRO = @'Unid Registro Nível 6',
    COD_DIAO = @'Código Subclasse Nat Principal',
	T_C = @'Tentado/Consumado Nat Principal',
    DATA_FATO = str_to_date(@'Data Fato', '%d/%m/%Y'),
	HORA_FATO = @'Horário Fato',
	MUNICIPIO = @'Município',
    SITUACAO_VEICULO = @'Situação Veículo',
    TIPO_VEICULO = @'Tipo Veículo',
    ANO_MODELO = @'Ano Modelo',
	MARCA_MODELO = @'Marca / Modelo',
    QTDE_VEIC = @'Qtde Veículos';
    
-- Número REDS
-- Órgão Unidade Registro
-- Unidade Área Militar
-- Unid Registro Nível 6
-- Código Subclasse Nat Principal
-- Tentado/Consumado Nat Principal
-- Data Fato
-- Horário Fato
-- Município
-- Situação Veículo
-- Tipo Veículo
-- Ano Modelo
-- Marca / Modelo
-- Qtde Veículos