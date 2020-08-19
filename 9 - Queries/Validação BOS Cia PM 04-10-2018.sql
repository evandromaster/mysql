select RATNUM_ATIVIDADE, NATCODIGO, DTA_INICIO, month(DTA_INICIO)AS MES, LOGRADOURO, DES_ENDERECO, NOME_BAIRRO, MUNICIPIO, NOM_UNIDADE_AREA, COMPLEMENTO_ALFA,
COMPLEMENTO_ENDERECO, DTA_INICIO, LATITUDE, LONGITUDE,
case -- case 1
when
	MUNICIPIO != 'DIVINOPOLIS' then MUNICIPIO
else -- case 1
	case -- case 2
	when
		RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'N_RAT') then '53 Cia'
	when
        RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'N_RAT') then '139 Cia'
	when
        RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'N_RAT') then '142 Cia'
	else -- case2
		case -- case 3
        when
			NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM'and VALIDADOR_TIPO = 'BAIRRO')  then '53 Cia'
		when
            NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO')  then '139 Cia'
		when
            NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO') then '142 Cia'
        else -- case 3
			case -- case 4
			when
				LOGRADOURO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '53 Cia'
			when
                LOGRADOURO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '139 Cia'
			when
                LOGRADOURO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '142 Cia'
					
			else -- case 4
            
            	case -- case 5
				when
					DES_ENDERECO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '53 Cia'
				when
					DES_ENDERECO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '139 Cia'
				when	
                    DES_ENDERECO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '142 Cia'
					
				else -- case 5
					case -- case 6
					when
						LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '53 Cia'
					when	
                        LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '139 Cia'
					when	
                        LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '142 Cia'
					
					else -- case 6
						case -- case 7
						when
							DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '53 Cia'
						when	
                            DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '139 Cia'
						when	
                            DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '142 Cia'
					
						else -- case 7
						
							case -- case 8
							when
								COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '53 Cia'
							when	
                                COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '139 Cia'
							when	
                                COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '142 Cia'
					
							else -- case 8
								case -- case 9
								when
									COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '53 Cia'
								when
                                    COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '139 Cia'
								when	
                                    COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '142 Cia'
					                   
								else -- case 9
									case -- case 10
									when
										LATITUDE in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then '53 Cia'
									when	
                                        LATITUDE in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then '139 Cia'
									when	
                                        LATITUDE in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then '142 Cia'
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
		RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'N_RAT') then 'N_RAT'
	when
        RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'N_RAT') then 'N_RAT'
	when
        RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'N_RAT') then 'N_RAT'
	else -- case2
		case -- case 3
        when
			NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM'and VALIDADOR_TIPO = 'BAIRRO')  then 'BAIRRO'
		when
            NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO')  then 'BAIRRO'
		when
            NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO') then 'BAIRRO'
        else -- case 3
			case -- case 4
			when
				LOGRADOURO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then 'LOGRADOURO'
			when
                LOGRADOURO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then 'LOGRADOURO'
			when
                LOGRADOURO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then 'LOGRADOURO'
					
			else -- case 4
            
            	case -- case 5
				when
					DES_ENDERECO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then 'DES_ENDERECO'
				when
					DES_ENDERECO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then 'DES_ENDERECO'
				when	
                    DES_ENDERECO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then 'DES_ENDERECO'
					
				else -- case 5
					case -- case 6
					when
						LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'LOGRADOURO2'
					when	
                        LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'LOGRADOURO2'
					when	
                        LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'LOGRADOURO2'
					
					else -- case 6
						case -- case 7
						when
							DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'DES_ENDERECO2'
						when	
                            DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'DES_ENDERECO2'
						when	
                            DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'DES_ENDERECO2'
					
						else -- case 7
						
							case -- case 8
							when
								COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'COMPLEMENTO_ENDERECO'
							when	
                                COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'COMPLEMENTO_ENDERECO'
							when	
                                COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'COMPLEMENTO_ENDERECO'
					
							else -- case 8
								case -- case 9
								when
									COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'COMPLEMENTO_ALFA'
								when
                                    COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'COMPLEMENTO_ALFA'
								when	
                                    COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'COMPLEMENTO_ALFA'
					                   
								else -- case 9
									case -- case 10
									when
										LATITUDE in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then 'LATITUDE'
									when	
                                        LATITUDE in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then 'LATITUDE'
									when	
                                        LATITUDE in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then 'LATITUDE'
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
as Tipo_validador
from tbl_bos
where
case -- case 1
when
	MUNICIPIO != 'DIVINOPOLIS' then MUNICIPIO
else -- case 1
	case -- case 2
	when
		RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'N_RAT') then '53 Cia'
	when
        RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'N_RAT') then '139 Cia'
	when
        RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'N_RAT') then '142 Cia'
	else -- case2
		case -- case 3
        when
			NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM'and VALIDADOR_TIPO = 'BAIRRO')  then '53 Cia'
		when
            NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO')  then '139 Cia'
		when
            NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO') then '142 Cia'
        else -- case 3
			case -- case 4
			when
				LOGRADOURO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '53 Cia'
			when
                LOGRADOURO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '139 Cia'
			when
                LOGRADOURO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '142 Cia'
					
			else -- case 4
            
            	case -- case 5
				when
					DES_ENDERECO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '53 Cia'
				when
					DES_ENDERECO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '139 Cia'
				when	
                    DES_ENDERECO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '142 Cia'
					
				else -- case 5
					case -- case 6
					when
						LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '53 Cia'
					when	
                        LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '139 Cia'
					when	
                        LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '142 Cia'
					
					else -- case 6
						case -- case 7
						when
							DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '53 Cia'
						when	
                            DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '139 Cia'
						when	
                            DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '142 Cia'
					
						else -- case 7
						
							case -- case 8
							when
								COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '53 Cia'
							when	
                                COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '139 Cia'
							when	
                                COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '142 Cia'
					
							else -- case 8
								case -- case 9
								when
									COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '53 Cia'
								when
                                    COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '139 Cia'
								when	
                                    COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '142 Cia'
					                   
								else -- case 9
									case -- case 10
									when
										LATITUDE in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LATITUDE') then '53 Cia'
									when	
                                        LATITUDE in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LATITUDE') then '139 Cia'
									when	
                                        LATITUDE in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LATITUDE') then '142 Cia'
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

and ((NATCODIGO like 'A19%') OR (NATCODIGO like 'A20001'))


-- NREDS not in (select NREDS from tbl_d_auditoria)

/*and*/ and MUNICIPIO = 'DIVINOPOLIS' limit 1000000
;