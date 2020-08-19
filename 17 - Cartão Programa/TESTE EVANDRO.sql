SELECT * FROM geo.tbl_ocorrencias;
truncate table tbl_ocorrencias;

SET @NREDS = "2018-000004052-001";
SET @LAT = (select LATITUDE from tbl_ocorrencias where NREDS = @NREDS);
SET @LONGIT = (select LONGITUDE from tbl_ocorrencias where NREDS = @NREDS);
SET @LAT = CONVERT(@LAT, DECIMAL(10,8));
SET @LONGIT = CONVERT(@LONGIT, DECIMAL(10,8));


select @LONGIT; -- 
select @LAT; -- 
SELECT @NREDS; -- 

select OBJECTID, (SELECT count(NREDS) FROM testeOcorrencias
where
	(MINY < @LAT AND @LAT < MAXY)
    AND
    (MINX < @LONGIT AND @LONGIT < MAXX)
) as crimes

from testequadriculas;


select * from testeQuadriculas
where
	(MINY < @LAT AND @LAT < MAXY)
    AND
    (MINX < @LONGIT AND @LONGIT < MAXX);
    
SELECT TBL_OCORRENCIAS.LATITUDE, TBL_OCORRENCIAS.LONGITUDE,  (SELECT OBJECTID FROM TBL_QUADRICULAS
WHERE TBL_OCORRENCIAS.LATITUDE > tbl_quadriculas.MINY AND TBL_OCORRENCIAS.LATITUDE < tbl_quadriculas.MAXY
AND TBL_OCORRENCIAS.LONGITUDE > tbl_quadriculas.MINX AND TBL_OCORRENCIAS.LONGITUDE < tbl_quadriculas.MAXX)

FROM TBL_OCORRENCIAS

;





(SELECT COUNT(*) FROM TBL_OCORRENCIAS
WHERE LATITUDE >= TBL_QUADRICULAS.MINY AND LATITUDE <= TBL_QUADRICULAS.MAXY
AND LONGITUDE >= TBL_QUADRICULAS.MINX AND LONGITUDE <= TBL_QUADRICULAS.MAXX
AND DATA_FATO  ='2018-01-31'
) AS CRIMES


FROM TBL_QUADRICULAS

WHERE SUBAREA = '139ª Cia PM'

GROUP BY ENDERECO
HAVING CRIMES >= 0
;

OBJECTID = SUMX(FILTER(d_quadriculas;fbase[Latitude]>=d_quadriculas[MINY]&&fbase[Latitude]<=d_quadriculas[MAXY]
    && fbase[Longitude]>=d_quadriculas[MINX]&&fbase[Longitude]<=d_quadriculas[MAXX]
    );d_quadriculas[OBJECTID])