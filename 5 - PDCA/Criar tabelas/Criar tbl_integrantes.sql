CREATE TABLE `tbl_integrantes` (
  `NREDS` varchar(18) NOT NULL,
  `MUNICIPIO` varchar(50) DEFAULT NULL,
  `DATA_FATO` date DEFAULT NULL,
  `CARGO_INTEGRANTE` varchar(50) DEFAULT NULL,
  `NOME_INTEGRANTE` varchar(100) DEFAULT NULL,
  `MATRICULA_INTEGRANTE` varchar(15) DEFAULT NULL,
  `UNIDADE_INTEGRANTE` varchar(100) DEFAULT NULL,
  `QTDE_INTEGRANTE` varchar(30) DEFAULT NULL,
  KEY `fk_int_NREDS` (`NREDS`),
  CONSTRAINT `fk_int_NREDS` FOREIGN KEY (`NREDS`) REFERENCES `tbl_ocorrencias` (`NREDS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4





-- CREATE TABLE `tbl_integrantes` (
--   `NREDS` varchar(18) NOT NULL,
--   `MUNICIPIO` varchar(50) DEFAULT NULL,
--   `DATA_FATO` date DEFAULT NULL,
--   `CARGO_INTEGRANTE` varchar(15) DEFAULT NULL,
--   `NOME_INTEGRANTE` varchar(15) DEFAULT NULL,
--   `MATRICULA_INTEGRANTE` varchar(15) DEFAULT NULL,
--   `UNIDADE_INTEGRANTE` varchar(100) DEFAULT NULL,
--   `QTDE_INTEGRANTE` varchar(30) DEFAULT NULL
--     
--  
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8