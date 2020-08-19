DELIMITER $$
CREATE FUNCTION fnc_fracao_rat_bos_nse (RATNUM_ATIVIDADE VARCHAR (19), NOME_BAIRRO VARCHAR(50), LOGRADOURO VARCHAR(100), DES_ENDERECO VARCHAR(100),
LOGRADOURO2 VARCHAR(100), DES_ENDERECO2 VARCHAR(100), COMPLEMENTO_ENDERECO VARCHAR(30), COMPLEMENTO_ALFA VARCHAR(30), LATITUDE VARCHAR(20))
RETURNS VARCHAR (50)
BEGIN
	RETURN
-- 		case -- case 1
-- when
-- 	MUNICIPIO not in ('DIVINOPOLIS', 'CARMO DO CAJURU', 'CLAUDIO', 'SAO GONCALO DO PARA', 'ITAUNA', 'ITATIAIUCU') then MUNICIPIO
-- When
-- 	MUNICIPIO = 'ITAUNA' then '51ª CIA PM'
-- when	
-- 	MUNICIPIO = 'ITATIAIUCU' then '2º GP - 3º PEL / 51ª CIA PM' 
-- when	
-- 	MUNICIPIO = 'CARMO DO CAJURU' then '3º PEL / 142ª CIA PM'
-- when	
-- 	MUNICIPIO = 'SAO GONCALO DO PARA' then '2º GP - 3º PEL / 142ª CIA PM'   
-- when	
-- 	MUNICIPIO = 'CLAUDIO' then '3º PEL / 1399ª CIA PM' 
    
-- else -- case 1
	case -- case 2
	when
		RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM' and VALIDADOR_TIPO = 'N_RAT') then '279ª CIA PM'
	when
        RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM' and VALIDADOR_TIPO = 'N_RAT') then '280ª CIA PM'
	else -- case2
		case -- case 3
        when
			NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM'and VALIDADOR_TIPO = 'BAIRRO')  then '279ª CIA PM'
		when
            NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO')  then '280ª CIA PM'
        else -- case 3
			case -- case 4
			when
				LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '279ª CIA PM'
			when
                LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '280ª CIA PM'
			else -- case 4
               	case -- case 5
				when
					DES_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '279ª CIA PM'
				when
					DES_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '280ª CIA PM'
				else -- case 5
					case -- case 6
					when
						LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '279ª CIA PM'
					when	
                        LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '280ª CIA PM'
					else -- case 6
						case -- case 7
						when
							DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '279ª CIA PM'
						when	
                            DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '280ª CIA PM'
						else -- case 7
						case -- case 8
							when
								COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '279ª CIA PM'
							when	
                                COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '280ª CIA PM'
							else -- case 8
								case -- case 9
								when
									COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '279ª CIA PM'
								when
                                    COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '280ª CIA PM'
								else -- case 9
									case -- case 10
									when
										LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '279ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then '279ª CIA PM'
									when	
                                        LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '280ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then '280ª CIA PM'
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

-- end -- case 1;

            ;
END$$
DELIMITER ;