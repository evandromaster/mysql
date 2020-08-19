SELECT COD_DIAO, DESC_SUBCLASSE, NREDS,
sum(if(month(data_fato) = 1, 1, 0)) as 'JAN', -- jan/17
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


FROM vw_valid_crimes_setor INNER JOIN tbl_naturezas
ON vw_valid_crimes_setor.cod_diao = tbl_naturezas.cod_subclasse
where data_fato between '2018-01-01' and '2018-12-31'

AND MUNICIPIO IN ('DIVINOPOLIS', 'CARMO DO CAJURU', 'CLAUDIO', 'SAO GONCALO DO PARA', 'ITAUNA', 'ITATIAIUCU')

-- AND Cia_Base IN ('142ª CIA PM', 'SAO GONCALO DO PARA', 'CARMO DO CAJURU')

-- AND COD_DIAO NOT LIKE 'E03015' -- 'DISPARO DE ARMA DE FOGO/ACIONAM DE MUNICAO'

AND (( -- INÍCIO CONDIÇÃO PRINCIPAL		
				(COD_DIAO in ('C01157', 'B01148', 'C01159', 'C01158') and T_C = 'CONSUMADO')	  
				or  COD_DIAO in ('B01121', 'D01213', 'D01217')
			) -- FIM CONDIÇÃO PRINCIAPAL (NATUREZAS)


or ( -- INÍCIO CONDIÇÃO NATUREZA SECUNDARIA1		
				(COD_DIAO1 in ('C01157', 'B01148', 'C01159', 'C01158') and T_C1 = 'CONSUMADO')	  
				or  COD_DIAO1 in ('B01121', 'D01213', 'D01217')
			) -- FIM CONDIÇÃO 1 (NATUREZAS)

or ( -- INÍCIO CONDIÇÃO NATUREZA SECUNDARIA2		
				(COD_DIAO2 in ('C01157', 'B01148', 'C01159', 'C01158') and T_C2 = 'CONSUMADO')	  
				or  COD_DIAO2 in ('B01121', 'D01213', 'D01217')
			) -- FIM CONDIÇÃO 2 (NATUREZAS)


or ( -- INÍCIO CONDIÇÃO NATUREZA SECUNDARIA3		
				(COD_DIAO3 in ('C01157', 'B01148', 'C01159', 'C01158') and T_C3 = 'CONSUMADO')	  
				or  COD_DIAO3 in ('B01121', 'D01213', 'D01217')
			)) -- FIM CONDIÇÃO 3 (NATUREZAS)
and data_ult_att <= '2019-01-04'
group by COD_DIAO WITH ROLLUP
;