create VIEW vw_gdo_ref_2017 as;

SELECT *, MONTH(DATA_FATO) AS MES FROM seo.tbl_gdo_ref_2017;