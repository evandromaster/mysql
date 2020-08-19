-- create view vw_valid_ocorrencias_objectid as
select o.*,
(select OBJECTID from geo.tbl_quadriculas as q where o.latitude < q.MINY and o.latitude > q.MAXY and o.LONGITUDE < q.MINX and LONGITUDE > q.MAXX order by objectid limit 1) as OBJECTID

from geo.tbl_ocorrencias as o

;





create view vw_valid_ocorrencias_objectid as
select o.*,
(select max(OBJECTID) from geo.tbl_quadriculas as q where o.latitude < q.MINY and o.latitude > q.MAXY and o.LONGITUDE < q.MINX and LONGITUDE > q.MAXX) as OBJECTID

from geo.tbl_ocorrencias as o

;


select o.*, qd.ENDERECO,
(select max(OBJECTID) from geo.tbl_quadriculas as q where o.latitude < q.MINY and o.latitude > q.MAXY and o.LONGITUDE < q.MINX and LONGITUDE > q.MAXX) as OBJECTID

from geo.tbl_ocorrencias as o, geo.tbl_quadriculas AS qd

;








(select  OBJECTID from geo.tbl_quadriculas as quad where latitude < MINY and latitude > MAXY and LONGITUDE < MINX and LONGITUDE > MAXX)




SELECT V.VendaID,

    (SELECT
SUM(QTD*ValorUnitario)

     FROM VendasDetalhe VD

     WHERE VD.VendaID = V.VendaID )
as qtdTotal

FROM Vendas V



select *, OBJECTID from geo.tbl_ocorrencias

where (select Top 1 OBJECTID from geo.tbl_quadriculas as quad where latitude < MINY and latitude > MAXY and LONGITUDE < MINX and LONGITUDE > MAXX)
;




SELECT *, (select LATITUDE from tbl_ocorrencias where latitude < MINY and latitude > MAXY and LONGITUDE < MINX and LONGITUDE > MAXX) FROM geo.tbl_quadriculas
where OBJECTID = '15453'
