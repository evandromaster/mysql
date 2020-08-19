set @mes = 4;
set @ano = 2019;

select municipio, vw_valid_crimes_setor.CIA_SEDE,

/*sum(case -- calcula crimes computados para o indicador "Taxa de Atendimento às Vítimas de Crimes Violentos"
when TX_ATEND_VIT = 1 and month(DH_FATO) = @mes - 1 and year(DH_FATO) = @ano then 1 else 0 -- crimes do mês anterior
end) as TX_ATEND_VIT,

sum(case
when 		TX_ATEND_VIT = 1 and (
			(month(DH_FATO) < @mes and year(DH_FATO) = @ano)
		or	(month(DH_FATO) = 12 and year(DH_FATO) = @ano -1) )	then 1 else 0 -- crimes do mês anterior
        
end) as TX_ATEND_VIT_ac,  (CRITERIO DESATIVADO EM 2019)*/

sum(case
when CV = 1 and month(DH_FATO) = @mes and year(DH_FATO) = @ano and AUDITORIA = 1 then 1 else 0
end) as CV_mes,

sum(case
when CV = 1 and month(DH_FATO) <= @mes and year(DH_FATO) = @ano AND Auditoria = 1 THEN 1 else 0
end) as C_mes_ac,


sum(case
when CV = 1 and month(DH_FATO) = @mes and year(DH_FATO) = @ano 	AND (COD_DIAO = 'B01121' AND T_C = 'CONSUMADO') then 1 else 0
end) as HC_mes,

sum(case
when CV = 1 and month(DH_FATO) <= @mes and year(DH_FATO) = @ano AND (COD_DIAO = 'B01121' AND T_C = 'CONSUMADO') then 1 else 0
end) as HC_ac,

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
end) as TCAF_ac,

(
(sum(case 
	when 	CV = 1
			and month(DH_FATO) = @mes
			and year(DH_FATO) = @ano 
then 1
else 0

end) ) / POP2017 * 100000
) as ICV_POP17,

(
(sum(case 
	when 	CV = 1
			and month(DH_FATO) <= @mes
			and year(DH_FATO) = @ano 
then 1
else 0

end) ) / POP2017 * 100000
) as ICV_POP17_ac,


(
(sum(case
when CV = 1 and month(DH_FATO) = @mes and year(DH_FATO) = @ano 	then 1 else 0
end) ) / POP2018 * 100000
) as ICV_POP18,

(
(sum(case
when CV = 1 and month(DH_FATO) <= @mes and year(DH_FATO) = @ano 	then 1 else 0
end) ) / POP2018 * 100000
) as ICV_POP18_ac

from vw_valid_crimes_setor
inner join tbl_populacoes
on tbl_populacoes.Cia_SEDE = vw_valid_crimes_setor.Cia_SEDE

where MUNICIPIO in ('DIVINOPOLIS', 'CLAUDIO', 'CARMO DO CAJURU', 'ITAUNA', 'ITATIAIUCU', 'SAO GONCALO DO PARA')

and Auditoria = 1

group by vw_valid_crimes_setor.Cia_SEDE WITH ROLLUP;
