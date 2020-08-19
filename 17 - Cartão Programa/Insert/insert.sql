INSERT INTO
	tbl_ocorrencias (OBJECTID)
    
    
select 




 (select max(OBJECTID) from geo.tbl_quadriculas as q where o.latitude < q.MINY and o.latitude > q.MAXY and o.LONGITUDE < q.MINX and LONGITUDE > q.MAXX) 


from geo.tbl_ocorrencias as o
;