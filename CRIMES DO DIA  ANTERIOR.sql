SELECT * FROM gdo.tbl_crimes

WHERE data_fato = DATE_SUB(CURDATE(), INTERVAL 1 DAY)

-- AND  COD_DIAO = 'C01157'
;