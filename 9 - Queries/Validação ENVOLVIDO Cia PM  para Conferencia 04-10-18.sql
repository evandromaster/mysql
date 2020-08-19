select *,
case -- case 1
when
	MUNICIPIO != 'DIVINOPOLIS' then MUNICIPIO
else -- case 1
	case -- case 2
	when
		NREDS in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'N_REDS') then '53 Cia'
	when
        NREDS in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'N_REDS') then '139 Cia'
	when
        NREDS in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'N_REDS') then '142 Cia'
	else -- case2
		case -- case 3
        when
			BAIRRO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM'and VALIDADOR_TIPO = 'BAIRRO')  then '53 Cia'
		when
            BAIRRO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO')  then '139 Cia'
		when
            BAIRRO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO') then '142 Cia'
        else -- case 3
			case -- case 4
			when
				BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then '53 Cia'
			when
                BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then '139 Cia'
			when
                BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then '142 Cia'
					
			else -- case 4
            
            	case -- case 5
				when
					LOGRADOURO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '53 Cia'
				when
					LOGRADOURO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '139 Cia'
				when	
                    LOGRADOURO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '142 Cia'
					
				else -- case 5
					case -- case 6
					when
						LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '53 Cia'
					when	
                        LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '139 Cia'
					when	
                        LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '142 Cia'
					
					else -- case 6
						case -- case 7
						when
							LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then '53 Cia'
						when	
                            LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then '139 Cia'
						when	
                            LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then '142 Cia'
					
						else -- case 7
						
							case -- case 8
							when
								LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then '53 Cia'
							when	
                                LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then '139 Cia'
							when	
                                LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then '142 Cia'
					
							else -- case 8
								case -- case 9
								when
									COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '53 Cia'
								when
                                    COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '139 Cia'
								when	
                                    COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '142 Cia'
					                   
								else -- case 9
									case -- case 10
									when
										PONTO_REF in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then '53 Cia'
									when	
                                        PONTO_REF in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then '139 Cia'
									when	
                                        PONTO_REF in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then '142 Cia'
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
		NREDS in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'N_REDS') then 'NREDS'
	when
        NREDS in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'N_REDS') then 'NREDS'
	when
        NREDS in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'N_REDS') then 'NREDS'
	else -- case2
		case -- case 3
        when
			BAIRRO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM'and VALIDADOR_TIPO = 'BAIRRO')  then 'BAIRRO'
		when
            BAIRRO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO')  then 'BAIRRO'
		when
            BAIRRO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO') then 'BAIRRO'
        else -- case 3
			case -- case 4
			when
				BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then 'BAIRRO_NAO_CAD'
			when
                BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then 'BAIRRO_NAO_CAD'
			when
                BAIRRO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO_NAO_CAD') then 'BAIRRO_NAO_CAD'
					
			else -- case 4
            
            	case -- case 5
				when
					LOGRADOURO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then 'LOGRADOURO'
				when
					LOGRADOURO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then 'LOGRADOURO'
				when	
                    LOGRADOURO in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then 'LOGRADOURO'
					
				else -- case 5
					case -- case 6
					when
						LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'LOGRADOURO_NAO_CAD'
					when	
                        LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'LOGRADOURO_NAO_CAD'
					when	
                        LOGRADOURO_NAO_CAD in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'LOGRADOURO_NAO_CAD'
					
					else -- case 6
						case -- case 7
						when
							LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then 'LOGRADOURO_CRUZ'
						when	
                            LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then 'LOGRADOURO_CRUZ'
						when	
                            LOGRADOURO_CRUZ in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ') then 'LOGRADOURO_CRUZ'
					
						else -- case 7
						
							case -- case 8
							when
								LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then 'LOGRADOURO_CRUZ_NAO_CAD'
							when	
                                LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then 'LOGRADOURO_CRUZ_NAO_CAD'
							when	
                                LOGRADOURO_CRUZ_NAO_CAD in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_CRUZ_NAO_CAD') then 'LOGRADOURO_CRUZ_NAO_CAD'
					
							else -- case 8
								case -- case 9
								when
									COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'COMPLEMENTO_END'
								when
                                    COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'COMPLEMENTO_END'
								when	
                                    COMPLEMENTO_END in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'COMPLEMENTO_END'
					                   
								else -- case 9
									case -- case 10
									when
										PONTO_REF in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then 'PONTO_REF'
									when	
                                        PONTO_REF in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then 'PONTO_REF'
									when	
                                        PONTO_REF in (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then 'PONTO_REF'
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
as Tipo_validador
from tbl_ENVOLVIDO
/*where
-- NREDS not in (select NREDS from tbl_d_auditoria)

and MUNICIPIO = 'DIVINOPOLIS' limit 1000000*/
;

