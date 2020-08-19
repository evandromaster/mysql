set @mes = 1;
set @ano = 2018;

SELECT
COALESCE(COMPANHIA, '   TOTAL')  AS COMPANHIA,
CASE
 WHEN ((COMPANHIA IS NOT NULL) AND (Cia_Base IS NULL))
  THEN CONCAT('Subtotal - ', COMPANHIA)
  WHEN (COMPANHIA IS NOT NULL AND CIA_BASE IS NOT NULL)
  THEN CIA_BASE
  WHEN (COMPANHIA IS NULL AND CIA_BASE IS NULL)
  THEN '           23º BPM ==>'
END AS CIA_BASE,
InterCom, Meta, Desempenho, Carinha, Meta_ac, Desempenho_ac, Carinha_ac

FROM

(
SELECT vw_valid_bos.COMPANHIA, vw_valid_bos.Cia_Base,
sum(case
when natCODIGO like 'a19%' and month(DTA_INICIO) = @mes  and year(DTA_INICIO) = @ano then 1 else 0 -- reuniões do mês atual
end) as InterCom,
round(INT_COM/12,2) as Meta,

concat(
round(sum(case
when natCODIGO like 'a19%' and month(DTA_INICIO) = @mes  and year(DTA_INICIO) = @ano then 1 else 0 -- reuniões do mês atual
end) / round(INT_COM/12,2) * 100,2),
'%'
)
as Desempenho,

case
	
    when(		round(sum(case
				when natCODIGO like 'a19%' and month(DTA_INICIO) = @mes  and year(DTA_INICIO) = @ano then 1 else 0 -- reuniões do mês atual
				end) / round(INT_COM/12,2) * 100,2)
			) /*Desempenho_ac*/ >= 100	then (select cod from tbl_emoji where id = '1')
    
    when	(		round(sum(case
				when natCODIGO like 'a19%' and month(DTA_INICIO) = @mes  and year(DTA_INICIO) = @ano then 1 else 0 -- reuniões do mês atual
				end) / round(INT_COM/12,2) * 100,2)
			) /*Desempenho*/ between 70 and 99.999	then (select cod from tbl_emoji where id = '2')
    
    when 	(	round(sum(case
				when natCODIGO like 'a19%' and month(DTA_INICIO) = @mes  and year(DTA_INICIO) = @ano then 1 else 0 -- reuniões do mês atual
				end) / round(INT_COM/12,2) * 100,2)
			) 	/*Desempenho*/ < 70	then (select cod from tbl_emoji where id = '3')
        
    

        
    
    when(		round(sum(case
				when natCODIGO like 'a19%' and month(DTA_INICIO) = @mes  and year(DTA_INICIO) = @ano then 1 else 0 -- reuniões do mês atual
				end) / round(INT_COM/12,2) * 100,2)
			) /*Desempenho_ac*/ >= 100	then (select cod from tbl_emoji where id = '1')
    
else 'ERRO'
end as Carinha,


sum(case
when natCODIGO like 'a19%' and month(DTA_INICIO) <= @mes and year(DTA_INICIO) = @ano then 1 else 0 -- reuniões do mês atual
end) as InterCom_ac,
round(INT_COM/12*@mes,2) as Meta_ac,

concat(
Round (sum(case
when natCODIGO like 'a19%' and month(DTA_INICIO) <= @mes and year(DTA_INICIO) = @ano then 1 else 0 -- reuniões do mês atual
end) / round(INT_COM/12*@mes,2) *100, 2),
'%'
)
as Desempenho_ac,

case
	
	when(	Round (sum(case
				when natCODIGO like 'a19%' and month(DTA_INICIO) <= @mes and year(DTA_INICIO) = @ano then 1 else 0 -- reuniões do mês atual
				end) / round(INT_COM/12*@mes,2) *100, 2)
			) /*Desempenho_ac*/ >= 100	then (select cod from tbl_emoji where id = '1')
    
    when	(	Round (sum(case
				when natCODIGO like 'a19%' and month(DTA_INICIO) <= @mes and year(DTA_INICIO) = @ano then 1 else 0 -- reuniões do mês atual
				end) / round(INT_COM/12*@mes,2) *100, 2)
			) /*Desempenho_ac*/ between 70 and 99.999	then (select cod from tbl_emoji where id = '2')
    
    
    when 	(	Round (sum(case
				when natCODIGO like 'a19%' and month(DTA_INICIO) <= @mes and year(DTA_INICIO) = @ano then 1 else 0 -- reuniões do mês atual
				end) / round(INT_COM/12*@mes,2) *100, 2)
			) /*Desempenho_ac*/ < 70	then (select cod from tbl_emoji where id = '3')
        
    
    
        
    

    
else 'ERRO'
end as Carinha_ac


FROM vw_valid_bos
INNER JOIN tbl_meta_linear
ON vw_valid_bos.Cia_Base = tbl_meta_linear.CIA_BASE

where vw_valid_bos.Cia_Base in ('53ª CIA PM', '142ª CIA PM', '139ª CIA PM', 'CLAUDIO', 'CARMO DO CAJURU', 'ITAUNA', 'ITATIAIUCU', 'SAO GONCALO DO PARA')

group by vw_valid_bos.COMPANHIA, vw_valid_bos.Cia_Base with rollup
) TOTAL
ORDER BY
CASE
 WHEN(COMPANHIA IS NOT NULL) THEN 0
 ELSE 1
END,
COMPANHIA DESC,
CASE
 WHEN(CIA_BASE IS NOT NULL) THEN 0
 ELSE 1
END,
Cia_Base DESC;
