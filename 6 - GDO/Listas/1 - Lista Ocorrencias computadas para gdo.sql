SELECT * 
FROM vw_valid_crimes_setor INNER JOIN tbl_naturezas
ON vw_valid_crimes_setor.DIAO_FINAL = tbl_naturezas.cod_subclasse
where data_fato between '2019-01-01' and '2019-12-31'
-- and DATA_ULT_ATT <= '2019-01-04'

AND MUNICIPIO IN ('DIVINOPOLIS', 'CARMO DO CAJURU', 'CLAUDIO', 'SAO GONCALO DO PARA', 'ITAUNA', 'ITATIAIUCU')
-- AND CIA_SEDE = 'OTHER'

-- AND NREDS = '2019-015332129-001'

;