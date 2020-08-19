SELECT    bairro, count(distinct bairro) as freq FROM geo.tbl_rpp

group by bairro

;