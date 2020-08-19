-- remver procedure:
drop procedure simpleproc;



delimiter //
CREATE PROCEDURE simpleproc (in PARAMETRO VARCHAR(300))
BEGIN
    -- SET  @LOC = '%SEBASTIAO%';
    SELECT municipio, VALIDADOR, VALIDADOR_TIPO, CIA_BASE FROM gdo.tbl_validadores

-- where VALIDADOR like @LOC
where VALIDADOR LIKE PARAMETRO
-- where (BAIRRO like @LOC)  or (BAIRRO_NAO_CAD like @LOC)
and MUNICIPIO in ('NOVA SERRANA', 'DIVINOPOLIS');
END//

delimiter ;

CALL simpleproc('SAO SEBASTIAO');


