DELIMITER $$
CREATE FUNCTION fnc_lotacao (UNINDADE_SERVICO VARCHAR(100))
RETURNS varchar (20)
BEGIN
	RETURN
		case
		when UNINDADE_SERVICO in ('3 PEL/53 CIA PM/23 BPM/7 RPM',
									'2 PEL/53 CIA PM/23 BPM/7 RPM',
									'2 PEL/53 CIA PM/23 BPM/7 RPM',
									'1 PEL/53 CIA PM/23 BPM/7 RPM',
									'3 PEL PM/53 CIA PM/23 BPM',
									'2 PEL/53 CIA PM/23 BPM/7 RPM',
									'2 PEL/53 CIA PM/23 BPM/7 RPM',
									'1 PEL/53 CIA PM/23 BPM/7 RPM',
									'3 PEL/53 CIA PM/23 BPM/7 RPM',
									'3 PEL PM/53 CIA PM/23 BPM',
									'3 PEL/53 CIA PM/23 BPM/7 RPM',
									'2 PEL/53 CIA PM/23 BPM/7 RPM',
									'1 PEL/53 CIA PM/23 BPM/7 RPM',
									'2 PEL/53 CIA PM/23 BPM/7 RPM',
									'2 PEL PM/53 CIA PM/23 BPM',
									'2 PEL/53 CIA PM/23 BPM/7 RPM',
									'3 PEL/53 CIA PM/23 BPM/7 RPM',
									'3 PEL/53 CIA PM/23 BPM/7 RPM',
									'3 PEL/53 CIA PM/23 BPM/7 RPM',
									'2 PEL/53 CIA PM/23 BPM/7 RPM',
									'2 PEL/53 CIA PM/23 BPM/7 RPM',
									'3 PEL/53 CIA PM/23 BPM/7 RPM'
) 
		then '53ª Cia PM'
        
        when UNINDADE_SERVICO in ('2 PEL TM/240 CIA TM/23 BPM/7 RPM',
									'2 PEL TM/240 CIA TM/23 BPM',
									'2 PEL TM/240 CIA TM/23 BPM'

) 
		then '240ª Cia PM TM'
        
        when UNINDADE_SERVICO in ('1 PEL/139 CIA PM/23 BPM/7 RPM',
									'2 PEL/139 CIA PM/23 BPM/7 RPM',
									'2 PEL/139 CIA PM/23 BPM/7 RPM',
									'1 GP/3 PEL PM/139 CIA PM/23 BPM',
									'1 GP/3 PEL/139 CIA PM/23 BPM/7 RPM',
									'1 GP/3 PEL PM/139 CIA PM/23 BPM',
									'1 GP/3 PEL/139 CIA PM/23 BPM/7 RPM',
									'1 GP/3 PEL PM/139 CIA PM/23 BPM',
									'1 PEL/139 CIA PM/23 BPM/7 RPM',
									'1 GP/3 PEL/139 CIA PM/23 BPM/7 RPM',
									'1 PEL/139 CIA PM/23 BPM/7 RPM',
									'1 GP/3 PEL/139 CIA PM/23 BPM/7 RPM',
									'1 GP/3 PEL/139 CIA PM/23 BPM/7 RPM',
									'1 GP/3 PEL/139 CIA PM/23 BPM/7 RPM',
									'1 GP/3 PEL/139 CIA PM/23 BPM/7 RPM',
									'1 GP/3 PEL/139 CIA PM/23 BPM/7 RPM',
									'2 PEL/139 CIA PM/23 BPM/7 RPM',
									'1 GP/3 PEL/139 CIA PM/23 BPM/7 RPM',
									'1 GP/3 PEL/139 CIA PM/23 BPM/7 RPM',
									'2 PEL PM/139 CIA PM/23 BPM',
									'1 PEL/139 CIA PM/23 BPM/7 RPM',
									'1 PEL/139 CIA PM/23 BPM/7 RPM',
									'2 PEL/139 CIA PM/23 BPM/7 RPM'

) 
		then '139ª Cia PM TM' 
        
        
        
        when UNINDADE_SERVICO in ('3 PEL/51 CIA PM/23 BPM/7 RPM',
									'1 PEL/51 CIA PM/23 BPM/7 RPM',
									'3 PEL/51 CIA PM/23 BPM/7 RPM',
									'3 PEL/51 CIA PM/23 BPM/7 RPM',
									'2 PEL/51 CIA PM/23 BPM',
									'1 PEL/51 CIA PM/23 BPM/7 RPM',
									'SGP/2 GP/3 PEL/51 CIA PM/23 BPM/7 RPM',
									'2 GP/3 PEL/51 CIA PM/23 BPM/7 RPM',
                                    '2 PEL/5 CIA PM IND/7 RPM',
									'1 PEL PM/5 CIA PM IND',
									'1 PEL PM/5 CIA PM IND',
									'2 PEL PM/5 CIA PM IND/7 RPM',
									'1 PEL/5 CIA PM IND/7 RPM',
									'2 PEL PM/5 CIA PM IND/7 RPM',
									'1 PEL PM/5 CIA PM IND',
									'PEL TM/5 CIA PM IND/7 RPM',
									'1 PEL PM/5 CIA PM IND',
									'PEL TM/5 CIA PM IND/7 RPM',
									'2 PEL PM/5 CIA PM IND/7 RPM',
									'PEL TM/5 CIA PM IND',
									'2 PEL PM/5 CIA PM IND/7 RPM',
									'2 PEL PM/5 CIA PM IND/7 RPM',
									'PEL TM/5 CIA PM IND',
									'1 PEL PM/5 CIA PM IND'
) 
		then '51ª Cia PM'
        
        when UNINDADE_SERVICO in ('1 PEL/142 CIA PM/23 BPM/7 RPM',
									'1 PEL/142 CIA PM/23 BPM/7 RPM',
									'1 PEL/142 CIA PM/23 BPM/7 RPM',
									'1 GP/3 PEL/142 CIA PM/23 BPM/7 RPM',
									'1 GP/3 PEL PM/142 CIA PM/23 BPM',
									'1 GP/3 PEL PM/142 CIA PM/23 BPM',
									'2 PEL/142 CIA PM/23 BPM/7 RPM',
									'2 PEL/142 CIA PM/23 BPM/7 RPM',
									'1 GP/3 PEL/142 CIA PM/23 BPM/7 RPM',
									'2 PEL/142 CIA PM/23 BPM/7 RPM',
									'2 PEL/142 CIA PM/23 BPM/7 RPM',
									'1 GP/3 PEL PM/142 CIA PM/23 BPM',
									'2 GP/3 PEL/142 CIA PM/23 BPM/7 RPM',
									'2 GP/3 PEL PM/142 CIA PM/23 BPM',
									'1 PEL/142 CIA PM/23 BPM/7 RPM',
									'2 GP/3 PEL PM/142 CIA PM/23 BPM',
									'1 PEL/142 CIA PM/23 BPM/7 RPM',
									'1 GP/3 PEL PM/142 CIA PM/23 BPM',
									'2 GP/3 PEL/142 CIA PM/23 BPM/7 RPM',
									'1 PEL PM/142 CIA PM/23 BPM',
									'1 GP/3 PEL/142 CIA PM/23 BPM/7 RPM',
									'SGP/1 GP/3 PEL/142 CIA/23 BPM/7 RPM',
									'1 PEL PM/142 CIA PM/23 BPM',
									'3 PEL/142 CIA PM/23 BPM/7 RPM',
									'1 PEL/142 CIA PM/23 BPM/7 RPM',
									'2 PEL/142 CIA PM/23 BPM/7 RPM',
									'1 GP/3 PEL/142 CIA PM/23 BPM/7 RPM',
									'2 PEL/142 CIA PM/23 BPM/7 RPM',
									'2 GP/3 PEL/142 CIA PM/23 BPM/7 RPM',
									'1 PEL/142 CIA PM/23 BPM/7 RPM',
									'2 PEL/142 CIA PM/23 BPM/7 RPM',
									'2 PEL PM/142 CIA PM/23 BPM'


) 
		then '142ª Cia PM'
        
		when UNINDADE_SERVICO in ('PEL GER/7 CIA PM IND PE/7 RPM',
								'GP PCHQ/PEL PCHQ/7 CIA PM IND PE/7 RPM',
								'PEL GER/7 CIA PM IND PE/7 RPM',
								'GP PCHQ/PEL PCHQ/7 CIA PM IND PE/7 RPM',
								'PEL GER/7 CIA PM IND PE/7 RPM'


) 
		then '7ª Cia Ind PE'
        
		when rh.UNINDADE_SERVICO in ('2 GP/1 PEL PM RV/7 CIA PM IND MAT',
									'1 GP/1 PEL RV/7 CIA PM IND MAT/7 RPM',
									'2 GP/1 PEL PM RV/7 CIA PM IND MAT',
									'2 GP/1 PEL RV/7 CIA PM RV/BPMRV/CPRV',
									'1 GP/1 PEL PM RV/7 CIA PM IND MAT',
									'1 GP/1 PEL PM RV/7 CIA PM IND MAT',
									'1 GP/1 PEL RV/7 CIA PM RV/BPMRV/CPRV',
									'1 GP/1 PEL PM RV/7 CIA PM IND MAT'


) 
		then '7ª Cia RV'
		when UNINDADE_SERVICO in ('SADM/EM/23 BPM/7 RPM',
								  'SADM/EM/23 BPM/7 RPM'



) 
		then 'ADM 23º BPM' 
        
		else (0)
	end

            ;
END$$
DELIMITER ;

