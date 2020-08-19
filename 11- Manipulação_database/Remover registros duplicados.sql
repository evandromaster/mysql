DELETE a FROM tbl_validador_cia AS a, tbl_validador_cia AS b WHERE a.VALIDADOR=b.VALIDADOR AND a.ID < b.ID;

select * from tbl_validador_cia limit 1000;