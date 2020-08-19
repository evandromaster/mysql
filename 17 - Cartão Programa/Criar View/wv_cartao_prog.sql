SELECT o.NREDS, o.MUNICIPIO, q.SUBAREA, q.SETOR, q.SUBSETOR,q.ENDERECO, q.OBJECTID, count(NREDS) as FREQ

FROM geo.tbl_ocorrencias_7rpm as o
INNER JOIN tbl_quadriculas_7rpm as q
ON o.OBJECTID = q.OBJECTID

where o.OBJECTID IS not NULL
 or o.OBJECTID != 0
 
 
group by o.NREDS
 
;

