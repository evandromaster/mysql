DELIMITER $$
CREATE FUNCTION fnc_fracao_reds_div (NREDS VARCHAR (18), BAIRRO VARCHAR(50), BAIRRO_NAO_CAD VARCHAR(50), LOGRADOURO VARCHAR(100), LOGRADOURO_NAO_CAD VARCHAR(100),
LOGRADOURO_CRUZ VARCHAR(100), LOGRADOURO_CRUZ_NAO_CAD VARCHAR(100), COMPLEMENTO_END VARCHAR(50), PONTO_REF VARCHAR(50))
RETURNS VARCHAR (50) deterministic
BEGIN
	RETURN
		(-- case -- case 1
-- -- when
-- -- 	MUNICIPIO not in ('DIVINOPOLIS', 'CARMO DO CAJURU', 'CLAUDIO', 'SAO GONCALO DO PARA', 'ITAUNA', 'ITATIAIUCU') then MUNICIPIO
-- When
-- 	MUNICIPIO = 'ITAUNA' then '51ª CIA PM'
-- when	
-- 	MUNICIPIO = 'ITATIAIUCU' then '2º GP - 3º PEL / 51ª CIA PM' 
-- when	
-- 	MUNICIPIO = 'CARMO DO CAJURU' then '3º PEL / 142ª CIA PM'
-- when	
-- 	MUNICIPIO = 'SAO GONCALO DO PARA' then '2º GP - 3º PEL / 142ª CIA PM'   
-- when	
-- 	MUNICIPIO = 'CLAUDIO' then '3º PEL / 139ª CIA PM' 
-- else -- case 1

	case -- case 2
	when
		NREDS in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'N_REDS') then '53ª CIA PM'
	when
        NREDS in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'N_REDS') then '139ª CIA PM'
	when
        NREDS in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'N_REDS') then '142ª CIA PM'
	else -- case2
		case -- case 3
        when
			BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM'and VALIDADOR_TIPO = 'BAIRRO')  then '53ª CIA PM'
		when
            BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO')  then '139ª CIA PM'
		when
            BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO') then '142ª CIA PM'
        else -- case 3
			case -- case 4
			when
				BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then '53ª CIA PM'
			when
                BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then '139ª CIA PM'
			when
                BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then '142ª CIA PM'
					
			else -- case 4
            
            	case -- case 5
				when
					LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '53ª CIA PM'
				when
					LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '139ª CIA PM'
				when	
                    LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '142ª CIA PM'
					
				else -- case 5
					case -- case 6
					when
						LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '53ª CIA PM'
					when	
                        LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '139ª CIA PM'
					when	
                        LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '142ª CIA PM'
					
					else -- case 6
						case -- case 7
						when
							LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then '53ª CIA PM'
						when	
                            LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then '139ª CIA PM'
						when	
                            LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then '142ª CIA PM'
					
						else -- case 7
						
							case -- case 8
							when
								LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then '53ª CIA PM'
							when	
                                LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then '139ª CIA PM'
							when	
                                LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then '142ª CIA PM'
					
							else -- case 8
								case -- case 9
								when
									COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '53ª CIA PM'
								when
                                    COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '139ª CIA PM'
								when	
                                    COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '142ª CIA PM'
					                   
								else -- case 9
									case -- case 10
									when
										PONTO_REF in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then '53ª CIA PM'
									when	
                                        PONTO_REF in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then '139ª CIA PM'
									when	
                                        PONTO_REF in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then '142ª CIA PM'
											
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