SELECT hour(HORA) AS 'FAIXA HORARIA', -- dayofweek(data_fato),

sum(if(dayofweek(data_fato) = 1, 1, 0)) as 'DOM',
sum(if(dayofweek(data_fato) = 2, 1, 0)) as 'SEG',
sum(if(dayofweek(data_fato) = 3, 1, 0)) as 'TER',
sum(if(dayofweek(data_fato) = 4, 1, 0)) as 'QUA',
sum(if(dayofweek(data_fato) = 5, 1, 0)) as 'QUI',
sum(if(dayofweek(data_fato) = 6, 1, 0)) as 'SEX',
sum(if(dayofweek(data_fato) = 7, 1, 0)) as 'SAB',
Count(*) TOTAL

FROM gdo.vw_valid_envolvidos
where data_fato between '2020-01-01' and '2020-12-31'

-- AND (HC_VITIMA = 1 OR (NREDS = '2020-017068849-001'))

AND GRAU_LESAO = 'FATAL'
AND GRUPO_TIPO_ENVOL = 'VITIMA'

group by hour(HORA) with rollup

