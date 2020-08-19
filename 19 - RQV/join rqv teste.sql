SELECT
	r.RATNUM_ATIVIDADE,
    r.NATCODIGO,    
    concat(r.DTA_INICIO, ' ', r.HRA_INICIO) as DH_INICIO,
    concat(r.DTA_TERMINO, ' ', r.HRA_TERMINO) as DH_FIM,
    (
		timediff(concat(r.DTA_TERMINO, ' ', r.HRA_TERMINO), concat(r.DTA_INICIO, ' ', r.HRA_INICIO))
    ) as TEMPO_EXEC,    
    count(e.num_matricula) as EFETIVO,
    count(v.NUM_ATIVIDADE) as VIATURAS,
    
    SUM(
		CASE
			WHEN p.descricao ='Qde de pessoas abordadas'
			THEN p.QUANTIDADE
			ELSE 0
		END
	) AS ABORDADOS,
    
    SUM(
		CASE
			WHEN p.descricao ='Qde de veiculos fiscalizados'
			THEN p.QUANTIDADE
			ELSE 0
		END 
    ) AS VEIC_FISCALIZADOS,
    
    SUM(
		CASE
			WHEN p.descricao ='Qde de locais fiscalizados'
			THEN p.QUANTIDADE
			ELSE 0
		END
    ) AS LOCAIS_FISCALIZADOS
	

	FROM
	
    tbl_rat AS r
            
    LEFT OUTER JOIN tbl_rat_produtividade AS p
    ON p.RATNUM_ATIVIDADE = r.RATNUM_ATIVIDADE
    
    LEFT OUTER JOIN tbl_rat_efetivo AS e
	ON r.RATNUM_ATIVIDADE = e.NUM_ATIVIDADE
	
	LEFT OUTER JOIN tbl_rat_viaturas AS v
	ON v.NUM_ATIVIDADE = r.RATNUM_ATIVIDADE
                  
	WHERE r.municipio = 'DIVINOPOLIS'
	GROUP BY RATNUM_ATIVIDADE;
;