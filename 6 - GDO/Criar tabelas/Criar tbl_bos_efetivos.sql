CREATE TABLE tbl_bos_efetivos (
	  ID int NOT NULL AUTO_INCREMENT,
	  NUM_ATIVIDADE varchar(19) NOT NULL,
	  NUM_MATRICULA varchar(15) DEFAULT NULL,
	  NOME varchar(50) DEFAULT NULL,
	  NOM_CARGO varchar(20) DEFAULT NULL,
	  COD_UNIDADE_SERVICO varchar(6) DEFAULT NULL,
	  NOM_UNIDADE varchar(50) DEFAULT NULL,
	  PRIMARY KEY (ID),
	  KEY NUM_ATIVIDADE (NUM_ATIVIDADE),
	  FOREIGN KEY (NUM_ATIVIDADE) REFERENCES tbl_bos (RATNUM_ATIVIDADE)
) 
ENGINE=InnoDB 
DEFAULT CHARSET=utf8mb4;