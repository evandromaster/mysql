DROP VIEW IF EXISTS  vw_pop;

create view vw_pop as

SELECT UEOP, MUNICIPIO, sum(POP2019) POP2019 FROM pdca.tbl_populacoes


group by MUNICIPIO

;