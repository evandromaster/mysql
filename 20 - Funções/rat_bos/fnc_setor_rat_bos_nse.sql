DROP FUNCTION IF EXISTS fnc_setor_rat_bos_nse;


DELIMITER $$
CREATE FUNCTION fnc_setor_rat_bos_nse (RATNUM_ATIVIDADE VARCHAR (19), NOME_BAIRRO VARCHAR(50), LOGRADOURO VARCHAR(100), DES_ENDERECO VARCHAR(100),
LOGRADOURO2 VARCHAR(100), DES_ENDERECO2 VARCHAR(100), COMPLEMENTO_ENDERECO VARCHAR(30), COMPLEMENTO_ALFA VARCHAR(30), LATITUDE VARCHAR(20))
RETURNS VARCHAR (50)
BEGIN
	RETURN
		case -- case 2
	when
		RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'CONCESSO ELIAS' and VALIDADOR_TIPO = 'N_RAT') then 'CONCESSO ELIAS'
	when
        RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SUPER CENTRO' and VALIDADOR_TIPO = 'N_RAT') then 'SUPER CENTRO'
	when
        RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SANTA SARA' and VALIDADOR_TIPO = 'N_RAT') then 'SANTA SARA'
	when
		RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ROMEU DUARTE' and VALIDADOR_TIPO = 'N_RAT') then 'ROMEU DUARTE'
	when
        RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SAO GERALDO' and VALIDADOR_TIPO = 'N_RAT') then 'SAO GERALDO'
	when
        RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ZONA RURAL' and VALIDADOR_TIPO = 'N_RAT') then 'ZONA RURAL'

	else -- case2
		case -- case 3
        when
			NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'CONCESSO ELIAS'and VALIDADOR_TIPO = 'BAIRRO')  then 'CONCESSO ELIAS'
		when
            NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SUPER CENTRO' and VALIDADOR_TIPO = 'BAIRRO')  then 'SUPER CENTRO'
		when
            NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SANTA SARA' and VALIDADOR_TIPO = 'BAIRRO') then 'SANTA SARA'
		when
			NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ROMEU DUARTE'and VALIDADOR_TIPO = 'BAIRRO')  then 'ROMEU DUARTE'
		when
            NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SAO GERALDO' and VALIDADOR_TIPO = 'BAIRRO')  then 'SAO GERALDO'
		when
            NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ZONA RURAL' and VALIDADOR_TIPO = 'BAIRRO') then 'ZONA RURAL'

            
            
        else -- case 3
			case -- case 4
			when
				LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'CONCESSO ELIAS' and VALIDADOR_TIPO = 'LOGRADOURO') then 'CONCESSO ELIAS'
			when
                LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SUPER CENTRO' and VALIDADOR_TIPO = 'LOGRADOURO') then 'SUPER CENTRO'
			when
                LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SANTA SARA' and VALIDADOR_TIPO = 'LOGRADOURO') then 'SANTA SARA'
			when
				LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ROMEU DUARTE' and VALIDADOR_TIPO = 'LOGRADOURO') then 'ROMEU DUARTE'
			when
                LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SAO GERALDO' and VALIDADOR_TIPO = 'LOGRADOURO') then 'SAO GERALDO'
			when
                LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ZONA RURAL' and VALIDADOR_TIPO = 'LOGRADOURO') then 'ZONA RURAL'

			else -- case 4
            --         na tabela RAT não existe bairro não cadastrado o criterioo acima  não tera efeito
            	case -- case 5
				when
					DES_ENDERECO  in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'CONCESSO ELIAS' and VALIDADOR_TIPO = 'LOGRADOURO') then 'CONCESSO ELIAS'
				when
					DES_ENDERECO  in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SUPER CENTRO' and VALIDADOR_TIPO = 'LOGRADOURO') then 'SUPER CENTRO'
				when	
                    DES_ENDERECO  in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SANTA SARA' and VALIDADOR_TIPO = 'LOGRADOURO') then 'SANTA SARA'
				when
					DES_ENDERECO  in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ROMEU DUARTE' and VALIDADOR_TIPO = 'LOGRADOURO') then 'ROMEU DUARTE'
				when
					DES_ENDERECO  in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SAO GERALDO' and VALIDADOR_TIPO = 'LOGRADOURO') then 'SAO GERALDO'
				when	
                    DES_ENDERECO  in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ZONA RURAL' and VALIDADOR_TIPO = 'LOGRADOURO') then 'ZONA RURAL'
				else -- case 5
					case -- case 6
					when
						LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'CONCESSO ELIAS' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'CONCESSO ELIAS'
					when	
                        LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SUPER CENTRO' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'SUPER CENTRO'
					when	
                        LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SANTA SARA' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'SANTA SARA'
					when
						LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ROMEU DUARTE' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'ROMEU DUARTE'
					when	
                        LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SAO GERALDO' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'SAO GERALDO'
					when	
                        LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ZONA RURAL' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'ZONA RURAL'
					when	
                        LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'PORTO VELHO'
		
					else -- case 6
						case -- case 7
						when
							DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'CONCESSO ELIAS' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'CONCESSO ELIAS'
						when	
                            DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SUPER CENTRO' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'SUPER CENTRO'
						when	
                            DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SANTA SARA' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'SANTA SARA'
						when
							DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ROMEU DUARTE' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'ROMEU DUARTE'
						when	
                            DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SAO GERALDO' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'SAO GERALDO'
						when	
                            DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ZONA RURAL' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'ZONA RURAL'

						else -- case 7
						
							case -- case 8
							when
								COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'CONCESSO ELIAS' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'CONCESSO ELIAS'
							when	
                                COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SUPER CENTRO' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'SUPER CENTRO'
							when	
                                COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SANTA SARA' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'SANTA SARA'
							when
								COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ROMEU DUARTE' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'ROMEU DUARTE'
							when	
                                COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SAO GERALDO' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'SAO GERALDO'
							when	
                                COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ZONA RURAL' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'ZONA RURAL'

								
							else -- case 8
								case -- case 9
								when
									COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'CONCESSO ELIAS' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'CONCESSO ELIAS'
								when
                                    COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SUPER CENTRO' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'SUPER CENTRO'
								when	
                                    COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SANTA SARA' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'SANTA SARA'
								when
									COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ROMEU DUARTE' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'ROMEU DUARTE'
								when
                                    COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SAO GERALDO' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'SAO GERALDO'
								when	
                                    COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ZONA RURAL' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'ZONA RURAL'
							                   
								else -- case 9
									case -- case 10
									when
										LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'CONCESSO ELIAS' and VALIDADOR_TIPO = 'PONTO_REF') then 'CONCESSO ELIAS'
									when	
                                        LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SUPER CENTRO' and VALIDADOR_TIPO = 'PONTO_REF') then 'SUPER CENTRO'
									when	
                                        LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SANTA SARA' and VALIDADOR_TIPO = 'PONTO_REF') then 'SANTA SARA'
									when
										LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ROMEU DUARTE' and VALIDADOR_TIPO = 'PONTO_REF') then 'ROMEU DUARTE'
									when	
                                        LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SAO GERALDO' and VALIDADOR_TIPO = 'PONTO_REF') then 'SAO GERALDO'
									when	
                                        LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ZONA RURAL' and VALIDADOR_TIPO = 'PONTO_REF') then 'ZONA RURAL'

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
 ;
END$$
DELIMITER ;
