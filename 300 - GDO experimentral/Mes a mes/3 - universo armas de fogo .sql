SELECT MUNICIPIO, year(data_fato) AS ANO,
sum(if(month(data_fato) = 1, QTDE_ARM_FOGO, 0)) as 'JAN', -- jan/17
sum(if(month(data_fato) = 2, QTDE_ARM_FOGO, 0)) as 'FEV',
sum(if(month(data_fato) = 3, QTDE_ARM_FOGO, 0)) as 'MAR',
sum(if(month(data_fato) = 4, QTDE_ARM_FOGO, 0)) as 'ABR',
sum(if(month(data_fato) = 5, QTDE_ARM_FOGO, 0)) as 'MAI',
sum(if(month(data_fato) = 6, QTDE_ARM_FOGO, 0)) as 'JUN',
sum(if(month(data_fato) = 7, QTDE_ARM_FOGO, 0)) as 'JUL',
sum(if(month(data_fato) = 8, QTDE_ARM_FOGO, 0)) as 'AGO',
sum(if(month(data_fato) = 9, QTDE_ARM_FOGO, 0)) as 'SET',
sum(if(month(data_fato) = 10, QTDE_ARM_FOGO, 0)) as 'OUT',
sum(if(month(data_fato) = 11, QTDE_ARM_FOGO, 0)) as 'NOV',
sum(if(month(data_fato) = 12, QTDE_ARM_FOGO, 0)) as 'DEZ',
sum(if(year(data_fato) = 2018 OR 2019, QTDE_ARM_FOGO, 0))as 'Total',
count(year(data_fato))as 'Total'
FROM vw_valid_armas_fgo

where MUNICIPIO in ('PERDIGAO')
and UN_REGISTRO not in (select UN_REGISTRO from tbl_un_especializada where tipo_un_registro in ('DER', 'MAT', 'MAMB', 'RV')) 
and data_fato between '2018-01-01' and '2019-12-31'
group by year(data_fato);