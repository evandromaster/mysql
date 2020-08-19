CREATE TABLE IF NOT EXISTS tbl_horas

(

HORA TIME NOT NULL,

FAIXA_1H varchar(20) null,

FAIXA_3H varchar(20) null,

FAIXA_6H varchar(20) null,

TURNO varchar(20),

HS SMALLINT

)
DEFAULT CHARSET = utf8
ENGINE=InnoDB;


