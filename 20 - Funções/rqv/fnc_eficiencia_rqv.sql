DELIMITER $$
CREATE FUNCTION fnc_eficiencia_rqv (NATCODIGO VARCHAR(6),  NUM_MATRICULA VARCHAR (15), DTA_TERMINO DATE, HRA_TERMINO TIME(50), DTA_INICIO DATE, HRA_INICIO TIME, NUM_PREFIXO VARCHAR(15))
RETURNS varchar (1)
BEGIN
	RETURN
		(case -- case EFICIENCIA
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
    
	else 0    
    
    END) -- case 1;

            ;
END$$
DELIMITER ;