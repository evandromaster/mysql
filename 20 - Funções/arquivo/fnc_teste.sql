DELIMITER $$
CREATE FUNCTION CLASSIFICA_OCORRENCIAS_DIVINOPOLIS()
RETURNS VARCHAR(50)
RETURN 'OCORRÊNCIAS DE DIVINÓPOLIS CLASSIFICADAS';
$$
DELIMITER ;

DELIMITER $$
CREATE FUNCTION CLASSIFICA_OCORRENCIAS_ITAUNA()
RETURNS VARCHAR(200)
RETURN 'OCORRÊNCIAS DE ITAÚNA CLASSIFICADAS (FUNÇÃO ALTERADA)';
$$
DELIMITER ;

SELECT CLASSIFICA_OCORRENCIAS_ITAUNA();


DELIMITER $$
CREATE FUNCTION CLASSIFICA_OCORRENCIAS(MUNICIPIO VARCHAR(100))
RETURNS VARCHAR(100)
BEGIN
RETURN

	CASE
		WHEN (MUNICIPIO != ('DIVINOPOLIS') AND MUNICIPIO !='ITAUNA')
		THEN MUNICIPIO
		
        WHEN MUNICIPIO = 'DIVINOPOLIS'
		THEN CLASSIFICA_OCORRENCIAS_DIVINOPOLIS()
        
        WHEN MUNICIPIO = 'ITAUNA'
        THEN CLASSIFICA_OCORRENCIAS_ITAUNA()        
        
	END;
END$$
DELIMITER ;

DROP FUNCTION CLASSIFICA_OCORRENCIAS_ITAUNA2;
SELECT CLASSIFICA_OCORRENCIAS_ITAUNA();
DROP FUNCTION CLASSIFICA_OCORRENCIAS;
SELECT CLASSIFICA_OCORRENCIAS('CAJURU');

DELIMITER $$
CREATE FUNCTION CLASSIFICA_OCORRENCIAS_ITAUNA2(PARAM VARCHAR(100))
RETURNS VARCHAR(200)
RETURN 'FUNÇÃO PEDIU PARMÂMETRO, MAS NÃO FOI INFORMADO';
$$
DELIMITER ;