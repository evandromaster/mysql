SELECT NOM_UNID_RESPONSAVEL, NATCODIGO, right(digitador,7), sum(ABORDADOS) Pessoas_abordaddas, sum(VEIC_FISC) Veiculos_Fiscalizados, 
(sum(VEIC_FISC)*5)+sum(ABORDADOS) inde



FROM gdo.tbl_rat_resultados


	WHERE 
    municipio IN ('DIVINOPOLIS', 'CARMO DO CAJURU', 'CLAUDIO', 'SAO GONCALO DO PARA', 'ITAUNA', 'ITATIAIUCU')
    
    and DTA_INICIO between '2019-03-18' and '2019-03-27'
    AND NATCODIGO IN ('Y07001', 'Y07003', 'Y07004', 'Y07005')
    
    and NOM_UNID_RESPONSAVEL like '240%'
    
    group by digitador


;