SELECT * FROM geo.tbl_ocorrencias_7rpm

where OBJECTID IS NULL
 or OBJECTID = 0
;


SELECT * FROM geo.tbl_ocorrencias_7rpm

where ((OBJECTID IS not NULL)
 or (OBJECTID != 0))
 
 
 ;
 
 SELECT * FROM geo.tbl_ocorrencias_7rpm

where OBJECTID != 0
and OBJECTID IS not NULL

;