select res.UEOP, sub.COMPANHIA, res.NOM_UNID_RESPONSAVEL, count(RATNUM_ATIVIDADE) AS OPERACOES,
sum(ABORDADOS) as ABORDADOS,

	case
		when NATCODIGO in ('Y01001') 
		then sum(veic_fisc)
		       
		else (0)
	end	as TAXI,
sum(if((NATCODIGO) = 'Y01001', 1, 0)) as 'OPER_TAXI',
	case
		when NATCODIGO in ('Y01002') 
		then sum(veic_fisc)
		       
		else (0)
	end	as ONIBUS,
sum(if((NATCODIGO) = 'Y01002', 1, 0)) as 'OPER_ONIBUS',
	case
		when NATCODIGO in ('Y01003') 
		then sum(veic_fisc)
		       
		else (0)
	end	as MOTO,
sum(if((NATCODIGO) = 'Y01003', 1, 0)) as 'OPER_MOTO',
	
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
    
--     case
-- 		when rh.UNINDADE_SERVICO in ('3 PEL/53 CIA PM/23 BPM/7 RPM',
-- 									'2 PEL/53 CIA PM/23 BPM/7 RPM',
-- 									'2 PEL/53 CIA PM/23 BPM/7 RPM',
-- 									'1 PEL/53 CIA PM/23 BPM/7 RPM',
-- 									'3 PEL PM/53 CIA PM/23 BPM',
-- 									'2 PEL/53 CIA PM/23 BPM/7 RPM',
-- 									'2 PEL/53 CIA PM/23 BPM/7 RPM',
-- 									'1 PEL/53 CIA PM/23 BPM/7 RPM',
-- 									'3 PEL/53 CIA PM/23 BPM/7 RPM',
-- 									'3 PEL PM/53 CIA PM/23 BPM',
-- 									'3 PEL/53 CIA PM/23 BPM/7 RPM',
-- 									'2 PEL/53 CIA PM/23 BPM/7 RPM',
-- 									'1 PEL/53 CIA PM/23 BPM/7 RPM',
-- 									'2 PEL/53 CIA PM/23 BPM/7 RPM',
-- 									'2 PEL PM/53 CIA PM/23 BPM',
-- 									'2 PEL/53 CIA PM/23 BPM/7 RPM',
-- 									'3 PEL/53 CIA PM/23 BPM/7 RPM',
-- 									'3 PEL/53 CIA PM/23 BPM/7 RPM',
-- 									'3 PEL/53 CIA PM/23 BPM/7 RPM',
-- 									'2 PEL/53 CIA PM/23 BPM/7 RPM',
-- 									'2 PEL/53 CIA PM/23 BPM/7 RPM',
-- 									'3 PEL/53 CIA PM/23 BPM/7 RPM'
-- ) 
-- 		then '53ª Cia PM'
--         
--         when rh.UNINDADE_SERVICO in ('2 PEL TM/240 CIA TM/23 BPM/7 RPM',
-- 									'2 PEL TM/240 CIA TM/23 BPM',
-- 									'2 PEL TM/240 CIA TM/23 BPM'
-- 
-- ) 
-- 		then '240ª Cia PM TM'
--         
--         when rh.UNINDADE_SERVICO in ('1 PEL/139 CIA PM/23 BPM/7 RPM',
-- 									'2 PEL/139 CIA PM/23 BPM/7 RPM',
-- 									'2 PEL/139 CIA PM/23 BPM/7 RPM',
-- 									'1 GP/3 PEL PM/139 CIA PM/23 BPM',
-- 									'1 GP/3 PEL/139 CIA PM/23 BPM/7 RPM',
-- 									'1 GP/3 PEL PM/139 CIA PM/23 BPM',
-- 									'1 GP/3 PEL/139 CIA PM/23 BPM/7 RPM',
-- 									'1 GP/3 PEL PM/139 CIA PM/23 BPM',
-- 									'1 PEL/139 CIA PM/23 BPM/7 RPM',
-- 									'1 GP/3 PEL/139 CIA PM/23 BPM/7 RPM',
-- 									'1 PEL/139 CIA PM/23 BPM/7 RPM',
-- 									'1 GP/3 PEL/139 CIA PM/23 BPM/7 RPM',
-- 									'1 GP/3 PEL/139 CIA PM/23 BPM/7 RPM',
-- 									'1 GP/3 PEL/139 CIA PM/23 BPM/7 RPM',
-- 									'1 GP/3 PEL/139 CIA PM/23 BPM/7 RPM',
-- 									'1 GP/3 PEL/139 CIA PM/23 BPM/7 RPM',
-- 									'2 PEL/139 CIA PM/23 BPM/7 RPM',
-- 									'1 GP/3 PEL/139 CIA PM/23 BPM/7 RPM',
-- 									'1 GP/3 PEL/139 CIA PM/23 BPM/7 RPM',
-- 									'2 PEL PM/139 CIA PM/23 BPM',
-- 									'1 PEL/139 CIA PM/23 BPM/7 RPM',
-- 									'1 PEL/139 CIA PM/23 BPM/7 RPM',
-- 									'2 PEL/139 CIA PM/23 BPM/7 RPM'
-- 
-- ) 
-- 		then '139ª Cia PM' 
--         
--         
--         
--         when rh.UNINDADE_SERVICO in ('3 PEL/51 CIA PM/23 BPM/7 RPM',
-- 									'1 PEL/51 CIA PM/23 BPM/7 RPM',
-- 									'3 PEL/51 CIA PM/23 BPM/7 RPM',
-- 									'3 PEL/51 CIA PM/23 BPM/7 RPM',
-- 									'2 PEL/51 CIA PM/23 BPM',
-- 									'1 PEL/51 CIA PM/23 BPM/7 RPM',
-- 									'SGP/2 GP/3 PEL/51 CIA PM/23 BPM/7 RPM',
-- 									'2 GP/3 PEL/51 CIA PM/23 BPM/7 RPM',
--                                     '2 PEL/5 CIA PM IND/7 RPM',
-- 									'1 PEL PM/5 CIA PM IND',
-- 									'1 PEL PM/5 CIA PM IND',
-- 									'2 PEL PM/5 CIA PM IND/7 RPM',
-- 									'1 PEL/5 CIA PM IND/7 RPM',
-- 									'2 PEL PM/5 CIA PM IND/7 RPM',
-- 									'1 PEL PM/5 CIA PM IND',
-- 									'PEL TM/5 CIA PM IND/7 RPM',
-- 									'1 PEL PM/5 CIA PM IND',
-- 									'PEL TM/5 CIA PM IND/7 RPM',
-- 									'2 PEL PM/5 CIA PM IND/7 RPM',
-- 									'PEL TM/5 CIA PM IND',
-- 									'2 PEL PM/5 CIA PM IND/7 RPM',
-- 									'2 PEL PM/5 CIA PM IND/7 RPM',
-- 									'PEL TM/5 CIA PM IND',
-- 									'1 PEL PM/5 CIA PM IND'
-- ) 
-- 		then '51ª Cia PM'
--         
--         when rh.UNINDADE_SERVICO in ('1 PEL/142 CIA PM/23 BPM/7 RPM',
-- 									'1 PEL/142 CIA PM/23 BPM/7 RPM',
-- 									'1 PEL/142 CIA PM/23 BPM/7 RPM',
-- 									'1 GP/3 PEL/142 CIA PM/23 BPM/7 RPM',
-- 									'1 GP/3 PEL PM/142 CIA PM/23 BPM',
-- 									'1 GP/3 PEL PM/142 CIA PM/23 BPM',
-- 									'2 PEL/142 CIA PM/23 BPM/7 RPM',
-- 									'2 PEL/142 CIA PM/23 BPM/7 RPM',
-- 									'1 GP/3 PEL/142 CIA PM/23 BPM/7 RPM',
-- 									'2 PEL/142 CIA PM/23 BPM/7 RPM',
-- 									'2 PEL/142 CIA PM/23 BPM/7 RPM',
-- 									'1 GP/3 PEL PM/142 CIA PM/23 BPM',
-- 									'2 GP/3 PEL/142 CIA PM/23 BPM/7 RPM',
-- 									'2 GP/3 PEL PM/142 CIA PM/23 BPM',
-- 									'1 PEL/142 CIA PM/23 BPM/7 RPM',
-- 									'2 GP/3 PEL PM/142 CIA PM/23 BPM',
-- 									'1 PEL/142 CIA PM/23 BPM/7 RPM',
-- 									'1 GP/3 PEL PM/142 CIA PM/23 BPM',
-- 									'2 GP/3 PEL/142 CIA PM/23 BPM/7 RPM',
-- 									'1 PEL PM/142 CIA PM/23 BPM',
-- 									'1 GP/3 PEL/142 CIA PM/23 BPM/7 RPM',
-- 									'SGP/1 GP/3 PEL/142 CIA/23 BPM/7 RPM',
-- 									'1 PEL PM/142 CIA PM/23 BPM',
-- 									'3 PEL/142 CIA PM/23 BPM/7 RPM',
-- 									'1 PEL/142 CIA PM/23 BPM/7 RPM',
-- 									'2 PEL/142 CIA PM/23 BPM/7 RPM',
-- 									'1 GP/3 PEL/142 CIA PM/23 BPM/7 RPM',
-- 									'2 PEL/142 CIA PM/23 BPM/7 RPM',
-- 									'2 GP/3 PEL/142 CIA PM/23 BPM/7 RPM',
-- 									'1 PEL/142 CIA PM/23 BPM/7 RPM',
-- 									'2 PEL/142 CIA PM/23 BPM/7 RPM',
-- 									'2 PEL PM/142 CIA PM/23 BPM'
-- 
-- 
-- ) 
-- 		then '142ª Cia PM'
--         
-- 		when rh.UNINDADE_SERVICO in ('PEL GER/7 CIA PM IND PE/7 RPM',
-- 							'GP PCHQ/PEL PCHQ/7 CIA PM IND PE/7 RPM',
-- 							'PEL GER/7 CIA PM IND PE/7 RPM',
-- 							'GP PCHQ/PEL PCHQ/7 CIA PM IND PE/7 RPM',
-- 							'PEL GER/7 CIA PM IND PE/7 RPM'
-- 
-- 
-- ) 
-- 		then '7ª Cia Ind PE'
--         
-- 		when rh.UNINDADE_SERVICO in ('2 GP/1 PEL PM RV/7 CIA PM IND MAT',
-- 									'1 GP/1 PEL RV/7 CIA PM IND MAT/7 RPM',
-- 									'2 GP/1 PEL PM RV/7 CIA PM IND MAT',
-- 									'2 GP/1 PEL RV/7 CIA PM RV/BPMRV/CPRV',
-- 									'1 GP/1 PEL PM RV/7 CIA PM IND MAT',
-- 									'1 GP/1 PEL PM RV/7 CIA PM IND MAT',
-- 									'1 GP/1 PEL RV/7 CIA PM RV/BPMRV/CPRV',
-- 									'1 GP/1 PEL PM RV/7 CIA PM IND MAT'
-- 
-- 
-- ) 
-- 		then '7ª Cia RV'
-- 		when rh.UNINDADE_SERVICO in ('SADM/EM/23 BPM/7 RPM',
-- 									'SADM/EM/23 BPM/7 RPM'
-- 
-- 
-- 
-- ) 
-- 		then 'ADM 23º BPM' 
--         
-- 		else (0)
-- 	end	as Companhia
--     


 FROM tbl_rat_resultados as res
		LEFT JOIN tbl_recursos_humanos as rh
        ON right(res.DIGITADOR, 7) = rh.MATRICULA
        
        LEFT JOIN tbl_sub_unidades as sub
        ON res.NOM_UNID_RESPONSAVEL = sub.NOM_UNID_RESPONSAVEL


where DTA_INICIO between '2019-04-15' and '2019-04-20'

and NATCODIGO in ('Y01001', 'Y01002', 'Y01003')
-- and NATCODIGO in ('Y01001')
AND sub.COMPANHIA NOT IN ('7ª CIA PRV', '7 ª CIA PM IND PE', '7ª RPM')
group by sub.COMPANHIA with rollup
-- order by RESULTADO DESC
