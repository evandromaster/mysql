create view vw_valid_ocorrencias_setor as

select NREDS, COD_DIAO, T_C, BAIRRO, BAIRRO_NAO_CAD, LOG_TIPO, LOGRADOURO, LOGRADOURO_NAO_CAD, COMPLEMENTO_END, PONTO_REF, MUNICIPIO, UN_AREA_MIL, UN_REGISTRO, LATITUDE, LONGITUDE,
concat(DATA_FATO, ' ', HORA_FATO) as DH_FATO, concat(DATA_COM, ' ', HORA_COM) as DH_COM,
(timediff(concat(DATA_COM, ' ', HORA_COM), concat(DATA_FATO, ' ', HORA_FATO))) as Difer_hora, DATE_FORMAT(DATA_FATO,'%d/%m/%Y') AS DATA_FATO_BR, DATA_FATO, MONTH(DATA_FATO) AS MESATUAL, 

/*CAMPO DE VALIDAÇÃO (CIA_BASE)*/
(case -- case 1
when
	MUNICIPIO != 'DIVINOPOLIS' then MUNICIPIO
else -- case 1
	case -- case 2
	when
		NREDS in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'N_REDS') then '53ª CIA PM'
	when
        NREDS in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'N_REDS') then '139ª CIA PM'
	when
        NREDS in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'N_REDS') then '142ª CIA PM'
	else -- case2
		case -- case 3
        when
			BAIRRO in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '53ª CIA PM'and VALIDADOR_TIPO = 'BAIRRO')  then '53ª CIA PM'
		when
            BAIRRO in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO')  then '139ª CIA PM'
		when
            BAIRRO in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO') then '142ª CIA PM'
        else -- case 3
			case -- case 4
			when
				BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then '53ª CIA PM'
			when
                BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then '139ª CIA PM'
			when
                BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then '142ª CIA PM'
					
			else -- case 4
            
            	case -- case 5
				when
					LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '53ª CIA PM'
				when
					LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '139ª CIA PM'
				when	
                    LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '142ª CIA PM'
					
				else -- case 5
					case -- case 6
					when
						LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '53ª CIA PM'
					when	
                        LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '139ª CIA PM'
					when	
                        LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '142ª CIA PM'
					
					else -- case 6
						case -- case 7
						when
							LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then '53ª CIA PM'
						when	
                            LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then '139ª CIA PM'
						when	
                            LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then '142ª CIA PM'
					
						else -- case 7
						
							case -- case 8
							when
								LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then '53ª CIA PM'
							when	
                                LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then '139ª CIA PM'
							when	
                                LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then '142ª CIA PM'
					
							else -- case 8
								case -- case 9
								when
									COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '53ª CIA PM'
								when
                                    COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '139ª CIA PM'
								when	
                                    COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '142ª CIA PM'
					                   
								else -- case 9
									case -- case 10
									when
										PONTO_REF in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then '53ª CIA PM'
									when	
                                        PONTO_REF in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then '139ª CIA PM'
									when	
                                        PONTO_REF in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then '142ª CIA PM'
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
as Cia_Base,

(case -- case 1

when	MUNICIPIO = 'CLAUDIO' then '139ª CIA PM'
when	MUNICIPIO in ('CARMO DO CAJURU', 'SAO GONCALO DO PARA') then '142ª CIA PM'
when	MUNICIPIO in ('ITAUNA', 'ITATIAIUCU') then '51ª CIA PM'
when 	MUNICIPIO not in ('DIVINOPOLIS', 'ITAUNA', 'ITATIAIUCU' , 'CLAUDIO', 'SAO GONCALO DO PARA', 'CARMO DO CAJURU') then MUNICIPIO
else -- case 1
	case -- case 2
	when
		NREDS in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'N_REDS') then '53ª CIA PM'
	when
        NREDS in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'N_REDS') then '139ª CIA PM'
	when
        NREDS in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'N_REDS') then '142ª CIA PM'
	else -- case2
		case -- case 3
        when
			BAIRRO in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '53ª CIA PM'and VALIDADOR_TIPO = 'BAIRRO')  then '53ª CIA PM'
		when
            BAIRRO in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO')  then '139ª CIA PM'
		when
            BAIRRO in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO') then '142ª CIA PM'
        else -- case 3
			case -- case 4
			when
				BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then '53ª CIA PM'
			when
                BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then '139ª CIA PM'
			when
                BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then '142ª CIA PM'
					
			else -- case 4
            
            	case -- case 5
				when
					LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '53ª CIA PM'
				when
					LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '139ª CIA PM'
				when	
                    LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '142ª CIA PM'
					
				else -- case 5
					case -- case 6
					when
						LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '53ª CIA PM'
					when	
                        LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '139ª CIA PM'
					when	
                        LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '142ª CIA PM'
					
					else -- case 6
						case -- case 7
						when
							LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then '53ª CIA PM'
						when	
                            LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then '139ª CIA PM'
						when	
                            LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then '142ª CIA PM'
					
						else -- case 7
						
							case -- case 8
							when
								LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then '53ª CIA PM'
							when	
                                LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then '139ª CIA PM'
							when	
                                LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then '142ª CIA PM'
					
							else -- case 8
								case -- case 9
								when
									COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '53ª CIA PM'
								when
                                    COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '139ª CIA PM'
								when	
                                    COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '142ª CIA PM'
					                   
								else -- case 9
									case -- case 10
									when
										PONTO_REF in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then '53ª CIA PM'
									when	
                                        PONTO_REF in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then '139ª CIA PM'
									when	
                                        PONTO_REF in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then '142ª CIA PM'
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
as COMPANHIA,



/*CAMPO DE TIPO VALIDADOR (SÓ APLICADO EM DIVINÓPOLIS)*/
case -- case 1
when
	MUNICIPIO != 'DIVINOPOLIS' then MUNICIPIO
else -- case 1
	case -- case 2
	when
		NREDS in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'N_REDS') then 'NREDS'
	when
        NREDS in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'N_REDS') then 'NREDS'
	when
        NREDS in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'N_REDS') then 'NREDS'
	else -- case2
		case -- case 3
        when
			BAIRRO in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '53ª CIA PM'and VALIDADOR_TIPO = 'BAIRRO')  then 'BAIRRO'
		when
            BAIRRO in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO')  then 'BAIRRO'
		when
            BAIRRO in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO') then 'BAIRRO'
        else -- case 3
			case -- case 4
			when
				BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then 'BAIRRO_NAO_CAD'
			when
                BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then 'BAIRRO_NAO_CAD'
			when
                BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then 'BAIRRO_NAO_CAD'
					
			else -- case 4
            
            	case -- case 5
				when
					LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then 'LOGRADOURO'
				when
					LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then 'LOGRADOURO'
				when	
                    LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then 'LOGRADOURO'
					
				else -- case 5
					case -- case 6
					when
						LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'LOGRADOURO_NAO_CAD'
					when	
                        LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'LOGRADOURO_NAO_CAD'
					when	
                        LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'LOGRADOURO_NAO_CAD'
					
					else -- case 6
						case -- case 7
						when
							LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then 'LOGRADOURO_CRUZ'
						when	
                            LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then 'LOGRADOURO_CRUZ'
						when	
                            LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then 'LOGRADOURO_CRUZ'
					
						else -- case 7
						
							case -- case 8
							when
								LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then 'LOGRADOURO_CRUZ_NAO_CAD'
							when	
                                LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then 'LOGRADOURO_CRUZ_NAO_CAD'
							when	
                                LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then 'LOGRADOURO_CRUZ_NAO_CAD'
					
							else -- case 8
								case -- case 9
								when
									COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'COMPLEMENTO_END'
								when
                                    COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'COMPLEMENTO_END'
								when	
                                    COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'COMPLEMENTO_END'
					                   
								else -- case 9
									case -- case 10
									when
										PONTO_REF in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then 'PONTO_REF'
									when	
                                        PONTO_REF in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then 'PONTO_REF'
									when	
                                        PONTO_REF in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then 'PONTO_REF'
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

end -- case 1
as Tipo_validador,
-- ************** SETORIZAÇÃO

(case -- case 1

when	MUNICIPIO = 'CLAUDIO' then '139ª CIA PM'
when	MUNICIPIO in ('CARMO DO CAJURU', 'SAO GONCALO DO PARA') then '142ª CIA PM'
when	MUNICIPIO in ('ITAUNA', 'ITATIAIUCU') then '51ª CIA PM'
when 	MUNICIPIO not in ('DIVINOPOLIS', 'ITAUNA', 'ITATIAIUCU' , 'CLAUDIO', 'SAO GONCALO DO PARA', 'CARMO DO CAJURU') then MUNICIPIO
else -- case 1
	case -- case 2
	when
		NREDS in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'HIPER CENTRO' and VALIDADOR_TIPO = 'N_REDS') then 'HIPER CENTRO'
	when
        NREDS in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'BOM PASTOR' and VALIDADOR_TIPO = 'N_REDS') then 'BOM PASTOR'
	when
        NREDS in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'ALTO GOIAS' and VALIDADOR_TIPO = 'N_REDS') then 'ALTO GOIAS'
	when
		NREDS in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'SAO JOSE' and VALIDADOR_TIPO = 'N_REDS') then 'SAO JOSE'
	when
        NREDS in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'PLANALTO' and VALIDADOR_TIPO = 'N_REDS') then 'PLANALTO'
	when
        NREDS in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'NITEROI' and VALIDADOR_TIPO = 'N_REDS') then 'NITEROI'
	when
        NREDS in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'N_REDS') then 'PORTO VELHO'
	else -- case2
		case -- case 3
        when
			BAIRRO in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'HIPER CENTRO'and VALIDADOR_TIPO = 'BAIRRO')  then 'HIPER CENTRO'
		when
            BAIRRO in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'BOM PASTOR' and VALIDADOR_TIPO = 'BAIRRO')  then 'BOM PASTOR'
		when
            BAIRRO in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'ALTO GOIAS' and VALIDADOR_TIPO = 'BAIRRO') then 'ALTO GOIAS'
		when
			BAIRRO in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'SAO JOSE'and VALIDADOR_TIPO = 'BAIRRO')  then 'SAO JOSE'
		when
            BAIRRO in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'PLANALTO' and VALIDADOR_TIPO = 'BAIRRO')  then 'PLANALTO'
		when
            BAIRRO in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'NITEROI' and VALIDADOR_TIPO = 'BAIRRO') then 'NITEROI'
		when
            BAIRRO in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'BAIRRO') then 'PORTO VELHO'
            
            
        else -- case 3
			case -- case 4
			when
				BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'HIPER CENTRO' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then 'HIPER CENTRO'
			when
                BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'BOM PASTOR' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then 'BOM PASTOR'
			when
                BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'ALTO GOIAS' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then 'ALTO GOIAS'
			when
				BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'SAO JOSE' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then 'HIPER CENTRO'
			when
                BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'PLANALTO' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then 'PLANALTO'
			when
                BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'NITEROI' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then 'NITEROI'
			when
                BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then 'PORTO VELHO'
			else -- case 4
            
            	case -- case 5
				when
					LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'HIPER CENTRO' and VALIDADOR_TIPO = 'LOGRADOURO') then 'HIPER CENTRO'
				when
					LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'BOM PASTOR' and VALIDADOR_TIPO = 'LOGRADOURO') then 'BOM PASTOR'
				when	
                    LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'ALTO GOIAS' and VALIDADOR_TIPO = 'LOGRADOURO') then 'ALTO GOIAS'
				when
					LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'SAO JOSE' and VALIDADOR_TIPO = 'LOGRADOURO') then 'SAO JOSE'
				when
					LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'PLANALTO' and VALIDADOR_TIPO = 'LOGRADOURO') then 'PLANALTO'
				when	
                    LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'NITEROI' and VALIDADOR_TIPO = 'LOGRADOURO') then 'NITEROI'
				when	
                    LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'LOGRADOURO') then 'PORTO VELHO'
				else -- case 5
					case -- case 6
					when
						LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'HIPER CENTRO' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'HIPER CENTRO'
					when	
                        LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'BOM PASTOR' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'BOM PASTOR'
					when	
                        LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'ALTO GOIAS' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'ALTO GOIAS'
					when
						LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'SAO JOSE' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'SAO JOSE'
					when	
                        LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'PLANALTO' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'PLANALTO'
					when	
                        LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'NITEROI' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'NITEROI'
					when	
                        LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'PORTO VELHO'
		
					else -- case 6
						case -- case 7
						when
							LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'HIPER CENTRO' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then 'HIPER CENTRO'
						when	
                            LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'BOM PASTOR' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then 'BOM PASTOR'
						when	
                            LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'ALTO GOIAS' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then 'ALTO GOIAS'
						when
							LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'SAO JOSE' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then 'SAO JOSE'
						when	
                            LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'PLANALTO' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then 'PLANALTO'
						when	
                            LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'NITEROI' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then 'NITEROI'
						when	
                            LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then 'PORTO VELHO'
	
						else -- case 7
						
							case -- case 8
							when
								LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'HIPER CENTRO' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then 'HIPER CENTRO'
							when	
                                LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'BOM PASTOR' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then 'BOM PASTOR'
							when	
                                LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'ALTO GOIAS' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then 'ALTO GOIAS'
							when
								LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'SAO JOSE' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then 'SAO JOSE'
							when	
                                LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'PLANALTO' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then 'PLANALTO'
							when	
                                LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'NITEROI' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then 'NITEROI'
							when	
                                LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then 'PORTO VELHO'
								
							else -- case 8
								case -- case 9
								when
									COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'HIPER CENTRO' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'HIPER CENTRO'
								when
                                    COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'BOM PASTOR' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'BOM PASTOR'
								when	
                                    COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'ALTO GOIAS' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'ALTO GOIAS'
								when
									COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'SAO JOSE' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'SAO JOSE'
								when
                                    COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'PLANALTO' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'PLANALTO'
								when	
                                    COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'NITEROI' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'NITEROI'
								when	
                                    COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'PORTO VELHO'
							                   
								else -- case 9
									case -- case 10
									when
										PONTO_REF in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'HIPER CENTRO' and VALIDADOR_TIPO = 'PONTO_REF') then 'HIPER CENTRO'
									when	
                                        PONTO_REF in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'BOM PASTOR' and VALIDADOR_TIPO = 'PONTO_REF') then 'BOM PASTOR'
									when	
                                        PONTO_REF in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'ALTO GOIAS' and VALIDADOR_TIPO = 'PONTO_REF') then 'ALTO GOIAS'
									when
										PONTO_REF in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'SAO JOSE' and VALIDADOR_TIPO = 'PONTO_REF') then 'SAO JOSE'
									when	
                                        PONTO_REF in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'PLANALTO' and VALIDADOR_TIPO = 'PONTO_REF') then 'PLANALTO'
									when	
                                        PONTO_REF in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'NITEROI' and VALIDADOR_TIPO = 'PONTO_REF') then 'NITEROI'
									when	
                                        PONTO_REF in (SELECT VALIDADOR FROM tbl_validadores_cia_setor WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'PONTO_REF') then 'PORTO VELHO'

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
as SETOR,

-- ************** FIM SETORIZAÇÃO
/*CAMPO DE CRIMES VIOLENTOS E EXTORSÃO (ATRIBIU 1, QUANDO FOR E 0, QUANDO NÃO FOR)*/
case -- condições para crimes violentos
		when ( -- INÍCIO CONDIÇÃO 1		
					(COD_DIAO in ('C01157', 'B01148', 'C01159', 'C01158') and T_C = 'CONSUMADO')	  
				or  COD_DIAO in ('B01121', 'D01213', 'D01217')
			 ) -- FIM CONDIÇÃO 1 (NATUREZAS)
         
		and
         
			 (right(NREDS,3) = '001') -- CONDIÇÃO 2 (EXCLUI OCORRÊNCIAS ASSOCIADAS, DIREFENTES DE 001)
         
    then 1
else 0
end as CV,

/*CAMPO DE CRIMES PARA TRI (ATRIBIU 1, QUANDO FOR E 0, QUANDO NÃO FOR)*/
case -- condições para crimes TRI
	when 	(	
				(COD_DIAO in ('C01157', 'B01148', 'C01159', 'C01158') and T_C = 'CONSUMADO')	  
				or
                COD_DIAO in ('B01121', 'D01213', 'D01217')
			)
				and timediff(concat(DATA_COM, ' ', HORA_COM), concat(DATA_FATO, ' ', HORA_FATO)) < convert('12:00:00', time)            
                and ORG_UN_REG = 'POLICIA MILITAR'
                and (right(NREDS,3) = '001')
    then 1	
else 0
end as TRI,

/*CAMPO DE CRIMES PARA TX DE ATEND. AS VIT (ATRIBIU 1, QUANDO FOR E 0, QUANDO NÃO FOR)*/
case -- condições para crimes TX_ATEND_VIT
	when 	(	
					(COD_DIAO in ('C01157', 'B01148', 'C01159', 'C01158') and T_C = 'CONSUMADO')	  
				or  COD_DIAO = 'B01121'         		            
            )
			and (right(NREDS,3) = '001')
    then 1	
else 0
end as TX_ATEND_VIT,

/*CAMPO DE CRIMES PARA IAF (ATRIBIU 1, QUANDO FOR E 0, QUANDO NÃO FOR)*/
case -- condições para crimes IAF
	when 	COD_DIAO in ('B01121', 'C01157', 'C01158', 'C01159',  'D01213', 'E03015')
			and DESC_MEIO_UTILIZADO in ('ARMA DE FOGO', 'ARMAS DE FOGO')
            and (right(NREDS,3) = '001')
    then 1
else 0
end as IAF,

/*CAMPO QUE APONTA OS CRIMES AUDITADOS (ATRIBIU 1, QUANDO TIVER DE SER CONTABILIZADO E 0, QUANDO NÃO TIVER)*/
case
	when NREDS not in (select NREDS from tbl_d_auditoria) then 1
else 0
end as Auditoria,

case -- condições para crimes IAF
	when 	MONTH(DATA_FATO) ='1' then 2
    when 	MONTH(DATA_FATO) ='2' then 3
    when 	MONTH(DATA_FATO) ='3' then 4
    when 	MONTH(DATA_FATO) ='4' then 5
    when 	MONTH(DATA_FATO) ='5' then 6
    when 	MONTH(DATA_FATO) ='6' then 7
    when 	MONTH(DATA_FATO) ='7' then 8
    when 	MONTH(DATA_FATO) ='8' then 9
    when 	MONTH(DATA_FATO) ='9' then 10
    when 	MONTH(DATA_FATO) ='10' then 11
	when 	MONTH(DATA_FATO) ='11' then 12
	when 	MONTH(DATA_FATO) ='12' then 1
else 0
end as MESANTERIOR,
(SELECT OBJECTID FROM tbl_quadriculas
WHERE TBL_OCORRENCIAS.LATITUDE >= TBL_QUADRICULAS.MINY AND TBL_OCORRENCIAS.LATITUDE <= TBL_QUADRICULAS.MAXY
AND TBL_OCORRENCIAS.LONGITUDE >= TBL_QUADRICULAS.MINX AND TBL_OCORRENCIAS.LONGITUDE <= TBL_QUADRICULAS.MAXX
AND DATA_FATO  ='2018-01-31'
) AS QUADRICULA

-- 'cr' as rel
from tbl_ocorrencias;