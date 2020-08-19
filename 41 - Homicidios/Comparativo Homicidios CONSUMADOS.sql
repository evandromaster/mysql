SELECT  UEOP, MUNICIPIO,



/*sum(case
when data_fato between '2019-01-01' and '2019-12-31' then
(case when MUNICIPIO != 'itapecerica' then 1 when MUNICIPIO = 'itapecerica' AND MONTH(data_fato) = 1 then 1 + 1 end) else 0 -- 2019

end) as '2019',


sum(case
when data_fato between '2019-01-01' and '2019-04-16' then
(case when MUNICIPIO != 'itapecerica' then 1 when MUNICIPIO = 'itapecerica' AND MONTH(data_fato) = 1 then 1 + 1 end) else 0 -- 2019
end) as '2019P',*/

sum(case
when data_fato between '2020-01-01' and '2020-12-31' then 1 else 0 -- 2020
end) as '2020'

FROM tbl_envolvidos

where

(( -- INÍCIO CONDIÇÃO PRINCIPAL		
				(COD_DIAO in ('B01121') and T_C = 'CONSUMADO')	  
				or  COD_DELITO in ('B01121') and T_C_DELITO = 'CONSUMADO')
                
			) -- FIM CONDIÇÃO PARA  (NATUREZAS)


AND GRAU_LESAO = 'FATAL'
AND GRUPO_TIPO_ENVOL = 'VITIMA'

-- AND NREDS NOT IN ('2019-007891805-002','2019-007116067-001','2019-055650752-001')

-- AND NREDS IN ('2019-010447049-002', '2019-010447049-001')

-- and ueop = '63º BPM'

group by MUNICIPIO   with rollup


-- order by UEOP, MUNICIPIO


;