DELIMITER $$
CREATE FUNCTION fnc_companhia_reds_7rpm (MUNICIPIO VARCHAR(50), NREDS VARCHAR (18), BAIRRO VARCHAR(50), BAIRRO_NAO_CAD VARCHAR(50), LOGRADOURO VARCHAR(100), LOGRADOURO_NAO_CAD VARCHAR(100),
LOGRADOURO_CRUZ VARCHAR(100), LOGRADOURO_CRUZ_NAO_CAD VARCHAR(100), COMPLEMENTO_END VARCHAR(50), PONTO_REF VARCHAR(50))
RETURNS VARCHAR(50) deterministic
BEGIN
	RETURN
		CASE
			WHEN
				MUNICIPIO = 'DIVINOPOLIS'
			THEN fnc_companhia_reds_div (NREDS, BAIRRO, BAIRRO_NAO_CAD, LOGRADOURO, LOGRADOURO_NAO_CAD,
															LOGRADOURO_CRUZ, LOGRADOURO_CRUZ_NAO_CAD, COMPLEMENTO_END, PONTO_REF)
                                                            
			WHEN
				MUNICIPIO IN ('CLAUDIO')
			THEN '139ª CIA PM'

			WHEN
				MUNICIPIO IN ('CARMO DO CAJURU', 'SAO GONCALO DO PARA')
			THEN '142ª CIA PM'
            
            
			WHEN
				MUNICIPIO IN ('ITAUNA', 'ITATIAIUCU')
			THEN '51ª CIA PM'
-- ----------------------------------------------------------------------------------------- 23º BPM
									
			
			WHEN
				MUNICIPIO in ('NOVA SERRANA')
			THEN fnc_companhia_reds_nse (NREDS, BAIRRO, BAIRRO_NAO_CAD, LOGRADOURO, LOGRADOURO_NAO_CAD,
															LOGRADOURO_CRUZ, LOGRADOURO_CRUZ_NAO_CAD, COMPLEMENTO_END, PONTO_REF)
			
			WHEN
				MUNICIPIO IN ('ARAUJOS', 'PERDIGAO')
			THEN '279ª CIA PM'
            
			WHEN
				MUNICIPIO IN ('CONCEICAO DO PARA', 'LEANDRO FERREIRA', 'PITANGUI')
			THEN '280ª CIA PM'
-- ----------------------------------------------------------------------------------------- 60º BPM            
			WHEN
				MUNICIPIO IN ('IGARATINGA', 'MARAVILHAS', 'ONCA DO PITANGUI', 'PAPAGAIOS', 'PARA DE MINAS', 'PEQUI', 'SAO JOSE DA VARGINHA')
			THEN '19ª CIA PM IND'
-- ----------------------------------------------------------------------------------------- 19º CIA PM IND            
            
			WHEN
				MUNICIPIO IN ('ARCOS', 'BAMBUI', 'IGUATAMA', 'MEDEIROS', 'PAINS', 'TAPIRAI')

			THEN '241ª CIA PM'
            
			WHEN
				MUNICIPIO IN ('CAMACHO', 'CORREGO FUNDO', 'FORMIGA', 'ITAPECERICA', 'PIMENTA', 'SAO SEBASTIAO DO OESTE')

			THEN '290ª CIA PM'

-- ----------------------------------------------------------------------------------------- 63º BPM 

			WHEN
				MUNICIPIO IN ('BOM DESPACHO', 'MOEMA')

			THEN '50ª CIA PM'
            
			WHEN
				MUNICIPIO IN ('CORREGO DANTA', 'JAPARAIBA', 'LAGOA DA PRATA', 'LUZ', 'PEDRA DO INDAIA', 'SANTO ANTONIO DO MONTE')


			THEN '107ª CIA PM'
            
			WHEN
				MUNICIPIO IN ('MARTINHO CAMPOS', 'POMPEU')


			THEN '118ª CIA PM'
            
            
			WHEN
				MUNICIPIO IN ('ABAETE', 'BIQUINHAS', 'CEDRO DO ABAETE', 'DORES DO INDAIA', 'ESTRELA DO INDAIA', 'MORADA NOVA DE MINAS', 'PAINEIRAS', 'QUARTEL GERAL', 'SERRA DA SAUDADE')


			THEN '141ª CIA PM'

-- ----------------------------------------------------------------------------------------- 7º BPM 
               
            
            ELSE MUNICIPIO
	END;
END$$
DELIMITER ;

-- SELECT
-- 	*,
-- 	classificaRedsPorSetor(MUNICIPIO, NREDS, BAIRRO, BAIRRO_NAO_CAD, LOGRADOURO, LOGRADOURO_NAO_CAD, LOGRADOURO_CRUZ, LOGRADOURO_CRUZ_NAO_CAD, COMPLEMENTO_END, PONTO_REF) AS SETOR,
--     fnc_companhia_reds(MUNICIPIO, NREDS, BAIRRO, BAIRRO_NAO_CAD, LOGRADOURO, LOGRADOURO_NAO_CAD, LOGRADOURO_CRUZ, LOGRADOURO_CRUZ_NAO_CAD, COMPLEMENTO_END, PONTO_REF) AS CIA
-- FROM
-- 	gdo.tbl_crimes;