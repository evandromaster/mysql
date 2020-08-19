SELECT  UEOP, MUNICIPIO,

sum(case
when data_fato between '2019-01-01' and '2019-12-31' then 1 else 0 -- 2019
end) as '2019',


sum(case
when data_fato between '2019-01-01' and '2019-08-18' then 1 else 0 -- 2019
end) as '2019P',

sum(case
when data_fato between '2020-01-01' and '2020-12-31' then 1 else 0 -- 2020
end) as '2020'


FROM vw_valid_envolvidos

-- where  HC_VITIMA = 1

where

(( -- INÍCIO CONDIÇÃO PRINCIPAL		
				(COD_DIAO in ('B01121') and T_C = 'TENTADO')	  
				or  COD_DELITO in ('B01121') and T_C_DELITO = 'TENTADO')
			) -- FIM CONDIÇÃO PARA  (NATUREZAS)

-- AND GRAU_LESAO = 'FATAL'
AND GRUPO_TIPO_ENVOL = 'VITIMA'

-- and ueop = '63º BPM'


-- and MUNICIPIO = 'ITAPECERICA'

group by MUNICIPIO with rollup


-- order by UEOP, MUNICIPIO
;