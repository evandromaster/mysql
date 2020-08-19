SELECT UEOP,-- hour(HORA_FATO) AS 'FAIXA HORARIA', -- dayofweek(data_fato),

sum(if(dayofweek(data_fato) = 1, 1, 0)) as 'DOM',
sum(if(dayofweek(data_fato) = 2, 1, 0)) as 'SEG',
sum(if(dayofweek(data_fato) = 3, 1, 0)) as 'TER',
sum(if(dayofweek(data_fato) = 4, 1, 0)) as 'QUA',
sum(if(dayofweek(data_fato) = 5, 1, 0)) as 'QUI',
sum(if(dayofweek(data_fato) = 6, 1, 0)) as 'SEX',
sum(if(dayofweek(data_fato) = 7, 1, 0)) as 'SAB',
Count(*) TOTAL

FROM gdo.tbl_crimes
where data_fato between '2020-01-01' and '2020-12-31'


-- and ((COD_DIAO = 'C01157') OR (COD_DIAO1 = 'C01157') OR (COD_DIAO2 = 'C01157') OR (COD_DIAO3 = 'C01157'))
and TCV = True

group by UEOP with rollup
-- group by hour(HORA_FATO) with rollup

