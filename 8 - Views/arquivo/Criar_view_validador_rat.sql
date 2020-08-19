create view vw_valid_rat as

select *, DATE_FORMAT(DTA_INICIO,'%d/%m/%Y') AS DATA_FATO_BR,
case -- case 1
when
	MUNICIPIO != 'DIVINOPOLIS' then MUNICIPIO
else -- case 1
	case -- case 2
	when
		RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'N_RAT') then '53ª CIA PM'
	when
        RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'N_RAT') then '139ª CIA PM'
	when
        RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'N_RAT') then '142ª CIA PM'
	else -- case2
		case -- case 3
        when
			NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM'and VALIDADOR_TIPO = 'BAIRRO')  then '53ª CIA PM'
		when
            NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO')  then '139ª CIA PM'
		when
            NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO') then '142ª CIA PM'
        else -- case 3
			case -- case 4
			when
				LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '53ª CIA PM'
			when
                LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '139ª CIA PM'
			when
                LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '142ª CIA PM'
					
			else -- case 4
            
            	case -- case 5
				when
					DES_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '53ª CIA PM'
				when
					DES_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '139ª CIA PM'
				when	
                    DES_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '142ª CIA PM'
					
				else -- case 5
					case -- case 6
					when
						LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '53ª CIA PM'
					when	
                        LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '139ª CIA PM'
					when	
                        LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '142ª CIA PM'
					
					else -- case 6
						case -- case 7
						when
							DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '53ª CIA PM'
						when	
                            DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '139ª CIA PM'
						when	
                            DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '142ª CIA PM'
					
						else -- case 7
						
							case -- case 8
							when
								COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '53ª CIA PM'
							when	
                                COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '139ª CIA PM'
							when	
                                COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '142ª CIA PM'
					
							else -- case 8
								case -- case 9
								when
									COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '53ª CIA PM'
								when
                                    COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '139ª CIA PM'
								when	
                                    COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '142ª CIA PM'
					                   
								else -- case 9
									case -- case 10
									when
										LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then '53ª CIA PM'
									when	
                                        LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then '139ª CIA PM'
									when	
                                        LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then '142ª CIA PM'
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

end -- case 1;
as Cia_Base,
case -- case 1
when
	MUNICIPIO != 'DIVINOPOLIS' then MUNICIPIO
else -- case 1
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

end -- case 1;
as Tipo_validador,

case -- case 1

when	MUNICIPIO = 'CLAUDIO' then '139ª CIA PM'
when	MUNICIPIO in ('CARMO DO CAJURU', 'SAO GONCALO DO PARA') then '142ª CIA PM'
when	MUNICIPIO in ('ITAUNA', 'ITATIAIUCU') then '51ª CIA PM'
when 	MUNICIPIO not in ('DIVINOPOLIS', 'ITAUNA', 'ITATIAIUCU' , 'CLAUDIO', 'SAO GONCALO DO PARA', 'CARMO DO CAJURU') then MUNICIPIO

else -- case 1
	case -- case 2
	when
		RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'N_RAT') then '53ª CIA PM'
	when
        RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'N_RAT') then '139ª CIA PM'
	when
        RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'N_RAT') then '142ª CIA PM'
	else -- case2
		case -- case 3
        when
			NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM'and VALIDADOR_TIPO = 'BAIRRO')  then '53ª CIA PM'
		when
            NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO')  then '139ª CIA PM'
		when
            NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO') then '142ª CIA PM'
        else -- case 3
			case -- case 4
			when
				LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '53ª CIA PM'
			when
                LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '139ª CIA PM'
			when
                LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '142ª CIA PM'
					
			else -- case 4
            
            	case -- case 5
				when
					DES_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '53ª CIA PM'
				when
					DES_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '139ª CIA PM'
				when	
                    DES_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '142ª CIA PM'
					
				else -- case 5
					case -- case 6
					when
						LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '53ª CIA PM'
					when	
                        LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '139ª CIA PM'
					when	
                        LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '142ª CIA PM'
					
					else -- case 6
						case -- case 7
						when
							DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '53ª CIA PM'
						when	
                            DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '139ª CIA PM'
						when	
                            DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '142ª CIA PM'
					
						else -- case 7
						
							case -- case 8
							when
								COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '53ª CIA PM'
							when	
                                COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '139ª CIA PM'
							when	
                                COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '142ª CIA PM'
					
							else -- case 8
								case -- case 9
								when
									COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '53ª CIA PM'
								when
                                    COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '139ª CIA PM'
								when	
                                    COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '142ª CIA PM'
					                   
								else -- case 9
									case -- case 10
									when
										LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then '53ª CIA PM'
									when	
                                        LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then '139ª CIA PM'
									when	
                                        LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then '142ª CIA PM'
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

end -- case 1;
as COMPANHIA,

case -- condições para crimes Reunião Comunitária
	when 	NATCODIGO like 'A19%'
	then 1
else 0
end as IC,
case -- condições para crimes Visita Tranquilizadora
	when 	NATCODIGO like 'A20001'
	then 1
else 0
end as VT,
'rat' as rel,
-- ************** SETORIZAÇÃO

(case -- case 1

when	MUNICIPIO = 'CLAUDIO' then '139ª CIA PM'
when	MUNICIPIO in ('CARMO DO CAJURU', 'SAO GONCALO DO PARA') then '142ª CIA PM'
when	MUNICIPIO in ('ITAUNA', 'ITATIAIUCU') then '51ª CIA PM'
when 	MUNICIPIO not in ('DIVINOPOLIS', 'ITAUNA', 'ITATIAIUCU' , 'CLAUDIO', 'SAO GONCALO DO PARA', 'CARMO DO CAJURU') then MUNICIPIO
else -- case 1
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

end) -- case 1;
as SETOR

-- ************** FIM SETORIZAÇÃO



from tbl_rat
where
case -- case 1
when
	MUNICIPIO != 'DIVINOPOLIS' then MUNICIPIO
else -- case 1
	case -- case 2
	when
		RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'N_RAT') then '53ª CIA PM'
	when
        RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'N_RAT') then '139ª CIA PM'
	when
        RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'N_RAT') then '142ª CIA PM'
	else -- case2
		case -- case 3
        when
			NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM'and VALIDADOR_TIPO = 'BAIRRO')  then '53ª CIA PM'
		when
            NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO')  then '139ª CIA PM'
		when
            NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO') then '142ª CIA PM'
        else -- case 3
			case -- case 4
			when
				LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '53ª CIA PM'
			when
                LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '139ª CIA PM'
			when
                LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '142ª CIA PM'
					
			else -- case 4
            
            	case -- case 5
				when
					DES_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '53ª CIA PM'
				when
					DES_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '139ª CIA PM'
				when	
                    DES_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '142ª CIA PM'
					
				else -- case 5
					case -- case 6
					when
						LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '53ª CIA PM'
					when	
                        LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '139ª CIA PM'
					when	
                        LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '142ª CIA PM'
					
					else -- case 6
						case -- case 7
						when
							DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '53ª CIA PM'
						when	
                            DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '139ª CIA PM'
						when	
                            DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '142ª CIA PM'
					
						else -- case 7
						
							case -- case 8
							when
								COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '53ª CIA PM'
							when	
                                COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '139ª CIA PM'
							when	
                                COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '142ª CIA PM'
					
							else -- case 8
								case -- case 9
								when
									COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '53ª CIA PM'
								when
                                    COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '139ª CIA PM'
								when	
                                    COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '142ª CIA PM'
					                   
								else -- case 9
									case -- case 10
									when
										LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LATITUDE') then '53ª CIA PM'
									when	
                                        LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LATITUDE') then '139ª CIA PM'
									when	
                                        LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LATITUDE') then '142 Cia'
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

end -- case 1; 
like '%%'

and NATCODIGO like 'y%'


-- NREDS not in (select NREDS from tbl_d_auditoria)

/*and*/ and MUNICIPIO in ('DIVINOPOLIS', 'CLAUDIO', 'CARMO DO CAJURU', 'ITAUNA',  'ITATIAIUCU', 'SAO GONCALO DO PARA');