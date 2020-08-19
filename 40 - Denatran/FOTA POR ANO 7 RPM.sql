SELECT fnc_ueop(MUNICIPIO) as UEOP,


sum(total) as FROTA_VEICULAR


FROM geo.tbl_frota



group by UEOP with rollup 

