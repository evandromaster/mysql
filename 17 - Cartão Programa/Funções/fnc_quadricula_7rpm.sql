DELIMITER $$
CREATE FUNCTION fnc_quadricula (LATITUDE VARCHAR(15), LONGITUDE VARCHAR(15))
RETURNS varchar (15)
BEGIN
	RETURN
		case

			when  LATITUDE = -20.14043 AND LONGITUDE = -44.8797174 then 15643 -- 
			when  LATITUDE = -20.1406413 AND LONGITUDE = -44.8796773 then 15643 -- 



			else (select max(OBJECTID) from geo.tbl_quadriculas as q where o.latitude < q.MINY and o.latitude > q.MAXY and o.LONGITUDE < q.MINX and LONGITUDE > q.MAXX) 
			end

            ;
END$$
DELIMITER ;