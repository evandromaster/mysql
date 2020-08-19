SELECT NREDS,

SET @PARAMS = RETURN_PARAMS();

SELECT fnc_cia_base (MUNICIPIO, NREDS, BAIRRO, BAIRRO_NAO_CAD, LOGRADOURO, LOGRADOURO_NAO_CAD, LOGRADOURO_CRUZ, LOGRADOURO_CRUZ_NAO_CAD, COMPLEMENTO_END, PONTO_REF) 

DELIMITER $$
CREATE FUNCTION RUN_CIA_BASE()
RETURNS VARCHAR(300)
BEGIN
	RETURN (fnc_cia_base (MUNICIPIO, NREDS, BAIRRO, BAIRRO_NAO_CAD, LOGRADOURO, LOGRADOURO_NAO_CAD, LOGRADOURO_CRUZ, LOGRADOURO_CRUZ_NAO_CAD, COMPLEMENTO_END, PONTO_REF) AS CIA
	FROM gdo.tbl_crimes);
END$$
DELIMITER ;

SELECT 2;

SELECT RETURN_PARAMS();

DROP FUNCTION RETURN_PARAMS;

DROP FUNCTION fnc_cia_base;
DROP PROCEDURE RUN_CIA_BASE;

CALL RUN_CIA_BASE();
