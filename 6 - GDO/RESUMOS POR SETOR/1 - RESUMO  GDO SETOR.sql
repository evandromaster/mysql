set @mes = 5;
set @ano = 2019;

select MUNICIPIO, FRACAO, SETOR,

/*sum(case -- calcula crimes computados para o indicador "Taxa de Atendimento às Vítimas de Crimes Violentos"
when TX_ATEND_VIT = 1 and month(DH_FATO) = @mes - 1 and year(DH_FATO) = @ano then 1 else 0 -- crimes do mês anterior
end) as TX_ATEND_VIT,

sum(case
when 		TX_ATEND_VIT = 1 and (
			(month(DH_FATO) < @mes and year(DH_FATO) = @ano)
		or	(month(DH_FATO) = 12 and year(DH_FATO) = @ano -1) )	then 1 else 0 -- crimes do mês anterior
        
end) as TX_ATEND_VIT_ac,  (CRITERIO DESATIVADO EM 2019)*/
#################################################################################################### CRITERIO DESATIVADO
-- sum(case
-- when CV = 1 and month(DH_FATO) = @mes and year(DH_FATO) = @ano and AUDITORIA = 1 then 1 else 0
-- end) as CV_mes,
-- 
-- sum(case
-- when CV = 1 and month(DH_FATO) <= @mes and year(DH_FATO) = @ano AND Auditoria = 1 THEN 1 else 0
-- end) as CV_mes_ac,
#################################################################################################### CRITERIO DESATIVADO

sum(case
when CV = 1 and month(DH_FATO) = @mes and year(DH_FATO) = @ano and AUDITORIA = 1 then 1 else 0
end) as CV_mes,

sum(case
when CV = 1 and month(DH_FATO) <= @mes and year(DH_FATO) = @ano AND Auditoria = 1 THEN 1 else 0
end) as CV_mes_ac,

#################################################################################################### CRITERIO DESATIVADO
-- sum(case
-- when CV = 1 and month(DH_FATO) = @mes and year(DH_FATO) = @ano 	AND (COD_DIAO = 'B01121' AND T_C = 'CONSUMADO') then 1 else 0
-- end) as HC_mes,
-- 
-- sum(case
-- when CV = 1 and month(DH_FATO) <= @mes and year(DH_FATO) = @ano AND (COD_DIAO = 'B01121' AND T_C = 'CONSUMADO') then 1 else 0
-- end) as HC_ac,
#################################################################################################### CRITERIO DESATIVADO
sum(case
when TRCV = 1 and month(DH_FATO) = @mes and year(DH_FATO) = @ano then 1 else 0
end) as TRCV,

sum(case
when TRCV = 1 and month(DH_FATO) <= @mes and year(DH_FATO) = @ano then 1 else 0
end) as TRCV_ac,



sum(case
when TQF = 1 and month(DH_FATO) = @mes and year(DH_FATO) = @ano then 1 else 0
end) as TQF,

sum(case
when TQF = 1 and month(DH_FATO) <= @mes and year(DH_FATO) = @ano then 1 else 0
end) as TQF_ac,





sum(case
when TCAF = 1 and month(DH_FATO) = @mes and year(DH_FATO) = @ano then 1 else 0
end) as TCAF,

sum(case
when TCAF = 1 and month(DH_FATO) <= @mes and year(DH_FATO) = @ano then 1 else 0
end) as TCAF_ac
########################################################################################CRITERIO ICV DESATIVADO
-- ( 
-- (sum(case 
-- 	when 	CV = 1
-- 			and month(DH_FATO) = @mes
-- 			and year(DH_FATO) = @ano 
-- then 1
-- else 0
-- 
-- end) ) / POP2017 * 100000
-- ) as ICV_POP17,
-- 
-- (
-- (sum(case 
-- 	when 	CV = 1
-- 			and month(DH_FATO) <= @mes
-- 			and year(DH_FATO) = @ano 
-- then 1
-- else 0
-- 
-- end) ) / POP2017 * 100000
-- ) as ICV_POP17_ac,
-- 
-- 
-- (
-- (sum(case
-- when CV = 1 and month(DH_FATO) = @mes and year(DH_FATO) = @ano 	then 1 else 0
-- end) ) / POP2018 * 100000
-- ) as ICV_POP18,
-- 
-- (
-- (sum(case
-- when CV = 1 and month(DH_FATO) <= @mes and year(DH_FATO) = @ano 	then 1 else 0
-- end) ) / POP2018 * 100000
-- ) as ICV_POP18_ac
########################################################################################CRITERIO ICV DESATIVADO
from vw_valid_crimes_setor
-- inner join tbl_populacoes
-- on tbl_populacoes.FRACAO = vw_valid_crimes_setor.Cia_sede

where MUNICIPIO in ('DIVINOPOLIS', 'CLAUDIO', 'CARMO DO CAJURU', 'ITAUNA', 'ITATIAIUCU', 'SAO GONCALO DO PARA')
and nreds != '2019-019791422-002'
group by MUNICIPIO, FRACAO, SETOR
ORDER BY MUNICIPIO, FRACAO, SETOR;
