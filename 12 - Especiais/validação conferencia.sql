SELECT NREDS,bairro, BAIRRO_NAO_CAD, LOGRADOURO, LOGRADOURO_NAO_CAD, COMPLEMENTO_END, PONTO_REF, MUNICIPIO, UN_AREA_MIL FROM seo.vw_valid_crimes_setor
where data_fato between '2019-01-01' and '2019-12-31'
and cia_base ='other'
;