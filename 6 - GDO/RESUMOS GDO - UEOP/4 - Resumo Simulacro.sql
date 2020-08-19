set @mes = 5
;
set @ano = 2019;

select UEOP, MUNICIPIO, FRACAO,

sum(case -- calcula quantidade de presos
		when month(DATA_FATO) = @mes and year(DATA_FATO) = @ano 
            
        then QTDE_MAT else 0 -- crimes do mês anterior
end) as SIMULACROS,

sum(case -- calcula quantidade de presos
		when (month(DATA_FATO) <= @mes and year(DATA_FATO) = @ano) -- crimes do mês anterior
             
		then QTDE_MAT else 0
end) as SIMULACROS_ac

from vw_valid_materiais

where MUNICIPIO like '%%' -- ('DIVINOPOLIS', 'CLAUDIO', 'CARMO DO CAJURU', 'ITAUNA', 'ITATIAIUCU', 'SAO GONCALO DO PARA')

group by UEOP WITH ROLLUP;