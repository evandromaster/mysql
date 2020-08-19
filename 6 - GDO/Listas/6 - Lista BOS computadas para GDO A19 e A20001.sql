SELECT * FROM ratbos.vw_valid_bos
where MUNICIPIO IN ('divinopolis', 'itauna', 'itatiaiucu', 'claudio', 'carmo do cajuru', 'sao goncalo do para')
and DTA_INICIO between '2020-01-01' and '2020-12-31'
and ((natCODIGO like 'a19%') or (natCODIGO like 'a20001'))
-- and Cia_Base = 'other'
;