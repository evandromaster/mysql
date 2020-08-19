SELECT municipio, tbl_rat_EFETIVO.NUM_ATIVIDADE, tbl_rat.RATNUM_ATIVIDADE,  (select distinct tbl_rat.RATNUM_ATIVIDADE as oper from tbl_rat), count(num_matricula) as efetivo,
(count(nome))  as 'efeti'
FROM tbl_rat_EFETIVO
left outer JOIN tbl_rat on tbl_rat.RATNUM_ATIVIDADE = tbl_rat_EFETIVO.NUM_ATIVIDADE

where -- municipio = 'divinopolis'
 DTA_INICIO between '2018-01-01' and '2018-01-1'

group by municipio

;
;