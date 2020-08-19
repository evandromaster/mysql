CREATE TABLE `tbl_rat_viaturas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NUM_ATIVIDADE` varchar(20) NOT NULL,
  `NUM_SEQ_RECURSO` varchar(15) DEFAULT NULL,
  `NUM_PLACA` varchar(15) DEFAULT NULL,
  `NUM_PREFIXO` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `NUM_ATIVIDADE` (`NUM_ATIVIDADE`),
  CONSTRAINT `tbl_rat_viaturas_ibfk_1` FOREIGN KEY (`NUM_ATIVIDADE`) REFERENCES `tbl_rat` (`RATNUM_ATIVIDADE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





-- CREATE TABLE IF NOT EXISTS tbl_rat_viaturas
-- (
-- ID INT AUTO_INCREMENT NOT NULL primary key,
-- NUM_ATIVIDADE varchar(20) not null,
-- NUM_SEQ_RECURSO varchar(15) null,
-- NUM_PLACA varchar(15) null,
-- NUM_PREFIXO varchar(15) null
-- 
-- )
-- 
-- 
-- ENGINE=InnoDB;
-- 
-- alter table tbl_rat_viaturas
-- add foreign key (NUM_ATIVIDADE) -- CAMPO DA TABELA RAT viaturas
-- references tbl_rat(RATNUM_ATIVIDADE); -- CAMPO DA TBL ONDE  CONTEM A CHAVE PRIMARIA; no caso tabela rat
-- 
-- 
-- 
-- show create table tbl_rat_viaturas