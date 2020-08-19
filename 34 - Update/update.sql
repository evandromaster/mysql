SELECT * FROM ratbos.tbl_rat

where RATNUM_ATIVIDADE like '"%'


;


select RATNUM_ATIVIDADE,
REPLACE (RATNUM_ATIVIDADE,'"','') 
FROM tbl_rat;
-- WHERE RATNUM_ATIVIDADE='"2018-004774132-001';

update tbl_rat set RATNUM_ATIVIDADE = 
REPLACE (RATNUM_ATIVIDADE,'"','') ;

-- update [table_name] set [field_name] = 
-- replace([field_name],'[string_to_find]','[string_to_replace]');