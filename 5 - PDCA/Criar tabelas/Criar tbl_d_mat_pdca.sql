CREATE TABLE IF NOT EXISTS tbl_d_mat

(


COD_GRUPO_TIPO_MATERIAL SMALLINT NOT NULL,
DESC_GRUPO_TIPO_MATERIAL VARCHAR (100) NOT NULL,
COD_TIPO_MATERIAL SMALLINT NOT NULL,
DESC_TIPO_MATERIAL VARCHAR (200) NOT NULL,
UNIDADE_MEDIDA VARCHAR (30) NOT NULL,
VALOR INT NULL,
PRIMARY KEY (COD_TIPO_MATERIAL, UNIDADE_MEDIDA)
)
DEFAULT CHARSET = utf8
ENGINE=InnoDB;




