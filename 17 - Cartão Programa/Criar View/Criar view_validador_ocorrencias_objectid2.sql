create view vw_valid_ocorrencias_objectid as
select o.*,

case

when  LATITUDE = -20.14043 AND LONGITUDE = -44.8797174 then 15643 -- 
when  LATITUDE = -20.1406413 AND LONGITUDE = -44.8796773 then 15643 -- 



else (select max(OBJECTID) from geo.tbl_quadriculas as q where o.latitude < q.MINY and o.latitude > q.MAXY and o.LONGITUDE < q.MINX and LONGITUDE > q.MAXX) 
end as OBJECTID

from geo.tbl_ocorrencias as o

;