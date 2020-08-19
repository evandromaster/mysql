select *

from rat
where DTA_INICIO between '2018-01-01' and '2018-05-31'
-- and MUNICIPIO IN ('divinopolis', 'itauna', 'itatiaiucu', 'claudio', 'carmo do cajuru', 'sao goncalo do para')
and MUNICIPIO IN ('itauna', 'itatiaiucu')
and NATDESCRICAO like 'OPERACAO LEI SECA'