LOAD DATA LOCAL INFILE 'C:\\Users\\Geo\\Documents\\MEGAsync\\MySql\\10 - Tbl_dimensao\\denatran\\2019.csv'

-- LOAD DATA LOCAL INFILE 'Y:\\ServidorMega\\MySql\\10 - tbl_Dimensao\\denatran\\2019.csv'


 -- Aqui vc especifica o local do arquivo
replace into table tbl_frota        -- Aqui você especifica o nome da tabela
fields terminated by ';'
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
ignore 1 lines
(

UF,
MUNICIPIO,
TOTAL,
AUTOMOVEL,
BONDE,
CAMINHAO,
@'CAMINHAO TRATOR',
CAMINHONETE,
CAMIONETA,
@'CHASSI PLATAF',
CICLOMOTOR,
@'MICRO-ONIBUS',
MOTOCICLETA,
MOTONETA,
ONIBUS,
QUADRICICLO,
REBOQUE,
@'SEMI-REBOQUE',
@'SIDE-CAR',
OUTROS,
@'TRATOR ESTEI',
@'TRATOR RODAS',
TRICICLO,
UTILITARIO,
ANO

) -- Aqui você coloca os campos na mesma sequencia das células do arquivo.csv
set 
	
	CAMINHAO_TRATOR = @'CAMINHAO TRATOR',
    CHASSI_PLATAF = @'CHASSI PLATAF',
	MICRO_ONIBUS = @'MICRO-ONIBUS',
	SEMI_REBOQUE = @'SEMI-REBOQUE',
	SIDE_CAR = @'SIDE-CAR',
	TRATOR_ESTEIRA = @'TRATOR ESTEI',
    TRATOR_RODAS = @'TRATOR RODAS';
     -- LATITUDE =  replace(@Latitude, '.', ','),
    
	
