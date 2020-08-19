SELECT
	r.RATNUM_ATIVIDADE,
    r.NATCODIGO,    
    concat(r.DTA_INICIO, ' ', r.HRA_INICIO) as DH_INICIO,
    concat(r.DTA_TERMINO, ' ', r.HRA_TERMINO) as DH_FIM,
    (
		timediff(concat(r.DTA_TERMINO, ' ', r.HRA_TERMINO), concat(r.DTA_INICIO, ' ', r.HRA_INICIO))
    ) as TEMPO_EXEC,    
    -- count(e.num_matricula) as EFETIVO, -- errado
    count(distinct(e.num_matricula)) as EFETIVO,  -- jeito correto
    count(distinct(v.NUM_PREFIXO)) as VIATURAS,
    
    SUM(distinct(
		CASE
			WHEN p.descricao ='Qde de pessoas abordadas'
			THEN p.QUANTIDADE
			ELSE 0
		END)
	) AS ABORDADOS,
    
    SUM(distinct(
		CASE
			WHEN p.descricao ='Qde de veiculos fiscalizados'
			THEN p.QUANTIDADE
			ELSE 0
		END) 
    ) AS VEIC_FISCALIZADOS,
    
    SUM(DISTINCT(
		CASE
			WHEN p.descricao ='Qde de locais fiscalizados'
			THEN p.QUANTIDADE
			ELSE 0
		END)
    ) AS LOCAIS_FISCALIZADOS,
	
 -- --------------------------------------------------------------------------------------------------------------------------INICIO EFICIENCIA E EFICACIA 
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
    
	else 0    
    
    END AS EFICIENCIA_EFICACIA,
 -- --------------------------------------------------------------------------------------------------------------------------FIM EFICIENCIA E EFICACIA   
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
	) AS ARMAS_FOGO,
    
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
	) AS MUNICOES,
    
    SUM(distinct(
		CASE
			WHEN p.descricao IN ('ARTEFATO EXPLOSIVO / BOMBA EXPLOSIVA / ETC (UNIDADE) - APREENDIDO',
								'MUNICAO QUIMICA, EXPLOSIVA OU FULMIGENA(RESTR (UNIDADE) - APREENDIDO',
								'OUTROS - EXPLOSIVOS / MUNICOES / TIRO ESPORT (UNIDADE) - APREENDIDO'


				)
			THEN p.QUANTIDADE
			ELSE 0
		END)
	) AS ARTEFATOS_EXPLOSIVOS, 
    
    SUM(distinct(
		CASE
			WHEN p.descricao IN ('COLETES CONTRA ARMAS DE FOGO DE USO PERMITIDO (UNIDADE) - APREENDIDO',
								'COLETES CONTRA ARMAS DE FOGO DE USO RESTRITO (UNIDADE) - APREENDIDO'
				)
			THEN p.QUANTIDADE
			ELSE 0
		END)
	) AS COLETES, 
-- ---------------------------------------------------------------------------------------------------------------------------------- INICIO CONDIÇÕES EFETIVIDADE
	case -- case EFETIVIDADE
	when
		(
			-- NATCODIGO = 'Y07001'
			           
            -- AND 
            
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
        SUM(distinct(
		CASE
			WHEN p.descricao IN ('ARTEFATO EXPLOSIVO / BOMBA EXPLOSIVA / ETC (UNIDADE) - APREENDIDO',
								'MUNICAO QUIMICA, EXPLOSIVA OU FULMIGENA(RESTR (UNIDADE) - APREENDIDO',
								'OUTROS - EXPLOSIVOS / MUNICOES / TIRO ESPORT (UNIDADE) - APREENDIDO'


				)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
		OR
		SUM(distinct(
		CASE
			WHEN p.descricao IN ('COLETES CONTRA ARMAS DE FOGO DE USO PERMITIDO (UNIDADE) - APREENDIDO',
								'COLETES CONTRA ARMAS DE FOGO DE USO RESTRITO (UNIDADE) - APREENDIDO'
				)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
        			
        )
       
	then 1 -- EFETIVIDADE
	   
    
	else 0
    
    
    END AS EFETIVIDADE
      
    
    
-- -----------------------------------------------------------------------------------------------------------------------------------FIM EFETIVIDADE
    
    
    FROM
	
    tbl_rat AS r
            
    LEFT OUTER JOIN tbl_rat_produtividade AS p
    ON p.RATNUM_ATIVIDADE = r.RATNUM_ATIVIDADE
    
    LEFT OUTER JOIN tbl_rat_efetivo AS e
	ON r.RATNUM_ATIVIDADE = e.NUM_ATIVIDADE
	
	LEFT OUTER JOIN tbl_rat_viaturas AS v
	ON v.NUM_ATIVIDADE = r.RATNUM_ATIVIDADE
                  
	WHERE r.municipio = 'DIVINOPOLIS'
    
    and DTA_INICIO between '2019-01-01' and '2019-12-31'
    AND NATCODIGO IN ('Y07001', 'Y07003', 'Y07004', 'Y07005')
    
    -- and r.RATNUM_ATIVIDADE IN ('2019-000048589-001', '2019-001060931-001', '2019-011694839-001', '2019-000012090-001', '2019-000030702-001')
	GROUP BY RATNUM_ATIVIDADE;
;