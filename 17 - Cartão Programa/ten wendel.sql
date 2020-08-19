
SET @NREDS = '2017-037437370-001';
SET @LAT = (select LATITUDE from testeOcorrencias where NREDS = @NREDS);
SET @LONGIT = (select LONGITUDE from testeOcorrencias where NREDS = @NREDS);
SET @LAT = CONVERT(@LAT, DECIMAL(10,8));
SET @LONGIT = CONVERT(@LONGIT, DECIMAL(10,8));


select @LONGIT; -- '-44.91051570'
select @LAT; -- '-20.17864320'
SELECT @NREDS; -- 

select OBJECTID, (SELECT count(NREDS) FROM testeOcorrencias)

from testequadriculas;


select * from testeQuadriculas
where
	(MINY < @LAT AND @LAT < MAXY)
    AND
    (MINX < @LONGIT AND @LONGIT < MAXX);
    

SELECT *,
CASE
    WHEN MINY > LATITUDE THEN "The quantity is greater than 30"
    WHEN Quantity = 30 THEN "The quantity is 30"
    ELSE "The quantity is under 30"
END
FROM OrderDetails;
    
