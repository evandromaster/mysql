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

FROM vw_valid_envolvidos

where data_fato between '2019-01-01' and '2019-12-31'
AND MUNICIPIO IN ('DIVINOPOLIS', 'CARMO DO CAJURU', 'CLAUDIO', 'SAO GONCALO DO PARA', 'ITAUNA', 'ITATIAIUCU')
-- AND HC_VITIMA = 1
and NPAA = 1

and UN_REGISTRO not in (select UN_REGISTRO from tbl_un_especializada where tipo_un_registro in ('RV', 'CPE')) -- criterio aplicado somente para NPAA   'DER', 'MAT', 'MAMB', 'CPE'
-- and Auditoria = true


-- and DATA_ULT_ATT <= '2019-01-04'




group by MUNICIPIO WITH ROLLUP
;