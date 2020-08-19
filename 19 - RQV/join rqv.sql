SELECT R.NATCODIGO, R.RATNUM_ATIVIDADE, concat(r.DTA_INICIO, ' ', r.HRA_INICIO) as DH_INICIO, concat(r.DTA_TERMINO, ' ', r.HRA_TERMINO) as DH_FIM, 
(timediff(concat(r.DTA_TERMINO, ' ', r.HRA_TERMINO), concat(r.DTA_INICIO, ' ', r.HRA_INICIO))) as TEMPO_EXEC,
count(e.num_matricula) as EFETIVO, count(v.NUM_ATIVIDADE) as VIATURAS,
CASE WHEN p.descricao ='Qde de pessoas abordadas' THEN SUM(p.quantidade) ELSE 0 END   AS ABORDADOS,
CASE WHEN p.descricao ='Qde de veiculos fiscalizados' THEN SUM(p.quantidade) ELSE 0 END   AS VEIC_FISCALIZADOS,
CASE WHEN p.descricao ='Qde de locais fiscalizados' THEN SUM(p.quantidade) ELSE 0 END   AS LOCAIS_FISCALIZADOS,

case -- case 2
	when
		NATCODIGO = 'Y07001'  and ((CASE WHEN p.descricao ='Qde de pessoas abordadas' THEN SUM(p.quantidade) ELSE 0 END) >= 5
        OR (CASE WHEN p.descricao ='Qde de veiculos fiscalizados' THEN SUM(p.quantidade) ELSE 0 END) >= 2)
        
        then 1 -- BATIDA POLICIAL
		else 0

END AS EFETIVIDADE




FROM tbl_rat as r left outer join tbl_rat_efetivo as e        ON r.RATNUM_ATIVIDADE = e.NUM_ATIVIDADE
                  left outer join tbl_rat_produtividade  as p ON p.RATNUM_ATIVIDADE = r.RATNUM_ATIVIDADE
				  left outer join tbl_rat_viaturas as v       ON v.NUM_ATIVIDADE = r.RATNUM_ATIVIDADE
                  
where r.municipio = 'divinopolis'
AND DTA_INICIO between '2019-01-01' and '2019-12-31'

group by RATNUM_ATIVIDADE
;



select r.RATNUM_ATIVIDADE, count(num_matricula) as Efetivo, -- sum(Quantidade) case descricao = 'Qde de pessoas abordadas') as Abordados

CASE WHEN p.descricao ='Qde de pessoas abordadas' THEN SUM(quantidade) ELSE 0 END AS Abordados

from tbl_rat_efetivo as e right outer join tbl_rat as r   on r.ratnum_atividade = e.num_atividade
                          right outer join tbl_rat_produtividade as p   on p.ratnum_atividade = e.num_atividade


where municipio = 'divinopolis'

-- and count(num_matricula) = ''
group by RATNUM_ATIVIDADE
;



select RATNUM_ATIVIDADE, count(nome) as Efetivo
from tbl_rat_efetivo as e inner join tbl_rat as r on r.ratnum_atividade = e.num_atividade
where municipio = 'divinopolis'
group by RATNUM_ATIVIDADE
;