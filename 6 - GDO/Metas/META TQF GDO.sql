SELECT 
	ref.MUNICIPIO, 
    ref.CIA_SEDE,
    ref.SETOR,
    sum(if(month(data_fato) = 1, 1, 0)) as 'JAN',
    ROUND(sum(if(month(data_fato) = 1, 1, 0)) * REDUCAO_PERC_TQF,2) as 'META - JAN',
    
	sum(if(month(data_fato) = 2, 1, 0)) as 'FEV',
    ROUND(sum(if(month(data_fato) = 2, 1, 0)) * REDUCAO_PERC_TQF,2) as 'META - FEV',
    
	sum(if(month(data_fato) = 3, 1, 0)) as 'MAR',
    ROUND(sum(if(month(data_fato) = 3, 1, 0)) * REDUCAO_PERC_TQF,2) as 'META - MAR',
    
	sum(if(month(data_fato) = 4, 1, 0)) as 'ABR',
    ROUND(sum(if(month(data_fato) = 4, 1, 0)) * REDUCAO_PERC_TQF,2) as 'META - ABR',
    
	sum(if(month(data_fato) = 5, 1, 0)) as 'MAI',
    ROUND(sum(if(month(data_fato) = 5, 1, 0)) * REDUCAO_PERC_TQF,2) as 'META - MAI',
    
	sum(if(month(data_fato) = 6, 1, 0)) as 'JUN',
    ROUND(sum(if(month(data_fato) = 6, 1, 0)) * REDUCAO_PERC_TQF,2) as 'META - JUN',
    
	sum(if(month(data_fato) = 7, 1, 0)) as 'JUL',
    ROUND(sum(if(month(data_fato) = 7, 1, 0)) * REDUCAO_PERC_TQF,2) as 'META - JUL',
    
	sum(if(month(data_fato) = 8, 1, 0)) as 'AGO',
    ROUND(sum(if(month(data_fato) = 8, 1, 0)) * REDUCAO_PERC_TQF,2) as 'META - AGO',
    
	sum(if(month(data_fato) = 9, 1, 0)) as 'SET',
    ROUND(sum(if(month(data_fato) = 9, 1, 0)) * REDUCAO_PERC_TQF,2) as 'META - SET',
    
	sum(if(month(data_fato) = 10,1, 0)) as 'OUT',
    ROUND(sum(if(month(data_fato) = 10, 1, 0)) * REDUCAO_PERC_TQF,2) as 'META - OUT',
    
	sum(if(month(data_fato) = 11,1, 0)) as 'NOV',
    ROUND(sum(if(month(data_fato) = 11, 1, 0)) * REDUCAO_PERC_TQF,2) as 'META - NOV',
    
	sum(if(month(data_fato) = 12,1, 0)) as 'DEZ',
    ROUND(sum(if(month(data_fato) = 12, 1, 0)) * REDUCAO_PERC_TQF,2) as 'META - DEZ',
    
	count(year(data_fato))as 'ANO 2018',
	ROUND(count(year(data_fato)) * REDUCAO_PERC_TQF, 2) as 'META ANO 2019'
    
    
--     SUM(TQF) AS TQF_2018,  
--     ROUND((SUM(TQF)) * 0.895854398382204,2) AS META_TQF_2019 

FROM gdo.vw_valid_gdo_ref_2018 as ref
		LEFT JOIN gdo.tbl_metas_percentuais as m
			ON ref.CIA_SEDE = m.CIA_SEDE
            
WHERE ref.MUNICIPIO in ('DIVINOPOLIS', 'CLAUDIO', 'CARMO DO CAJURU', 'ITAUNA', 'ITATIAIUCU', 'SAO GONCALO DO PARA')
AND TQF = 1

AND DATA_FATO BETWEEN '2018-01-01' AND '2018-12-31'
AND DATA_ULT_ATT <= '2019-01-04'

GROUP BY ref.MUNICIPIO, ref.CIA_SEDE, ref.SETOR -- WITH ROLLUP;
order by ref.COMPANHIA, ref.MUNICIPIO, ref.CIA_SEDE, ref.SETOR