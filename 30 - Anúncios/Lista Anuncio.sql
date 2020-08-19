select NREDS, MUNICIPIO, UEOP,  CIA_SEDE, year(DATA_FATO) as ANO, month(DATA_FATO) as MES,  day(DATA_FATO) as DIA, DIAO_FINAL
from gdo.vw_valid_crimes_setor

where ((DATA_FATO between '2018-04-01' and '2018-04-27') or (DATA_FATO between '2019-04-01' and '2019-04-27'))

and DIAO_FINAL = 'C01157';


select count(*), NREDS, MUNICIPIO, UEOP,  CIA_SEDE, year(DATA_FATO) as ANO, month(DATA_FATO) as MES,  day(DATA_FATO) as DIA, DIAO_FINAL, 

sum(case
when DATA_FATO between '2018-04-01' and '2018-04-27' then 1 else 0
end) as 'ROUBOS_MES_2018',

sum(case
when DATA_FATO between '2019-04-01' and '2019-04-27' then 1 else 0
end) as 'ROUBOS_MES_2019',


sum(case
when DATA_FATO between '2018-01-01' and '2018-04-27' then 1 else 0
end) as 'ROUBOS_ANO_2018',

sum(case
when DATA_FATO between '2019-01-01' and '2019-04-27' then 1 else 0
end) as 'ROUBOS_ANO_2019'


from gdo.vw_valid_crimes_setor

where ((DATA_FATO between '2018-01-01' and '2018-04-27') or (DATA_FATO between '2019-01-01' and '2019-04-27'))

and DIAO_FINAL = 'C01157'


group by  CIA_SEDE with rollup