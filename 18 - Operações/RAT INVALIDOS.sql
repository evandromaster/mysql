SELECT * FROM gdo.vw_valid_rat

where DTA_INICIO between '2018-01-01' and '2019-12-31'

AND MUNICIPIO ='DIVINOPOLIS'

and cia_base = 'other'
-- and NATCODIGO IN ('y07001', 'Y07003','Y07004','Y07005') 
AND NOM_UNID_RESPONSAVEL NOT IN ('1 GP/1 PEL RV/7 CIA PM IND MAT/7 RPM','1 PEL RV/7 CIA PM IND MAT/7 RPM','1 GP/1 PEL RV/7 CIA PM RV/BPMRV/CPRV', '3 GP/1 PEL MAMB/7 CIA PM MAMB/BPM MAMB', 
'3 PEL MAMB/7 CIA PM IND MAT/7 RPM','1 PEL MAMB/7 CIA PM MAMB/BPM MAMB', 'NUCLEO DE APOIO ADMINISTRATIVO E DE FISCALIZACAO','3 GP/1 PEL MAMB/7 CIA PM MAMB/BPM MAMB', '10BBM/1CIA/3PEL (DIVINOPOLIS)', 
'1 GP/1 PEL MAMB/7 CIA PM MAMB/BPM MAMB', 'REGIONAL OLIVEIRA', '1 GP/2 PEL MAMB/7 CIA PM IND MAT/7 RPM', '1 PEL RV/7 CIA PM RV/BPMRV/CPRV', '7 CIA PM MAMB/BPM MAMB/CPMAMB', '7 CIA PM RV/BPMRV/CPRV',
'NUCLEO ADMINISTRATIVO E DE FISCALIZACAO', '7 CIA PM IND MAT/7 RPM', '1 CIA ROTAM/BTL ROTAM/CPE', '7 CIA PM IND PE/7 RPM', 'COORDENADORIA OESTE - FORMIGA')

-- AND RATNUM_ATIVIDADE = '2019-000012090-001'

;