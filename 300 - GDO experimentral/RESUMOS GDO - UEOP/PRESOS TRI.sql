SELECT MUNICIPIO,
sum(if(month(data_fato) = 1, 1, 0)) as 'JAN', -- jan
sum(if(month(data_fato) = 2, 1, 0)) as 'FEV',
sum(if(month(data_fato) = 3, 1, 0)) as 'MAR',
sum(if(month(data_fato) = 4, 1, 0)) as 'ABR',
sum(if(month(data_fato) = 5, 1, 0)) as 'MAI',
sum(if(month(data_fato) = 6, 1, 0)) as 'JUN',
sum(if(month(data_fato) = 7, 1, 0)) as 'JUL',
sum(if(month(data_fato) = 8, 1, 0)) as 'AGO',
sum(if(month(data_fato) = 9, 1, 0)) as 'SET',
sum(if(month(data_fato) = 10,1, 0)) as 'OUT',
sum(if(month(data_fato) = 11,1, 0)) as 'NOV',
sum(if(month(data_fato) = 12,1, 0)) as 'DEZ',
count(year(data_fato))as 'Total'

FROM seo.tbl_envolvidos

where data_fato between '2019-01-01' and '2019-12-31'
AND MUNICIPIO IN ('DIVINOPOLIS', 'CARMO DO CAJURU', 'CLAUDIO', 'SAO GONCALO DO PARA', 'ITAUNA', 'ITATIAIUCU')

AND PRISAO_APREES IN ('FLAGRANTE DE ATO INFRACIONAL','FLAGRANTE DE CRIME / CONTRAVENCAO')

AND (( -- INÍCIO CONDIÇÃO PRINCIPAL		
				(COD_DIAO in ('B01148', 'C01159') and T_C = 'CONSUMADO')	-- OK  
				or  COD_DIAO in ('C01157', 'C01158', 'B01121', 'D01213', 'D01217') -- OK
			) -- FIM CONDIÇÃO PRINCIPAL (NATUREZAS)


) -- FIM CONDIÇÃO 3 (NATUREZAS)

AND ORG_UN_REG = 'POLICIA MILITAR'

group by MUNICIPIO WITH ROLLUP
;