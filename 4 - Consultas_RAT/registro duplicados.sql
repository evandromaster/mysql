SELECT RATNUM_ATIVIDADE, Count(*) FROM rat
GROUP BY RATNUM_ATIVIDADE
HAVING Count(*) > 1

ou

select max(ratnum_atividade), count(*) as freq from rat group by RATNUM_ATIVIDADE having freq >1 


LIMIT 0, 1000