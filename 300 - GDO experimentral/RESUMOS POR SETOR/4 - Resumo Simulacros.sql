set @mes = 5;
set @ano = 2019;

select MUNICIPIO, FRACAO, SETOR,

sum(case -- calcula quantidade de presos
		when month(DATA_FATO) = @mes and year(DATA_FATO) = @ano 
            
        then QTDE_MAT else 0 -- crimes do mês anterior
end) as SIMULACRO,

sum(case -- calcula quantidade de presos
		when (month(DATA_FATO) <= @mes and year(DATA_FATO) = @ano) -- crimes do mês anterior
             
		then QTDE_MAT else 0
end) as SIMULACRO_ac

from vw_valid_materiais

where MUNICIPIO in ('DIVINOPOLIS', 'CLAUDIO', 'CARMO DO CAJURU', 'ITAUNA', 'ITATIAIUCU', 'SAO GONCALO DO PARA')

group by MUNICIPIO, FRACAO, SETOR
ORDER BY MUNICIPIO, FRACAO, SETOR;