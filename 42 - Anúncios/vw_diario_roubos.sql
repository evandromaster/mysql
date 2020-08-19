drop view if exists vw_diario_roubos;

create view vw_diario_roubos as  



SELECT  UEOP, concat(municipio,' | ' ,fracao) as MUnCia,
sum(case
when data_fato = DATE_SUB(DATE_SUB(CURDATE(), INTERVAL 1 year), INTERVAL 3 DAY) then 1 else 0 -- 2019
end) as '1º DIA 2019',

sum(case
when data_fato = DATE_SUB(CURDATE(), INTERVAL 3 DAY) then 1 else 0 -- 2019
end) as '1º DIA 2020',


sum(case
when data_fato = DATE_SUB(DATE_SUB(CURDATE(), INTERVAL 1 year), INTERVAL 2 DAY) then 1 else 0 -- 2019
end) as '2º DIA 2019',

sum(case
when data_fato = DATE_SUB(CURDATE(), INTERVAL 2 DAY) then 1 else 0 -- 2019
end) as '2º DIA 2020',

sum(case
when data_fato = DATE_SUB(DATE_SUB(CURDATE(), INTERVAL 1 year), INTERVAL 1 DAY) then 1 else 0 -- 2019
end) as '3º DIA 2019',

sum(case
when data_fato = DATE_SUB(CURDATE(), INTERVAL 1 DAY) then 1 else 0 -- 2019
end) as '3º DIA 2020',

sum(case
when data_fato 	between date_sub(date_sub(date_add(LAST_DAY(curdate()),interval 1 DAY),interval 1 MONTH), interval 1 year)
				and DATE_SUB(DATE_SUB(CURDATE(), INTERVAL 1 year), INTERVAL 1 DAY) then 1 else 0 -- 2019
end) as 'MENSAL 2019P',

sum(case
when data_fato 	between date_sub(date_add(LAST_DAY(curdate()),interval 1 DAY),interval 1 MONTH)
				and DATE_SUB(CURDATE(), INTERVAL 1 DAY) then 1 else 0 -- 2020
end) as 'MENSAL 2020',

sum(case
when data_fato 	between date_sub(DATE_add(DATE_sub(CURDATE(), INTERVAL month(curdate())-1 month),INTERVAL TIMESTAMPDIFF(DAY, CURDATE(), date_sub(date_add(LAST_DAY(curdate()),interval 1 DAY),interval 1 MONTH)) day), interval 1 year)
				and DATE_SUB(DATE_SUB(CURDATE(), INTERVAL 1 year), INTERVAL 1 DAY) then 1 else 0 -- 2019
end) as 'ANO 2019P',


sum(case
when data_fato 	between DATE_add(DATE_sub(CURDATE(), INTERVAL month(curdate())-1 month),INTERVAL TIMESTAMPDIFF(DAY, CURDATE(), date_sub(date_add(LAST_DAY(curdate()),interval 1 DAY),interval 1 MONTH)) day)
				and DATE_SUB(CURDATE(), INTERVAL 1 DAY) then 1 else 0 -- 2020
end) as 'ANO 2020'


-- count(*) as TOTAL*/
FROM vw_valid_crimes_setor


where (COD_DIAO = 'C01157' OR COD_DIAO1 = 'C01157' OR COD_DIAO2 = 'C01157' OR COD_DIAO3 = 'C01157')



group by MUnCia   -- with rollup


order by  ueop, municipio
;