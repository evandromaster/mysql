CREATE TABLE IF NOT EXISTS tbl_metas_lineares

(
UEOP VARCHAR (20),
CIA_BASE VARCHAR (25) primary key,
IAF decimal (4,2) unsigned,
TRI decimal (4,2) unsigned,
RQV_EFICI_EFICA integer (30) unsigned NULL,
RQV_EFETIV integer (30) unsigned NULL,
ROLS integer (30) unsigned NULL,
DDU_CONCL decimal (3,1) unsigned  NULL,
DDU_CONCL_SUCES decimal (3,1) NULL,
INT_COM integer (30) unsigned NULL,
TX_ATEND_VIT decimal (4,2) unsigned,
META_THC decimal (21,20),
META_ICV decimal (21,20),
META_TSS decimal (21,20) 



)

ENGINE=InnoDB;






