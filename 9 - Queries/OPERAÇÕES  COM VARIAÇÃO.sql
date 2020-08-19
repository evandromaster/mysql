SELECT municipio, month(DTA_INICIO) mes, year(DTA_INICIO) ano, count(*) AS SOMA , 
sum(if(year(DTA_INICIO) = 2017, 1, 0)) as '2017', -- 2017
sum(if(year(DTA_INICIO) = 2018, 1, 0)) as '2018', -- 2018
round((sum(if(year(DTA_INICIO) = 2018, 1, 0) * 100)) / sum(if(year(DTA_INICIO) = 2017, 1, 0))-100,2) as 'Percentual ( % )'
FROM seo.tbl_rat
where municipio = 'divinopolis'
and month(DTA_INICIO) != '12'
and ((LOGRADOURO like '%cacoco%') or (NOME_BAIRRO like '%cacoco%'))
group by municipio

;
