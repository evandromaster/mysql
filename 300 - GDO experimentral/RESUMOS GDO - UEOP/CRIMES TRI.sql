
select CIA_BASE, -- NREDS, COD_DIAO, T_C, COD_DIAO1, T_C1,  COD_DIAO2, T_C2, COD_DIAO3, T_C3, BAIRRO, BAIRRO_NAO_CAD, LOG_TIPO, LOGRADOURO, LOGRADOURO_NAO_CAD, COMPLEMENTO_END, PONTO_REF, MUNICIPIO, UN_AREA_MIL, UN_REGISTRO, LATITUDE, LONGITUDE,
-- concat(DATA_FATO, ' ', HORA_FATO) as DH_FATO, concat(DATA_COM, ' ', HORA_COM) as DH_COM,
-- (timediff(concat(DATA_COM, ' ', HORA_COM), concat(DATA_FATO, ' ', HORA_FATO))) as Difer_hora, DATE_FORMAT(DATA_FATO,'%d/%m/%Y') AS DATA_FATO_BR, DATA_FATO, MONTH(DATA_FATO) AS MESATUAL, 
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
count(year(data_fato))as 'Total',

sum(case
when TRI = 1  then 1 else 0
end) as TRI


from vw_valid_crimes_setor
inner join tbl_d_populacao
on tbl_d_populacao.FRACAO = vw_valid_crimes_setor.Cia_Base

where Cia_Base in ('53ª CIA PM', '142ª CIA PM', '139ª CIA PM', 'CLAUDIO', 'CARMO DO CAJURU', 'ITAUNA', 'ITATIAIUCU', 'SAO GONCALO DO PARA')
and data_fato between '2018-01-01' and '2018-12-31'
group by CIA_BASE WITH ROLLUP;

