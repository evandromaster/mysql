SELECT
	q.SUBAREA,
    q.SETOR,
    q.SUBSETOR,
    q.ENDERECO,
    q.OBJECTID,
    count(distinct(o.NREDS)) as CRIMES
FROM
	geo.tbl_quadriculas as q
LEFT OUTER JOIN
	tbl_ocorrencias_obj AS o
ON o.OBJECTID = q.OBJECTID

WHERE
	DATA_FATO between '2019-01-01' and '2019-12-31'
AND
	o.COD_DIAO in ('B01121','C01155', 'C01157')
    
-- AND Q.ENDERECO LIKE '  COM%'

-- and q.OBJECTID  In  (15637, 15638, 15450, 15451 )
-- AND q.SUBAREA = ''
-- AND q.SETOR = ''
-- AND q.SUBSETOR = ''
-- AND q.OBJECTID = ''


GROUP BY q.OBJECTID
ORDER BY CRIMES DESC

;