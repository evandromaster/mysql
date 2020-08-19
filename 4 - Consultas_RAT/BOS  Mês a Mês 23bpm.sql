 select year(DTA_INICIO) as 'Ano', NATCODIGO, NATDESCRICAO, municipio,
sum(if(month(DTA_INICIO) = 1, 1, 0)) as 'JAN',
sum(if(month(DTA_INICIO) = 2, 1, 0)) as 'FEV',
sum(if(month(DTA_INICIO) = 3, 1, 0)) as 'MAR',
sum(if(month(DTA_INICIO) = 4, 1, 0)) as 'ABR',
sum(if(month(DTA_INICIO) = 5, 1, 0)) as 'MAI',
sum(if(month(DTA_INICIO) = 6, 1, 0)) as 'JUN',
sum(if(month(DTA_INICIO) = 7, 1, 0)) as 'JUL',
sum(if(month(DTA_INICIO) = 8, 1, 0)) as 'AGO',
sum(if(month(DTA_INICIO) = 9, 1, 0)) as 'SET',
sum(if(month(DTA_INICIO) = 10,1, 0)) as 'OUT',
sum(if(month(DTA_INICIO) = 11,1, 0)) as 'NOV',
sum(if(month(DTA_INICIO) = 12,1, 0)) as 'DEZ',
count(year(DTA_INICIO))as 'Total'
from bos
where DTA_INICIO between '2018-01-01' and '2018-04-31'
and MUNICIPIO LIKE 'DIVINOPOLIS'
-- ('divinopolis', 'itauna', 'itatiaiucu', 'claudio', 'carmo do cajuru', 'sao goncalo do para')
-- and NOM_UNIDADE_AREA like '%139%'
and natCODIGO like 'A19%'
group by RATNUM_ATIVIDADE
order by ano