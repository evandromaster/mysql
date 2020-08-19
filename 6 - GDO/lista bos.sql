select * from bos
where DTA_INICIO between '2018-01-01' and '2018-07-31'
-- and MUNICIPIO = 'divinopolis'
-- and MUNICIPIO IN ('divinopolis')
and MUNICIPIO IN ('divinopolis', 'itauna', 'itatiaiucu', 'claudio', 'carmo do cajuru', 'sao goncalo do para')
-- and NOM_UNIDADE_AREA LIKE '%%'
-- AND NOM_UNIDADE_AREA = ''
-- and natCODIGO like 'a19%'
and ((natCODIGO like 'a19%') or (natCODIGO like 'a20001'))
-- and COMPLEMENTO_ALFA = '%%'
group by RATNUM_ATIVIDADE

-- HAVING qtde > 0
