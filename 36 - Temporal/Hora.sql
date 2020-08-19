SELECT   hour(HORA_FATO) as hora, count(*) Freq





FROM gdo.vw_valid_crimes_setor

where data_fato between '2020-01-01' and '2020-12-31'



and cv = True

group by hora

;