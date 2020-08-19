CREATE TABLE tbl_ocorrencias (
		NREDS CHAR(4) PRIMARY KEY,
        DATA_FATO DATE,
        COD_DIAO CHAR(6),
        BAIRRO VARCHAR(50),
        BAIRRO_NC VARCHAR(50),
        FOREIGN KEY (BAIRRO) REFERENCES tbl_valid_bairros(BAIRRO),
        FOREIGN KEY (BAIRRO_NC) REFERENCES tbl_valid_bairros_nc(BAIRRO_NC)
        );
        

CREATE TABLE tbl_valid_bairros(		
        ID_BAIRRO SMALLINT(4) PRIMARY KEY,
        BAIRRO VARCHAR(50) UNIQUE,
        CIA_BASE VARCHAR(50)
        );
        
CREATE TABLE tbl_valid_bairros_nc(		
        ID_BAIRRO_NC SMALLINT(4) PRIMARY KEY,
        BAIRRO_NC VARCHAR (50) UNIQUE,
        CIA_BASE VARCHAR(50)
        );
        
CREATE TABLE tbl_envolvidos (
		id_envolvidos INT AUTO_INCREMENT PRIMARY KEY,
        NREDS CHAR(4),
        envolvido VARCHAR(100),
        FOREIGN KEY (NREDS) REFERENCES tbl_ocorrencias(NREDS)
		);
        
CREATE TABLE tbl_armas (
		id_armas INT AUTO_INCREMENT PRIMARY KEY,
        NREDS CHAR(4),
        arma VARCHAR(50),
        FOREIGN KEY (NREDS) REFERENCES tbl_ocorrencias(NREDS)
		);
        
INSERT INTO tbl_ocorrencias VALUES
('1234', '2018-01-01', 'C01157', 'CENTRO', NULL),
('1235', '2018-01-01', 'C01157', NULL, 'CENTRO1'),
('1236', '2018-01-02', 'B01121', 'SAO JOSE', NULL),
('1237', '2018-01-03', 'D01213', 'NITEROI', NULL)
;

INSERT INTO tbl_envolvidos VALUES
(1, '1234', 'JOAO DA SILVA'),
(2, '1234', 'MANOEL PEREIRA'),
(3, '1236', 'JOSE CARVALHO')
;

INSERT INTO tbl_armas VALUES
(1, '1234', 'REVOLVER'),
(2, '1235', 'PISTOLA'),
(3, '1237', 'MISSEL')
;

INSERT INTO tbl_valid_bairros VALUES 
(1, NULL, NULL ), (2, 'CENTRO', '53'), (3, 'NITEROI', '142'), (4, 'SAO JOSE', '139');

INSERT INTO tbl_valid_bairros_nc VALUES 
(1, NULL, NULL ), (2, 'CENTRO1', '53'), (3, 'NITEROI1', '142'), (4, 'SAO JOSE1', '139');