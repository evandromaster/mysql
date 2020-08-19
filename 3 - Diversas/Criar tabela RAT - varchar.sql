CREATE TABLE IF NOT EXISTS rat
(

RATNUM_ATIVIDADE varchar(20) not null PRIMARY KEY,

NATCODIGO varchar(6) not null,

NATDESCRICAO varchar(100) not null,

DTA_HRA_INCLUSAO varchar(20) not null,

DTA_INICIO varchar(20) not null,

HRA_INICIO time not null,

DTA_TERMINO varchar(20) not null,

HRA_TERMINO time not null,

DES_ALVO_EVENTO varchar(50) null,

DES_LUGAR varchar(50) null,

NOM_OPERACAO varchar(50) null,

COD_UNIDADE_SERVICO varchar(5),

NOM_UNID_RESPONSAVEL varchar(50) not null,

TIPO_LOGRADOURO varchar(20) null,

LOGRADOURO varchar(50) null,

DES_ENDERECO varchar(50) null,

NUM_ENDERECO varchar(20) null,

COMPLEMENTO_ALFA varchar(30) null,

COMPLEMENTO_ENDERECO varchar(30) null,

NUM_COMPLEMENTAR varchar(30) null,

COD_BAIRRO varchar(20) null,

NOME_BAIRRO varchar(50) null,

TIPO_LOGRADOURO2 varchar(20) null,

LOGRADOURO2 varchar(100) null,

DES_ENDERECO2 varchar(50) null,

COD_MUNICIPIO integer not null,

MUNICIPIO varchar(50) not null,

LATITUDE varchar(20) null,

LONGITUDE varchar(20) null,

COD_UNIDADE_AREA varchar(5) null,

NOM_UNIDADE_AREA varchar(50) null,

DIGITADOR varchar(15) null

)
ENGINE=InnoDB;