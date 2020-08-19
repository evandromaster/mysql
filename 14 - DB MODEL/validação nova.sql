SELECT tbl_crimes.NREDS, tbl_crimes.MUNICIPIO,  tbl_crimes.BAIRRO, tbl_crimes.LOGRADOURO, vb.CIA_BASE


FROM tbl_crimes


-- left join tbl_validador as vmuni  on tbl_crimes.MUNICIPIO = vmuni.MUNICIPIO
-- left join tbl_validador as vreds  on tbl_crimes.nreds = vreds.NREDS
-- left join tbl_validador as vrat on tbl_crimes.NREDS = vrat.NRAT                 -- CUIDADO VERIFICAR NRAT
left join tbl_validador vb on tbl_crimes.bairro = vb.bairro
-- left join tbl_validador as ponto_ref on tbl_crimes.NREDS = nreds.ponto_ref
left join tbl_validador as logradouro_nao_cad on tbl_crimes.NREDS = logradouro_nao_cad.logradouro_nao_cad
left join tbl_validador vlog on tbl_crimes.LOGRADOURO = vlog.LOGRADOURO
-- left join tbl_validador as complemento_end on tbl_crimes.NREDS = nreds.complemento_end
-- left join tbl_validador as bairro_nao_cad on tbl_crimes.NREDS = nreds.bairro_nao_cad

where tbl_crimes.MUNICIPIO = 'DIVINOPOLIS'
and vb.CIA_BASE is not null;

SELECT COUNT(*) from tbl_crimes
where BAIRRO != 'INVÁLIDO' AND MUNICIPIO = 'DIVINOPOLIS'; -- 1274

SELECT COUNT(*) from tbl_crimes
where LOGRADOURO != 'INVÁLIDO' AND BAIRRO = 'INVÁLIDO' AND MUNICIPIO = 'DIVINOPOLIS'; -- 96


SELECT 1274 + 96; -- 1370


-- left join tbl_validador vl
-- using (LOGRADOURO)

-- where tbl_crimes.LOGRADOURO = 'inválido'
-- where vl.CIA_BASE is  null;



;

-- 
-- 
-- SELECT *,
-- CASE
-- WHEN b.CIA_BASE != 'NULL' THEN b.CIA_BASE
-- WHEN bnc.CIA_BASE != 'NULL' THEN bnc.CIA_BASE
-- END CIA_BASE_FINAL
-- 
-- FROM tbl_ocorrencias o
-- LEFT JOIN tbl_valid_bairros b
-- ON o.BAIRRO = b.BAIRRO
-- LEFT JOIN tbl_valid_bairros_nc bnc
-- ON bnc.BAIRRO_NC = o.BAIRRO_NC;