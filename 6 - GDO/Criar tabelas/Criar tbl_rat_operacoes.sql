CREATE TABLE IF NOT EXISTS tbl_rat_operacoes

(

RATNUM_ATIVIDADE varchar(19) not null primary key,


NATCODIGO varchar(6) null,


NATDESCRICAO varchar(100) null,


DTA_HRA_INCLUSAO date null,


DTA_INICIO date null,


HRA_INICIO time null,


DTA_TERMINO date null,


HRA_TERMINO time null,


DES_ALVO_EVENTO varchar(50) null,


DES_LUGAR varchar(50) null,


NOM_OPERACAO varchar(100) null,


COD_UNIDADE_SERVICO varchar(6),


NOM_UNID_RESPONSAVEL varchar(50) null,


TIPO_LOGRADOURO varchar(30) null,


LOGRADOURO varchar(100) null,


DES_ENDERECO varchar(100) null,


NUM_ENDERECO varchar(20) null,


COMPLEMENTO_ALFA varchar(30) null,


COMPLEMENTO_ENDERECO varchar(30) null,


NUM_COMPLEMENTAR varchar(30) null,


COD_BAIRRO varchar(20) null,


NOME_BAIRRO varchar(50) null,


TIPO_LOGRADOURO2 varchar(30) null,


LOGRADOURO2 varchar(100) null,


DES_ENDERECO2 varchar(70) null,


COD_MUNICIPIO integer(6) null,


MUNICIPIO varchar(50) null,


LATITUDE varchar(20) null,


LONGITUDE varchar(20) null,


COD_UNIDADE_AREA varchar(6) null,


NOM_UNIDADE_AREA varchar(50) null,


DIGITADOR varchar(15) null,
-- ----------------------------------------------CALCULO DE DURAÇÃO
TEMPO_EXEC int,
-- TEMPO_EXEC varchar (300),
-- TEMPO_EXEC datetime,
-- TEMPO_EXEC timestamp, -- ou varchar 20 tbl_rat_teste

-- ----------------------------------------------Efetivo
EFETIVO int(11) null,


-- --------------------------------------------- Viaturas


VIATURAS int (11) null,
####################################################################


-- --------------------------------------------- Funções
UEOP varchar (15) NULL,
COMPANHIA varchar (30) null,
FRACAO varchar (50) null,
SETOR varchar (50) null,
VALIDADOR varchar(50) null

)
DEFAULT CHARSET = utf8
ENGINE=InnoDB;