SELECT  UEOP, MUNICIPIO,
sum(case
when data_fato between '2019-01-01' and '2019-12-31' then 1 else 0 -- 2019
end) as '2019',


sum(case
when data_fato between '2019-01-01' and '2019-03-02' then 1 else 0 -- 2019
end) as '2019P',

sum(case
when data_fato between '2020-01-01' and '2020-12-31' then 1 else 0 -- 2020
end) as '2020',

sum(case
when data_fato between '2019-01-01' and '2019-12-31' then 1 else 0 -- 2019
end) as 'META 2020'


/*sum(case
when data_fato between '2019-01-01' and '2019-01-31' then 1 else 0 -- 2020
end) as 'JAN-19',


sum(case
when data_fato between '2020-01-01' and '2020-01-31' then 1 else 0 -- 2020
end) as 'JAN-20',

sum(case
when data_fato between '2019-02-01' and '2019-02-31' then 1 else 0 -- 2020
end) as 'FEV-19',


sum(case
when data_fato between '2020-02-01' and '2020-02-31' then 1 else 0 -- 2020
end) as 'FEV-20',


sum(case
when data_fato between '2019-03-01' and '2019-03-06' then 1 else 0 -- 1º trimestre
end) as 'CARNAVAL_2019',

sum(case
when data_fato between '2019-02-21' and '2019-02-26' then 1 else 0 -- 1º trimestre
end) as 'CARNAVAL_2020'




sum(case
when data_fato between '2018-05-01' and '2018-05-16' then 1 else 0 -- 1º trimestre
end) as 'MAIO 2018 ATE DIA 16',

sum(case
when data_fato between '2019-05-01' and '2019-05-16' then 1 else 0 -- 2º trimestre
end) as 'MAIO 2019 ATE DIA 16',

 -- ((V2-V1)/V1 × 100)
round(((sum(case
when data_fato between '2019-05-01' and '2019-05-16' then 1 else 0
end) - sum(case
when data_fato between '2018-05-01' and '2018-05-16' then 1 else 0 -- período integral
end))/sum(case
when data_fato between '2018-05-01' and '2018-05-16' then 1 else 0 -- período integral
end)*100),2) as 'Variação(%)',
-- sum(case
-- when data_fato between '2019-01-01' and '2019-03-10' then 1 else 0
-- end) as 'Operações 2019',



round((sum(case
when data_fato between '2019-05-01' and '2019-05-16' then 1 else 0 -- 2º trimestre
end) / 16) * 15 + sum(case
when data_fato between '2019-05-01' and '2019-05-16' then 1 else 0 -- 2º trimestre
end),2) as 'ESTIMATIVA'


-- count(*) as TOTAL*/
FROM vw_valid_envolvidos


where  HC_VITIMA = 1




/*where

(( -- INÍCIO CONDIÇÃO PRINCIPAL		
				(COD_DIAO in ('B01121') and T_C = 'TENTADO')	  
				or  COD_DELITO in ('B01121') and T_C_DELITO = 'TENTADO')
			) -- FIM CONDIÇÃO PARA  (NATUREZAS)

-- AND GRAU_LESAO = 'FATAL'
AND GRUPO_TIPO_ENVOL = 'VITIMA'
*/

group by municipio  with rollup


-- order by UEOP, MUNICIPIO
;