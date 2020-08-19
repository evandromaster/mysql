DELIMITER $$
CREATE FUNCTION fnc_companhia_rat_bos_7rpm (MUNICIPIO VARCHAR(50), RATNUM_ATIVIDADE VARCHAR (19), NOME_BAIRRO VARCHAR(50), LOGRADOURO VARCHAR(100), DES_ENDERECO VARCHAR(100),
LOGRADOURO2 VARCHAR(100), DES_ENDERECO2 VARCHAR(100), COMPLEMENTO_ENDERECO VARCHAR(30), COMPLEMENTO_ALFA VARCHAR(30), LATITUDE VARCHAR(20))
RETURNS VARCHAR(50)
BEGIN
	RETURN
		CASE
			WHEN
				MUNICIPIO = 'DIVINOPOLIS'
			THEN fnc_companhia_rat_bos_div(RATNUM_ATIVIDADE, NOME_BAIRRO, LOGRADOURO, DES_ENDERECO,
													LOGRADOURO2, DES_ENDERECO2, COMPLEMENTO_ENDERECO, COMPLEMENTO_ALFA, LATITUDE) -- AQUI CHAMA A FUNCAO QUE CLASSIFICA POR
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
				MUNICIPIO = 'NOVA SERRANA'
			THEN fnc_companhia_rat_bos_nse(RATNUM_ATIVIDADE, NOME_BAIRRO, LOGRADOURO, DES_ENDERECO,
													LOGRADOURO2, DES_ENDERECO2, COMPLEMENTO_ENDERECO, COMPLEMENTO_ALFA, LATITUDE) -- AQUI CHAMA A FUNCAO QUE CLASSIFICA POR
			
                                                    
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