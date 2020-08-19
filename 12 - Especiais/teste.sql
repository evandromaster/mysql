select municipio, count(tbl_rat.ratnum_atividade) as Operações, count(tbl_rat_efetivo.nome) as Efetivo
from tbl_rat_efetivo inner join tbl_rat
on tbl_rat.RATNUM_ATIVIDADE = tbl_rat_efetivo.NUM_ATIVIDADE
where MUNICIPIO = 'divinopolis'
group by MUNICIPIO
limit 12;


select tbl_rat_efetivo.nome, count(tbl_rat_efetivo.NUM_ATIVIDADE) as oper
from tbl_rat_efetivo left outer join tbl_rat
on tbl_rat.RATNUM_ATIVIDADE = tbl_rat_efetivo.NUM_ATIVIDADE
where MUNICIPIO = 'divinopolis'
group by tbl_rat_efetivo.nome
limit 12