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
			(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de pessoas abordadas' THEN p.quantidade ELSE 0 END)) >= 5)
			OR 
            (SUM(DISTINCT(CASE WHEN p.descricao ='Qde de veiculos fiscalizados' THEN p.quantidade ELSE 0 END)) >= 2)
			
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
            AND (count(distinct(v.NUM_PREFIXO))>=1)
            AND            
			(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de pessoas abordadas' THEN p.quantidade ELSE 0 END)) >= 5)
			OR 
            (SUM(DISTINCT(CASE WHEN p.descricao ='Qde de veiculos fiscalizados' THEN p.quantidade ELSE 0 END)) >= 2)
			OR 
            (SUM(DISTINCT(CASE WHEN p.descricao ='Qde de locais fiscalizados' THEN p.quantidade ELSE 0 END)) >= 2)	
        )
	then 1 -- INCURSAO EM ZQC
       
       when
		(
			NATCODIGO = 'Y07004' -- CERCO BLOQUEIO
			           
            AND 
            (count(distinct(e.num_matricula)) >=3)
			AND (count(distinct(v.NUM_PREFIXO))>=2)
            AND            
			(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de pessoas abordadas' THEN p.quantidade ELSE 0 END)) >= 5)
			OR 
            (SUM(DISTINCT(CASE WHEN p.descricao ='Qde de veiculos fiscalizados' THEN p.quantidade ELSE 0 END)) >= 2)

        )
       
	then 1 -- CERCO BLOQUEIO
    
    when
		(
			NATCODIGO = 'Y07005' -- OCUPACAO DE PONTOS CRITICOS
			           
            AND 
            (count(distinct(e.num_matricula)) >=3)
			AND        
			(
				timediff(concat(r.DTA_TERMINO, ' ', r.HRA_TERMINO), concat(r.DTA_INICIO, ' ', r.HRA_INICIO))
			) >= '00:60:00.000000'
            AND (count(distinct(v.NUM_PREFIXO))>=1)
            AND            
			(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de pessoas abordadas' THEN p.quantidade ELSE 0 END)) >= 5)
			OR 
            (SUM(DISTINCT(CASE WHEN p.descricao ='Qde de veiculos fiscalizados' THEN p.quantidade ELSE 0 END)) >= 2)
			OR 
            (SUM(DISTINCT(CASE WHEN p.descricao ='Qde de locais fiscalizados' THEN p.quantidade ELSE 0 END)) >= 2)	
        )
	then 1 -- OCUPACAO DE PONTOS CRITICOS
    
	else 0
    
    
    END AS EFETIVIDADE
    
    
    
    

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
    
    and r.RATNUM_ATIVIDADE IN ('2019-000048589-001', '2019-001060931-001', '2019-011694839-001', '2019-000012090-001', '2019-000030702-001')
	GROUP BY RATNUM_ATIVIDADE;
;