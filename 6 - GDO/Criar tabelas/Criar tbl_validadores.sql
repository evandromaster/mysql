drop table IF EXISTS tbl_validadores;


CREATE TABLE IF NOT EXISTS tbl_validadores

(

ID smallint (6) NOT NULL AUTO_INCREMENT,


MUNICIPIO varchar (150) null default 'DIVINOPOLIS',


VALIDADOR varchar (100) null,


VALIDADOR_TIPO varchar (80),


CIA_BASE varchar (50) null,


BAIRRO varchar (150) null,


TIPO VARCHAR (10) NULL,


SETOR varchar (30) null,


SUBSETOR varchar (30) null,


COD_SETOR VARCHAR (10) NULL, 


OBSERVACAO varchar (150) null,



PRIMARY KEY (ID)

)
DEFAULT CHARSET = utf8mb4
ENGINE=InnoDB;

DESCRIBE  TBL_VALIDADORES