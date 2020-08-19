SELECT
			r.RATNUM_ATIVIDADE,
			r.NATCODIGO,
			r.NATDESCRICAO,
			r.DTA_HRA_INCLUSAO, 
			r.DTA_INICIO,
			r.HRA_INICIO,
			r.DTA_TERMINO,
			r.HRA_TERMINO,
			r.DES_ALVO_EVENTO,
			r.DES_LUGAR,
			r.NOM_OPERACAO,
			r.COD_UNIDADE_SERVICO,
			r.NOM_UNID_RESPONSAVEL,
			r.TIPO_LOGRADOURO,
			r.LOGRADOURO,
			r.DES_ENDERECO,
			r.NUM_ENDERECO,
			r.COMPLEMENTO_ALFA,
			r.COMPLEMENTO_ENDERECO,
			r.NUM_COMPLEMENTAR,
			r.COD_BAIRRO,
			r.NOME_BAIRRO,
			r.TIPO_LOGRADOURO2,
			r.LOGRADOURO2,
			r.DES_ENDERECO2,
			r.COD_MUNICIPIO,
			r.MUNICIPIO,
			r.LATITUDE,
			r.LONGITUDE,
			r.COD_UNIDADE_AREA,
			r.NOM_UNIDADE_AREA,
			r.DIGITADOR,
			#################################################################################
			(timediff(concat(r.DTA_TERMINO, ' ', r.HRA_TERMINO), concat(r.DTA_INICIO, ' ', r.HRA_INICIO))) as TEMPO_EXEC,
			count(distinct(e.num_matricula)) as EFETIVO,
            count(distinct(v.NUM_PREFIXO)) as VIATURAS,
            #################################################################################
             -- --------------------------------------------------------------------------------------------------------------------------INICIO EFICIENCIA
case -- case EFICIENCIA
	when
		(
			NATCODIGO = 'Y07001'
			           
            AND 
            (count(distinct(e.num_matricula)) >=2)
			AND        
			(
				timediff(concat(r.DTA_TERMINO, ' ', r.HRA_TERMINO), concat(r.DTA_INICIO, ' ', r.HRA_INICIO))
			) >= '00:30:00.000000'
			
        )
       
	then 1 -- BATIDA POLICIAL
	   
    when
		(
			NATCODIGO = 'Y07003'			           
            
            AND
				(count(distinct(e.num_matricula)) >=3)
			AND        
				(
					timediff(concat(r.DTA_TERMINO, ' ', r.HRA_TERMINO), concat(r.DTA_INICIO, ' ', r.HRA_INICIO))
				) >= '00:30:00.000000'
            AND
				(count(distinct(v.NUM_PREFIXO))>=1)
            
        )
	then 1 -- INCURSAO EM ZQC
       
       when
		(
				NATCODIGO = 'Y07004' -- CERCO BLOQUEIO			           
            AND 
				(count(distinct(e.num_matricula)) >=3)
			AND
				(count(distinct(v.NUM_PREFIXO))>=2)
        )
       
	then 1 -- CERCO BLOQUEIO
    
    when
		(
				NATCODIGO = 'Y07005' -- OCUPACAO DE PONTOS CRITICOS
            AND 
				(count(distinct(e.num_matricula)) >=3)
			AND        
				(timediff(concat(r.DTA_TERMINO, ' ', r.HRA_TERMINO), concat(r.DTA_INICIO, ' ', r.HRA_INICIO))) >= '00:60:00.000000'
            AND
				(count(distinct(v.NUM_PREFIXO))>=1)

        )
	then 1 -- OCUPACAO DE PONTOS CRITICOS
    
    
    when
		(
				NATCODIGO = 'Y04012' -- OCUPACAO DE PONTOS CRITICOS
            AND 
				(count(distinct(e.num_matricula)) >=2)
			AND        
				(timediff(concat(r.DTA_TERMINO, ' ', r.HRA_TERMINO), concat(r.DTA_INICIO, ' ', r.HRA_INICIO))) >= '00:30:00.000000'
            AND
				(count(distinct(v.NUM_PREFIXO))>=1)

        )
	then 1 -- LEI SECA
    
    
    
	else 0    
    
    END AS EFICIENCIA,
 -- --------------------------------------------------------------------------------------------------------------------------FIM EFICIENCIA  

            #################################################################################
            
            
			SUM(distinct(
				CASE
					WHEN p.descricao ='Qde de pessoas abordadas'
					THEN p.QUANTIDADE
					ELSE 0
				END)
			) AS ABORDADOS,
			#################################################################################
			SUM(distinct(
				CASE
					WHEN p.descricao ='Qde de veiculos fiscalizados'
					THEN p.QUANTIDADE
					ELSE 0
				END) 
			) AS VEIC_FISC,
			#################################################################################    
			SUM(DISTINCT(
				CASE
					WHEN p.descricao ='Qde de locais fiscalizados'
					THEN p.QUANTIDADE
					ELSE 0
				END)
			) AS LOCAIS_FISC,
			################################################################################# 
             -- --------------------------------------------------------------------------------------------------------------------------INICIO EFICIENCIA / EFICACIA 
case -- case EFICIENCIA/EFICACIA
	when
		(
			NATCODIGO = 'Y07001'
			           
            AND 
            (count(distinct(e.num_matricula)) >=2)
			AND        
			(
				timediff(concat(r.DTA_TERMINO, ' ', r.HRA_TERMINO), concat(r.DTA_INICIO, ' ', r.HRA_INICIO))
			) >= '00:30:00.000000'
            AND
            (
					(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de pessoas abordadas' THEN p.quantidade ELSE 0 END)) >= 5)
				OR 
					(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de veiculos fiscalizados' THEN p.quantidade ELSE 0 END)) >= 2)
            )
			
			
        )
       
	then 1 -- BATIDA POLICIAL
	   
    when
		(
			NATCODIGO = 'Y07003'			           
            
            AND
				(count(distinct(e.num_matricula)) >=3)
			AND        
				(
					timediff(concat(r.DTA_TERMINO, ' ', r.HRA_TERMINO), concat(r.DTA_INICIO, ' ', r.HRA_INICIO))
				) >= '00:30:00.000000'
            AND
				(count(distinct(v.NUM_PREFIXO))>=1)
            
            AND
				(
						(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de pessoas abordadas' THEN p.quantidade ELSE 0 END)) >= 5)
					OR
						(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de veiculos fiscalizados' THEN p.quantidade ELSE 0 END)) >= 2)
					OR 
						(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de locais fiscalizados' THEN p.quantidade ELSE 0 END)) >= 2)	
                )
        )
	then 1 -- INCURSAO EM ZQC
       
       when
		(
				NATCODIGO = 'Y07004' -- CERCO BLOQUEIO			           
            AND 
				(count(distinct(e.num_matricula)) >=3)
			AND
				(count(distinct(v.NUM_PREFIXO))>=2)
            AND
				(
						(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de pessoas abordadas' THEN p.quantidade ELSE 0 END)) >= 5)
					OR 
						(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de veiculos fiscalizados' THEN p.quantidade ELSE 0 END)) >= 2)
                )
        )
       
	then 1 -- CERCO BLOQUEIO
    
    when
		(
				NATCODIGO = 'Y07005' -- OCUPACAO DE PONTOS CRITICOS
            AND 
				(count(distinct(e.num_matricula)) >=3)
			AND        
				(timediff(concat(r.DTA_TERMINO, ' ', r.HRA_TERMINO), concat(r.DTA_INICIO, ' ', r.HRA_INICIO))) >= '00:60:00.000000'
            AND
				(count(distinct(v.NUM_PREFIXO))>=1)
            AND            
				(
						(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de pessoas abordadas' THEN p.quantidade ELSE 0 END)) >= 5)
					OR 
						(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de veiculos fiscalizados' THEN p.quantidade ELSE 0 END)) >= 2)
					OR 
						(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de locais fiscalizados' THEN p.quantidade ELSE 0 END)) >= 2)	
                )
        )
	then 1 -- OCUPACAO DE PONTOS CRITICOS
    
        
        when
		(
				NATCODIGO = 'Y04012' -- LEI SECA 
            AND 
				(count(distinct(e.num_matricula)) >=2)
			AND        
				(timediff(concat(r.DTA_TERMINO, ' ', r.HRA_TERMINO), concat(r.DTA_INICIO, ' ', r.HRA_INICIO))) >= '00:30:00.000000'
            AND
				(count(distinct(v.NUM_PREFIXO))>=1)
            AND            
				(
						(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de pessoas abordadas' THEN p.quantidade ELSE 0 END)) >= 3)
					OR 
						(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de veiculos fiscalizados' THEN p.quantidade ELSE 0 END)) >= 3)
					OR 
						(SUM(DISTINCT(CASE WHEN p.descricao = 'Qde de pessoas que sopraram o etilometro' THEN p.quantidade ELSE 0 END)) >= 3)	
                )
        )
	then 1 -- LEI SECA
    
    
	else 0    
    
    END AS EFICIENCIA_EFICACIA,
 -- --------------------------------------------------------------------------------------------------------------------------FIM EFICIENCIA / EFICACIA   
            
			#################################################################################    
			SUM(distinct(
				CASE
					WHEN p.descricao IN ('FLAGRANTE DE ATO INFRACIONAL (AUTOR)',
										'FLAGRANTE DE ATO INFRACIONAL (CO-AUTOR)',
										'FLAGRANTE DE ATO INFRACIONAL (CONDUTOR DO VEICULO)',
										'FLAGRANTE DE CRIME / CONTRAVEN (AUTOR)',
										'FLAGRANTE DE CRIME / CONTRAVEN (CO-AUTOR)',
										'FLAGRANTE DE CRIME / CONTRAVEN (CONDUTOR DO VEICULO)',
										'MANDADO JUDICIAL (AUTOR)',
										'OUTRAS - PRISAO / APREENSAO (AUTOR)',
										'OUTRAS - PRISAO / APREENSAO (CO-AUTOR)',
										'OUTRAS - PRISAO / APREENSAO (CONDUTOR DO VEICULO)',
										'RECAPTURA (AUTOR)')
					THEN p.QUANTIDADE
					ELSE 0
				END)
			) AS PESSOAS_PRES_APREEND,
			#################################################################################    
			SUM(distinct(
				CASE
					WHEN p.descricao IN ('ARMAS DE FOGO DISSIMULADAS (USO RESTRITO) - APREENDIDO',
										'CARABINA / RIFLE - APREENDIDO',
										'ESPINGARDA / ESCOPETA - APREENDIDO',
										'ESPINGARDA POLVEIRA - APREENDIDO',
										'GARRUCHA - APREENDIDO',
										'GARRUCHA - RECOLHIDO',
										'METRALHADORA (USO RESTRITO) - APREENDIDO',
										'PISTOLA - APREENDIDO',
										'PISTOLETE (CALIBRE DE ESPINGARDA) - APREENDIDO',
										'REVOLVER - APREENDIDO',
										'SUBMETRALHADORA (USO RESTRITO) - APREENDIDO'
		)
					THEN p.QUANTIDADE
					ELSE 0
				END)
			) AS ARMAS_FOGO_APREEND,
			#################################################################################    
			SUM(distinct(
				CASE
					WHEN p.descricao IN ('CARTUCHO INTACTO (MUNICAO) DE ARMA DE FOGO DE (UNIDADE) - APREENDIDO',
										'CARTUCHO INTACTO (MUNICAO) DE ARMA DE FOGO DE (DUZIA) - APREENDIDO',
										'CARTUCHO INTACTO (MUNICAO) DE ARMA DE FOGO DE (CENTO) - APREENDIDO',
										'CARTUCHO INTACTO (MUNICAO) DE CALIBRE RESTRIT (UNIDADE) - APREENDIDO',
										'CARTUCHO INTACTO (MUNICAO) DE CALIBRE RESTRIT (DUZIA) - APREENDIDO',
										'CARTUCHO INTACTO (MUNICAO) DE CALIBRE RESTRIT (CENTO) - APREENDIDO',
										'CARTUCHO VAZIO DE MUNICAO DE USO RESTRITO (UNIDADE) - APREENDIDO',
										'CARTUCHO VAZIO DE MUNICAO DE USO RESTRITO (DUZIA) - APREENDIDO',
										'CARTUCHOS VAZIOS, SEMI-CARREGADOS (PERMITIDO) (UNIDADE) - APREENDIDO',
										'MUNICAO - DEMAIS SUBSTANCIAS, PRODUTOS SUJEIT (UNIDADE) - APREENDIDO'

		)
					THEN p.QUANTIDADE
					ELSE 0
				END)
			) AS MUNICOES_APREEND,
			#################################################################################
			SUM(distinct(
				CASE
					WHEN p.descricao IN ('ARTEFATO EXPLOSIVO / BOMBA EXPLOSIVA / ETC (UNIDADE) - APREENDIDO',
										'MUNICAO QUIMICA, EXPLOSIVA OU FULMIGENA(RESTR (UNIDADE) - APREENDIDO',
										'OUTROS  - EXPLOSIVOS / MUNICOES / TIRO ESPORT (UNIDADE) - APREENDIDO'


						)
					THEN p.QUANTIDADE
					ELSE 0
				END)
			) AS ARTEFATOS_EXPLOSIVOS_APREEND,
			#################################################################################    
			SUM(distinct(
				CASE
					WHEN p.descricao IN ('COLETES CONTRA ARMAS DE FOGO DE USO PERMITIDO (UNIDADE) - APREENDIDO',
										'COLETES CONTRA ARMAS DE FOGO DE USO RESTRITO (UNIDADE) - APREENDIDO'
						)
					THEN p.QUANTIDADE
					ELSE 0
				END)
			) AS COLETES_APREEND,
			#################################################################################    
			SUM(distinct(
				CASE
					WHEN p.descricao IN ('BUCHA DE MACONHA (CENTO) - APREENDIDO',
										'BUCHA DE MACONHA (DUZIA) - APREENDIDO',
										'BUCHA DE MACONHA (GRAMA) - APREENDIDO',
										'BUCHA DE MACONHA (MILHEIRO) - APREENDIDO',
										'BUCHA DE MACONHA (UNIDADE) - APREENDIDO',
										'CIGARRO DE MACONHA (UNIDADE) - APREENDIDO',
										'COCAINA EM PO (CENTO) - APREENDIDO',
										'COCAINA EM PO (GRAMA) - APREENDIDO',
										'COCAINA EM PO (UNIDADE) - APREENDIDO',
										'CRACK EM PEDRAS (CENTO) - APREENDIDO',
										'CRACK EM PEDRAS (DUZIA) - APREENDIDO',
										'CRACK EM PEDRAS (GRAMA) - APREENDIDO',
										'CRACK EM PEDRAS (UNIDADE) - APREENDIDO',
										'CRACK EM QUILOGRAMAS (GRAMA) - APREENDIDO',
										'CRACK EM QUILOGRAMAS (QUILOGRAMA) - APREENDIDO',
										'CRACK EM QUILOGRAMAS (UNIDADE) - APREENDIDO',
										'ECSTASY / MDMA (UNIDADE) - APREENDIDO',
										'HAXIXE EM BOLA (DUZIA) - APREENDIDO',
										'HAXIXE EM BOLA (UNIDADE) - APREENDIDO',
										'HAXIXE EM TABLETE (QUILOGRAMA) (UNIDADE) - APREENDIDO',
										'LOLO (LITRO) - APREENDIDO',
										'LOLO (MILIGRAMA) - APREENDIDO',
										'LOLO (UNIDADE) - APREENDIDO',
										'MACONHA PRENSADA (BARRA / TABLETE) (CENTIMETRO) - APREENDIDO',
										'MACONHA PRENSADA (BARRA / TABLETE) (GRAMA) - APREENDIDO',
										'MACONHA PRENSADA (BARRA / TABLETE) (MILHEIRO) - APREENDIDO',
										'MACONHA PRENSADA (BARRA / TABLETE) (QUILOGRAMA) - APREENDIDO',
										'MACONHA PRENSADA (BARRA / TABLETE) (UNIDADE) - APREENDIDO',
										'OUTROS - COCAINA (CENTO) - APREENDIDO',
										'OUTROS - COCAINA (GRAMA) - APREENDIDO',
										'OUTROS - COCAINA (UNIDADE) - APREENDIDO',
										'OUTROS - CRACK (UNIDADE) - APREENDIDO',
										'OUTROS - HAXIXE (UNIDADE) - APREENDIDO',
										'OUTROS - LSD (UNIDADE) - APREENDIDO',
										'OUTROS - MACONHA (GRAMA) - APREENDIDO',
										'OUTROS - MACONHA (QUILOGRAMA) - APREENDIDO',
										'OUTROS - MACONHA (UNIDADE) - APREENDIDO',
										'PAPELOTES DE COCAINA (DUZIA) - APREENDIDO',
										'PAPELOTES DE COCAINA (GRAMA) - APREENDIDO',
										'PAPELOTES DE COCAINA (UNIDADE) - APREENDIDO',
										'PASTA DE COCAINA (GRAMA) - APREENDIDO',
										'PASTA DE COCAINA (UNIDADE) - APREENDIDO',
										'PLANTACAO (PE) DE MACONHA (UNIDADE) - APREENDIDO',
										'SEMENTE DE MACONHA (GRAMA) - APREENDIDO',
										'SEMENTE DE MACONHA (UNIDADE) - APREENDIDO'

						)
					THEN p.QUANTIDADE
					ELSE 0
				END)
			) AS DROGAS_APREEND,
			#################################################################################
			SUM(distinct(
				CASE
					WHEN p.descricao IN ('AUTOMOVEL - APREENDIDO',
										'AUTOMOVEL - RECUPERADO',
										'CAMINHAO - APREENDIDO',
										'CAMINHAO - RECUPERADO',
										'CAMINHAO/TRATOR - APREENDIDO',
										'CAMINHAO/TRATOR - RECUPERADO',
										'CAMINHONETE - APREENDIDO',
										'CAMINHONETE - RECUPERADO',
										'CAMIONETA - APREENDIDO',
										'CAMIONETA - RECUPERADO',
										'CICLOMOTOR - APREENDIDO',
										'CICLOMOTOR - RECUPERADO',
										'MICROONIBUS - APREENDIDO',
										'MICROONIBUS - RECUPERADO',
										'MOTOCICLETA - APREENDIDO',
										'MOTOCICLETA - RECUPERADO',
										'MOTONETA - APREENDIDO',
										'MOTONETA - RECUPERADO',
										'ONIBUS - APREENDIDO',
										'ONIBUS - RECUPERADO',
										'OUTROS - TIPOS DE VEICULO - APREENDIDO',
										'OUTROS - TIPOS DE VEICULO  - RECUPERADO',
										'REBOQUE - APREENDIDO',
										'REBOQUE - RECUPERADO',
										'TRATOR DE RODAS - RECUPERADO',
										'UTILITARIO (TIPO DE VEICULO) - APREENDIDO'

						)
					THEN p.QUANTIDADE
					ELSE 0
				END)
			) AS VEICULOS_APREEND_REC,
            
            
            
			#################################################################################
								-- INICIO CONDIÇÕES EFETIVIDADE
            #################################################################################
			-- ---------------------------------------------------------------------------------------------------------------------------------- INICIO CONDIÇÕES EFETIVIDADE CONDICIONAL
	case -- case EFETIVIDADE CONDICIONAL
	when
		(
		####### COND2.1 #######
		SUM(distinct(
			CASE
			WHEN p.descricao IN ('FLAGRANTE DE ATO INFRACIONAL (AUTOR)',
								'FLAGRANTE DE ATO INFRACIONAL (CO-AUTOR)',
								'FLAGRANTE DE ATO INFRACIONAL (CONDUTOR DO VEICULO)',
								'FLAGRANTE DE CRIME / CONTRAVEN (AUTOR)',
								'FLAGRANTE DE CRIME / CONTRAVEN (CO-AUTOR)',
								'FLAGRANTE DE CRIME / CONTRAVEN (CONDUTOR DO VEICULO)',
								'MANDADO JUDICIAL (AUTOR)',
								'OUTRAS - PRISAO / APREENSAO (AUTOR)',
								'OUTRAS - PRISAO / APREENSAO (CO-AUTOR)',
								'OUTRAS - PRISAO / APREENSAO (CONDUTOR DO VEICULO)',
						
                        
                        'RECAPTURA (AUTOR)')
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
            
			OR
            
		####### COND2.2 #######
        SUM(distinct(
			CASE
			WHEN p.descricao IN ('ARMAS DE FOGO DISSIMULADAS (USO RESTRITO) - APREENDIDO',
								'CARABINA / RIFLE - APREENDIDO',
								'ESPINGARDA / ESCOPETA - APREENDIDO',
								'ESPINGARDA POLVEIRA - APREENDIDO',
								'GARRUCHA - APREENDIDO',
								'GARRUCHA - RECOLHIDO',
								'METRALHADORA (USO RESTRITO) - APREENDIDO',
								'PISTOLA - APREENDIDO',
								'PISTOLETE (CALIBRE DE ESPINGARDA) - APREENDIDO',
								'REVOLVER - APREENDIDO',
								'SUBMETRALHADORA (USO RESTRITO) - APREENDIDO'
)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
		
			OR
            
		####### COND2.2 #######
		SUM(distinct(
		CASE
			WHEN p.descricao IN ('CARTUCHO INTACTO (MUNICAO) DE ARMA DE FOGO DE (UNIDADE) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE ARMA DE FOGO DE (DUZIA) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE ARMA DE FOGO DE (CENTO) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE CALIBRE RESTRIT (UNIDADE) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE CALIBRE RESTRIT (DUZIA) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE CALIBRE RESTRIT (CENTO) - APREENDIDO',
								'CARTUCHO VAZIO DE MUNICAO DE USO RESTRITO (UNIDADE) - APREENDIDO',
								'CARTUCHO VAZIO DE MUNICAO DE USO RESTRITO (DUZIA) - APREENDIDO',
								'CARTUCHOS VAZIOS, SEMI-CARREGADOS (PERMITIDO) (UNIDADE) - APREENDIDO',
								'MUNICAO - DEMAIS SUBSTANCIAS, PRODUTOS SUJEIT (UNIDADE) - APREENDIDO'

)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
		
			OR
            
		####### COND2.3 #######
        SUM(distinct(
		CASE
			WHEN p.descricao IN ('ARTEFATO EXPLOSIVO / BOMBA EXPLOSIVA / ETC (UNIDADE) - APREENDIDO',
								'MUNICAO QUIMICA, EXPLOSIVA OU FULMIGENA(RESTR (UNIDADE) - APREENDIDO',
								'OUTROS  - EXPLOSIVOS / MUNICOES / TIRO ESPORT (UNIDADE) - APREENDIDO'


				)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
		
			OR
        ####### COND2.4 #######    
		SUM(distinct(
		CASE
			WHEN p.descricao IN ('COLETES CONTRA ARMAS DE FOGO DE USO PERMITIDO (UNIDADE) - APREENDIDO',
								'COLETES CONTRA ARMAS DE FOGO DE USO RESTRITO (UNIDADE) - APREENDIDO'
				)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
        
			OR
        ####### COND2.5 #######
        SUM(distinct(
		CASE
			WHEN p.descricao IN ('BUCHA DE MACONHA (CENTO) - APREENDIDO',
								'BUCHA DE MACONHA (DUZIA) - APREENDIDO',
								'BUCHA DE MACONHA (GRAMA) - APREENDIDO',
								'BUCHA DE MACONHA (MILHEIRO) - APREENDIDO',
								'BUCHA DE MACONHA (UNIDADE) - APREENDIDO',
								'CIGARRO DE MACONHA (UNIDADE) - APREENDIDO',
								'COCAINA EM PO (CENTO) - APREENDIDO',
								'COCAINA EM PO (GRAMA) - APREENDIDO',
								'COCAINA EM PO (UNIDADE) - APREENDIDO',
								'CRACK EM PEDRAS (CENTO) - APREENDIDO',
								'CRACK EM PEDRAS (DUZIA) - APREENDIDO',
								'CRACK EM PEDRAS (GRAMA) - APREENDIDO',
								'CRACK EM PEDRAS (UNIDADE) - APREENDIDO',
								'CRACK EM QUILOGRAMAS (GRAMA) - APREENDIDO',
								'CRACK EM QUILOGRAMAS (QUILOGRAMA) - APREENDIDO',
								'CRACK EM QUILOGRAMAS (UNIDADE) - APREENDIDO',
								'ECSTASY / MDMA (UNIDADE) - APREENDIDO',
								'HAXIXE EM BOLA (DUZIA) - APREENDIDO',
								'HAXIXE EM BOLA (UNIDADE) - APREENDIDO',
								'HAXIXE EM TABLETE (QUILOGRAMA) (UNIDADE) - APREENDIDO',
								'LOLO (LITRO) - APREENDIDO',
								'LOLO (MILIGRAMA) - APREENDIDO',
								'LOLO (UNIDADE) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (CENTIMETRO) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (GRAMA) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (MILHEIRO) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (QUILOGRAMA) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (UNIDADE) - APREENDIDO',
								'OUTROS - COCAINA (CENTO) - APREENDIDO',
								'OUTROS - COCAINA (GRAMA) - APREENDIDO',
								'OUTROS - COCAINA (UNIDADE) - APREENDIDO',
								'OUTROS - CRACK (UNIDADE) - APREENDIDO',
								'OUTROS - HAXIXE (UNIDADE) - APREENDIDO',
								'OUTROS - LSD (UNIDADE) - APREENDIDO',
								'OUTROS - MACONHA (GRAMA) - APREENDIDO',
								'OUTROS - MACONHA (QUILOGRAMA) - APREENDIDO',
								'OUTROS - MACONHA (UNIDADE) - APREENDIDO',
								'PAPELOTES DE COCAINA (DUZIA) - APREENDIDO',
								'PAPELOTES DE COCAINA (GRAMA) - APREENDIDO',
								'PAPELOTES DE COCAINA (UNIDADE) - APREENDIDO',
								'PASTA DE COCAINA (GRAMA) - APREENDIDO',
								'PASTA DE COCAINA (UNIDADE) - APREENDIDO',
								'PLANTACAO (PE) DE MACONHA (UNIDADE) - APREENDIDO',
								'SEMENTE DE MACONHA (GRAMA) - APREENDIDO',
								'SEMENTE DE MACONHA (UNIDADE) - APREENDIDO'

				)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
		
			OR
		####### COND2.6 #######
        SUM(distinct(
		CASE
			WHEN p.descricao IN ('AUTOMOVEL - APREENDIDO',
								'AUTOMOVEL - RECUPERADO',
								'CAMINHAO - APREENDIDO',
								'CAMINHAO - RECUPERADO',
								'CAMINHAO/TRATOR - APREENDIDO',
								'CAMINHAO/TRATOR - RECUPERADO',
								'CAMINHONETE - APREENDIDO',
								'CAMINHONETE - RECUPERADO',
								'CAMIONETA - APREENDIDO',
								'CAMIONETA - RECUPERADO',
								'CICLOMOTOR - APREENDIDO',
								'CICLOMOTOR - RECUPERADO',
								'MICROONIBUS - APREENDIDO',
								'MICROONIBUS - RECUPERADO',
								'MOTOCICLETA - APREENDIDO',
								'MOTOCICLETA - RECUPERADO',
								'MOTONETA - APREENDIDO',
								'MOTONETA - RECUPERADO',
								'ONIBUS - APREENDIDO',
								'ONIBUS - RECUPERADO',
								'OUTROS - TIPOS DE VEICULO - APREENDIDO',
								'OUTROS - TIPOS DE VEICULO  - RECUPERADO',
								'REBOQUE - APREENDIDO',
								'REBOQUE - RECUPERADO',
								'TRATOR DE RODAS - RECUPERADO',
								'UTILITARIO (TIPO DE VEICULO) - APREENDIDO'

				)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
        
        -- ------------
        )
       
	then 1 -- EFETIVIDADE
	   
    
	else 0
    
    
    END AS EFETIVIDADE_CONDICIONAL,
      
    
    
-- -----------------------------------------------------------------------------------------------------------------------------------FIM EFETIVIDADE CONDICIONAL

			#################################################################################
								-- FIM CONDIÇÕES EFETIVIDADE CONDICIONAL
            #################################################################################
            
            fnc_ueop(r.MUNICIPIO)
				as UEOP,
			fnc_companhia_rat_bos_7rpm (r.MUNICIPIO, r.RATNUM_ATIVIDADE, r.NOME_BAIRRO, r.LOGRADOURO, r.DES_ENDERECO, r.LOGRADOURO2, r.DES_ENDERECO2, r.COMPLEMENTO_ENDERECO, r.COMPLEMENTO_ALFA, r.LATITUDE)
				as COMPANHIA,
			fnc_cia_sede_rat_bos_7rpm (r.MUNICIPIO, r.RATNUM_ATIVIDADE, r.NOME_BAIRRO, r.LOGRADOURO, r.DES_ENDERECO, r.LOGRADOURO2, r.DES_ENDERECO2, r.COMPLEMENTO_ENDERECO, r.COMPLEMENTO_ALFA, r.LATITUDE)
				as FRACAO,
			classificaRat_BosPorSetor(r.MUNICIPIO , r.RATNUM_ATIVIDADE, r.NOME_BAIRRO, r.LOGRADOURO, r.DES_ENDERECO, r.LOGRADOURO2, r.DES_ENDERECO2, r.COMPLEMENTO_ENDERECO, r.COMPLEMENTO_ALFA, r.LATITUDE)
				as SETOR,
			fnc_tipo_validador_rat_bos (r.MUNICIPIO, r.RATNUM_ATIVIDADE, r.NOME_BAIRRO, r.LOGRADOURO, r.DES_ENDERECO, r.LOGRADOURO2, r.DES_ENDERECO2, r.COMPLEMENTO_ENDERECO, r.COMPLEMENTO_ALFA, r.LATITUDE)
				as VALIDADOR,
                
                
			#################################################################################
								-- FIM CONDIÇÕES EFETIVIDADE TOTAL
            #################################################################################
                
			CASE -- EFETIVIDADE
	WHEN
		####### COND1 #######
        (
			####### COND1.1 #######			           
            NATCODIGO = 'Y07001'            			           
				AND
			####### COND1.2 #######
			(count(distinct(e.num_matricula)) >=2)
				AND        
			####### COND1.3 #######
			(
				timediff(concat(r.DTA_TERMINO, ' ', r.HRA_TERMINO), concat(r.DTA_INICIO, ' ', r.HRA_INICIO))
			) >= '00:30:00.000000'
				AND
			####### COND1.4 #######            
            (
					(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de pessoas abordadas' THEN p.quantidade ELSE 0 END)) >= 5)
				OR 
					(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de veiculos fiscalizados' THEN p.quantidade ELSE 0 END)) >= 2)
            )
            ####### COND1.5 #######
			
			
        ) ####### END COND1 #######		
        
			AND
		####### COND2 #######		
        (
			####### COND2.1 #######
		SUM(distinct(
			CASE
			WHEN p.descricao IN ('FLAGRANTE DE ATO INFRACIONAL (AUTOR)',
								'FLAGRANTE DE ATO INFRACIONAL (CO-AUTOR)',
								'FLAGRANTE DE ATO INFRACIONAL (CONDUTOR DO VEICULO)',
								'FLAGRANTE DE CRIME / CONTRAVEN (AUTOR)',
								'FLAGRANTE DE CRIME / CONTRAVEN (CO-AUTOR)',
								'FLAGRANTE DE CRIME / CONTRAVEN (CONDUTOR DO VEICULO)',
								'MANDADO JUDICIAL (AUTOR)',
								'OUTRAS - PRISAO / APREENSAO (AUTOR)',
								'OUTRAS - PRISAO / APREENSAO (CO-AUTOR)',
								'OUTRAS - PRISAO / APREENSAO (CONDUTOR DO VEICULO)',
						
                        
                        'RECAPTURA (AUTOR)')
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
            
			OR
            
		####### COND2.2 #######
        SUM(distinct(
			CASE
			WHEN p.descricao IN ('ARMAS DE FOGO DISSIMULADAS (USO RESTRITO) - APREENDIDO',
								'CARABINA / RIFLE - APREENDIDO',
								'ESPINGARDA / ESCOPETA - APREENDIDO',
								'ESPINGARDA POLVEIRA - APREENDIDO',
								'GARRUCHA - APREENDIDO',
								'GARRUCHA - RECOLHIDO',
								'METRALHADORA (USO RESTRITO) - APREENDIDO',
								'PISTOLA - APREENDIDO',
								'PISTOLETE (CALIBRE DE ESPINGARDA) - APREENDIDO',
								'REVOLVER - APREENDIDO',
								'SUBMETRALHADORA (USO RESTRITO) - APREENDIDO'
)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
		
			OR
            
		####### COND2.2 #######
		SUM(distinct(
		CASE
			WHEN p.descricao IN ('CARTUCHO INTACTO (MUNICAO) DE ARMA DE FOGO DE (UNIDADE) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE ARMA DE FOGO DE (DUZIA) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE ARMA DE FOGO DE (CENTO) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE CALIBRE RESTRIT (UNIDADE) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE CALIBRE RESTRIT (DUZIA) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE CALIBRE RESTRIT (CENTO) - APREENDIDO',
								'CARTUCHO VAZIO DE MUNICAO DE USO RESTRITO (UNIDADE) - APREENDIDO',
								'CARTUCHO VAZIO DE MUNICAO DE USO RESTRITO (DUZIA) - APREENDIDO',
								'CARTUCHOS VAZIOS, SEMI-CARREGADOS (PERMITIDO) (UNIDADE) - APREENDIDO',
								'MUNICAO - DEMAIS SUBSTANCIAS, PRODUTOS SUJEIT (UNIDADE) - APREENDIDO'

)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
		
			OR
            
		####### COND2.3 #######
        SUM(distinct(
		CASE
			WHEN p.descricao IN ('ARTEFATO EXPLOSIVO / BOMBA EXPLOSIVA / ETC (UNIDADE) - APREENDIDO',
								'MUNICAO QUIMICA, EXPLOSIVA OU FULMIGENA(RESTR (UNIDADE) - APREENDIDO',
								'OUTROS  - EXPLOSIVOS / MUNICOES / TIRO ESPORT (UNIDADE) - APREENDIDO'


				)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
		
			OR
        ####### COND2.4 #######    
		SUM(distinct(
		CASE
			WHEN p.descricao IN ('COLETES CONTRA ARMAS DE FOGO DE USO PERMITIDO (UNIDADE) - APREENDIDO',
								'COLETES CONTRA ARMAS DE FOGO DE USO RESTRITO (UNIDADE) - APREENDIDO'
				)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
        
			OR
        ####### COND2.5 #######
        SUM(distinct(
		CASE
			WHEN p.descricao IN ('BUCHA DE MACONHA (CENTO) - APREENDIDO',
								'BUCHA DE MACONHA (DUZIA) - APREENDIDO',
								'BUCHA DE MACONHA (GRAMA) - APREENDIDO',
								'BUCHA DE MACONHA (MILHEIRO) - APREENDIDO',
								'BUCHA DE MACONHA (UNIDADE) - APREENDIDO',
								'CIGARRO DE MACONHA (UNIDADE) - APREENDIDO',
								'COCAINA EM PO (CENTO) - APREENDIDO',
								'COCAINA EM PO (GRAMA) - APREENDIDO',
								'COCAINA EM PO (UNIDADE) - APREENDIDO',
								'CRACK EM PEDRAS (CENTO) - APREENDIDO',
								'CRACK EM PEDRAS (DUZIA) - APREENDIDO',
								'CRACK EM PEDRAS (GRAMA) - APREENDIDO',
								'CRACK EM PEDRAS (UNIDADE) - APREENDIDO',
								'CRACK EM QUILOGRAMAS (GRAMA) - APREENDIDO',
								'CRACK EM QUILOGRAMAS (QUILOGRAMA) - APREENDIDO',
								'CRACK EM QUILOGRAMAS (UNIDADE) - APREENDIDO',
								'ECSTASY / MDMA (UNIDADE) - APREENDIDO',
								'HAXIXE EM BOLA (DUZIA) - APREENDIDO',
								'HAXIXE EM BOLA (UNIDADE) - APREENDIDO',
								'HAXIXE EM TABLETE (QUILOGRAMA) (UNIDADE) - APREENDIDO',
								'LOLO (LITRO) - APREENDIDO',
								'LOLO (MILIGRAMA) - APREENDIDO',
								'LOLO (UNIDADE) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (CENTIMETRO) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (GRAMA) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (MILHEIRO) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (QUILOGRAMA) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (UNIDADE) - APREENDIDO',
								'OUTROS - COCAINA (CENTO) - APREENDIDO',
								'OUTROS - COCAINA (GRAMA) - APREENDIDO',
								'OUTROS - COCAINA (UNIDADE) - APREENDIDO',
								'OUTROS - CRACK (UNIDADE) - APREENDIDO',
								'OUTROS - HAXIXE (UNIDADE) - APREENDIDO',
								'OUTROS - LSD (UNIDADE) - APREENDIDO',
								'OUTROS - MACONHA (GRAMA) - APREENDIDO',
								'OUTROS - MACONHA (QUILOGRAMA) - APREENDIDO',
								'OUTROS - MACONHA (UNIDADE) - APREENDIDO',
								'PAPELOTES DE COCAINA (DUZIA) - APREENDIDO',
								'PAPELOTES DE COCAINA (GRAMA) - APREENDIDO',
								'PAPELOTES DE COCAINA (UNIDADE) - APREENDIDO',
								'PASTA DE COCAINA (GRAMA) - APREENDIDO',
								'PASTA DE COCAINA (UNIDADE) - APREENDIDO',
								'PLANTACAO (PE) DE MACONHA (UNIDADE) - APREENDIDO',
								'SEMENTE DE MACONHA (GRAMA) - APREENDIDO',
								'SEMENTE DE MACONHA (UNIDADE) - APREENDIDO'

				)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
		
			OR
		####### COND2.6 #######
        SUM(distinct(
		CASE
			WHEN p.descricao IN ('AUTOMOVEL - APREENDIDO',
								'AUTOMOVEL - RECUPERADO',
								'CAMINHAO - APREENDIDO',
								'CAMINHAO - RECUPERADO',
								'CAMINHAO/TRATOR - APREENDIDO',
								'CAMINHAO/TRATOR - RECUPERADO',
								'CAMINHONETE - APREENDIDO',
								'CAMINHONETE - RECUPERADO',
								'CAMIONETA - APREENDIDO',
								'CAMIONETA - RECUPERADO',
								'CICLOMOTOR - APREENDIDO',
								'CICLOMOTOR - RECUPERADO',
								'MICROONIBUS - APREENDIDO',
								'MICROONIBUS - RECUPERADO',
								'MOTOCICLETA - APREENDIDO',
								'MOTOCICLETA - RECUPERADO',
								'MOTONETA - APREENDIDO',
								'MOTONETA - RECUPERADO',
								'ONIBUS - APREENDIDO',
								'ONIBUS - RECUPERADO',
								'OUTROS - TIPOS DE VEICULO - APREENDIDO',
								'OUTROS - TIPOS DE VEICULO  - RECUPERADO',
								'REBOQUE - APREENDIDO',
								'REBOQUE - RECUPERADO',
								'TRATOR DE RODAS - RECUPERADO',
								'UTILITARIO (TIPO DE VEICULO) - APREENDIDO'

				)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1	
        
        )  ####### END COND2 #######
        
        
        
        
        
       
	then 1 -- BATIDA POLICIAL
	   
    when
		(
			NATCODIGO = 'Y07003'			           
            
            AND
				(count(distinct(e.num_matricula)) >=3)
			AND        
				(
					timediff(concat(r.DTA_TERMINO, ' ', r.HRA_TERMINO), concat(r.DTA_INICIO, ' ', r.HRA_INICIO))
				) >= '00:30:00.000000'
            AND
				(count(distinct(v.NUM_PREFIXO))>=1)
            
            AND
				(
						(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de pessoas abordadas' THEN p.quantidade ELSE 0 END)) >= 5)
					OR
						(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de veiculos fiscalizados' THEN p.quantidade ELSE 0 END)) >= 2)
					OR 
						(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de locais fiscalizados' THEN p.quantidade ELSE 0 END)) >= 2)	
                )
                
			AND
		####### COND2 #######		
        (
			####### COND2.1 #######
		SUM(distinct(
			CASE
			WHEN p.descricao IN ('FLAGRANTE DE ATO INFRACIONAL (AUTOR)',
								'FLAGRANTE DE ATO INFRACIONAL (CO-AUTOR)',
								'FLAGRANTE DE ATO INFRACIONAL (CONDUTOR DO VEICULO)',
								'FLAGRANTE DE CRIME / CONTRAVEN (AUTOR)',
								'FLAGRANTE DE CRIME / CONTRAVEN (CO-AUTOR)',
								'FLAGRANTE DE CRIME / CONTRAVEN (CONDUTOR DO VEICULO)',
								'MANDADO JUDICIAL (AUTOR)',
								'OUTRAS - PRISAO / APREENSAO (AUTOR)',
								'OUTRAS - PRISAO / APREENSAO (CO-AUTOR)',
								'OUTRAS - PRISAO / APREENSAO (CONDUTOR DO VEICULO)',
						
                        
                        'RECAPTURA (AUTOR)')
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
            
			OR
            
		####### COND2.2 #######
        SUM(distinct(
			CASE
			WHEN p.descricao IN ('ARMAS DE FOGO DISSIMULADAS (USO RESTRITO) - APREENDIDO',
								'CARABINA / RIFLE - APREENDIDO',
								'ESPINGARDA / ESCOPETA - APREENDIDO',
								'ESPINGARDA POLVEIRA - APREENDIDO',
								'GARRUCHA - APREENDIDO',
								'GARRUCHA - RECOLHIDO',
								'METRALHADORA (USO RESTRITO) - APREENDIDO',
								'PISTOLA - APREENDIDO',
								'PISTOLETE (CALIBRE DE ESPINGARDA) - APREENDIDO',
								'REVOLVER - APREENDIDO',
								'SUBMETRALHADORA (USO RESTRITO) - APREENDIDO'
)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
		
			OR
            
		####### COND2.2 #######
		SUM(distinct(
		CASE
			WHEN p.descricao IN ('CARTUCHO INTACTO (MUNICAO) DE ARMA DE FOGO DE (UNIDADE) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE ARMA DE FOGO DE (DUZIA) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE ARMA DE FOGO DE (CENTO) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE CALIBRE RESTRIT (UNIDADE) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE CALIBRE RESTRIT (DUZIA) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE CALIBRE RESTRIT (CENTO) - APREENDIDO',
								'CARTUCHO VAZIO DE MUNICAO DE USO RESTRITO (UNIDADE) - APREENDIDO',
								'CARTUCHO VAZIO DE MUNICAO DE USO RESTRITO (DUZIA) - APREENDIDO',
								'CARTUCHOS VAZIOS, SEMI-CARREGADOS (PERMITIDO) (UNIDADE) - APREENDIDO',
								'MUNICAO - DEMAIS SUBSTANCIAS, PRODUTOS SUJEIT (UNIDADE) - APREENDIDO'

)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
		
			OR
            
		####### COND2.3 #######
        SUM(distinct(
		CASE
			WHEN p.descricao IN ('ARTEFATO EXPLOSIVO / BOMBA EXPLOSIVA / ETC (UNIDADE) - APREENDIDO',
								'MUNICAO QUIMICA, EXPLOSIVA OU FULMIGENA(RESTR (UNIDADE) - APREENDIDO',
								'OUTROS  - EXPLOSIVOS / MUNICOES / TIRO ESPORT (UNIDADE) - APREENDIDO'


				)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
		
			OR
        ####### COND2.4 #######    
		SUM(distinct(
		CASE
			WHEN p.descricao IN ('COLETES CONTRA ARMAS DE FOGO DE USO PERMITIDO (UNIDADE) - APREENDIDO',
								'COLETES CONTRA ARMAS DE FOGO DE USO RESTRITO (UNIDADE) - APREENDIDO'
				)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
        
			OR
        ####### COND2.5 #######
        SUM(distinct(
		CASE
			WHEN p.descricao IN ('BUCHA DE MACONHA (CENTO) - APREENDIDO',
								'BUCHA DE MACONHA (DUZIA) - APREENDIDO',
								'BUCHA DE MACONHA (GRAMA) - APREENDIDO',
								'BUCHA DE MACONHA (MILHEIRO) - APREENDIDO',
								'BUCHA DE MACONHA (UNIDADE) - APREENDIDO',
								'CIGARRO DE MACONHA (UNIDADE) - APREENDIDO',
								'COCAINA EM PO (CENTO) - APREENDIDO',
								'COCAINA EM PO (GRAMA) - APREENDIDO',
								'COCAINA EM PO (UNIDADE) - APREENDIDO',
								'CRACK EM PEDRAS (CENTO) - APREENDIDO',
								'CRACK EM PEDRAS (DUZIA) - APREENDIDO',
								'CRACK EM PEDRAS (GRAMA) - APREENDIDO',
								'CRACK EM PEDRAS (UNIDADE) - APREENDIDO',
								'CRACK EM QUILOGRAMAS (GRAMA) - APREENDIDO',
								'CRACK EM QUILOGRAMAS (QUILOGRAMA) - APREENDIDO',
								'CRACK EM QUILOGRAMAS (UNIDADE) - APREENDIDO',
								'ECSTASY / MDMA (UNIDADE) - APREENDIDO',
								'HAXIXE EM BOLA (DUZIA) - APREENDIDO',
								'HAXIXE EM BOLA (UNIDADE) - APREENDIDO',
								'HAXIXE EM TABLETE (QUILOGRAMA) (UNIDADE) - APREENDIDO',
								'LOLO (LITRO) - APREENDIDO',
								'LOLO (MILIGRAMA) - APREENDIDO',
								'LOLO (UNIDADE) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (CENTIMETRO) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (GRAMA) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (MILHEIRO) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (QUILOGRAMA) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (UNIDADE) - APREENDIDO',
								'OUTROS - COCAINA (CENTO) - APREENDIDO',
								'OUTROS - COCAINA (GRAMA) - APREENDIDO',
								'OUTROS - COCAINA (UNIDADE) - APREENDIDO',
								'OUTROS - CRACK (UNIDADE) - APREENDIDO',
								'OUTROS - HAXIXE (UNIDADE) - APREENDIDO',
								'OUTROS - LSD (UNIDADE) - APREENDIDO',
								'OUTROS - MACONHA (GRAMA) - APREENDIDO',
								'OUTROS - MACONHA (QUILOGRAMA) - APREENDIDO',
								'OUTROS - MACONHA (UNIDADE) - APREENDIDO',
								'PAPELOTES DE COCAINA (DUZIA) - APREENDIDO',
								'PAPELOTES DE COCAINA (GRAMA) - APREENDIDO',
								'PAPELOTES DE COCAINA (UNIDADE) - APREENDIDO',
								'PASTA DE COCAINA (GRAMA) - APREENDIDO',
								'PASTA DE COCAINA (UNIDADE) - APREENDIDO',
								'PLANTACAO (PE) DE MACONHA (UNIDADE) - APREENDIDO',
								'SEMENTE DE MACONHA (GRAMA) - APREENDIDO',
								'SEMENTE DE MACONHA (UNIDADE) - APREENDIDO'

				)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
		
			OR
		####### COND2.6 #######
        SUM(distinct(
		CASE
			WHEN p.descricao IN ('AUTOMOVEL - APREENDIDO',
								'AUTOMOVEL - RECUPERADO',
								'CAMINHAO - APREENDIDO',
								'CAMINHAO - RECUPERADO',
								'CAMINHAO/TRATOR - APREENDIDO',
								'CAMINHAO/TRATOR - RECUPERADO',
								'CAMINHONETE - APREENDIDO',
								'CAMINHONETE - RECUPERADO',
								'CAMIONETA - APREENDIDO',
								'CAMIONETA - RECUPERADO',
								'CICLOMOTOR - APREENDIDO',
								'CICLOMOTOR - RECUPERADO',
								'MICROONIBUS - APREENDIDO',
								'MICROONIBUS - RECUPERADO',
								'MOTOCICLETA - APREENDIDO',
								'MOTOCICLETA - RECUPERADO',
								'MOTONETA - APREENDIDO',
								'MOTONETA - RECUPERADO',
								'ONIBUS - APREENDIDO',
								'ONIBUS - RECUPERADO',
								'OUTROS - TIPOS DE VEICULO - APREENDIDO',
								'OUTROS - TIPOS DE VEICULO  - RECUPERADO',
								'REBOQUE - APREENDIDO',
								'REBOQUE - RECUPERADO',
								'TRATOR DE RODAS - RECUPERADO',
								'UTILITARIO (TIPO DE VEICULO) - APREENDIDO'

				)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1	
        
        ) ) ####### END COND2 #######
            
            
        
	then 1 -- INCURSAO EM ZQC
       
       when
		(
				NATCODIGO = 'Y07004' -- CERCO BLOQUEIO			           
            AND 
				(count(distinct(e.num_matricula)) >=3)
			AND
				(count(distinct(v.NUM_PREFIXO))>=2)
            AND
				(
						(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de pessoas abordadas' THEN p.quantidade ELSE 0 END)) >= 5)
					OR 
						(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de veiculos fiscalizados' THEN p.quantidade ELSE 0 END)) >= 2)
                )
			AND
		####### COND2 #######		
        (
			####### COND2.1 #######
		SUM(distinct(
			CASE
			WHEN p.descricao IN ('FLAGRANTE DE ATO INFRACIONAL (AUTOR)',
								'FLAGRANTE DE ATO INFRACIONAL (CO-AUTOR)',
								'FLAGRANTE DE ATO INFRACIONAL (CONDUTOR DO VEICULO)',
								'FLAGRANTE DE CRIME / CONTRAVEN (AUTOR)',
								'FLAGRANTE DE CRIME / CONTRAVEN (CO-AUTOR)',
								'FLAGRANTE DE CRIME / CONTRAVEN (CONDUTOR DO VEICULO)',
								'MANDADO JUDICIAL (AUTOR)',
								'OUTRAS - PRISAO / APREENSAO (AUTOR)',
								'OUTRAS - PRISAO / APREENSAO (CO-AUTOR)',
								'OUTRAS - PRISAO / APREENSAO (CONDUTOR DO VEICULO)',
						
                        
                        'RECAPTURA (AUTOR)')
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
            
			OR
            
		####### COND2.2 #######
        SUM(distinct(
			CASE
			WHEN p.descricao IN ('ARMAS DE FOGO DISSIMULADAS (USO RESTRITO) - APREENDIDO',
								'CARABINA / RIFLE - APREENDIDO',
								'ESPINGARDA / ESCOPETA - APREENDIDO',
								'ESPINGARDA POLVEIRA - APREENDIDO',
								'GARRUCHA - APREENDIDO',
								'GARRUCHA - RECOLHIDO',
								'METRALHADORA (USO RESTRITO) - APREENDIDO',
								'PISTOLA - APREENDIDO',
								'PISTOLETE (CALIBRE DE ESPINGARDA) - APREENDIDO',
								'REVOLVER - APREENDIDO',
								'SUBMETRALHADORA (USO RESTRITO) - APREENDIDO'
)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
		
			OR
            
		####### COND2.2 #######
		SUM(distinct(
		CASE
			WHEN p.descricao IN ('CARTUCHO INTACTO (MUNICAO) DE ARMA DE FOGO DE (UNIDADE) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE ARMA DE FOGO DE (DUZIA) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE ARMA DE FOGO DE (CENTO) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE CALIBRE RESTRIT (UNIDADE) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE CALIBRE RESTRIT (DUZIA) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE CALIBRE RESTRIT (CENTO) - APREENDIDO',
								'CARTUCHO VAZIO DE MUNICAO DE USO RESTRITO (UNIDADE) - APREENDIDO',
								'CARTUCHO VAZIO DE MUNICAO DE USO RESTRITO (DUZIA) - APREENDIDO',
								'CARTUCHOS VAZIOS, SEMI-CARREGADOS (PERMITIDO) (UNIDADE) - APREENDIDO',
								'MUNICAO - DEMAIS SUBSTANCIAS, PRODUTOS SUJEIT (UNIDADE) - APREENDIDO'

)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
		
			OR
            
		####### COND2.3 #######
        SUM(distinct(
		CASE
			WHEN p.descricao IN ('ARTEFATO EXPLOSIVO / BOMBA EXPLOSIVA / ETC (UNIDADE) - APREENDIDO',
								'MUNICAO QUIMICA, EXPLOSIVA OU FULMIGENA(RESTR (UNIDADE) - APREENDIDO',
								'OUTROS  - EXPLOSIVOS / MUNICOES / TIRO ESPORT (UNIDADE) - APREENDIDO'


				)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
		
			OR
        ####### COND2.4 #######    
		SUM(distinct(
		CASE
			WHEN p.descricao IN ('COLETES CONTRA ARMAS DE FOGO DE USO PERMITIDO (UNIDADE) - APREENDIDO',
								'COLETES CONTRA ARMAS DE FOGO DE USO RESTRITO (UNIDADE) - APREENDIDO'
				)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
        
			OR
        ####### COND2.5 #######
        SUM(distinct(
		CASE
			WHEN p.descricao IN ('BUCHA DE MACONHA (CENTO) - APREENDIDO',
								'BUCHA DE MACONHA (DUZIA) - APREENDIDO',
								'BUCHA DE MACONHA (GRAMA) - APREENDIDO',
								'BUCHA DE MACONHA (MILHEIRO) - APREENDIDO',
								'BUCHA DE MACONHA (UNIDADE) - APREENDIDO',
								'CIGARRO DE MACONHA (UNIDADE) - APREENDIDO',
								'COCAINA EM PO (CENTO) - APREENDIDO',
								'COCAINA EM PO (GRAMA) - APREENDIDO',
								'COCAINA EM PO (UNIDADE) - APREENDIDO',
								'CRACK EM PEDRAS (CENTO) - APREENDIDO',
								'CRACK EM PEDRAS (DUZIA) - APREENDIDO',
								'CRACK EM PEDRAS (GRAMA) - APREENDIDO',
								'CRACK EM PEDRAS (UNIDADE) - APREENDIDO',
								'CRACK EM QUILOGRAMAS (GRAMA) - APREENDIDO',
								'CRACK EM QUILOGRAMAS (QUILOGRAMA) - APREENDIDO',
								'CRACK EM QUILOGRAMAS (UNIDADE) - APREENDIDO',
								'ECSTASY / MDMA (UNIDADE) - APREENDIDO',
								'HAXIXE EM BOLA (DUZIA) - APREENDIDO',
								'HAXIXE EM BOLA (UNIDADE) - APREENDIDO',
								'HAXIXE EM TABLETE (QUILOGRAMA) (UNIDADE) - APREENDIDO',
								'LOLO (LITRO) - APREENDIDO',
								'LOLO (MILIGRAMA) - APREENDIDO',
								'LOLO (UNIDADE) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (CENTIMETRO) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (GRAMA) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (MILHEIRO) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (QUILOGRAMA) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (UNIDADE) - APREENDIDO',
								'OUTROS - COCAINA (CENTO) - APREENDIDO',
								'OUTROS - COCAINA (GRAMA) - APREENDIDO',
								'OUTROS - COCAINA (UNIDADE) - APREENDIDO',
								'OUTROS - CRACK (UNIDADE) - APREENDIDO',
								'OUTROS - HAXIXE (UNIDADE) - APREENDIDO',
								'OUTROS - LSD (UNIDADE) - APREENDIDO',
								'OUTROS - MACONHA (GRAMA) - APREENDIDO',
								'OUTROS - MACONHA (QUILOGRAMA) - APREENDIDO',
								'OUTROS - MACONHA (UNIDADE) - APREENDIDO',
								'PAPELOTES DE COCAINA (DUZIA) - APREENDIDO',
								'PAPELOTES DE COCAINA (GRAMA) - APREENDIDO',
								'PAPELOTES DE COCAINA (UNIDADE) - APREENDIDO',
								'PASTA DE COCAINA (GRAMA) - APREENDIDO',
								'PASTA DE COCAINA (UNIDADE) - APREENDIDO',
								'PLANTACAO (PE) DE MACONHA (UNIDADE) - APREENDIDO',
								'SEMENTE DE MACONHA (GRAMA) - APREENDIDO',
								'SEMENTE DE MACONHA (UNIDADE) - APREENDIDO'

				)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
		
			OR
		####### COND2.6 #######
        SUM(distinct(
		CASE
			WHEN p.descricao IN ('AUTOMOVEL - APREENDIDO',
								'AUTOMOVEL - RECUPERADO',
								'CAMINHAO - APREENDIDO',
								'CAMINHAO - RECUPERADO',
								'CAMINHAO/TRATOR - APREENDIDO',
								'CAMINHAO/TRATOR - RECUPERADO',
								'CAMINHONETE - APREENDIDO',
								'CAMINHONETE - RECUPERADO',
								'CAMIONETA - APREENDIDO',
								'CAMIONETA - RECUPERADO',
								'CICLOMOTOR - APREENDIDO',
								'CICLOMOTOR - RECUPERADO',
								'MICROONIBUS - APREENDIDO',
								'MICROONIBUS - RECUPERADO',
								'MOTOCICLETA - APREENDIDO',
								'MOTOCICLETA - RECUPERADO',
								'MOTONETA - APREENDIDO',
								'MOTONETA - RECUPERADO',
								'ONIBUS - APREENDIDO',
								'ONIBUS - RECUPERADO',
								'OUTROS - TIPOS DE VEICULO - APREENDIDO',
								'OUTROS - TIPOS DE VEICULO  - RECUPERADO',
								'REBOQUE - APREENDIDO',
								'REBOQUE - RECUPERADO',
								'TRATOR DE RODAS - RECUPERADO',
								'UTILITARIO (TIPO DE VEICULO) - APREENDIDO'

				)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1	
        
        ) ) ####### END COND2 #######
        
        
        
        
        
        
        
        
       
	then 1 -- CERCO BLOQUEIO
    
    when
		(
				NATCODIGO = 'Y07005' -- OCUPACAO DE PONTOS CRITICOS
            AND 
				(count(distinct(e.num_matricula)) >=3)
			AND        
				(timediff(concat(r.DTA_TERMINO, ' ', r.HRA_TERMINO), concat(r.DTA_INICIO, ' ', r.HRA_INICIO))) >= '00:60:00.000000'
            AND
				(count(distinct(v.NUM_PREFIXO))>=1)
            AND            
				(
						(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de pessoas abordadas' THEN p.quantidade ELSE 0 END)) >= 5)
					OR 
						(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de veiculos fiscalizados' THEN p.quantidade ELSE 0 END)) >= 2)
					OR 
						(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de locais fiscalizados' THEN p.quantidade ELSE 0 END)) >= 2)	
                )
			AND
		####### COND2 #######		
        (
			####### COND2.1 #######
		SUM(distinct(
			CASE
			WHEN p.descricao IN ('FLAGRANTE DE ATO INFRACIONAL (AUTOR)',
								'FLAGRANTE DE ATO INFRACIONAL (CO-AUTOR)',
								'FLAGRANTE DE ATO INFRACIONAL (CONDUTOR DO VEICULO)',
								'FLAGRANTE DE CRIME / CONTRAVEN (AUTOR)',
								'FLAGRANTE DE CRIME / CONTRAVEN (CO-AUTOR)',
								'FLAGRANTE DE CRIME / CONTRAVEN (CONDUTOR DO VEICULO)',
								'MANDADO JUDICIAL (AUTOR)',
								'OUTRAS - PRISAO / APREENSAO (AUTOR)',
								'OUTRAS - PRISAO / APREENSAO (CO-AUTOR)',
								'OUTRAS - PRISAO / APREENSAO (CONDUTOR DO VEICULO)',
						
                        
                        'RECAPTURA (AUTOR)')
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
            
			OR
            
		####### COND2.2 #######
        SUM(distinct(
			CASE
			WHEN p.descricao IN ('ARMAS DE FOGO DISSIMULADAS (USO RESTRITO) - APREENDIDO',
								'CARABINA / RIFLE - APREENDIDO',
								'ESPINGARDA / ESCOPETA - APREENDIDO',
								'ESPINGARDA POLVEIRA - APREENDIDO',
								'GARRUCHA - APREENDIDO',
								'GARRUCHA - RECOLHIDO',
								'METRALHADORA (USO RESTRITO) - APREENDIDO',
								'PISTOLA - APREENDIDO',
								'PISTOLETE (CALIBRE DE ESPINGARDA) - APREENDIDO',
								'REVOLVER - APREENDIDO',
								'SUBMETRALHADORA (USO RESTRITO) - APREENDIDO'
)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
		
			OR
            
		####### COND2.2 #######
		SUM(distinct(
		CASE
			WHEN p.descricao IN ('CARTUCHO INTACTO (MUNICAO) DE ARMA DE FOGO DE (UNIDADE) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE ARMA DE FOGO DE (DUZIA) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE ARMA DE FOGO DE (CENTO) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE CALIBRE RESTRIT (UNIDADE) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE CALIBRE RESTRIT (DUZIA) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE CALIBRE RESTRIT (CENTO) - APREENDIDO',
								'CARTUCHO VAZIO DE MUNICAO DE USO RESTRITO (UNIDADE) - APREENDIDO',
								'CARTUCHO VAZIO DE MUNICAO DE USO RESTRITO (DUZIA) - APREENDIDO',
								'CARTUCHOS VAZIOS, SEMI-CARREGADOS (PERMITIDO) (UNIDADE) - APREENDIDO',
								'MUNICAO - DEMAIS SUBSTANCIAS, PRODUTOS SUJEIT (UNIDADE) - APREENDIDO'

)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
		
			OR
            
		####### COND2.3 #######
        SUM(distinct(
		CASE
			WHEN p.descricao IN ('ARTEFATO EXPLOSIVO / BOMBA EXPLOSIVA / ETC (UNIDADE) - APREENDIDO',
								'MUNICAO QUIMICA, EXPLOSIVA OU FULMIGENA(RESTR (UNIDADE) - APREENDIDO',
								'OUTROS  - EXPLOSIVOS / MUNICOES / TIRO ESPORT (UNIDADE) - APREENDIDO'


				)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
		
			OR
        ####### COND2.4 #######    
		SUM(distinct(
		CASE
			WHEN p.descricao IN ('COLETES CONTRA ARMAS DE FOGO DE USO PERMITIDO (UNIDADE) - APREENDIDO',
								'COLETES CONTRA ARMAS DE FOGO DE USO RESTRITO (UNIDADE) - APREENDIDO'
				)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
        
			OR
        ####### COND2.5 #######
        SUM(distinct(
		CASE
			WHEN p.descricao IN ('BUCHA DE MACONHA (CENTO) - APREENDIDO',
								'BUCHA DE MACONHA (DUZIA) - APREENDIDO',
								'BUCHA DE MACONHA (GRAMA) - APREENDIDO',
								'BUCHA DE MACONHA (MILHEIRO) - APREENDIDO',
								'BUCHA DE MACONHA (UNIDADE) - APREENDIDO',
								'CIGARRO DE MACONHA (UNIDADE) - APREENDIDO',
								'COCAINA EM PO (CENTO) - APREENDIDO',
								'COCAINA EM PO (GRAMA) - APREENDIDO',
								'COCAINA EM PO (UNIDADE) - APREENDIDO',
								'CRACK EM PEDRAS (CENTO) - APREENDIDO',
								'CRACK EM PEDRAS (DUZIA) - APREENDIDO',
								'CRACK EM PEDRAS (GRAMA) - APREENDIDO',
								'CRACK EM PEDRAS (UNIDADE) - APREENDIDO',
								'CRACK EM QUILOGRAMAS (GRAMA) - APREENDIDO',
								'CRACK EM QUILOGRAMAS (QUILOGRAMA) - APREENDIDO',
								'CRACK EM QUILOGRAMAS (UNIDADE) - APREENDIDO',
								'ECSTASY / MDMA (UNIDADE) - APREENDIDO',
								'HAXIXE EM BOLA (DUZIA) - APREENDIDO',
								'HAXIXE EM BOLA (UNIDADE) - APREENDIDO',
								'HAXIXE EM TABLETE (QUILOGRAMA) (UNIDADE) - APREENDIDO',
								'LOLO (LITRO) - APREENDIDO',
								'LOLO (MILIGRAMA) - APREENDIDO',
								'LOLO (UNIDADE) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (CENTIMETRO) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (GRAMA) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (MILHEIRO) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (QUILOGRAMA) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (UNIDADE) - APREENDIDO',
								'OUTROS - COCAINA (CENTO) - APREENDIDO',
								'OUTROS - COCAINA (GRAMA) - APREENDIDO',
								'OUTROS - COCAINA (UNIDADE) - APREENDIDO',
								'OUTROS - CRACK (UNIDADE) - APREENDIDO',
								'OUTROS - HAXIXE (UNIDADE) - APREENDIDO',
								'OUTROS - LSD (UNIDADE) - APREENDIDO',
								'OUTROS - MACONHA (GRAMA) - APREENDIDO',
								'OUTROS - MACONHA (QUILOGRAMA) - APREENDIDO',
								'OUTROS - MACONHA (UNIDADE) - APREENDIDO',
								'PAPELOTES DE COCAINA (DUZIA) - APREENDIDO',
								'PAPELOTES DE COCAINA (GRAMA) - APREENDIDO',
								'PAPELOTES DE COCAINA (UNIDADE) - APREENDIDO',
								'PASTA DE COCAINA (GRAMA) - APREENDIDO',
								'PASTA DE COCAINA (UNIDADE) - APREENDIDO',
								'PLANTACAO (PE) DE MACONHA (UNIDADE) - APREENDIDO',
								'SEMENTE DE MACONHA (GRAMA) - APREENDIDO',
								'SEMENTE DE MACONHA (UNIDADE) - APREENDIDO'

				)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
		
			OR
		####### COND2.6 #######
        SUM(distinct(
		CASE
			WHEN p.descricao IN ('AUTOMOVEL - APREENDIDO',
								'AUTOMOVEL - RECUPERADO',
								'CAMINHAO - APREENDIDO',
								'CAMINHAO - RECUPERADO',
								'CAMINHAO/TRATOR - APREENDIDO',
								'CAMINHAO/TRATOR - RECUPERADO',
								'CAMINHONETE - APREENDIDO',
								'CAMINHONETE - RECUPERADO',
								'CAMIONETA - APREENDIDO',
								'CAMIONETA - RECUPERADO',
								'CICLOMOTOR - APREENDIDO',
								'CICLOMOTOR - RECUPERADO',
								'MICROONIBUS - APREENDIDO',
								'MICROONIBUS - RECUPERADO',
								'MOTOCICLETA - APREENDIDO',
								'MOTOCICLETA - RECUPERADO',
								'MOTONETA - APREENDIDO',
								'MOTONETA - RECUPERADO',
								'ONIBUS - APREENDIDO',
								'ONIBUS - RECUPERADO',
								'OUTROS - TIPOS DE VEICULO - APREENDIDO',
								'OUTROS - TIPOS DE VEICULO  - RECUPERADO',
								'REBOQUE - APREENDIDO',
								'REBOQUE - RECUPERADO',
								'TRATOR DE RODAS - RECUPERADO',
								'UTILITARIO (TIPO DE VEICULO) - APREENDIDO'

				)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1	
        
        ) ) ####### END COND2 #######
       
       
	then 1 -- OCUPACAO DE PONTOS CRITICOS
    
    
    when
		(
				NATCODIGO = 'Y04012' -- LEI SECA
            AND 
				(count(distinct(e.num_matricula)) >=2)
			AND        
				(timediff(concat(r.DTA_TERMINO, ' ', r.HRA_TERMINO), concat(r.DTA_INICIO, ' ', r.HRA_INICIO))) >= '00:30:00.000000'
            AND
				(count(distinct(v.NUM_PREFIXO))>=1)
            AND            
				(
						(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de pessoas abordadas' THEN p.quantidade ELSE 0 END)) >= 3)
					OR 
						(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de veiculos fiscalizados' THEN p.quantidade ELSE 0 END)) >= 3)
					OR 
						(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de pessoas que sopraram o etilometro' THEN p.quantidade ELSE 0 END)) >= 3)	
                )
			AND
		####### COND2 #######		
        (
			####### COND2.1 #######
		SUM(distinct(
			CASE
			WHEN p.descricao IN ('FLAGRANTE DE ATO INFRACIONAL (AUTOR)',
								'FLAGRANTE DE ATO INFRACIONAL (CO-AUTOR)',
								'FLAGRANTE DE ATO INFRACIONAL (CONDUTOR DO VEICULO)',
								'FLAGRANTE DE CRIME / CONTRAVEN (AUTOR)',
								'FLAGRANTE DE CRIME / CONTRAVEN (CO-AUTOR)',
								'FLAGRANTE DE CRIME / CONTRAVEN (CONDUTOR DO VEICULO)',
								'MANDADO JUDICIAL (AUTOR)',
								'OUTRAS - PRISAO / APREENSAO (AUTOR)',
								'OUTRAS - PRISAO / APREENSAO (CO-AUTOR)',
								'OUTRAS - PRISAO / APREENSAO (CONDUTOR DO VEICULO)',
						
                        
                        'RECAPTURA (AUTOR)')
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
            
			OR
            
		####### COND2.2 #######
        SUM(distinct(
			CASE
			WHEN p.descricao IN ('ARMAS DE FOGO DISSIMULADAS (USO RESTRITO) - APREENDIDO',
								'CARABINA / RIFLE - APREENDIDO',
								'ESPINGARDA / ESCOPETA - APREENDIDO',
								'ESPINGARDA POLVEIRA - APREENDIDO',
								'GARRUCHA - APREENDIDO',
								'GARRUCHA - RECOLHIDO',
								'METRALHADORA (USO RESTRITO) - APREENDIDO',
								'PISTOLA - APREENDIDO',
								'PISTOLETE (CALIBRE DE ESPINGARDA) - APREENDIDO',
								'REVOLVER - APREENDIDO',
								'SUBMETRALHADORA (USO RESTRITO) - APREENDIDO'
)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
		
			OR
            
		####### COND2.2 #######
		SUM(distinct(
		CASE
			WHEN p.descricao IN ('CARTUCHO INTACTO (MUNICAO) DE ARMA DE FOGO DE (UNIDADE) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE ARMA DE FOGO DE (DUZIA) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE ARMA DE FOGO DE (CENTO) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE CALIBRE RESTRIT (UNIDADE) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE CALIBRE RESTRIT (DUZIA) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE CALIBRE RESTRIT (CENTO) - APREENDIDO',
								'CARTUCHO VAZIO DE MUNICAO DE USO RESTRITO (UNIDADE) - APREENDIDO',
								'CARTUCHO VAZIO DE MUNICAO DE USO RESTRITO (DUZIA) - APREENDIDO',
								'CARTUCHOS VAZIOS, SEMI-CARREGADOS (PERMITIDO) (UNIDADE) - APREENDIDO',
								'MUNICAO - DEMAIS SUBSTANCIAS, PRODUTOS SUJEIT (UNIDADE) - APREENDIDO'

)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
		
			OR
            
		####### COND2.3 #######
        SUM(distinct(
		CASE
			WHEN p.descricao IN ('ARTEFATO EXPLOSIVO / BOMBA EXPLOSIVA / ETC (UNIDADE) - APREENDIDO',
								'MUNICAO QUIMICA, EXPLOSIVA OU FULMIGENA(RESTR (UNIDADE) - APREENDIDO',
								'OUTROS  - EXPLOSIVOS / MUNICOES / TIRO ESPORT (UNIDADE) - APREENDIDO'


				)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
		
			OR
        ####### COND2.4 #######    
		SUM(distinct(
		CASE
			WHEN p.descricao IN ('COLETES CONTRA ARMAS DE FOGO DE USO PERMITIDO (UNIDADE) - APREENDIDO',
								'COLETES CONTRA ARMAS DE FOGO DE USO RESTRITO (UNIDADE) - APREENDIDO'
				)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
        
			OR
        ####### COND2.5 #######
        SUM(distinct(
		CASE
			WHEN p.descricao IN ('BUCHA DE MACONHA (CENTO) - APREENDIDO',
								'BUCHA DE MACONHA (DUZIA) - APREENDIDO',
								'BUCHA DE MACONHA (GRAMA) - APREENDIDO',
								'BUCHA DE MACONHA (MILHEIRO) - APREENDIDO',
								'BUCHA DE MACONHA (UNIDADE) - APREENDIDO',
								'CIGARRO DE MACONHA (UNIDADE) - APREENDIDO',
								'COCAINA EM PO (CENTO) - APREENDIDO',
								'COCAINA EM PO (GRAMA) - APREENDIDO',
								'COCAINA EM PO (UNIDADE) - APREENDIDO',
								'CRACK EM PEDRAS (CENTO) - APREENDIDO',
								'CRACK EM PEDRAS (DUZIA) - APREENDIDO',
								'CRACK EM PEDRAS (GRAMA) - APREENDIDO',
								'CRACK EM PEDRAS (UNIDADE) - APREENDIDO',
								'CRACK EM QUILOGRAMAS (GRAMA) - APREENDIDO',
								'CRACK EM QUILOGRAMAS (QUILOGRAMA) - APREENDIDO',
								'CRACK EM QUILOGRAMAS (UNIDADE) - APREENDIDO',
								'ECSTASY / MDMA (UNIDADE) - APREENDIDO',
								'HAXIXE EM BOLA (DUZIA) - APREENDIDO',
								'HAXIXE EM BOLA (UNIDADE) - APREENDIDO',
								'HAXIXE EM TABLETE (QUILOGRAMA) (UNIDADE) - APREENDIDO',
								'LOLO (LITRO) - APREENDIDO',
								'LOLO (MILIGRAMA) - APREENDIDO',
								'LOLO (UNIDADE) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (CENTIMETRO) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (GRAMA) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (MILHEIRO) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (QUILOGRAMA) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (UNIDADE) - APREENDIDO',
								'OUTROS - COCAINA (CENTO) - APREENDIDO',
								'OUTROS - COCAINA (GRAMA) - APREENDIDO',
								'OUTROS - COCAINA (UNIDADE) - APREENDIDO',
								'OUTROS - CRACK (UNIDADE) - APREENDIDO',
								'OUTROS - HAXIXE (UNIDADE) - APREENDIDO',
								'OUTROS - LSD (UNIDADE) - APREENDIDO',
								'OUTROS - MACONHA (GRAMA) - APREENDIDO',
								'OUTROS - MACONHA (QUILOGRAMA) - APREENDIDO',
								'OUTROS - MACONHA (UNIDADE) - APREENDIDO',
								'PAPELOTES DE COCAINA (DUZIA) - APREENDIDO',
								'PAPELOTES DE COCAINA (GRAMA) - APREENDIDO',
								'PAPELOTES DE COCAINA (UNIDADE) - APREENDIDO',
								'PASTA DE COCAINA (GRAMA) - APREENDIDO',
								'PASTA DE COCAINA (UNIDADE) - APREENDIDO',
								'PLANTACAO (PE) DE MACONHA (UNIDADE) - APREENDIDO',
								'SEMENTE DE MACONHA (GRAMA) - APREENDIDO',
								'SEMENTE DE MACONHA (UNIDADE) - APREENDIDO'

				)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
		
			OR
		####### COND2.6 #######
        SUM(distinct(
		CASE
			WHEN p.descricao IN ('AUTOMOVEL - APREENDIDO',
								'AUTOMOVEL - RECUPERADO',
								'CAMINHAO - APREENDIDO',
								'CAMINHAO - RECUPERADO',
								'CAMINHAO/TRATOR - APREENDIDO',
								'CAMINHAO/TRATOR - RECUPERADO',
								'CAMINHONETE - APREENDIDO',
								'CAMINHONETE - RECUPERADO',
								'CAMIONETA - APREENDIDO',
								'CAMIONETA - RECUPERADO',
								'CICLOMOTOR - APREENDIDO',
								'CICLOMOTOR - RECUPERADO',
								'MICROONIBUS - APREENDIDO',
								'MICROONIBUS - RECUPERADO',
								'MOTOCICLETA - APREENDIDO',
								'MOTOCICLETA - RECUPERADO',
								'MOTONETA - APREENDIDO',
								'MOTONETA - RECUPERADO',
								'ONIBUS - APREENDIDO',
								'ONIBUS - RECUPERADO',
								'OUTROS - TIPOS DE VEICULO - APREENDIDO',
								'OUTROS - TIPOS DE VEICULO  - RECUPERADO',
								'REBOQUE - APREENDIDO',
								'REBOQUE - RECUPERADO',
								'TRATOR DE RODAS - RECUPERADO',
								'UTILITARIO (TIPO DE VEICULO) - APREENDIDO'

				)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1	
        
        ) ) ####### END COND2 #######
       
       
	then 1 -- LEI SECA
    
    
	else 0    
    
END AS EFETIVIDADE_TOTAL
			
            
			#################################################################################
								-- FIM CONDIÇÕES EFETIVIDADE TOTAL
            #################################################################################
            
            
		FROM
			tbl_rat AS r
					
		LEFT OUTER JOIN
			tbl_rat_produtividade AS p
		ON p.RATNUM_ATIVIDADE = r.RATNUM_ATIVIDADE

		LEFT OUTER JOIN
			tbl_rat_efetivos AS e
		ON
			r.RATNUM_ATIVIDADE = e.NUM_ATIVIDADE
			
		LEFT OUTER JOIN
			tbl_rat_viaturas AS v
		ON
			v.NUM_ATIVIDADE = r.RATNUM_ATIVIDADE
						  
		WHERE r.municipio IN 
        
							('IGARATINGA',
							'MARAVILHAS',
							'ONCA DO PITANGUI',
							'PAPAGAIOS',
							'PARA DE MINAS',
							'PEQUI',
							'SAO JOSE DA VARGINHA',
							'CARMO DO CAJURU',
							'CLAUDIO',
							'DIVINOPOLIS',
							'ITATIAIUCU',
							'ITAUNA',
							'SAO GONCALO DO PARA',
							'ARAUJOS',
							'CONCEICAO DO PARA',
							'LEANDRO FERREIRA',
							'NOVA SERRANA',
							'PERDIGAO',
							'PITANGUI',
							'ARCOS',
							'BAMBUI',
							'CAMACHO',
							'CORREGO FUNDO',
							'FORMIGA',
							'IGUATAMA',
							'ITAPECERICA',
							'MEDEIROS',
							'PAINS',
							'PIMENTA',
							'SAO SEBASTIAO DO OESTE',
							'TAPIRAI',
							'ABAETE',
							'BIQUINHAS',
							'BOM DESPACHO',
							'CEDRO DO ABAETE',
							'CORREGO DANTA',
							'DORES DO INDAIA',
							'ESTRELA DO INDAIA',
							'JAPARAIBA',
							'LAGOA DA PRATA',
							'LUZ',
							'MARTINHO CAMPOS',
							'MOEMA',
							'MORADA NOVA DE MINAS',
							'PAINEIRAS',
							'PEDRA DO INDAIA',
							'POMPEU',
							'QUARTEL GERAL',
							'SANTO ANTONIO DO MONTE',
							'SERRA DA SAUDADE')
        
		AND r.DTA_INICIO between '2019-01-01' and '2019-05-31'
        AND NATCODIGO IN ('Y04012','Y07001', 'Y07003', 'Y07004', 'Y07005')
        -- AND FNC_UEOP(MUNICIPIO) = '23º BPM'
		AND MUNICIPIO IN ('DIVINOPOLIS', 'CARMO DO CAJURU', 'CLAUDIO', 'SAO GONCALO DO PARA', 'ITAUNA', 'ITATIAIUCU')
        GROUP BY RATNUM_ATIVIDADE