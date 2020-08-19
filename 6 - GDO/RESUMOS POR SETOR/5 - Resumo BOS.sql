set @mes = 5;
set @ano = 2019;

select MUNICIPIO, CIA_SEDE, SETOR,

sum(case
when natCODIGO like 'a19%' and month(DTA_INICIO) = @mes  and year(DTA_INICIO) = @ano then 1 else 0 -- reuniões do mês atual
end) as InterCom,

sum(case
when natCODIGO like 'a19%' and month(DTA_INICIO) <= @mes and year(DTA_INICIO) = @ano then 1 else 0 -- reuniões do mês atual
end) as InterCom_ac,

sum(case
when natCODIGO = 'a20001' and month(DTA_INICIO) = @mes and year(DTA_INICIO) = @ano then 1 else 0 -- reuniões do mês atual
end) as Visita_TranQ,

sum(case
when natCODIGO = 'a20001' and month(DTA_INICIO) <= @mes and year(DTA_INICIO) = @ano then 1 else 0 -- reuniões do mês atual
end) as Visita_TranQ_ac

from vw_valid_bos
where MUNICIPIO in ('DIVINOPOLIS', 'CLAUDIO', 'CARMO DO CAJURU', 'ITAUNA', 'ITATIAIUCU', 'SAO GONCALO DO PARA')

group by MUNICIPIO, CIA_SEDE, SETOR
ORDER BY MUNICIPIO, CIA_SEDE, SETOR;