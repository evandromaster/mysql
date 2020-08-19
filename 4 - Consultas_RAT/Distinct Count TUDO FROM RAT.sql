select ratnum_atividade, count(distinct ratnum_atividade) as freq from rat


group by ratnum_atividade
HAVING Count(*) > 1