CREATE TABLE IF NOT EXISTS tbl_crimes

(

NREDS varCHAR (18) NOT NULL PRIMARY KEY,
ORG_UN_REG VARCHAR (30) NULL,
UN_AREA_MIL VARCHAR (50) NULL,
UN_RELATO VARCHAR (100) NULL,
UN_DIGITACAO VARCHAR (100) NULL,
UN_REGISTRO VARCHAR (100) NULL,
COD_DIAO CHAR (6),
T_C VARCHAR (9) NULL,
COD_DIAO1 VARCHAR (7),
T_C1 VARCHAR (22) NULL,
COD_DIAO2 VARCHAR (7),
T_C2 VARCHAR (22) NULL,
COD_DIAO3 VARCHAR (7),
T_C3 VARCHAR (22) NULL,
ALVO VARCHAR (30) NULL,
DESC_MEIO_UTILIZADO VARCHAR (100) NULL,
DATA_COM DATE NULL,
HORA_COM TIME NULL,
DATA_FATO DATE NULL,
HORA_FATO TIME NULL,
DATA_ULT_ATT DATE NULL,
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
LATITUDE varchar (15) NULL,
LONGITUDE varchar (15) NULL,
MATRICULA_DIGITADOR VARCHAR (15) NULL,
MATRICULA_RELATOR VARCHAR (15) NULL,
QTDE varchar (30) NULL,
UEOP varchar (15) NULL,
COMPANHIA VARCHAR (30) NULL,
-- CIA_SEDE VARCHAR (30) NULL,
FRACAO VARCHAR (50) NULL,
SETOR varchar (50) NULL,
VALIDADOR varchar (30) NULL



)
DEFAULT CHARSET = utf8mb4
ENGINE=InnoDB;