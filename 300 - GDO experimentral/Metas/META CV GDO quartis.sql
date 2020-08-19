SET@CV = 0.895854398382204;
SELECT 
	MUNICIPIO, 
    gdo.vw_valid_gdo_ref_2018.CIA_SEDE, 
   --  sum(if(month(data_fato) = 1, 1, 0)) as 'JAN',
--     ROUND(sum(if(month(data_fato) = 1, 1, 0)) * @CV,2) as 'META - JAN',
--     
-- 	sum(if(month(data_fato) = 2, 1, 0)) as 'FEV',
--     ROUND(sum(if(month(data_fato) = 2, 1, 0)) * @CV,2) as 'META - FEV',
--     
-- 	sum(if(month(data_fato) = 3, 1, 0)) as 'MAR',
--     ROUND(sum(if(month(data_fato) = 3, 1, 0)) * @CV,2) as 'META - MAR',
--     
-- 	sum(if(month(data_fato) = 4, 1, 0)) as 'ABR',
--     ROUND(sum(if(month(data_fato) = 4, 1, 0)) * @CV,2) as 'META - ABR',
--     
-- 	sum(if(month(data_fato) = 5, 1, 0)) as 'MAI',
--     ROUND(sum(if(month(data_fato) = 5, 1, 0)) * @CV,2) as 'META - MAI',
--     
-- 	sum(if(month(data_fato) = 6, 1, 0)) as 'JUN',
--     ROUND(sum(if(month(data_fato) = 6, 1, 0)) * @CV,2) as 'META - JUN',
--     
-- 	sum(if(month(data_fato) = 7, 1, 0)) as 'JUL',
--     ROUND(sum(if(month(data_fato) = 7, 1, 0)) * @CV,2) as 'META - JUL',
--     
-- 	sum(if(month(data_fato) = 8, 1, 0)) as 'AGO',
--     ROUND(sum(if(month(data_fato) = 8, 1, 0)) * @CV,2) as 'META - AGO',
--     
-- 	sum(if(month(data_fato) = 9, 1, 0)) as 'SET',
--     ROUND(sum(if(month(data_fato) = 9, 1, 0)) * @CV,2) as 'META - SET',
--     
-- 	sum(if(month(data_fato) = 10,1, 0)) as 'OUT',
--     ROUND(sum(if(month(data_fato) = 10, 1, 0)) * @CV,2) as 'META - OUT',
--     
-- 	sum(if(month(data_fato) = 11,1, 0)) as 'NOV',
--     ROUND(sum(if(month(data_fato) = 11, 1, 0)) * @CV,2) as 'META - NOV',
--     
-- 	sum(if(month(data_fato) = 12,1, 0)) as 'DEZ',
--     ROUND(sum(if(month(data_fato) = 12, 1, 0)) * @CV,2) as 'META - DEZ',
    
	
      
    sum(if(month(data_fato) = 1, 1, 0)) as 'JAN',
    
    (sum(if(month(data_fato) = 1, 1, 0))  / POP2018) *100000 as 'ICV  JAN 2018',
    round(if((sum(if(month(data_fato) = 1, 1, 0)) / POP2018) *100000 < 245.765575921435,   ((sum(if(month(data_fato) = 1, 1, 0)) / POP2018) *100000)  -  (((sum(if(month(data_fato) = 1, 1, 0)) / POP2018) *100000) * 0.065), 
		if((sum(if(month(data_fato) = 1, 1, 0)) / POP2018) *100000 >= 245.765575921435  and (sum(if(month(data_fato) = 1, 1, 0)) / POP2018) *100000 < 491.5311518,  ((sum(if(month(data_fato) = 1, 1, 0)) / POP2018) *100000) - (((sum(if(month(data_fato) = 1, 1, 0)) / POP2018) *100000) * 0.095),
			if((count(year(data_fato)) / POP2018) *100000 >= 491.5311518  and (sum(if(month(data_fato) = 1, 1, 0)) / POP2018) *100000 < 983.062303685738,  ((sum(if(month(data_fato) = 1, 1, 0)) / POP2018) *100000) - (((sum(if(month(data_fato) = 1, 1, 0)) / POP2018) *100000) * 0.1002),
				if((sum(if(month(data_fato) = 1, 1, 0)) / POP2018) *100000 > 983.062303685738,   ((sum(if(month(data_fato) = 1, 1, 0)) / POP2018) *100000)  -  (((sum(if(month(data_fato) = 1, 1, 0)) / POP2018) *100000) * 0.1242), 
    'erro')))),2) as META_JAN_QUARTIL,
    
    sum(if(month(data_fato) = 2, 1, 0)) as 'FEV',
    
	(sum(if(month(data_fato) = 2, 1, 0))  / POP2018) *100000 as 'ICV  JAN 2018',
    round(if((sum(if(month(data_fato) = 2, 1, 0)) / POP2018) *100000 < 245.765575921435,   ((sum(if(month(data_fato) = 2, 1, 0)) / POP2018) *100000)  -  (((sum(if(month(data_fato) = 2, 1, 0)) / POP2018) *100000) * 0.065), 
		if((sum(if(month(data_fato) = 2, 1, 0)) / POP2018) *100000 >= 245.765575921435  and (sum(if(month(data_fato) = 2, 1, 0)) / POP2018) *100000 < 491.5311518,  ((sum(if(month(data_fato) = 2, 1, 0)) / POP2018) *100000) - (((sum(if(month(data_fato) = 2, 1, 0)) / POP2018) *100000) * 0.095),
			if((count(year(data_fato)) / POP2018) *100000 >= 491.5311518  and (sum(if(month(data_fato) = 1, 1, 0)) / POP2018) *100000 < 983.062303685738,  ((sum(if(month(data_fato) = 2, 1, 0)) / POP2018) *100000) - (((sum(if(month(data_fato) = 2, 1, 0)) / POP2018) *100000) * 0.1002),
				if((sum(if(month(data_fato) = 1, 1, 0)) / POP2018) *100000 > 983.062303685738,   ((sum(if(month(data_fato) = 2, 1, 0)) / POP2018) *100000)  -  (((sum(if(month(data_fato) = 2, 1, 0)) / POP2018) *100000) * 0.1242), 
    'erro')))),2) as META_FEV_QUARTIL,
    
    
    count(year(data_fato))as 'ANO 2018',
    
    (count(year(data_fato)) / POP2018) *100000 as 'ICV 2018',
    
    round(if((count(year(data_fato)) / POP2018) *100000 < 245.765575921435,   ((count(year(data_fato)) / POP2018) *100000)  -  (((count(year(data_fato)) / POP2018) *100000) * 0.065), 
		if((count(year(data_fato)) / POP2018) *100000 >= 245.765575921435  and (count(year(data_fato)) / POP2018) *100000 < 491.5311518,  ((count(year(data_fato)) / POP2018) *100000) - (((count(year(data_fato)) / POP2018) *100000) * 0.095),
			if((count(year(data_fato)) / POP2018) *100000 >= 491.5311518  and (count(year(data_fato)) / POP2018) *100000 < 983.062303685738,  ((count(year(data_fato)) / POP2018) *100000) - (((count(year(data_fato)) / POP2018) *100000) * 0.1002),
				if((count(year(data_fato)) / POP2018) *100000 > 983.062303685738,   ((count(year(data_fato)) / POP2018) *100000)  -  (((count(year(data_fato)) / POP2018) *100000) * 0.1242), 
    'erro')))),2) as META_ANO_QUARTIL
    
    
-- 	ROUND(count(year(data_fato)) * @CV, 2) as 'META ANO 2019'
    
    

--     SUM(CV) AS CV_2018,  
--     ROUND((SUM(CV)) * 0.895854398382204,2) AS META_CV_2019 

FROM gdo.vw_valid_gdo_ref_2018
INNER JOIN gdo.tbl_populacoes
ON gdo.vw_valid_gdo_ref_2018.cia_sede = gdo.tbl_populacoes.cia_sede

WHERE MUNICIPIO in ('DIVINOPOLIS', 'CLAUDIO', 'CARMO DO CAJURU', 'ITAUNA', 'ITATIAIUCU', 'SAO GONCALO DO PARA')
AND CV = 1

AND DATA_FATO BETWEEN '2018-01-01' AND '2018-12-31'
AND DATA_ULT_ATT <= '2019-01-04'

GROUP BY gdo.vw_valid_gdo_ref_2018.CIA_SEDE WITH ROLLUP;