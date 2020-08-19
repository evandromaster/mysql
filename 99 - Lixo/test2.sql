SELECT MUNICIPIO, sum(TX_ATEND_VIT) FROM seo.vw_valid_crimes
where month(DATA_FATO) = 9
and MUNICIPIO in ('divinopolis','CLAUDIO', 'CARMO DO CAJURU', 'ITAUNA', 'ITATIAIUCU', 'SAO GONCALO DO PARA')

group by municipio

;