DELIMITER $$
CREATE FUNCTION fnc_cia_sede_reds_nse (NREDS VARCHAR (18), BAIRRO VARCHAR(50), BAIRRO_NAO_CAD VARCHAR(50), LOGRADOURO VARCHAR(100), LOGRADOURO_NAO_CAD VARCHAR(100),
LOGRADOURO_CRUZ VARCHAR(100), LOGRADOURO_CRUZ_NAO_CAD VARCHAR(100), COMPLEMENTO_END VARCHAR(50), PONTO_REF VARCHAR(50))
RETURNS VARCHAR (50)
BEGIN
	RETURN
		(-- case -- case 1
-- -- when
-- -- 	MUNICIPIO not in ('ARAUJOS', 'PERDIGAO', 'CONCEICAO DO PARA', 'LEANDRO FERREIRA', 'PITANGUI') then MUNICIPIO
-- When
-- 	MUNICIPIO in ('ARAUJOS', 'PERDIGAO') then '279ª CIA PM'
-- When
-- 	MUNICIPIO in ('CONCEICAO DO PARA', 'LEANDRO FERREIRA', 'PITANGUI') then '280ª CIA PM' 
-- else -- case 1
-- 
	case -- case 2
	when
		NREDS in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM' and VALIDADOR_TIPO = 'N_REDS') then '279ª CIA PM'
	when
        NREDS in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM' and VALIDADOR_TIPO = 'N_REDS') then '280ª CIA PM'
	else -- case2
		case -- case 3
        when
			BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM'and VALIDADOR_TIPO = 'BAIRRO')  then '279ª CIA PM'
		when
            BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO')  then '280ª CIA PM'
        else -- case 3
			case -- case 4
			when
				BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then '279ª CIA PM'
			when
                BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then '280ª CIA PM'
			else -- case 4
            
            	case -- case 5
				when
					LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '279ª CIA PM'
				when
					LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '280ª CIA PM'
		
				else -- case 5
					case -- case 6
					when
						LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '279ª CIA PM'
					when	
                        LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '280ª CIA PM'
					else -- case 6
						case -- case 7
						when
							LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then '279ª CIA PM'
						when	
                            LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then '280ª CIA PM'
						else -- case 7
							case -- case 8
							when
								LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then '279ª CIA PM'
							when	
                                LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then '280ª CIA PM'
							else -- case 8
								case -- case 9
								when
									COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '279ª CIA PM'
								when
                                    COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '280ª CIA PM'
								else -- case 9
									case -- case 10
									when
										PONTO_REF in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then '279ª CIA PM'
									when	
                                        PONTO_REF in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then '280ª CIA PM'
                                   	else 'other'-- case 10
                                                                      
                                   end -- case 9
                                end -- case 9
                            end -- case 8
                        end -- case 7
                    end -- case 6
                end -- case 5
			end -- case 4
        end -- case 3
	end) -- case 2

-- end) -- case 1;

            ;
END$$
DELIMITER ;