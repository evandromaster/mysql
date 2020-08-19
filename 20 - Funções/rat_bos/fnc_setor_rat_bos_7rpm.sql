DELIMITER $$
CREATE FUNCTION fnc_setor_rat_bos_7rpm (MUNICIPIO VARCHAR(50), RATNUM_ATIVIDADE VARCHAR (19), NOME_BAIRRO VARCHAR(50), LOGRADOURO VARCHAR(100), DES_ENDERECO VARCHAR(100),
LOGRADOURO2 VARCHAR(100), DES_ENDERECO2 VARCHAR(100), COMPLEMENTO_ENDERECO VARCHAR(30), COMPLEMENTO_ALFA VARCHAR(30), LATITUDE VARCHAR(20))
RETURNS VARCHAR(50)
BEGIN
	RETURN
		CASE
			WHEN
				MUNICIPIO = 'DIVINOPOLIS'
			THEN fnc_setor_rat_bos_div(RATNUM_ATIVIDADE, NOME_BAIRRO, LOGRADOURO, DES_ENDERECO,
													LOGRADOURO2, DES_ENDERECO2, COMPLEMENTO_ENDERECO, COMPLEMENTO_ALFA, LATITUDE) -- AQUI CHAMA A FUNCAO QUE CLASSIFICA POR
			
			WHEN
				MUNICIPIO = 'ITAUNA'
			THEN fnc_setor_rat_bos_ita(RATNUM_ATIVIDADE, NOME_BAIRRO, LOGRADOURO, DES_ENDERECO,
													LOGRADOURO2, DES_ENDERECO2, COMPLEMENTO_ENDERECO, COMPLEMENTO_ALFA, LATITUDE)
                                                    
                                                    
			WHEN
				MUNICIPIO = 'NOVA SERRANA'
			THEN fnc_setor_rat_bos_nse(RATNUM_ATIVIDADE, NOME_BAIRRO, LOGRADOURO, DES_ENDERECO,
													LOGRADOURO2, DES_ENDERECO2, COMPLEMENTO_ENDERECO, COMPLEMENTO_ALFA, LATITUDE)                                            
                                                    
                                                         
			WHEN
				MUNICIPIO IN ('CARMO DO CAJURU', 'SAO GONCALO DO PARA')
			THEN 'C.CAJURU/S.G.PARÁ'
            
            WHEN
				MUNICIPIO = 'ITATIAIUCU'
			THEN 'LOURDES ITATIAIUCU'
            
            WHEN
				MUNICIPIO = 'CLAUDIO'
			THEN 'CLAUDIO'
            
            ELSE MUNICIPIO -- CONCAT(MUNICIPIO, ' SETOR') ELSE CONCAT(MUNICIPIO, ' / SETOR NÃO IDENTIFICADO')
	END;
END$$
DELIMITER ;

