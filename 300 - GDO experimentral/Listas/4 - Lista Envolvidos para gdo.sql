SELECT * 
FROM vw_valid_envolvidos
-- INNER JOIN tbl_naturezas ON vw_valid_crimes_setor.cod_diao = tbl_naturezas.cod_subclasse
where data_fato between '2019-01-01' and '2019-05-30'
-- and DATA_ULT_ATT <= '2019-01-04'

AND MUNICIPIO IN ('DIVINOPOLIS', 'CARMO DO CAJURU', 'CLAUDIO', 'SAO GONCALO DO PARA', 'ITAUNA', 'ITATIAIUCU')
-- and setor = 'other'
;