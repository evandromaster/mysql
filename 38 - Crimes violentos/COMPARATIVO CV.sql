SELECT  UEOP, MUNICIPIO,



sum(case
when data_fato between '2019-01-01' and '2019-12-31' then 1 else 0 -- 2019
end) as '2019',


sum(case
when data_fato between '2019-03-01' and '2019-03-31' then 1 else 0 -- 2019
end) as '2019P',

sum(case
when data_fato between '2020-03-01' and '2020-03-31' then 1 else 0 -- 2020
end) as '2020'

FROM vw_valid_crimes_setor

where

CV = 1



group by MUNICIPIO  with rollup


-- order by UEOP, MUNICIPIO


;