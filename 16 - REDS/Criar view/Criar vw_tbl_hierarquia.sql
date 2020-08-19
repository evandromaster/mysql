-- create view vw_tbl_hierarquia as

SELECT 1 ID , 

UEOP, COMPANHIA, FRACAO, SETOR, MUNICIPIO FROM gdo.tbl_crimes

group by SETOR
order by UEOP, COMPANHIA, FRACAO, MUNICIPIO, SETOR asc

;