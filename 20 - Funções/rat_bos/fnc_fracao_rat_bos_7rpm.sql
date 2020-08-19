DELIMITER $$
CREATE FUNCTION fnc_fracao_rat_bos_7rpm (MUNICIPIO VARCHAR(50), RATNUM_ATIVIDADE VARCHAR (19), NOME_BAIRRO VARCHAR(50), LOGRADOURO VARCHAR(100), DES_ENDERECO VARCHAR(100),
LOGRADOURO2 VARCHAR(100), DES_ENDERECO2 VARCHAR(100), COMPLEMENTO_ENDERECO VARCHAR(30), COMPLEMENTO_ALFA VARCHAR(30), LATITUDE VARCHAR(20))
RETURNS VARCHAR(50)
BEGIN
	RETURN
		CASE
			WHEN
				MUNICIPIO = 'DIVINOPOLIS'
			THEN fnc_fracao_rat_bos_div(RATNUM_ATIVIDADE, NOME_BAIRRO, LOGRADOURO, DES_ENDERECO,
													LOGRADOURO2, DES_ENDERECO2, COMPLEMENTO_ENDERECO, COMPLEMENTO_ALFA, LATITUDE) -- AQUI CHAMA A FUNCAO QUE CLASSIFICA POR
			WHEN
				MUNICIPIO = 'ITAUNA'
			THEN '51ª CIA PM'
            
 			WHEN
				MUNICIPIO = 'ITATIAIUCU'
			THEN '2º GP - 3º PEL - 51ª CIA PM'           
 			
            WHEN
				MUNICIPIO = 'CARMO DO CAJURU'
			THEN '3º PEL - 142ª CIA PM'              
 			
            WHEN
				MUNICIPIO = 'SAO GONCALO DO PARA'
			THEN '2º GP - 3º PEL - 142ª CIA PM' 
            
            WHEN
				MUNICIPIO = 'CLAUDIO'
			THEN '3º PEL - 139ª CIA PM'             
            
-- ----------------------------------------------------------------------------------------------------------fim 23º bpm	

			WHEN
				MUNICIPIO = 'NOVA SERRANA'
			THEN fnc_fracao_rat_bos_nse(RATNUM_ATIVIDADE, NOME_BAIRRO, LOGRADOURO, DES_ENDERECO,
													LOGRADOURO2, DES_ENDERECO2, COMPLEMENTO_ENDERECO, COMPLEMENTO_ALFA, LATITUDE)
 			WHEN
				MUNICIPIO = 'PERDIGAO'
			THEN '3º PEL - 279ª CIA PM' 
            
			WHEN
				MUNICIPIO = 'ARAUJOS'
			THEN '2º GP - 3º PEL - 279ª CIA PM'
            
			WHEN
				MUNICIPIO = 'PITANGUI'
			THEN '3º PEL - 280ª CIA PM'
            
			WHEN
				MUNICIPIO = 'CONCEICAO DO PARA'
			THEN '2º GP - 3º PEL - 280ª CIA PM'   
            
			WHEN
				MUNICIPIO = 'LEANDRO FERREIRA'
			THEN '3º GP - 3º PEL - 280ª CIA PM'  
            
 -- ----------------------------------------------------------------------------------------------------------fim 60º bpm
 WHEN
				MUNICIPIO = 'ARCOS'
			THEN '241ª CIA PM' 

 			WHEN
				MUNICIPIO = 'IGUATAMA'
			THEN '2º GP - 2º PEL - 241ª CIA PM' 
 			
            WHEN
				MUNICIPIO = 'PAINS'
			THEN '3º GP - 2º PEL - 241ª CIA PM'   

            WHEN
				MUNICIPIO = 'BAMBUI'
			THEN '3º PEL - 241ª CIA PM'   
            
            WHEN
				MUNICIPIO = 'MEDEIROS'
			THEN '2º GP - 3º PEL - 241ª CIA PM' 
            
            WHEN
				MUNICIPIO = 'TAPIRAI'
			THEN '3º GP - 3º PEL - 241ª CIA PM'
            
			WHEN
				MUNICIPIO = 'FORMIGA'
			THEN '290ª CIA PM'
            
            WHEN
				MUNICIPIO = 'CORREGO FUNDO'
			THEN '2º GP - 2º PEL - 290ª CIA PM'

            WHEN
				MUNICIPIO = 'PIMENTA'
			THEN '3º GP - 2º PEL - 290ª CIA PM'
            
            WHEN
				MUNICIPIO = 'ITAPECERICA'
			THEN '3º PEL - 290ª CIA PM'
            
            WHEN
				MUNICIPIO = 'CAMACHO'
			THEN '2º GP - 3º PEL - 290ª CIA PM'
            
            WHEN
				MUNICIPIO = 'SAO SEBASTIAO DO OESTE'
			THEN '3º GP - 3º PEL - 290ª CIA PM'
 
 -- ----------------------------------------------------------------------------------------------------------fim 63º bpm 
			WHEN
				MUNICIPIO = 'PARA DE MINAS'
			THEN '19ª CIA PM IND'
            
			WHEN
				MUNICIPIO = 'IGARATINGA'
			THEN '1º GP - 3º PEL - 19ª CIA PM IND'
            
			WHEN
				MUNICIPIO = 'PEQUI'
			THEN '2º GP - 3º PEL - 19ª CIA PM IND'

			WHEN
				MUNICIPIO = 'SAO JOSE DA VARGINHA'
			THEN '3º GP - 3º PEL - 19ª CIA PM IND' 

			WHEN
				MUNICIPIO = 'ONCA DO PITANGUI'
			THEN '4º GP - 3º PEL - 19ª CIA PM IND'
            
			WHEN
				MUNICIPIO = 'PAPAGAIOS'
			THEN '1º GP - 4º PEL - 19ª CIA PM IND'
            
			WHEN
				MUNICIPIO = 'MARAVILHAS'
			THEN '2º GP - 4º PEL - 19ª CIA PM IND'
 
  -- ----------------------------------------------------------------------------------------------------------fim 19 CIA PM IND 
  
  
			WHEN
				MUNICIPIO = 'BOM DESPACHO'
			THEN '50ª CIA PM'
            
			WHEN
				MUNICIPIO = 'MOEMA'
			THEN '2º GP - 2º PEL - 50ª CIA PM'
            
			WHEN
				MUNICIPIO = 'MARTINHO CAMPOS'
			THEN '2º PEL - 118ª CIA PM'
            
			WHEN
				MUNICIPIO = 'LAGOA DA PRATA'
			THEN '107ª CIA PM'
            
			WHEN
				MUNICIPIO = 'JAPARAIBA'
			THEN '2º GP - 2º PEL - 107ª CIA PM'
            
			WHEN
				MUNICIPIO = 'LUZ'
			THEN '3º PEL - 107ª CIA PM'
            
			WHEN
				MUNICIPIO = 'CORREGO DANTA'
			THEN '2º GP - 3º PEL - 107ª CIA PM'
            
			WHEN
				MUNICIPIO = 'SANTO ANTONIO DO MONTE'
			THEN '4º PEL - 107ª CIA PM'
            
			WHEN
				MUNICIPIO = 'PEDRA DO INDAIA'
			THEN '2º GP - 4º PEL - 107ª CIA PM'
            
			WHEN
				MUNICIPIO = 'ABAETE'
			THEN '141ª CIA PM'
            
			WHEN
				MUNICIPIO = 'CEDRO DO ABAETE'
			THEN '2º GP - 1º PEL - 141ª CIA PM'

			WHEN
				MUNICIPIO = 'PAINEIRAS'
			THEN '3º GP - 1º PEL - 141ª CIA PM'
            
			WHEN
				MUNICIPIO = 'DORES DO INDAIA'
			THEN '2º PEL - 141ª CIA PM'
            
			WHEN
				MUNICIPIO = 'ESTRELA DO INDAIA'
			THEN '2º GP - 2º PEL - 141ª CIA PM'

			WHEN
				MUNICIPIO = 'QUARTEL GERAL'
			THEN '3º GP - 2º PEL - 141ª CIA PM'
            
			WHEN
				MUNICIPIO = 'SERRA DA SAUDADE'
			THEN '4º GP - 2º PEL - 141ª CIA PM'
            
			WHEN
				MUNICIPIO = 'POMPEU'
			THEN '118ª CIA PM'
            
			WHEN
				MUNICIPIO = 'MORADA NOVA DE MINAS'
			THEN '4º PEL - 141ª CIA PM'
            
			WHEN
				MUNICIPIO = 'BIQUINHAS'
			THEN '2º GP - 4º PEL - 141ª CIA PM'
 
  -- ----------------------------------------------------------------------------------------------------------fim 7º BPM
            ELSE MUNICIPIO
 
 
	END;
END$$
DELIMITER ;