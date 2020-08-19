CREATE TABLE IF NOT EXISTS tbl_validadores_cia

(

ID smallint (6) NOT NULL AUTO_INCREMENT,

MUNICIPIO varchar (50) null default 'DIVINOPOLIS',

N_REDS varchar (18) null,

N_RAT varchar (18) null,

PONTO_REF varchar (80) null,

LOGRADOURO_NAO_CAD varchar (80) null,

LOGRADOURO varchar (80) null,

COMPLEMENTO_END varchar (80) null,

BAIRRO varchar (80) null,

BAIRRO_NAO_CAD varchar (80) null,

CIA_BASE varchar (11) null,

BAIRRO_REF varchar (150) null,

SETOR varchar (30) null,

SUBSETOR varchar (30) null,

OBSERVACAO varchar (150) null,

PRIMARY KEY (ID)

)

ENGINE=InnoDB;


