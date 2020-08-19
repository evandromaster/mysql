CREATE TABLE IF NOT EXISTS tbl_frota

(

UF varchar(5) not null,
MUNICIPIO varchar(150) null,
-- POPULACAO int, -- tabelas cinds rv
-- AREA_KM decimal (10,3),-- tabelas cinds rv
-- DENS_DEMOGRAFICA decimal (10,3),-- tabelas cinds rv
-- TAXA_MOTORIZACAO decimal (10,3),-- tabelas cinds rv
TOTAL int(11) null,
AUTOMOVEL int(11) null,
BONDE int(11) null,
CAMINHAO int(11) null,
CAMINHAO_TRATOR int(11) null,
CAMINHONETE int(11) null,
CAMIONETA int(11) null,
CHASSI_PLATAF int(11) null,
CICLOMOTOR int(11) null,
MICRO_ONIBUS int(11) null,
MOTOCICLETA int(11) null,
MOTONETA int(11) null,
ONIBUS int(11) null,
QUADRICICLO int(11) null,
REBOQUE int(11) null,
SEMI_REBOQUE int(11) null,
SIDE_CAR int(11) null,
OUTROS int(11) null,
TRATOR_ESTEIRA int(11) null,
TRATOR_RODAS int(11) null,
TRICICLO int(11) null,
UTILITARIO int(11) null,
ANO  CHAR (4) null


)

ENGINE=InnoDB;