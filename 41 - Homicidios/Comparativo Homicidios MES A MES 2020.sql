SELECT  YEAR(DATA_FATO) AS ANO, UEOP, 

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
count(year(data_fato))as 'Total',

count(year(data_fato))as 'Total',


COUNT(*)




FROM tbl_envolvidos

where

(( -- INÍCIO CONDIÇÃO PRINCIPAL		
				(COD_DIAO in ('B01121') and T_C = 'CONSUMADO')	  
				or  COD_DELITO in ('B01121') and T_C_DELITO = 'CONSUMADO')
                or nreds = '2020-017068849-001'
			) -- FIM CONDIÇÃO PARA  (NATUREZAS)


AND GRAU_LESAO = 'FATAL'
AND GRUPO_TIPO_ENVOL = 'VITIMA'
AND data_fato between '2020-01-01' and '2020-12-31'
-- AND NREDS NOT IN ('2019-007891805-002','2019-007116067-001','2019-055650752-001')

group by UEOP   with rollup


-- order by UEOP, MUNICIPIO


;