create view vw_valid_ocorrencias_objectid as
select o.*,
(select max(OBJECTID) from geo.tbl_quadriculas as q where o.latitude < q.MINY and o.latitude > q.MAXY and o.LONGITUDE < q.MINX and LONGITUDE > q.MAXX) as OBJECTID

from geo.tbl_ocorrencias as o

;
