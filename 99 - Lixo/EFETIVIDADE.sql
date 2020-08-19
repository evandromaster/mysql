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
        
        ) ) ####### END COND1 #######
        
        
        
        
        
       
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
    
	else 0    
    
END AS EFETIVIDADE,