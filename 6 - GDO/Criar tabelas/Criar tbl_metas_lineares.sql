drop  table if exists tbl_metas_lineares;

CREATE TABLE IF NOT EXISTS tbl_metas_lineares

(
UEOP VARCHAR (20),
COMPANHIA VARCHAR (25),
MUNICIPIO VARCHAR (25),
FRACAO varchar (35) primary key,
TCV decimal (21,20),
THC decimal (21,20),
TQF decimal (21,20)/*,
IAF FLOAT (21,20),
TRI FLOAT (21,20),
RQV_EFICI_EFICA integer (30) unsigned NULL,
RQV_EFETIV integer (30) unsigned NULL,
OLS integer (30) unsigned NULL,
DDU_CONCL decimal (3,1) unsigned  NULL,
DDU_CONCL_SUCES decimal (3,1) NULL,
INT_COM integer (30) unsigned NULL,
TX_ATEND_VIT decimal (4,2) unsigned*/


)

ENGINE=InnoDB;







