SELECT
	NREDS,
    DATA_FATO,
    LOGRADOURO,
    N_LOG,
    pdca.tbl_ocorrencias.COD_DIAO,
    DESC_SUBCLASSE,

sum(case
when DATA_FATO between '2018-04-15' and '2018-06-22' then 1 else 0 -- período integral
end) as 'ANO PASSADO',


sum(case
when DATA_FATO between '2019-02-05' and '2019-04-14' then 1 else 0 -- período integral
end) as 'ANTES',


sum(case
when DATA_FATO between '2019-04-15' and '2019-06-22' then 1 else 0 -- período integral
end) as 'DEPOIS'



FROM pdca.tbl_ocorrencias

INNER JOIN seo.tbl_natureza
ON pdca.tbl_ocorrencias.COD_DIAO = seo.tbl_natureza.COD_SUBCLASSE

where ((DATA_FATO between '2018-04-15' and '2018-06-22') OR (DATA_FATO between '2019-02-05' and '2019-04-14') OR (DATA_FATO between '2019-04-15' and '2019-06-22') )

-- and  LOGRADOURO like '%janeiro%'
AND

	((LOGRADOURO = 'GOVERNADOR BENEDITO VALADARES') -- and N_LOG between 16 and 100
	or (LOGRADOURO ='SAO PAULO' and N_LOG between 380 and 760)
	or (LOGRADOURO ='VINTE E UM DE ABRIL' and N_LOG between 600 and 1000)
	or (LOGRADOURO ='RIO DE JANEIRO'and N_LOG between 570 and 710))

-- AND MUNICIPIO IN ('DIVINOPOLIS', 'CARMO DO CAJURU', 'CLAUDIO', 'SAO GONCALO DO PARA', 'ITAUNA', 'ITATIAIUCU')

group by COD_DIAO with rollup
;