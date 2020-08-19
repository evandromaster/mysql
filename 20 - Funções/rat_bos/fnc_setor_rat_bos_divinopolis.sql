DELIMITER $$
CREATE FUNCTION fnc_setor_rat_bos_div (RATNUM_ATIVIDADE VARCHAR (19), NOME_BAIRRO VARCHAR(50), LOGRADOURO VARCHAR(100), DES_ENDERECO VARCHAR(100),
LOGRADOURO2 VARCHAR(100), DES_ENDERECO2 VARCHAR(100), COMPLEMENTO_ENDERECO VARCHAR(30), COMPLEMENTO_ALFA VARCHAR(30), LATITUDE VARCHAR(20))
RETURNS VARCHAR (50)
BEGIN
	RETURN
		case -- case 2
	when
		RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'HIPER CENTRO' and VALIDADOR_TIPO = 'N_RAT') then 'HIPER CENTRO'
	when
        RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'BOM PASTOR' and VALIDADOR_TIPO = 'N_RAT') then 'BOM PASTOR'
	when
        RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ALTO GOIAS' and VALIDADOR_TIPO = 'N_RAT') then 'ALTO GOIAS'
	when
		RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SAO JOSE' and VALIDADOR_TIPO = 'N_RAT') then 'SAO JOSE'
	when
        RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PLANALTO' and VALIDADOR_TIPO = 'N_RAT') then 'PLANALTO'
	when
        RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'NITEROI' and VALIDADOR_TIPO = 'N_RAT') then 'NITEROI'
	when
        RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'N_RAT') then 'PORTO VELHO'
	else -- case2
		case -- case 3
        when
			NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'HIPER CENTRO'and VALIDADOR_TIPO = 'BAIRRO')  then 'HIPER CENTRO'
		when
            NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'BOM PASTOR' and VALIDADOR_TIPO = 'BAIRRO')  then 'BOM PASTOR'
		when
            NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ALTO GOIAS' and VALIDADOR_TIPO = 'BAIRRO') then 'ALTO GOIAS'
		when
			NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SAO JOSE'and VALIDADOR_TIPO = 'BAIRRO')  then 'SAO JOSE'
		when
            NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PLANALTO' and VALIDADOR_TIPO = 'BAIRRO')  then 'PLANALTO'
		when
            NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'NITEROI' and VALIDADOR_TIPO = 'BAIRRO') then 'NITEROI'
		when
            NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'BAIRRO') then 'PORTO VELHO'
            
            
        else -- case 3
			case -- case 4
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
			else -- case 4
            --         na tabela RAT não existe bairro não cadastrado o criterioo acima  não tera efeito
            	case -- case 5
				when
					DES_ENDERECO  in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'HIPER CENTRO' and VALIDADOR_TIPO = 'LOGRADOURO') then 'HIPER CENTRO'
				when
					DES_ENDERECO  in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'BOM PASTOR' and VALIDADOR_TIPO = 'LOGRADOURO') then 'BOM PASTOR'
				when	
                    DES_ENDERECO  in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ALTO GOIAS' and VALIDADOR_TIPO = 'LOGRADOURO') then 'ALTO GOIAS'
				when
					DES_ENDERECO  in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SAO JOSE' and VALIDADOR_TIPO = 'LOGRADOURO') then 'SAO JOSE'
				when
					DES_ENDERECO  in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PLANALTO' and VALIDADOR_TIPO = 'LOGRADOURO') then 'PLANALTO'
				when	
                    DES_ENDERECO  in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'NITEROI' and VALIDADOR_TIPO = 'LOGRADOURO') then 'NITEROI'
				when	
                    DES_ENDERECO  in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'LOGRADOURO') then 'PORTO VELHO'
				else -- case 5
					case -- case 6
					when
						LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'HIPER CENTRO' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'HIPER CENTRO'
					when	
                        LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'BOM PASTOR' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'BOM PASTOR'
					when	
                        LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ALTO GOIAS' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'ALTO GOIAS'
					when
						LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SAO JOSE' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'SAO JOSE'
					when	
                        LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PLANALTO' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'PLANALTO'
					when	
                        LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'NITEROI' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'NITEROI'
					when	
                        LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'PORTO VELHO'
		
					else -- case 6
						case -- case 7
						when
							DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'HIPER CENTRO' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'HIPER CENTRO'
						when	
                            DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'BOM PASTOR' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'BOM PASTOR'
						when	
                            DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ALTO GOIAS' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'ALTO GOIAS'
						when
							DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SAO JOSE' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'SAO JOSE'
						when	
                            DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PLANALTO' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'PLANALTO'
						when	
                            DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'NITEROI' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'NITEROI'
						when	
                            DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'PORTO VELHO'
	
						else -- case 7
						
							case -- case 8
							when
								COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'HIPER CENTRO' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'HIPER CENTRO'
							when	
                                COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'BOM PASTOR' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'BOM PASTOR'
							when	
                                COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ALTO GOIAS' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'ALTO GOIAS'
							when
								COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SAO JOSE' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'SAO JOSE'
							when	
                                COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PLANALTO' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'PLANALTO'
							when	
                                COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'NITEROI' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'NITEROI'
							when	
                               COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'PORTO VELHO'
								
							else -- case 8
								case -- case 9
								when
									COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'HIPER CENTRO' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'HIPER CENTRO'
								when
                                    COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'BOM PASTOR' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'BOM PASTOR'
								when	
                                    COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ALTO GOIAS' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'ALTO GOIAS'
								when
									COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SAO JOSE' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'SAO JOSE'
								when
                                    COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PLANALTO' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'PLANALTO'
								when	
                                    COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'NITEROI' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'NITEROI'
								when	
                                    COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'PORTO VELHO'
							                   
								else -- case 9
									case -- case 10
									when
										LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'HIPER CENTRO' and VALIDADOR_TIPO = 'PONTO_REF') then 'HIPER CENTRO'
									when	
                                        LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'BOM PASTOR' and VALIDADOR_TIPO = 'PONTO_REF') then 'BOM PASTOR'
									when	
                                        LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ALTO GOIAS' and VALIDADOR_TIPO = 'PONTO_REF') then 'ALTO GOIAS'
									when
										LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SAO JOSE' and VALIDADOR_TIPO = 'PONTO_REF') then 'SAO JOSE'
									when	
                                        LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PLANALTO' and VALIDADOR_TIPO = 'PONTO_REF') then 'PLANALTO'
									when	
                                        LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'NITEROI' and VALIDADOR_TIPO = 'PONTO_REF') then 'NITEROI'
									when	
                                        LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'PONTO_REF') then 'PORTO VELHO'

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
