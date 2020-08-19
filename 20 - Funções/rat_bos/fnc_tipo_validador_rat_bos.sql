DELIMITER $$
CREATE FUNCTION fnc_tipo_validador_rat_bos (MUNICIPIO VARCHAR(50), RATNUM_ATIVIDADE VARCHAR (19), NOME_BAIRRO VARCHAR(50), LOGRADOURO VARCHAR(100), DES_ENDERECO VARCHAR(100),
LOGRADOURO2 VARCHAR(100), DES_ENDERECO2 VARCHAR(100), COMPLEMENTO_ENDERECO VARCHAR(30), COMPLEMENTO_ALFA VARCHAR(30), LATITUDE VARCHAR(20))
RETURNS VARCHAR (50)
BEGIN
	RETURN
case -- case 1
when
	MUNICIPIO = 'DIVINOPOLIS' then
	case -- case 2
	when
		RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'N_RAT') then 'N_RAT'
	when
        RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'N_RAT') then 'N_RAT'
	when
        RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'N_RAT') then 'N_RAT'
	else -- case2
		case -- case 3
        when
			NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM'and VALIDADOR_TIPO = 'BAIRRO')  then 'BAIRRO'
		when
            NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO')  then 'BAIRRO'
		when
            NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO') then 'BAIRRO'
        else -- case 3
			case -- case 4
			when
				LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then 'LOGRADOURO'
			when
                LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then 'LOGRADOURO'
			when
                LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then 'LOGRADOURO'
					
			else -- case 4
            
            	case -- case 5
				when
					DES_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then 'DES_ENDERECO'
				when
					DES_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then 'DES_ENDERECO'
				when	
                    DES_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then 'DES_ENDERECO'
					
				else -- case 5
					case -- case 6
					when
						LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'LOGRADOURO2'
					when	
                        LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'LOGRADOURO2'
					when	
                        LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'LOGRADOURO2'
					
					else -- case 6
						case -- case 7
						when
							DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'DES_ENDERECO2'
						when	
                            DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'DES_ENDERECO2'
						when	
                            DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'DES_ENDERECO2'
					
						else -- case 7
						
							case -- case 8
							when
								COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'COMPLEMENTO_ENDERECO'
							when	
                                COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'COMPLEMENTO_ENDERECO'
							when	
                                COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'COMPLEMENTO_ENDERECO'
					
							else -- case 8
								case -- case 9
								when
									COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'COMPLEMENTO_ALFA'
								when
                                    COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'COMPLEMENTO_ALFA'
								when	
                                    COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'COMPLEMENTO_ALFA'
					                   
								else -- case 9
									case -- case 10
									when
										LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then 'LATITUDE'
									when	
                                        LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then 'LATITUDE'
									when	
                                        LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then 'LATITUDE'
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

-- -------------------------------------------------------------fim divivinopolis
when
	MUNICIPIO = 'ITAUNA' then
	case -- case 2
	when
		RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '51ª CIA PM' and VALIDADOR_TIPO = 'N_RAT') then 'N_RAT'
	else -- case2
		case -- case 3
        when
			NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '51ª CIA PM'and VALIDADOR_TIPO = 'BAIRRO')  then 'BAIRRO'
        else -- case 3
			case -- case 4
			when
				LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '51ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then 'LOGRADOURO'
			else -- case 4
            
            	case -- case 5
				when
					DES_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '51ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then 'DES_ENDERECO'
				else -- case 5
					case -- case 6
					when
						LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '51ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'LOGRADOURO2'
					else -- case 6
						case -- case 7
						when
							DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '51ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'DES_ENDERECO2'
						else -- case 7
						
							case -- case 8
							when
								COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '51ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'COMPLEMENTO_ENDERECO'
							else -- case 8
								case -- case 9
								when
									COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '51ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'COMPLEMENTO_ALFA'
								else -- case 9
									case -- case 10
									when
										LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '51ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then 'LATITUDE'
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
-- ----------------------------------------------------------------------------------------------------------- fim itauna
when
	MUNICIPIO = 'NOVA SERRANA' then
	case -- case 2
	when
		RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM' and VALIDADOR_TIPO = 'N_RAT') then 'N_RAT'
	when
		RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM' and VALIDADOR_TIPO = 'N_RAT') then 'N_RAT'
	else -- case2
		case -- case 3
        when
			NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM'and VALIDADOR_TIPO = 'BAIRRO')  then 'BAIRRO'
		when
			NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM'and VALIDADOR_TIPO = 'BAIRRO')  then 'BAIRRO'
        else -- case 3
			case -- case 4
			when
				LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then 'LOGRADOURO'
			when
				LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then 'LOGRADOURO'
			else -- case 4
            
            	case -- case 5
				when
					DES_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then 'DES_ENDERECO'
				when
					DES_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then 'DES_ENDERECO'
				else -- case 5
					case -- case 6
					when
						LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'LOGRADOURO2'
					when
						LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'LOGRADOURO2'
					else -- case 6
						case -- case 7
						when
							DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'DES_ENDERECO2'
						when
							DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'DES_ENDERECO2'
						else -- case 7
						case -- case 8
							when
								COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'COMPLEMENTO_ENDERECO'
							when
								COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'COMPLEMENTO_ENDERECO'
							else -- case 8
								case -- case 9
								when
									COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'COMPLEMENTO_ALFA'
								when
									COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'COMPLEMENTO_ALFA'
								else -- case 9
									case -- case 10
									when
										LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then 'LATITUDE'
									when
										LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then 'LATITUDE'
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
-- ---------------------------------------------------------------------------------------------------------------------------------------fim nova serrana
when
	((MUNICIPIO != 'DIVINOPOLIS')  and  (MUNICIPIO != 'ITAUNA') and  (MUNICIPIO != 'NOVA SERRANA')) then MUNICIPIO


else 'other'

end -- case 1;

            ;
END$$
DELIMITER ;