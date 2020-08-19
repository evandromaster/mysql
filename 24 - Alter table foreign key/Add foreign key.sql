ALTER TABLE `tbl_armas_fgo` ADD CONSTRAINT `fk_arm_NREDS` FOREIGN KEY ( `NREDS` ) REFERENCES `tbl_ocorrencias` ( `NREDS` ) ;
 
ALTER TABLE `tbl_envolvidos` ADD CONSTRAINT `fk_env_NREDS` FOREIGN KEY ( `NREDS` ) REFERENCES `tbl_ocorrencias` ( `NREDS` ) ;

ALTER TABLE `tbl_materiais` ADD CONSTRAINT `fk_mat_NREDS` FOREIGN KEY ( `NREDS` ) REFERENCES `tbl_ocorrencias` ( `NREDS` ) ;

ALTER TABLE `tbl_infracoes` ADD CONSTRAINT `fk_inf_NREDS` FOREIGN KEY ( `NREDS` ) REFERENCES `tbl_ocorrencias` ( `NREDS` ) ;

ALTER TABLE `tbl_integrantes` ADD CONSTRAINT `fk_int_NREDS` FOREIGN KEY ( `NREDS` ) REFERENCES `tbl_ocorrencias` ( `NREDS` ) ;

show create table tbl_ocorrencias;
show create table tbl_veiculos;
show create table tbl_envolvidos;
show create table tbl_armas_fgo;
show create table tbl_materiais;
show create table tbl_infracoes;
show create table tbl_integrantes; 
 
 
 
 
 
-- ALTER TABLE `vendas` ADD CONSTRAINT `fk_vendas_codvendedor` FOREIGN KEY ( `codvendedor` ) REFERENCES `vendedores` ( ` codvendedor ` ) ;

-- CREATE TABLE `cidades` (
--  
-- `codcidade` INT NOT NULL ,
-- `descricao` VARCHAR( 50 ) NOT NULL
--  
-- ) ENGINE = innodb;
--  
-- CREATE TABLE `clientes` (
--  
-- `codcliente` INT PRIMARY KEY ,
-- `nome` VARCHAR( 50 ) NOT NULL
--  
-- ) ENGINE = innodb;
--  
-- CREATE TABLE `vendedores` (
--  
-- `codvendedor` INT PRIMARY KEY ,
-- `nome` VARCHAR( 50 ) NOT NULL
--  
-- ) ENGINE = innodb;
--  
-- CREATE TABLE `vendas` (
--  
-- `codvenda` INT PRIMARY KEY ,
-- `datavenda` DATE NOT NULL,
--  
-- `codcliente` INT,
-- `codvendedor` INT
--  
-- ) ENGINE = innodb;