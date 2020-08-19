create view vw_valid_bos as

select *, DATE_FORMAT(DTA_INICIO,'%d/%m/%Y') AS DATA_FATO_BR,
fnc_cia_sede_rat_bos (MUNICIPIO, RATNUM_ATIVIDADE, NOME_BAIRRO, LOGRADOURO, DES_ENDERECO, LOGRADOURO2, DES_ENDERECO2, COMPLEMENTO_ENDERECO, COMPLEMENTO_ALFA, LATITUDE) as CIA_SEDE,
fnc_tipo_validador_rat_bos (MUNICIPIO, RATNUM_ATIVIDADE, NOME_BAIRRO, LOGRADOURO, DES_ENDERECO, LOGRADOURO2, DES_ENDERECO2, COMPLEMENTO_ENDERECO, COMPLEMENTO_ALFA, LATITUDE) as VALIDADOR,
fnc_companhia_rat_bos (MUNICIPIO, RATNUM_ATIVIDADE, NOME_BAIRRO, LOGRADOURO, DES_ENDERECO, LOGRADOURO2, DES_ENDERECO2, COMPLEMENTO_ENDERECO, COMPLEMENTO_ALFA, LATITUDE) as COMPANHIA,
classificaRat_BosPorSetor(MUNICIPIO , RATNUM_ATIVIDADE, NOME_BAIRRO, LOGRADOURO, DES_ENDERECO, LOGRADOURO2, DES_ENDERECO2, COMPLEMENTO_ENDERECO, COMPLEMENTO_ALFA, LATITUDE) as SETOR,



case -- condições para crimes Reunião Comunitária
	when 	NATCODIGO like 'A19%'
	then 1
else 0
end as IC,
case -- condições para crimes Visita Tranquilizadora
	when 	NATCODIGO like 'A20001'
	then 1
else 0
end as VT,
'bos' as rel
from tbl_bos
where
((NATCODIGO like 'A19%') OR (NATCODIGO like 'A20001'))


-- NREDS not in (select NREDS from tbl_d_auditoria)

/*and*/ -- and MUNICIPIO in ('DIVINOPOLIS', 'CLAUDIO', 'CARMO DO CAJURU', 'ITAUNA','ITATIAIUCU', 'SAO GONCALO DO PARA');