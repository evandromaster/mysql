select NOM_UNID_RESPONSAVEL, rh.UNINDADE_SERVICO as LOTACAO,  right(DIGITADOR, 7) AS DIGITADOR,  rh.CARGO, rh.NOME,

sum(ABORDADOS) as ABORDADOS,

	case
		when NATCODIGO in ('Y01001') 
		then sum(veic_fisc)
		       
		else (0)
	end	as TAXI,

	case
		when NATCODIGO in ('Y01002') 
		then sum(veic_fisc)
		       
		else (0)
	end	as ONIBUS,

	case
		when NATCODIGO in ('Y01003') 
		then sum(veic_fisc) * 5
		       
		else (0)
	end	as MOTO,

	
    (case
		when NATCODIGO in ('Y01001') 
		then sum(veic_fisc)
		       
		else (0)
	end) +
    
	(case
		when NATCODIGO in ('Y01002') 
		then sum(veic_fisc)
		       
		else (0)
	end) +
    
	(case
		when NATCODIGO in ('Y01003') 
		then sum(veic_fisc) * 5
		       
		else (0)
	end) AS RESULTADO,
    
    
    
    case
		when rh.UNINDADE_SERVICO in ('Y01001') 
		then sum(veic_fisc)
		       
		else (0)
	end	as TAXI
    


 FROM tbl_rat_resultados as res
		LEFT JOIN tbl_recursos_humanos as rh
        ON right(res.DIGITADOR, 7) = rh.MATRICULA


where DTA_INICIO between '2019-04-15' and '2019-04-20'

and NATCODIGO in ('Y01001', 'Y01002', 'Y01003')
group by DIGITADOR
order by RESULTADO DESC
