SELECT cr.MUNICIPIO, cr.COMPANHIA, cr.CIA_SEDE, cr.SETOR, REDUCAO_PERC_CV,

sum(case
when data_fato between '2018-05-01' and '2018-05-31' then 1 else 0 -- 1º trimestre
end) as 'MAIO 2018',


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


-- count(*) as TOTAL
FROM gdo.vw_valid_crimes_setor as cr
INNER JOIN gdo.tbl_metas_percentuais as m
			ON cr.CIA_SEDE = m.CIA_SEDE


where  cr.municipio in ('DIVINOPOLIS', 'CARMO DO CAJURU', 'CLAUDIO', 'SAO GONCALO DO PARA', 'ITAUNA', 'ITATIAIUCU')
and cv = 1
-- and tqf = 1
-- and COD_DIAO = 'C01157'
group by SETOR with rollup


;