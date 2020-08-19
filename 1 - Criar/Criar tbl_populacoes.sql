CREATE TABLE IF NOT EXISTS tbl_populacoes

(

UEOP varchar(15) not null,

COD_MUNI varchar(6) null,

MUNICIPIO varchar(50) null,

COMPANHIA varchar(50) null,

FRACAO varchar(50) primary key,

POP2017 int null,

POP2018 int null,

POP2019 int null,

REDUCAO_PERC_CV decimal (21,20) null,
 
REDUCAO_PERC_HC decimal (21,20) null,
 
REDUCAO_PERC_TQF decimal (21,20) null

)
DEFAULT CHARSET = utf8mb4
ENGINE=InnoDB;