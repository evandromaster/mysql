CREATE TABLE IF NOT EXISTS tbl_rat_efetivo

(
ID INT AUTO_INCREMENT NOT NULL primary key, -- verificar   a utilidade desse campo id POIS  NAO  ESTA DANDO CERTO
NUM_ATIVIDADE varchar(18) not null,
NUM_MATRICULA varchar(15) null,
NOME varchar(50) null,
NOM_CARGO varchar(20) null,
COD_UNIDADE_SERVICO varchar(5),
NOM_UNIDADE varchar(50) null

)
DEFAULT CHARSET = utf8
ENGINE=InnoDB;