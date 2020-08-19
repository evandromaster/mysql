SELECT  data_fato, day(DATA_FATO), count(*) Freq,


case day(DATA_FATO)
when 1 then 'Seg' when 1 then 'Ter' when 2 then 'Qua' when 3 then 'Qui' when 4 then 'Sex' when 5 then 'Sab' when 6 then 'Dom' end as dia_semana



FROM gdo.vw_valid_crimes_setor

where data_fato between '2020-01-01' and '2020-12-31'



and cv = True

group by dia_semana

;