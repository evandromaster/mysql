DELIMITER $$
CREATE FUNCTION fnc_setor_reds (MUNICIPIO VARCHAR(50), NREDS VARCHAR (18), BAIRRO VARCHAR(50), BAIRRO_NAO_CAD VARCHAR(50), LOGRADOURO VARCHAR(100), LOGRADOURO_NAO_CAD VARCHAR(100),
LOGRADOURO_CRUZ VARCHAR(100), LOGRADOURO_CRUZ_NAO_CAD VARCHAR(100), COMPLEMENTO_END VARCHAR(50), PONTO_REF VARCHAR(50))
RETURNS VARCHAR (50)
BEGIN
	RETURN
(case -- case 1

when	MUNICIPIO = 'CLAUDIO' then '139ª CIA PM'
when	MUNICIPIO in ('CARMO DO CAJURU', 'SAO GONCALO DO PARA') then '142ª CIA PM'
when	MUNICIPIO in ('ITAUNA', 'ITATIAIUCU') then '51ª CIA PM'
when 	MUNICIPIO not in ('DIVINOPOLIS', 'ITAUNA', 'ITATIAIUCU' , 'CLAUDIO', 'SAO GONCALO DO PARA', 'CARMO DO CAJURU') then MUNICIPIO
else -- case 1
	case -- case 2
	when
		NREDS in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'HIPER CENTRO' and VALIDADOR_TIPO = 'N_REDS') then 'HIPER CENTRO'
	when
        NREDS in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'BOM PASTOR' and VALIDADOR_TIPO = 'N_REDS') then 'BOM PASTOR'
	when
        NREDS in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ALTO GOIAS' and VALIDADOR_TIPO = 'N_REDS') then 'ALTO GOIAS'
	when
		NREDS in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SAO JOSE' and VALIDADOR_TIPO = 'N_REDS') then 'SAO JOSE'
	when
        NREDS in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PLANALTO' and VALIDADOR_TIPO = 'N_REDS') then 'PLANALTO'
	when
        NREDS in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'NITEROI' and VALIDADOR_TIPO = 'N_REDS') then 'NITEROI'
	when
        NREDS in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'N_REDS') then 'PORTO VELHO'
	else -- case2
		case -- case 3
        when
			BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'HIPER CENTRO'and VALIDADOR_TIPO = 'BAIRRO')  then 'HIPER CENTRO'
		when
            BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'BOM PASTOR' and VALIDADOR_TIPO = 'BAIRRO')  then 'BOM PASTOR'
		when
            BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ALTO GOIAS' and VALIDADOR_TIPO = 'BAIRRO') then 'ALTO GOIAS'
		when
			BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SAO JOSE'and VALIDADOR_TIPO = 'BAIRRO')  then 'SAO JOSE'
		when
            BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PLANALTO' and VALIDADOR_TIPO = 'BAIRRO')  then 'PLANALTO'
		when
            BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'NITEROI' and VALIDADOR_TIPO = 'BAIRRO') then 'NITEROI'
		when
            BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'BAIRRO') then 'PORTO VELHO'
            
            
        else -- case 3
			case -- case 4
			when
				BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'HIPER CENTRO' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then 'HIPER CENTRO'
			when
                BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'BOM PASTOR' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then 'BOM PASTOR'
			when
                BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ALTO GOIAS' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then 'ALTO GOIAS'
			when
				BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SAO JOSE' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then 'SAO JOSE'
			when
                BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PLANALTO' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then 'PLANALTO'
			when
                BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'NITEROI' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then 'NITEROI'
			when
                BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then 'PORTO VELHO'
			else -- case 4
            
            	case -- case 5
				when
					LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'HIPER CENTRO' and VALIDADOR_TIPO = 'LOGRADOURO') then 'HIPER CENTRO'
				when
					LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'BOM PASTOR' and VALIDADOR_TIPO = 'LOGRADOURO') then 'BOM PASTOR'
				when	
                    LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ALTO GOIAS' and VALIDADOR_TIPO = 'LOGRADOURO') then 'ALTO GOIAS'
				when
					LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SAO JOSE' and VALIDADOR_TIPO = 'LOGRADOURO') then 'SAO JOSE'
				when
					LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PLANALTO' and VALIDADOR_TIPO = 'LOGRADOURO') then 'PLANALTO'
				when	
                    LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'NITEROI' and VALIDADOR_TIPO = 'LOGRADOURO') then 'NITEROI'
				when	
                    LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'LOGRADOURO') then 'PORTO VELHO'
				else -- case 5
					case -- case 6
					when
						LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'HIPER CENTRO' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'HIPER CENTRO'
					when	
                        LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'BOM PASTOR' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'BOM PASTOR'
					when	
                        LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ALTO GOIAS' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'ALTO GOIAS'
					when
						LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SAO JOSE' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'SAO JOSE'
					when	
                        LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PLANALTO' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'PLANALTO'
					when	
                        LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'NITEROI' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'NITEROI'
					when	
                        LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'PORTO VELHO'
		
					else -- case 6
						case -- case 7
						when
							LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'HIPER CENTRO' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then 'HIPER CENTRO'
						when	
                            LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'BOM PASTOR' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then 'BOM PASTOR'
						when	
                            LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ALTO GOIAS' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then 'ALTO GOIAS'
						when
							LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SAO JOSE' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then 'SAO JOSE'
						when	
                            LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PLANALTO' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then 'PLANALTO'
						when	
                            LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'NITEROI' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then 'NITEROI'
						when	
                            LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then 'PORTO VELHO'
	
						else -- case 7
						
							case -- case 8
							when
								LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'HIPER CENTRO' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then 'HIPER CENTRO'
							when	
                                LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'BOM PASTOR' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then 'BOM PASTOR'
							when	
                                LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ALTO GOIAS' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then 'ALTO GOIAS'
							when
								LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SAO JOSE' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then 'SAO JOSE'
							when	
                                LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PLANALTO' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then 'PLANALTO'
							when	
                                LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'NITEROI' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then 'NITEROI'
							when	
                                LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then 'PORTO VELHO'
								
							else -- case 8
								case -- case 9
								when
									COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'HIPER CENTRO' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'HIPER CENTRO'
								when
                                    COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'BOM PASTOR' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'BOM PASTOR'
								when	
                                    COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ALTO GOIAS' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'ALTO GOIAS'
								when
									COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SAO JOSE' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'SAO JOSE'
								when
                                    COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PLANALTO' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'PLANALTO'
								when	
                                    COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'NITEROI' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'NITEROI'
								when	
                                    COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'PORTO VELHO'
							                   
								else -- case 9
									case -- case 10
									when
										PONTO_REF in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'HIPER CENTRO' and VALIDADOR_TIPO = 'PONTO_REF') then 'HIPER CENTRO'
									when	
                                        PONTO_REF in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'BOM PASTOR' and VALIDADOR_TIPO = 'PONTO_REF') then 'BOM PASTOR'
									when	
                                        PONTO_REF in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ALTO GOIAS' and VALIDADOR_TIPO = 'PONTO_REF') then 'ALTO GOIAS'
									when
										PONTO_REF in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SAO JOSE' and VALIDADOR_TIPO = 'PONTO_REF') then 'SAO JOSE'
									when	
                                        PONTO_REF in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PLANALTO' and VALIDADOR_TIPO = 'PONTO_REF') then 'PLANALTO'
									when	
                                        PONTO_REF in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'NITEROI' and VALIDADOR_TIPO = 'PONTO_REF') then 'NITEROI'
									when	
                                        PONTO_REF in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'PONTO_REF') then 'PORTO VELHO'

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

end) -- case 1;

            ;
END$$
DELIMITER ;