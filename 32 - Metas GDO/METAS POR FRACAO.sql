SELECT 
	 ref.UEOP, pop.POP2018, ref.MUNICIPIO, ref.COMPANHIA, ref.FRACAO,
COUNT(*)
    
    
--     SUM(CV) AS CV_2018,  
--     ROUND((SUM(CV)) * 0.895854398382204,2) AS META_CV_2019 

FROM gdo.vw_valid_gdo_ref_2018 as ref
		INNER JOIN gdo.tbl_populacoes as pop
			   ON ref.FRACAO = pop.FRACAO


where DATA_FATO BETWEEN '2018-01-01' AND '2019-12-31'
-- AND DATA_ULT_ATT <= '2019-01-04'

GROUP BY ref.FRACAO -- WITH ROLLUP-- ref.MUNICIPIO, ref.FRACAO, ref.SETOR -- WITH ROLLUP
order by ref.FRACAO -- , ref.COMPANHIA, ref.MUNICIPIO, ref.FRACAO, ref.SETOR
;