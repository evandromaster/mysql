SELECT MUNICIPIO, count(*) FROM seo.vw_valid_crimes
where month(DATA_FATO) = 9
and MUNICIPIO in ('divinopolis','CLAUDIO', 'CARMO DO CAJURU', 'ITAUNA', 'ITATIAIUCU', 'SAO GONCALO DO PARA')
and
(
	(COD_DIAO in ('C01157', 'B01148', 'C01159', 'C01158') and T_C = 'CONSUMADO')
    or
    (COD_DIAO in ('B01121', 'D01213', 'D01217') and T_C in ('CONSUMADO', 'TENTADO'))    
)
group by municipio
;