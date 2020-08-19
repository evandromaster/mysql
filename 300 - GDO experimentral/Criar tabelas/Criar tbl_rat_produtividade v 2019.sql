CREATE TABLE `tbl_rat_produtividade` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATNUM_ATIVIDADE` varchar(18) NOT NULL,
  `DESCRICAO` varchar(100) DEFAULT NULL,
  `QUANTIDADE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `RATNUM_ATIVIDADE` (`RATNUM_ATIVIDADE`),
  CONSTRAINT `tbl_rat_produtividade_ibfk_1` FOREIGN KEY (`RATNUM_ATIVIDADE`) REFERENCES `tbl_rat` (`RATNUM_ATIVIDADE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- 
-- 
-- CREATE TABLE tbl_rat_produtividade (
--   ID int(11) NOT NULL AUTO_INCREMENT,
--   RATNUM_ATIVIDADE varchar(18) NOT NULL,
--   DESCRICAO varchar(100) DEFAULT NULL,
--   QUANTIDADE int(11) DEFAULT NULL,
--   PRIMARY KEY (ID),
--   KEY RATNUM_ATIVIDADE (RATNUM_ATIVIDADE),
--   FOREIGN KEY (RATNUM_ATIVIDADE) REFERENCES tbl_rat (RATNUM_ATIVIDADE)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- 
-- 
-- 
-- 
-- 
-- 
-- CREATE TABLE IF NOT EXISTS tbl_rat_produtividade
-- 
-- (
-- 
-- ID INT AUTO_INCREMENT NOT NULL primary key,
-- 
-- RATNUM_ATIVIDADE varchar(18) not null,
-- 
-- DESCRICAO varchar(100) null,
-- 
-- QUANTIDADE integer null
-- )
-- 
-- 
-- ENGINE=InnoDB;
-- 
-- 
-- alter table tbl_rat_produtividade
-- add foreign key (RATNUM_ATIVIDADE) -- CAMPO DA TABELA RAT EFETIVO
-- references tbl_rat(RATNUM_ATIVIDADE); -- CAMPO DA TBL ONDE  CONTEM A CHAVE PRIMARIA; no caso tabela rat
-- 
-- 
-- show create table tbl_rat_produtividade;
-- 
-- 