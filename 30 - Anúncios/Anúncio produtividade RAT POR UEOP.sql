select res.UEOP, res.COMPANHIA, res.NOM_UNID_RESPONSAVEL, count(RATNUM_ATIVIDADE) AS OPERACOES,
sum(ABORDADOS) as ABORDADOS,

	case
		when NATCODIGO in ('Y01001') 
		then sum(veic_fisc)
		       
		else (0)
	end	as TAXI,
sum(if((NATCODIGO) = 'Y01001', 1, 0)) as 'OPER_TAXI',
-- -------------------------------------------------------
    case
		when NATCODIGO in ('Y01002') 
		then sum(veic_fisc)
		       
		else (0)
	end	as ONIBUS,
sum(if((NATCODIGO) = 'Y01002', 1, 0)) as 'OPER_ONIBUS',
-- --------------------------------------------------------	
    case
		when NATCODIGO in ('Y01003') 
		then sum('Qde de motocicletas fiscalizadas')
		       
		else (0)
	end	as MOTO,
sum(if((NATCODIGO) = 'Y01003', 1, 0)) as 'OPER_MOTO',
-- --------------------------------------------------------	
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
		then sum(veic_fisc)
		       
		else (0)
	end) AS RESULTADO
    
   


 FROM tbl_rat_resultados as res
		LEFT JOIN tbl_recursos_humanos as rh
        ON right(res.DIGITADOR, 7) = rh.MATRICULA
        
--         LEFT JOIN tbl_sub_unidades as sub
--         ON res.NOM_UNID_RESPONSAVEL = sub.NOM_UNID_RESPONSAVEL


where DTA_INICIO between '2019-04-15' and '2019-04-20'

and NATCODIGO in ('Y01001', 'Y01002', 'Y01003')
-- and NATCODIGO in ('Y01001')
-- AND res.COMPANHIA NOT IN ('7ª CIA PRV', '7 ª CIA PM IND PE', '7ª RPM')
group by res.COMPANHIA with rollup
-- order by RESULTADO DESC
