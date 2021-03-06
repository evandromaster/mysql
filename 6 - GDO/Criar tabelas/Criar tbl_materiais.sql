CREATE TABLE IF NOT EXISTS tbl_materiais

(
ID_MAT int primary KEY auto_increment,
NREDS varCHAR (18) NOT null,
ORG_UN_REG VARCHAR (30) NULL,
UN_AREA_MIL VARCHAR (50) NULL,
UN_REGISTRO VARCHAR (100) NULL,
COD_DIAO char (6),
T_C VARCHAR (9) NULL,
LOG_TIPO VARCHAR (20) NULL,
LOGRADOURO VARCHAR (100) NULL,
LOGRADOURO_NAO_CAD VARCHAR (100) NULL,
LOGRADOURO_CRUZ VARCHAR (100) NULL,
LOGRADOURO_CRUZ_NAO_CAD VARCHAR (100) NULL,
N_LOG VARCHAR (20) NULL,
BAIRRO VARCHAR (50) NULL,
BAIRRO_NAO_CAD VARCHAR (50) NULL,
COMPLEMENTO_END VARCHAR (50) NULL,
PONTO_REF VARCHAR (50) NULL,
MUNICIPIO VARCHAR (50) NULL,
LATITUDE VARCHAR (15) NULL,
LONGITUDE VARCHAR (15) NULL,
DATA_FATO DATE NULL,
HORA_FATO TIME NULL,
DESC_TIPO_MATERIAL varchar (200) NULL,
UNIDADE_MEDIDA varchar (30) NULL,
SITUACAO_MATERIAL varchar (50) NULL,
QTDE_MAT int NULL,
QTDE_MAT_VOL decimal (10, 2) NULL,
UEOP varchar (15) NULL,
COMPANHIA VARCHAR (30) NULL,
-- CIA_SEDE VARCHAR (30) NULL,
FRACAO VARCHAR (50) NULL,
SETOR varchar (50) NULL,
VALIDADOR varchar (30) NULL

)
DEFAULT CHARSET = utf8mb4
ENGINE=InnoDB;

