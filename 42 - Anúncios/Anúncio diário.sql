SELECT  UEOP, MUNICIPIO,
sum(case
when data_fato = '2019-01-01' then 1 else 0 -- 2019
end) as '1º DIA 2019',

sum(case
when data_fato = '2020-01-01' then 1 else 0 -- 2019
end) as '1º DIA 2020',


sum(case
when data_fato = '2019-01-02' then 1 else 0 -- 2019
end) as '2º DIA 2019',

sum(case
when data_fato = '2020-01-02' then 1 else 0 -- 2019
end) as '2º DIA 2020',

sum(case
when data_fato = '2019-01-03' then 1 else 0 -- 2019
end) as '3º DIA 2019',

sum(case
when data_fato = '2020-01-03' then 1 else 0 -- 2019
end) as '3º DIA 2020',

sum(case
when data_fato between '2019-03-01' and '2019-03-06' then 1 else 0 -- 2019
end) as 'MENSAL 2019P',

sum(case
when data_fato between '2020-03-01' and '2020-12-31' then 1 else 0 -- 2020
end) as 'MENSAL 2020',

sum(case
when data_fato between '2019-01-01' and '2019-03-06' then 1 else 0 -- 2019
end) as 'ANO 2019P',


sum(case
when data_fato between '2020-01-01' and '2020-12-31' then 1 else 0 -- 2020
end) as 'ANO 2020'


-- count(*) as TOTAL*/
FROM vw_valid_crimes_setor


where cv = true



group by ueop   with rollup;