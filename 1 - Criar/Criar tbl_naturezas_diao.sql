CREATE TABLE IF NOT EXISTS tbl_naturezas

(

COD_GRUPO CHAR (6) NULL ,
DESC_GRUPO varchar (100),
COD_CLASSE CHAR (6) NULL ,
DESC_CLASSE varchar (100),
COD_SUBCLASSE char (6) NOT NULL PRIMARY KEY,
DESC_SUBCLASSE VARCHAR (350) NULL

-- T_C varchar(9)
-- TIPO_REL VARCHAR (4) NULL

-- primary key (cod_diao, T_C)
/*Código Grupo-
Descrição Grupo-
Código Classe
Descrição Classe
Código Subclasse
Descrição Subclasse*/


)

ENGINE=InnoDB;
