SET  @LOC = '%SAO JUDAS%';

SELECT municipio, VALIDADOR, VALIDADOR_TIPO, CIA_BASE FROM gdo.tbl_validadores

where VALIDADOR like @LOC
-- where (BAIRRO like @LOC)  or (BAIRRO_NAO_CAD like @LOC)
and MUNICIPIO in ('NOVA SERRANA', 'DIVINOPOLIS')
;