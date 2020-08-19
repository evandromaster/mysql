SELECT 	
		MUNICIPIO,
        COMPANHIA,
        CIA_SEDE,
        -- NOM_UNID_RESPONSAVEL,
        count(*) as 'TOTAL_DE_REGISTROS',
		SUM(EFICIENCIA) AS EFICIENCIA,
        SUM(EFICIENCIA_EFICACIA) AS EFICIENCIA_EFICACIA,
        SUM(EFETIVIDADE_CONDICIONAL) AS EFETIVIDADE_CONDICIONAL,
        SUM(EFETIVIDADE_TOTAL) AS EFETIVIDADE_TOTAL
        
	
FROM
	gdo.tbl_rat_resultados_rqv

	WHERE 
    municipio IN ('DIVINOPOLIS', 'CARMO DO CAJURU', 'CLAUDIO', 'SAO GONCALO DO PARA', 'ITAUNA', 'ITATIAIUCU')
    
    AND DTA_INICIO between '2019-01-01' and '2019-03-31'
    AND NATCODIGO IN ('Y07001', 'Y07003', 'Y07004', 'Y07005')
	
AND NOM_UNID_RESPONSAVEL NOT IN ('1 GP/1 PEL RV/7 CIA PM IND MAT/7 RPM','1 PEL RV/7 CIA PM IND MAT/7 RPM','1 GP/1 PEL RV/7 CIA PM RV/BPMRV/CPRV', '3 GP/1 PEL MAMB/7 CIA PM MAMB/BPM MAMB', 
'3 PEL MAMB/7 CIA PM IND MAT/7 RPM','1 PEL MAMB/7 CIA PM MAMB/BPM MAMB', 'NUCLEO DE APOIO ADMINISTRATIVO E DE FISCALIZACAO','3 GP/1 PEL MAMB/7 CIA PM MAMB/BPM MAMB', '10BBM/1CIA/3PEL (DIVINOPOLIS)', 
'1 GP/1 PEL MAMB/7 CIA PM MAMB/BPM MAMB', 'REGIONAL OLIVEIRA', '1 GP/2 PEL MAMB/7 CIA PM IND MAT/7 RPM', '1 PEL RV/7 CIA PM RV/BPMRV/CPRV', '7 CIA PM MAMB/BPM MAMB/CPMAMB', '7 CIA PM RV/BPMRV/CPRV',
'NUCLEO ADMINISTRATIVO E DE FISCALIZACAO', '7 CIA PM IND MAT/7 RPM', '1 CIA ROTAM/BTL ROTAM/CPE', '7 CIA PM IND PE/7 RPM', 'COORDENADORIA OESTE - FORMIGA')
--     -- AND SETOR = 'ALTO GOIAS'
AND NOM_UNID_RESPONSAVEL LIKE '%240%'    
    group by CIA_SEDE with rollup

;
