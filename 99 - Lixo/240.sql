SELECT R.MUNICIPIO, R.NOM_UNID_RESPONSAVEL,
	r
    .RATNUM_ATIVIDADE,
    r.NATCODIGO,
    
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
    ) AS LOCAIS_FISCALIZADOS
	
 -- --------------------------------------------------------------------------------------------------------------------------INICIO EFICIENCIA E EFICACIA 



    FROM
	
    tbl_rat AS r
            
    LEFT OUTER JOIN tbl_rat_produtividade AS p
    ON p.RATNUM_ATIVIDADE = r.RATNUM_ATIVIDADE
    
    LEFT OUTER JOIN tbl_rat_efetivos AS e
	ON r.RATNUM_ATIVIDADE = e.NUM_ATIVIDADE
	
	LEFT OUTER JOIN tbl_rat_viaturas AS v
	ON v.NUM_ATIVIDADE = r.RATNUM_ATIVIDADE
                  
	WHERE r.municipio IN ('DIVINOPOLIS', 'CARMO DO CAJURU', 'CLAUDIO', 'SAO GONCALO DO PARA', 'ITAUNA', 'ITATIAIUCU')
    
    and DTA_INICIO between '2019-03-18' and '2019-03-27'
    AND NATCODIGO IN ('Y07001', 'Y01003')
    
    
    
	GROUP BY RATNUM_ATIVIDADE;
;

SELECT
	e.NUM_MATRICULA,
   --  SUM(distinct(
-- 		CASE
-- 			WHEN p.descricao ='Qde de pessoas abordadas'
-- 			THEN p.QUANTIDADE
-- 			ELSE 0
-- 		END)
-- 	) AS ABORDADOS,
   
    
    SUM(distinct(
		CASE
			WHEN p.descricao ='Qde de veiculos fiscalizados'
			THEN p.QUANTIDADE
			ELSE 0
		END) 
    ) AS VEIC_FISCALIZADOS
    


    FROM
	
    tbl_rat AS r
            
    LEFT OUTER JOIN tbl_rat_produtividade AS p
    ON p.RATNUM_ATIVIDADE = r.RATNUM_ATIVIDADE
    
    LEFT OUTER JOIN tbl_rat_efetivos AS e
	ON r.RATNUM_ATIVIDADE = e.NUM_ATIVIDADE
	
	LEFT OUTER JOIN tbl_rat_viaturas AS v
	ON v.NUM_ATIVIDADE = r.RATNUM_ATIVIDADE
                  
	WHERE r.municipio IN ('DIVINOPOLIS', 'CARMO DO CAJURU', 'CLAUDIO', 'SAO GONCALO DO PARA', 'ITAUNA', 'ITATIAIUCU')
    
    and DTA_INICIO between '2019-03-18' and '2019-03-27'
    AND NATCODIGO = 'Y07003'-- IN ('Y07001', 'Y07003')
    
    
    
	GROUP BY e.NUM_MATRICULA;
;


