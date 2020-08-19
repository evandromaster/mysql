-- TRUNCATE tbl_rat_teste;
--  INSERT INTO
-- 	tbl_rat_teste
-- 
SELECT 
concat(DTA_TERMINO, ' ', HRA_TERMINO),
concat(DTA_INICIO, ' ', HRA_INICIO),

time_to_sec(concat(DTA_TERMINO, ' ', HRA_TERMINO)),
time_to_sec(concat(DTA_INICIO, ' ', HRA_INICIO)),


time_to_sec(concat(DTA_TERMINO, ' ', HRA_TERMINO)) - time_to_sec(concat(DTA_INICIO, ' ', HRA_INICIO)) as difseg,



(timediff(concat(DTA_TERMINO, ' ', HRA_TERMINO), concat(DTA_INICIO, ' ', HRA_INICIO))) as TEMPO_EXEC1,


time(round(timediff(concat(DTA_TERMINO, ' ', HRA_TERMINO), concat(DTA_INICIO, ' ', HRA_INICIO)), 0)) as TEMPO_EXECround, 

time_to_sec(time(round(timediff(concat(DTA_TERMINO, ' ', HRA_TERMINO), concat(DTA_INICIO, ' ', HRA_INICIO)), 0))) as TEMPO_EXE_timetosec, 


(timediff(concat(DTA_TERMINO, ' ', HRA_TERMINO), concat(DTA_INICIO, ' ', HRA_INICIO))) as TEMPO_EXEC

-- sec_to_time((avg(t_att)/100)*60) as 'Tempo Empenho'

FROM ratbos.tbl_rat

WHERE municipio IN ('DIVINOPOLIS', 'CARMO DO CAJURU', 'CLAUDIO', 'SAO GONCALO DO PARA', 'ITAUNA', 'ITATIAIUCU')
AND DTA_INICIO between '2019-01-01' and '2019-12-31'

-- AND NATCODIGO IN ('Y04012','Y07001', 'Y07003', 'Y07004', 'Y07005', 'Y01001', 'Y01002', 'Y01003')