set @mes = 9;
set @ano = 2018;

select
	vw_valid_crimes.Cia_Base,
/*-----------------------------------------------------------------------------------------------*/

    sum(case
	when (CV = 1 and month(DH_FATO) = @mes and year(DH_FATO) = @ano) then 1 else 0
	end) as CV_mes,
/*-----------------------------------------------------------------------------------------------*/

	sum(case
	when (CV = 1 and month(DH_FATO) <= @mes and year(DH_FATO) = @ano) then 1 else 0
	end) as CV_mes_ac,

/*-----------------------------------------------------------------------------------------------*/

	sum(case -- calcula quantidade de presos
				when 	month(DH_FATO) = @mes and year(DH_FATO) = @ano
						and
						vw_valid_crimes.NREDS = vw_valid_envolvidos.NREDS            
	then 1 else 0 -- crimes do mês anterior
	end) as presos_CV,
/*-----------------------------------------------------------------------------------------------*/

	sum(case -- calcula quantidade de presos
				when 	month(DH_FATO) <= @mes and year(DH_FATO) = @ano
                and
                vw_valid_crimes.NREDS = vw_valid_envolvidos.NREDS
	then 1 else 0 -- crimes do mês anterior
	end) as presos_CV_ac

/*-----------------------------------------------------------------------------------------------*/

from vw_valid_crimes
left outer join vw_valid_envolvidos
on vw_valid_crimes.NREDS = vw_valid_envolvidos.NREDS

where vw_valid_crimes.Cia_Base in ('53ª CIA PM', '142ª CIA PM', '139ª CIA PM', 'CLAUDIO', 'CARMO DO CAJURU', 'ITAUNA', 'ITATIAIUCU', 'SAO GONCALO DO PARA')

group by vw_valid_crimes.Cia_Base;

SELECT * FROM
    vw_valid_crimes
        FULL JOIN
	vw_valid_envolvidos ON vw_valid_crimes.NREDS = vw_valid_envolvidos.NREDS;


, sum(vw_valid_crimes.CV)
group by vw_valid_crimes.NREDS