select *, count(*) as qtde from bos
where DTA_INICIO between '2018-08-01' and '2018-08-31'
-- and MUNICIPIO = 'divinopolis'
and MUNICIPIO IN ('itauna', 'itatiaiucu')
-- and MUNICIPIO IN ('divinopolis', 'itauna', 'itatiaiucu', 'claudio', 'carmo do cajuru', 'sao goncalo do para')
-- and NOM_UNIDADE_AREA LIKE '%%'
-- AND NOM_UNIDADE_AREA = ''
and natCODIGO like 'a19%'
-- and ((natCODIGO like 'a19%') or (natCODIGO like 'a20001'))
-- and COMPLEMENTO_ALFA = '142'
group by RATNUM_ATIVIDADE
-- and nome_bairro like 'SAO JOAO DE DEUS'
-- OR  nome_bairro like 'SAO LUIZ'
-- HAVING qtde > 0
