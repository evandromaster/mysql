SELECT *,
CASE
WHEN b.CIA_BASE != 'NULL' THEN b.CIA_BASE
WHEN bnc.CIA_BASE != 'NULL' THEN bnc.CIA_BASE
END CIA_BASE_FINAL

FROM tbl_ocorrencias o
LEFT JOIN tbl_valid_bairros b
ON o.BAIRRO = b.BAIRRO
LEFT JOIN tbl_valid_bairros_nc bnc
ON bnc.BAIRRO_NC = o.BAIRRO_NC;