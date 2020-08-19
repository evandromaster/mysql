select UEOP,
sum(if(month(data_fato) = 1, 1, 0)) as 'JAN',
sum(if(month(data_fato) = 2, 1, 0)) as 'FEV',
sum(if(month(data_fato) = 3, 1, 0)) as 'MAR',
sum(if(month(data_fato) = 4, 1, 0)) as 'ABR',
sum(if(month(data_fato) = 5, 1, 0)) as 'MAI',
sum(if(month(data_fato) = 6, 1, 0)) as 'JUN',
sum(if(month(data_fato) = 7, 1, 0)) as 'JUL',
sum(if(month(data_fato) = 8, 1, 0)) as 'AGO',
sum(if(month(data_fato) = 9, 1, 0)) as 'SET',
sum(if(month(data_fato) = 10,1, 0)) as 'OUT',
sum(if(month(data_fato) = 11,1, 0)) as 'NOV',
sum(if(month(data_fato) = 12,1, 0)) as 'DEZ',
count(year(data_fato))as 'Total'
from vw_valid_gdo_ref_2019
where data_fato between '2019-01-01' and '2019-12-31'
and MUNICIPIO like'%%'
and CV = True
-- and TCAF = true
-- and trcv = true
-- and Auditoria = true
and DATA_ULT_ATT <= '2020-01-13' -- '2020-01-13' esta é a data de extração dos cinds

group by ueop with rollup 
-- order by cod_diao;




