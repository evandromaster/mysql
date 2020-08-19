set @mes = 5;
set @ano = 2019;

select MUNICIPIO, CIA_SEDE,

sum(case -- calcula quantidade de presos
		when month(DATA_FATO) = @mes and year(DATA_FATO) = @ano 
            
        then QTDE_ARM_FOGO else 0 -- crimes do mês anterior
end) as ARM_FGO,

sum(case -- calcula quantidade de presos
		when (month(DATA_FATO) <= @mes and year(DATA_FATO) = @ano) -- crimes do mês anterior
             
		then QTDE_ARM_FOGO else 0
end) as ARM_FGO_AC

from vw_valid_armas_fgo

-- where Cia_Base in ('53ª CIA PM', '142ª CIA PM', '139ª CIA PM', 'CLAUDIO', 'CARMO DO CAJURU', 'ITAUNA', 'ITATIAIUCU', 'SAO GONCALO DO PARA')
where MUNICIPIO in ('DIVINOPOLIS', 'CLAUDIO', 'CARMO DO CAJURU', 'ITAUNA', 'ITATIAIUCU', 'SAO GONCALO DO PARA')

group by CIA_SEDE WITH ROLLUP;
