select COMPLEMENTO_ALFA, 
sum(if(natCODIGO like 'a19%', 1, 0)) as 'Interação comunitária',
sum(if(natCODIGO like 'a20001', 1, 0)) as 'Visita Tranquilizadora',
count(*) soma
from bos
where DTA_INICIO between '2018-07-01' and '2018-07-31'
and MUNICIPIO IN ('divinopolis', 'itauna', 'itatiaiucu', 'claudio', 'carmo do cajuru', 'sao goncalo do para')
and ((natCODIGO like 'a19%') or (natCODIGO like 'a20001'))
and COMPLEMENTO_ALFA =53
group by COMPLEMENTO_ALFA