DELIMITER $$
CREATE FUNCTION fnc_tipo_validador_reds (MUNICIPIO VARCHAR(50), NREDS VARCHAR (18), BAIRRO VARCHAR(50), BAIRRO_NAO_CAD VARCHAR(50), LOGRADOURO VARCHAR(100), LOGRADOURO_NAO_CAD VARCHAR(100),
LOGRADOURO_CRUZ VARCHAR(100), LOGRADOURO_CRUZ_NAO_CAD VARCHAR(100), COMPLEMENTO_END VARCHAR(50), PONTO_REF VARCHAR(50))
RETURNS VARCHAR (50) deterministic
BEGIN
	RETURN
		/*CAMPO DE TIPO VALIDADOR (SÓ APLICADO EM DIVINÓPOLIS)*/
         -- ---------------------------------------------------------------------------DIVINOPOLIS
case -- case 1
when
	MUNICIPIO = 'DIVINOPOLIS' then 
	case -- case 2
	when
		NREDS in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'N_REDS') then 'NREDS'
	when
        NREDS in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'N_REDS') then 'NREDS'
	when
        NREDS in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'N_REDS') then 'NREDS'
	else -- case2
		case -- case 3
        when
			BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM'and VALIDADOR_TIPO = 'BAIRRO')  then 'BAIRRO'
		when
            BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO')  then 'BAIRRO'
		when
            BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO') then 'BAIRRO'
        else -- case 3
			case -- case 4
			when
				BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then 'BAIRRO_NAO_CAD'
			when
                BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then 'BAIRRO_NAO_CAD'
			when
                BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then 'BAIRRO_NAO_CAD'
					
			else -- case 4
            
            	case -- case 5
				when
					LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then 'LOGRADOURO'
				when
					LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then 'LOGRADOURO'
				when	
                    LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then 'LOGRADOURO'
					
				else -- case 5
					case -- case 6
					when
						LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'LOGRADOURO_NAO_CAD'
					when	
                        LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'LOGRADOURO_NAO_CAD'
					when	
                        LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'LOGRADOURO_NAO_CAD'
					
					else -- case 6
						case -- case 7
						when
							LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then 'LOGRADOURO_CRUZ'
						when	
                            LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then 'LOGRADOURO_CRUZ'
						when	
                            LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then 'LOGRADOURO_CRUZ'
					
						else -- case 7
						
							case -- case 8
							when
								LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then 'LOGRADOURO_CRUZ_NAO_CAD'
							when	
                                LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then 'LOGRADOURO_CRUZ_NAO_CAD'
							when	
                                LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then 'LOGRADOURO_CRUZ_NAO_CAD'
					
							else -- case 8
								case -- case 9
								when
									COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'COMPLEMENTO_END'
								when
                                    COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'COMPLEMENTO_END'
								when	
                                    COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'COMPLEMENTO_END'
					                   
								else -- case 9
									case -- case 10
									when
										PONTO_REF in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then 'PONTO_REF'
									when	
                                        PONTO_REF in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then 'PONTO_REF'
									when	
                                        PONTO_REF in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then 'PONTO_REF'
									else 'other'-- case 10
									end -- case 9
                                end -- case 9
                            end -- case 8
                        end -- case 7
                    end -- case 6
                end -- case 5
			end -- case 4
        end -- case 3
	end -- case 2

when
	MUNICIPIO = 'ITAUNA' then 
	case -- case 2
	when
		NREDS in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '51ª CIA PM' and VALIDADOR_TIPO = 'N_REDS') then 'NREDS'
	else -- case2
		case -- case 3
        when
			BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '51ª CIA PM'and VALIDADOR_TIPO = 'BAIRRO')  then 'BAIRRO'
        else -- case 3
			case -- case 4
			when
				BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '51ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then 'BAIRRO_NAO_CAD'
			else -- case 4
            
            	case -- case 5
				when
					LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '51ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then 'LOGRADOURO'
				else -- case 5
					case -- case 6
					when
						LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '51ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'LOGRADOURO_NAO_CAD'
					else -- case 6
						case -- case 7
						when
							LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '51ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then 'LOGRADOURO_CRUZ'
						else -- case 7
						
							case -- case 8
							when
								LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '51ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then 'LOGRADOURO_CRUZ_NAO_CAD'
							else -- case 8
								case -- case 9
								when
									COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '51ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'COMPLEMENTO_END'
								else -- case 9
									case -- case 10
									when
										PONTO_REF in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '51ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then 'PONTO_REF'
									else 'other'-- case 10
									end -- case 9
                                end -- case 9
                            end -- case 8
                        end -- case 7
                    end -- case 6
                end -- case 5
			end -- case 4
        end -- case 3
	end -- case 2
    
     -- ---------------------------------------------------------------------------ITAUNA
when
	MUNICIPIO = 'NOVA SERRANA' then 
	case -- case 2
	when
		NREDS in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM' and VALIDADOR_TIPO = 'N_REDS') then 'NREDS'
	when
		NREDS in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM' and VALIDADOR_TIPO = 'N_REDS') then 'NREDS'
	else -- case2
		case -- case 3
        when
			BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM'and VALIDADOR_TIPO = 'BAIRRO')  then 'BAIRRO'
		when
			BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM'and VALIDADOR_TIPO = 'BAIRRO')  then 'BAIRRO'
        else -- case 3
			case -- case 4
			when
				BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then 'BAIRRO_NAO_CAD'
			when
				BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then 'BAIRRO_NAO_CAD'
			else -- case 4
            
            	case -- case 5
				when
					LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then 'LOGRADOURO'
				when
					LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then 'LOGRADOURO'
				else -- case 5
					case -- case 6
					when
						LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'LOGRADOURO_NAO_CAD'
					when
						LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'LOGRADOURO_NAO_CAD'
					else -- case 6
						case -- case 7
						when
							LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then 'LOGRADOURO_CRUZ'
						when
							LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then 'LOGRADOURO_CRUZ'
						else -- case 7
						
							case -- case 8
							when
								LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then 'LOGRADOURO_CRUZ_NAO_CAD'
							when
								LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then 'LOGRADOURO_CRUZ_NAO_CAD'
							else -- case 8
								case -- case 9
								when
									COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'COMPLEMENTO_END'
								when
									COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'COMPLEMENTO_END'
								else -- case 9
									case -- case 10
									when
										PONTO_REF in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then 'PONTO_REF'
									when
										PONTO_REF in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then 'PONTO_REF'
									else 'other'-- case 10
									end -- case 9
                                end -- case 9
                            end -- case 8
                        end -- case 7
                    end -- case 6
                end -- case 5
			end -- case 4
        end -- case 3
	end -- case 2   
 -- ---------------------------------------------------------------------------NOVA SERRANA   
when
	((MUNICIPIO != 'DIVINOPOLIS')  and  (MUNICIPIO != 'ITAUNA') and  (MUNICIPIO != 'NOVA SERRANA')) then MUNICIPIO
    
else 'other'
end -- case 1

            ;
END$$
DELIMITER ;