SELECT  UEOP, MUNICIPIO, YEAR(DATA_FATO) AS ANO,

sum(if(year(data_fato) = 2019 and month(data_fato) = 1, 1, 0)) as 'JAN-19',
sum(if(year(data_fato) = 2020 and month(data_fato) = 1, 1, 0)) as 'JAN-20',


sum(if(year(data_fato) = 2019 and month(data_fato) = 2, 1, 0)) as 'FEV-19',
sum(if(year(data_fato) = 2020 and month(data_fato) = 2, 1, 0)) as 'FEV-20',


sum(if(year(data_fato) = 2019 and month(data_fato) = 3, 1, 0)) as 'MAR-19',
sum(if(year(data_fato) = 2020 and month(data_fato) = 3, 1, 0)) as 'MAR-20',

sum(if(year(data_fato) = 2019, 1, 0)) as '2019',
sum(if(year(data_fato) = 2020, 1, 0)) as '2020',


count(year(data_fato))as 'Total',


COUNT(*)




FROM tbl_envolvidos

where

(( -- INÍCIO CONDIÇÃO PRINCIPAL		
				(COD_DIAO in ('B01121') and T_C = 'CONSUMADO')	  
				or  COD_DELITO in ('B01121') and T_C_DELITO = 'CONSUMADO')
			) -- FIM CONDIÇÃO PARA  (NATUREZAS)


AND GRAU_LESAO = 'FATAL'
AND GRUPO_TIPO_ENVOL = 'VITIMA'
AND data_fato between '2019-01-01' and '2020-12-31'
-- AND NREDS NOT IN ('2019-007891805-002','2019-007116067-001','2019-055650752-001')

group by UEOP   with rollup


-- order by UEOP, MUNICIPIO


;