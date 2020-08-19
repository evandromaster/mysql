set @mes = 9;
set @ano = 2018;
SELECT vw_valid_bos.COMPANHIA, vw_valid_bos.Cia_Base,
sum(case
when natCODIGO like 'a19%' and month(DTA_INICIO) = @mes  and year(DTA_INICIO) = @ano then 1 else 0 -- reuniões do mês atual
end) as InterCom,
round(INT_COM/12,2) as Meta,

round(sum(case
when natCODIGO like 'a19%' and month(DTA_INICIO) = @mes  and year(DTA_INICIO) = @ano then 1 else 0 -- reuniões do mês atual
end) / round(INT_COM/12,2) * 100,2) as Desempenho,

sum(case
when natCODIGO like 'a19%' and month(DTA_INICIO) <= @mes and year(DTA_INICIO) = @ano then 1 else 0 -- reuniões do mês atual
end) as InterCom_ac,
round(INT_COM/12*@mes,2) as Meta_ac,

Round (sum(case
when natCODIGO like 'a19%' and month(DTA_INICIO) <= @mes and year(DTA_INICIO) = @ano then 1 else 0 -- reuniões do mês atual
end) / round(INT_COM/12*@mes,2) *100, 2) as Desempenho_ac

FROM vw_valid_bos
INNER JOIN tbl_meta_linear
ON vw_valid_bos.Cia_Base = tbl_meta_linear.CIA_BASE

where vw_valid_bos.Cia_Base in ('53ª CIA PM', '142ª CIA PM', '139ª CIA PM', 'CLAUDIO', 'CARMO DO CAJURU', 'ITAUNA', 'ITATIAIUCU', 'SAO GONCALO DO PARA')

group by vw_valid_bos.COMPANHIA, vw_valid_bos.Cia_Base with rollup;