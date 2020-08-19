SELECT v1.ID, v1.BAIRRO FROM tbl_validador AS v1, tbl_validador AS v2
where
v1.BAIRRO = v2.BAIRRO AND v1.ID != v2.ID AND v1.BAIRRO !='';