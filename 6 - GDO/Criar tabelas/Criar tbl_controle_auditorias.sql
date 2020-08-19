drop   table if exists tbl_controle_auditorias;



CREATE TABLE IF NOT EXISTS tbl_controle_auditorias

(


NREDS VARCHAR (18) /*PRIMARY KEY*/,

UEOP  VARCHAR (20),

MUNICIPIO VARCHAR (50),

NATUREZA VARCHAR (60),

INDICADOR	VARCHAR (50),

DATA_ENVIO	VARCHAR (50),

DATA_RESPOSTA_CINDS	VARCHAR (50),

AUDITADO VARCHAR (50),

PROTOCOLO VARCHAR (50),

OBSERVACAO VARCHAR (100)

)

ENGINE=InnoDB;