set @mes = 5;
set @ano = 2019;

select MUNICIPIO, FRACAO, SETOR,

sum(case -- calcula quantidade de presos
		when month(DATA_FATO) = @mes and year(DATA_FATO) = @ano 
            
        then QTDE_ARM_FOGO else 0 -- crimes do mês anterior
end) as arm_fgo,

sum(case -- calcula quantidade de presos
		when (month(DATA_FATO) <= @mes and year(DATA_FATO) = @ano) -- crimes do mês anterior
             
		then QTDE_ARM_FOGO else 0
end) as arm_fgo_ac

from vw_valid_armas_fgo

-- where Cia_Base in ('53ª CIA PM', '142ª CIA PM', '139ª CIA PM', 'CLAUDIO', 'CARMO DO CAJURU', 'ITAUNA', 'ITATIAIUCU', 'SAO GONCALO DO PARA')
where MUNICIPIO in ('DIVINOPOLIS', 'CLAUDIO', 'CARMO DO CAJURU', 'ITAUNA', 'ITATIAIUCU', 'SAO GONCALO DO PARA')

group by MUNICIPIO, FRACAO, SETOR
ORDER BY MUNICIPIO, FRACAO, SETOR;
