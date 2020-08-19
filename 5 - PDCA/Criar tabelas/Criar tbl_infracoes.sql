CREATE TABLE `tbl_infracoes` (
  `ID_INFR` int NOT NULL AUTO_INCREMENT,
  `NREDS` varchar(18) NOT NULL,
  `DATA_FATO` date DEFAULT NULL,
  `MUNICIPIO` varchar(50) DEFAULT NULL,
  `COD_INFRACAO` varchar(6) DEFAULT NULL,
  `AIT_NUMERO_DOC` varchar(18) DEFAULT NULL,
  `AIT_ORGAO_ORIGEM` varchar(50) DEFAULT NULL,
  `QTDE_INF` int DEFAULT NULL,
  PRIMARY KEY (`ID_INFR`),
  KEY `fk_inf_NREDS` (`NREDS`),
  CONSTRAINT `fk_inf_NREDS` FOREIGN KEY (`NREDS`) REFERENCES `tbl_ocorrencias` (`NREDS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4