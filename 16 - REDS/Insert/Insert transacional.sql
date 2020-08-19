INSERT INTO
	
    tbl_crimes (
				NREDS, ORG_UN_REG, UN_AREA_MIL, /*UN_RELATO, UN_DIGITACAO, UN_REGISTRO,*/ COD_DIAO, T_C, /*COD_DIAO1, T_C1, COD_DIAO2, T_C2, COD_DIAO3, T_C3, ALVO, DESC_MEIO_UTILIZADO, DATA_COM,
				HORA_COM,*/ DATA_FATO, HORA_FATO, /*DATA_ULT_ATT,*/ LOG_TIPO, LOGRADOURO, LOGRADOURO_NAO_CAD, LOGRADOURO_CRUZ, LOGRADOURO_CRUZ_NAO_CAD, N_LOG, BAIRRO, BAIRRO_NAO_CAD, COMPLEMENTO_END,
                PONTO_REF, MUNICIPIO, LATITUDE, LONGITUDE, /*MATRICULA_DIGITADOR, MATRICULA_RELATOR, QTDE,*/ UEOP, COMPANHIA, FRACAO, SETOR, VALIDADOR
				)


			SELECT 
            
				NREDS, ORG_UN_REG, UN_AREA_MIL, /*UN_RELATO, UN_DIGITACAO, UN_REGISTRO,*/ COD_DIAO, T_C, /*COD_DIAO1, T_C1, COD_DIAO2, T_C2, COD_DIAO3, T_C3, ALVO, DESC_MEIO_UTILIZADO, DATA_COM,
				HORA_COM,*/ DATA_FATO, HORA_FATO, /*DATA_ULT_ATT,*/ LOG_TIPO, LOGRADOURO, LOGRADOURO_NAO_CAD, LOGRADOURO_CRUZ, LOGRADOURO_CRUZ_NAO_CAD, N_LOG, BAIRRO, BAIRRO_NAO_CAD, COMPLEMENTO_END,
                PONTO_REF, MUNICIPIO, LATITUDE, LONGITUDE, /*MATRICULA_DIGITADOR, MATRICULA_RELATOR, QTDE,*/ UEOP, COMPANHIA, FRACAO, SETOR, 
                -- fnc_setor_reds_7rpm (MUNICIPIO, NREDS, BAIRRO, BAIRRO_NAO_CAD, LOGRADOURO, LOGRADOURO_NAO_CAD, LOGRADOURO_CRUZ, LOGRADOURO_CRUZ_NAO_CAD, COMPLEMENTO_END, PONTO_REF) AS SETOR, -- aqui no futuro subtituir pelo campo
                VALIDADOR
            
            
            
            FROM tbl_transacional
            
            where NREDS not in (select NREDS from tbl_crimes)
                        
            
			AND DATA_FATO = DATE_FORMAT(curdate()-1, '%Y-%m-%d') -- PEGA A DATA ATUAL DO SISTEM  MENOS HUM OU SEJA A DATA DE ONTEM

			and COD_DIAO = 'C01157'
			and T_C = 'CONSUMADO'
			and fnc_7rpm (MUNICIPIO)