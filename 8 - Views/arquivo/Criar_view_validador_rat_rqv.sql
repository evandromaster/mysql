create view vw_valid_rat_rqv as
SELECT R.MUNICIPIO, R.NOM_UNID_RESPONSAVEL, DTA_INICIO,
	r.RATNUM_ATIVIDADE,
    r.NATCODIGO,    
    concat(r.DTA_INICIO, ' ', r.HRA_INICIO) as DH_INICIO,
    concat(r.DTA_TERMINO, ' ', r.HRA_TERMINO) as DH_FIM,
    (
		timediff(concat(r.DTA_TERMINO, ' ', r.HRA_TERMINO), concat(r.DTA_INICIO, ' ', r.HRA_INICIO))
    ) as TEMPO_EXEC,    
    -- count(e.num_matricula) as EFETIVO, -- errado
    count(distinct(e.num_matricula)) as EFETIVO,  -- jeito correto
    count(distinct(v.NUM_PREFIXO)) as VIATURAS,
    
    SUM(distinct(
		CASE
			WHEN p.descricao ='Qde de pessoas abordadas'
			THEN p.QUANTIDADE
			ELSE 0
		END)
	) AS ABORDADOS,
    
    SUM(distinct(
		CASE
			WHEN p.descricao ='Qde de veiculos fiscalizados'
			THEN p.QUANTIDADE
			ELSE 0
		END) 
    ) AS VEIC_FISCALIZADOS,
    
    SUM(DISTINCT(
		CASE
			WHEN p.descricao ='Qde de locais fiscalizados'
			THEN p.QUANTIDADE
			ELSE 0
		END)
    ) AS LOCAIS_FISCALIZADOS,
	
 -- --------------------------------------------------------------------------------------------------------------------------INICIO EFICIENCIA E EFICACIA 
case -- case EFICIENCIA/EFICACIA
	when
		(
			NATCODIGO = 'Y07001'
			           
            AND 
            (count(distinct(e.num_matricula)) >=2)
			AND        
			(
				timediff(concat(r.DTA_TERMINO, ' ', r.HRA_TERMINO), concat(r.DTA_INICIO, ' ', r.HRA_INICIO))
			) >= '00:30:00.000000'
            AND
            (
					(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de pessoas abordadas' THEN p.quantidade ELSE 0 END)) >= 5)
				OR 
					(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de veiculos fiscalizados' THEN p.quantidade ELSE 0 END)) >= 2)
            )
			
			
        )
       
	then 1 -- BATIDA POLICIAL
	   
    when
		(
			NATCODIGO = 'Y07003'			           
            
            AND
				(count(distinct(e.num_matricula)) >=3)
			AND        
				(
					timediff(concat(r.DTA_TERMINO, ' ', r.HRA_TERMINO), concat(r.DTA_INICIO, ' ', r.HRA_INICIO))
				) >= '00:30:00.000000'
            AND
				(count(distinct(v.NUM_PREFIXO))>=1)
            
            AND
				(
						(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de pessoas abordadas' THEN p.quantidade ELSE 0 END)) >= 5)
					OR
						(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de veiculos fiscalizados' THEN p.quantidade ELSE 0 END)) >= 2)
					OR 
						(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de locais fiscalizados' THEN p.quantidade ELSE 0 END)) >= 2)	
                )
        )
	then 1 -- INCURSAO EM ZQC
       
       when
		(
				NATCODIGO = 'Y07004' -- CERCO BLOQUEIO			           
            AND 
				(count(distinct(e.num_matricula)) >=3)
			AND
				(count(distinct(v.NUM_PREFIXO))>=2)
            AND
				(
						(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de pessoas abordadas' THEN p.quantidade ELSE 0 END)) >= 5)
					OR 
						(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de veiculos fiscalizados' THEN p.quantidade ELSE 0 END)) >= 2)
                )
        )
       
	then 1 -- CERCO BLOQUEIO
    
    when
		(
				NATCODIGO = 'Y07005' -- OCUPACAO DE PONTOS CRITICOS
            AND 
				(count(distinct(e.num_matricula)) >=3)
			AND        
				(timediff(concat(r.DTA_TERMINO, ' ', r.HRA_TERMINO), concat(r.DTA_INICIO, ' ', r.HRA_INICIO))) >= '00:60:00.000000'
            AND
				(count(distinct(v.NUM_PREFIXO))>=1)
            AND            
				(
						(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de pessoas abordadas' THEN p.quantidade ELSE 0 END)) >= 5)
					OR 
						(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de veiculos fiscalizados' THEN p.quantidade ELSE 0 END)) >= 2)
					OR 
						(SUM(DISTINCT(CASE WHEN p.descricao ='Qde de locais fiscalizados' THEN p.quantidade ELSE 0 END)) >= 2)	
                )
        )
	then 1 -- OCUPACAO DE PONTOS CRITICOS
    
	else 0    
    
    END AS EFICIENCIA_EFICACIA,
 -- --------------------------------------------------------------------------------------------------------------------------FIM EFICIENCIA E EFICACIA   
        SUM(distinct(
		CASE
			WHEN p.descricao IN ('FLAGRANTE DE ATO INFRACIONAL (AUTOR)',
								'FLAGRANTE DE ATO INFRACIONAL (CO-AUTOR)',
								'FLAGRANTE DE ATO INFRACIONAL (CONDUTOR DO VEICULO)',
								'FLAGRANTE DE CRIME / CONTRAVEN (AUTOR)',
								'FLAGRANTE DE CRIME / CONTRAVEN (CO-AUTOR)',
								'FLAGRANTE DE CRIME / CONTRAVEN (CONDUTOR DO VEICULO)',
								'MANDADO JUDICIAL (AUTOR)',
								'OUTRAS - PRISAO / APREENSAO (AUTOR)',
								'OUTRAS - PRISAO / APREENSAO (CO-AUTOR)',
								'OUTRAS - PRISAO / APREENSAO (CONDUTOR DO VEICULO)',
								'RECAPTURA (AUTOR)')
			THEN p.QUANTIDADE
			ELSE 0
		END)
	) AS PESSOAS_PRES_APREEND,
    
    SUM(distinct(
		CASE
			WHEN p.descricao IN ('ARMAS DE FOGO DISSIMULADAS (USO RESTRITO) - APREENDIDO',
								'CARABINA / RIFLE - APREENDIDO',
								'ESPINGARDA / ESCOPETA - APREENDIDO',
								'ESPINGARDA POLVEIRA - APREENDIDO',
								'GARRUCHA - APREENDIDO',
								'GARRUCHA - RECOLHIDO',
								'METRALHADORA (USO RESTRITO) - APREENDIDO',
								'PISTOLA - APREENDIDO',
								'PISTOLETE (CALIBRE DE ESPINGARDA) - APREENDIDO',
								'REVOLVER - APREENDIDO',
								'SUBMETRALHADORA (USO RESTRITO) - APREENDIDO'
)
			THEN p.QUANTIDADE
			ELSE 0
		END)
	) AS ARMAS_FOGO,
    
    SUM(distinct(
		CASE
			WHEN p.descricao IN ('CARTUCHO INTACTO (MUNICAO) DE ARMA DE FOGO DE (UNIDADE) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE ARMA DE FOGO DE (DUZIA) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE ARMA DE FOGO DE (CENTO) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE CALIBRE RESTRIT (UNIDADE) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE CALIBRE RESTRIT (DUZIA) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE CALIBRE RESTRIT (CENTO) - APREENDIDO',
								'CARTUCHO VAZIO DE MUNICAO DE USO RESTRITO (UNIDADE) - APREENDIDO',
								'CARTUCHO VAZIO DE MUNICAO DE USO RESTRITO (DUZIA) - APREENDIDO',
								'CARTUCHOS VAZIOS, SEMI-CARREGADOS (PERMITIDO) (UNIDADE) - APREENDIDO',
								'MUNICAO - DEMAIS SUBSTANCIAS, PRODUTOS SUJEIT (UNIDADE) - APREENDIDO'

)
			THEN p.QUANTIDADE
			ELSE 0
		END)
	) AS MUNICOES,
    
    SUM(distinct(
		CASE
			WHEN p.descricao IN ('ARTEFATO EXPLOSIVO / BOMBA EXPLOSIVA / ETC (UNIDADE) - APREENDIDO',
								'MUNICAO QUIMICA, EXPLOSIVA OU FULMIGENA(RESTR (UNIDADE) - APREENDIDO',
								'OUTROS  - EXPLOSIVOS / MUNICOES / TIRO ESPORT (UNIDADE) - APREENDIDO'


				)
			THEN p.QUANTIDADE
			ELSE 0
		END)
	) AS ARTEFATOS_EXPLOSIVOS, 
    
    SUM(distinct(
		CASE
			WHEN p.descricao IN ('COLETES CONTRA ARMAS DE FOGO DE USO PERMITIDO (UNIDADE) - APREENDIDO',
								'COLETES CONTRA ARMAS DE FOGO DE USO RESTRITO (UNIDADE) - APREENDIDO'
				)
			THEN p.QUANTIDADE
			ELSE 0
		END)
	) AS COLETES, 
    
	SUM(distinct(
		CASE
			WHEN p.descricao IN ('BUCHA DE MACONHA (CENTO) - APREENDIDO',
								'BUCHA DE MACONHA (DUZIA) - APREENDIDO',
								'BUCHA DE MACONHA (GRAMA) - APREENDIDO',
								'BUCHA DE MACONHA (MILHEIRO) - APREENDIDO',
								'BUCHA DE MACONHA (UNIDADE) - APREENDIDO',
								'CIGARRO DE MACONHA (UNIDADE) - APREENDIDO',
								'COCAINA EM PO (CENTO) - APREENDIDO',
								'COCAINA EM PO (GRAMA) - APREENDIDO',
								'COCAINA EM PO (UNIDADE) - APREENDIDO',
								'CRACK EM PEDRAS (CENTO) - APREENDIDO',
								'CRACK EM PEDRAS (DUZIA) - APREENDIDO',
								'CRACK EM PEDRAS (GRAMA) - APREENDIDO',
								'CRACK EM PEDRAS (UNIDADE) - APREENDIDO',
								'CRACK EM QUILOGRAMAS (GRAMA) - APREENDIDO',
								'CRACK EM QUILOGRAMAS (QUILOGRAMA) - APREENDIDO',
								'CRACK EM QUILOGRAMAS (UNIDADE) - APREENDIDO',
								'ECSTASY / MDMA (UNIDADE) - APREENDIDO',
								'HAXIXE EM BOLA (DUZIA) - APREENDIDO',
								'HAXIXE EM BOLA (UNIDADE) - APREENDIDO',
								'HAXIXE EM TABLETE (QUILOGRAMA) (UNIDADE) - APREENDIDO',
								'LOLO (LITRO) - APREENDIDO',
								'LOLO (MILIGRAMA) - APREENDIDO',
								'LOLO (UNIDADE) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (CENTIMETRO) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (GRAMA) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (MILHEIRO) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (QUILOGRAMA) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (UNIDADE) - APREENDIDO',
								'OUTROS - COCAINA (CENTO) - APREENDIDO',
								'OUTROS - COCAINA (GRAMA) - APREENDIDO',
								'OUTROS - COCAINA (UNIDADE) - APREENDIDO',
								'OUTROS - CRACK (UNIDADE) - APREENDIDO',
								'OUTROS - HAXIXE (UNIDADE) - APREENDIDO',
								'OUTROS - LSD (UNIDADE) - APREENDIDO',
								'OUTROS - MACONHA (GRAMA) - APREENDIDO',
								'OUTROS - MACONHA (QUILOGRAMA) - APREENDIDO',
								'OUTROS - MACONHA (UNIDADE) - APREENDIDO',
								'PAPELOTES DE COCAINA (DUZIA) - APREENDIDO',
								'PAPELOTES DE COCAINA (GRAMA) - APREENDIDO',
								'PAPELOTES DE COCAINA (UNIDADE) - APREENDIDO',
								'PASTA DE COCAINA (GRAMA) - APREENDIDO',
								'PASTA DE COCAINA (UNIDADE) - APREENDIDO',
								'PLANTACAO (PE) DE MACONHA (UNIDADE) - APREENDIDO',
								'SEMENTE DE MACONHA (GRAMA) - APREENDIDO',
								'SEMENTE DE MACONHA (UNIDADE) - APREENDIDO'

				)
			THEN p.QUANTIDADE
			ELSE 0
		END)
	) AS DROGAS,
    
    SUM(distinct(
		CASE
			WHEN p.descricao IN ('AUTOMOVEL - APREENDIDO',
								'AUTOMOVEL - RECUPERADO',
								'CAMINHAO - APREENDIDO',
								'CAMINHAO - RECUPERADO',
								'CAMINHAO/TRATOR - APREENDIDO',
								'CAMINHAO/TRATOR - RECUPERADO',
								'CAMINHONETE - APREENDIDO',
								'CAMINHONETE - RECUPERADO',
								'CAMIONETA - APREENDIDO',
								'CAMIONETA - RECUPERADO',
								'CICLOMOTOR - APREENDIDO',
								'CICLOMOTOR - RECUPERADO',
								'MICROONIBUS - APREENDIDO',
								'MICROONIBUS - RECUPERADO',
								'MOTOCICLETA - APREENDIDO',
								'MOTOCICLETA - RECUPERADO',
								'MOTONETA - APREENDIDO',
								'MOTONETA - RECUPERADO',
								'ONIBUS - APREENDIDO',
								'ONIBUS - RECUPERADO',
								'OUTROS - TIPOS DE VEICULO - APREENDIDO',
								'OUTROS - TIPOS DE VEICULO  - RECUPERADO',
								'REBOQUE - APREENDIDO',
								'REBOQUE - RECUPERADO',
								'TRATOR DE RODAS - RECUPERADO',
								'UTILITARIO (TIPO DE VEICULO) - APREENDIDO'

				)
			THEN p.QUANTIDADE
			ELSE 0
		END)
	) AS VEICULOS,
-- ---------------------------------------------------------------------------------------------------------------------------------- INICIO CONDIÇÕES EFETIVIDADE
	case -- case EFETIVIDADE
	when
		(
			            
		SUM(distinct(
			CASE
			WHEN p.descricao IN ('FLAGRANTE DE ATO INFRACIONAL (AUTOR)',
								'FLAGRANTE DE ATO INFRACIONAL (CO-AUTOR)',
								'FLAGRANTE DE ATO INFRACIONAL (CONDUTOR DO VEICULO)',
								'FLAGRANTE DE CRIME / CONTRAVEN (AUTOR)',
								'FLAGRANTE DE CRIME / CONTRAVEN (CO-AUTOR)',
								'FLAGRANTE DE CRIME / CONTRAVEN (CONDUTOR DO VEICULO)',
								'MANDADO JUDICIAL (AUTOR)',
								'OUTRAS - PRISAO / APREENSAO (AUTOR)',
								'OUTRAS - PRISAO / APREENSAO (CO-AUTOR)',
								'OUTRAS - PRISAO / APREENSAO (CONDUTOR DO VEICULO)',
						
                        
                        'RECAPTURA (AUTOR)')
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
            
			OR
            
                SUM(distinct(
		CASE
			WHEN p.descricao IN ('ARMAS DE FOGO DISSIMULADAS (USO RESTRITO) - APREENDIDO',
								'CARABINA / RIFLE - APREENDIDO',
								'ESPINGARDA / ESCOPETA - APREENDIDO',
								'ESPINGARDA POLVEIRA - APREENDIDO',
								'GARRUCHA - APREENDIDO',
								'GARRUCHA - RECOLHIDO',
								'METRALHADORA (USO RESTRITO) - APREENDIDO',
								'PISTOLA - APREENDIDO',
								'PISTOLETE (CALIBRE DE ESPINGARDA) - APREENDIDO',
								'REVOLVER - APREENDIDO',
								'SUBMETRALHADORA (USO RESTRITO) - APREENDIDO'
)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
		OR
            SUM(distinct(
		CASE
			WHEN p.descricao IN ('CARTUCHO INTACTO (MUNICAO) DE ARMA DE FOGO DE (UNIDADE) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE ARMA DE FOGO DE (DUZIA) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE ARMA DE FOGO DE (CENTO) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE CALIBRE RESTRIT (UNIDADE) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE CALIBRE RESTRIT (DUZIA) - APREENDIDO',
								'CARTUCHO INTACTO (MUNICAO) DE CALIBRE RESTRIT (CENTO) - APREENDIDO',
								'CARTUCHO VAZIO DE MUNICAO DE USO RESTRITO (UNIDADE) - APREENDIDO',
								'CARTUCHO VAZIO DE MUNICAO DE USO RESTRITO (DUZIA) - APREENDIDO',
								'CARTUCHOS VAZIOS, SEMI-CARREGADOS (PERMITIDO) (UNIDADE) - APREENDIDO',
								'MUNICAO - DEMAIS SUBSTANCIAS, PRODUTOS SUJEIT (UNIDADE) - APREENDIDO'

)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
		OR
			SUM(distinct(
		CASE
			WHEN p.descricao IN ('ARTEFATO EXPLOSIVO / BOMBA EXPLOSIVA / ETC (UNIDADE) - APREENDIDO',
								'MUNICAO QUIMICA, EXPLOSIVA OU FULMIGENA(RESTR (UNIDADE) - APREENDIDO',
								'OUTROS  - EXPLOSIVOS / MUNICOES / TIRO ESPORT (UNIDADE) - APREENDIDO'


				)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
		OR
			SUM(distinct(
		CASE
			WHEN p.descricao IN ('COLETES CONTRA ARMAS DE FOGO DE USO PERMITIDO (UNIDADE) - APREENDIDO',
								'COLETES CONTRA ARMAS DE FOGO DE USO RESTRITO (UNIDADE) - APREENDIDO'
				)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
        OR
        -- ------------
			SUM(distinct(
		CASE
			WHEN p.descricao IN ('BUCHA DE MACONHA (CENTO) - APREENDIDO',
								'BUCHA DE MACONHA (DUZIA) - APREENDIDO',
								'BUCHA DE MACONHA (GRAMA) - APREENDIDO',
								'BUCHA DE MACONHA (MILHEIRO) - APREENDIDO',
								'BUCHA DE MACONHA (UNIDADE) - APREENDIDO',
								'CIGARRO DE MACONHA (UNIDADE) - APREENDIDO',
								'COCAINA EM PO (CENTO) - APREENDIDO',
								'COCAINA EM PO (GRAMA) - APREENDIDO',
								'COCAINA EM PO (UNIDADE) - APREENDIDO',
								'CRACK EM PEDRAS (CENTO) - APREENDIDO',
								'CRACK EM PEDRAS (DUZIA) - APREENDIDO',
								'CRACK EM PEDRAS (GRAMA) - APREENDIDO',
								'CRACK EM PEDRAS (UNIDADE) - APREENDIDO',
								'CRACK EM QUILOGRAMAS (GRAMA) - APREENDIDO',
								'CRACK EM QUILOGRAMAS (QUILOGRAMA) - APREENDIDO',
								'CRACK EM QUILOGRAMAS (UNIDADE) - APREENDIDO',
								'ECSTASY / MDMA (UNIDADE) - APREENDIDO',
								'HAXIXE EM BOLA (DUZIA) - APREENDIDO',
								'HAXIXE EM BOLA (UNIDADE) - APREENDIDO',
								'HAXIXE EM TABLETE (QUILOGRAMA) (UNIDADE) - APREENDIDO',
								'LOLO (LITRO) - APREENDIDO',
								'LOLO (MILIGRAMA) - APREENDIDO',
								'LOLO (UNIDADE) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (CENTIMETRO) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (GRAMA) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (MILHEIRO) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (QUILOGRAMA) - APREENDIDO',
								'MACONHA PRENSADA (BARRA / TABLETE) (UNIDADE) - APREENDIDO',
								'OUTROS - COCAINA (CENTO) - APREENDIDO',
								'OUTROS - COCAINA (GRAMA) - APREENDIDO',
								'OUTROS - COCAINA (UNIDADE) - APREENDIDO',
								'OUTROS - CRACK (UNIDADE) - APREENDIDO',
								'OUTROS - HAXIXE (UNIDADE) - APREENDIDO',
								'OUTROS - LSD (UNIDADE) - APREENDIDO',
								'OUTROS - MACONHA (GRAMA) - APREENDIDO',
								'OUTROS - MACONHA (QUILOGRAMA) - APREENDIDO',
								'OUTROS - MACONHA (UNIDADE) - APREENDIDO',
								'PAPELOTES DE COCAINA (DUZIA) - APREENDIDO',
								'PAPELOTES DE COCAINA (GRAMA) - APREENDIDO',
								'PAPELOTES DE COCAINA (UNIDADE) - APREENDIDO',
								'PASTA DE COCAINA (GRAMA) - APREENDIDO',
								'PASTA DE COCAINA (UNIDADE) - APREENDIDO',
								'PLANTACAO (PE) DE MACONHA (UNIDADE) - APREENDIDO',
								'SEMENTE DE MACONHA (GRAMA) - APREENDIDO',
								'SEMENTE DE MACONHA (UNIDADE) - APREENDIDO'

				)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
		OR
			SUM(distinct(
		CASE
			WHEN p.descricao IN ('AUTOMOVEL - APREENDIDO',
								'AUTOMOVEL - RECUPERADO',
								'CAMINHAO - APREENDIDO',
								'CAMINHAO - RECUPERADO',
								'CAMINHAO/TRATOR - APREENDIDO',
								'CAMINHAO/TRATOR - RECUPERADO',
								'CAMINHONETE - APREENDIDO',
								'CAMINHONETE - RECUPERADO',
								'CAMIONETA - APREENDIDO',
								'CAMIONETA - RECUPERADO',
								'CICLOMOTOR - APREENDIDO',
								'CICLOMOTOR - RECUPERADO',
								'MICROONIBUS - APREENDIDO',
								'MICROONIBUS - RECUPERADO',
								'MOTOCICLETA - APREENDIDO',
								'MOTOCICLETA - RECUPERADO',
								'MOTONETA - APREENDIDO',
								'MOTONETA - RECUPERADO',
								'ONIBUS - APREENDIDO',
								'ONIBUS - RECUPERADO',
								'OUTROS - TIPOS DE VEICULO - APREENDIDO',
								'OUTROS - TIPOS DE VEICULO  - RECUPERADO',
								'REBOQUE - APREENDIDO',
								'REBOQUE - RECUPERADO',
								'TRATOR DE RODAS - RECUPERADO',
								'UTILITARIO (TIPO DE VEICULO) - APREENDIDO'

				)
			THEN p.QUANTIDADE
			ELSE 0
		END))>=1
        
        -- ------------
        )
       
	then 1 -- EFETIVIDADE
	   
    
	else 0
    
    
    END AS EFETIVIDADE_CONDICIONAL,
      
    
    
-- -----------------------------------------------------------------------------------------------------------------------------------FIM EFETIVIDADE
case -- case 1
when
	MUNICIPIO != 'DIVINOPOLIS' then MUNICIPIO
else -- case 1
	case -- case 2
	when
		r.RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'N_RAT') then '53ª CIA PM'
	when
        r.RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'N_RAT') then '139ª CIA PM'
	when
         r.RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'N_RAT') then '142ª CIA PM'
	else -- case2
		case -- case 3
        when
			 r.NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM'and VALIDADOR_TIPO = 'BAIRRO')  then '53ª CIA PM'
		when
             r.NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO')  then '139ª CIA PM'
		when
             r.NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'BAIRRO') then '142ª CIA PM'
        else -- case 3
			case -- case 4
			when
				 r.LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '53ª CIA PM'
			when
                 r.LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '139ª CIA PM'
			when
                 r.LOGRADOURO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '142ª CIA PM'
					
			else -- case 4
            
            	case -- case 5
				when
					 r.DES_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '53ª CIA PM'
				when
					 r.DES_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '139ª CIA PM'
				when	
                     r.DES_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO') then '142ª CIA PM'
					
				else -- case 5
					case -- case 6
					when
						 r.LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '53ª CIA PM'
					when	
                         r.LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '139ª CIA PM'
					when	
                         r.LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '142ª CIA PM'
					
					else -- case 6
						case -- case 7
						when
							 r.DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '53ª CIA PM'
						when	
                             r.DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '139ª CIA PM'
						when	
                             r.DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then '142ª CIA PM'
					
						else -- case 7
						
							case -- case 8
							when
								 r.COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '53ª CIA PM'
							when	
                                 r.COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '139ª CIA PM'
							when	
                                 r.COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '142ª CIA PM'
					
							else -- case 8
								case -- case 9
								when
									 r.COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '53ª CIA PM'
								when
                                     r.COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '139ª CIA PM'
								when	
                                     r.COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then '142ª CIA PM'
					                   
								else -- case 9
									case -- case 10
									when
										 r.LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '53ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then '53ª CIA PM'
									when	
                                         r.LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '139ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then '139ª CIA PM'
									when	
                                         r.LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE CIA_BASE = '142ª CIA PM' and VALIDADOR_TIPO = 'PONTO_REF') then '142ª CIA PM'
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
-- ------------------------------------------------------------------------------------------------------------------------------------cia_base
-- ************** SETORIZAÇÃO

(case -- case 1

when	MUNICIPIO = 'CLAUDIO' then '139ª CIA PM'
when	MUNICIPIO in ('CARMO DO CAJURU', 'SAO GONCALO DO PARA') then '142ª CIA PM'
when	MUNICIPIO in ('ITAUNA', 'ITATIAIUCU') then '51ª CIA PM'
when 	MUNICIPIO not in ('DIVINOPOLIS', 'ITAUNA', 'ITATIAIUCU' , 'CLAUDIO', 'SAO GONCALO DO PARA', 'CARMO DO CAJURU') then MUNICIPIO
else -- case 1
	case -- case 2
	when
		r.RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'HIPER CENTRO' and VALIDADOR_TIPO = 'N_RAT') then 'HIPER CENTRO'
	when
        r.RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'BOM PASTOR' and VALIDADOR_TIPO = 'N_RAT') then 'BOM PASTOR'
	when
        r.RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ALTO GOIAS' and VALIDADOR_TIPO = 'N_RAT') then 'ALTO GOIAS'
	when
		r.RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SAO JOSE' and VALIDADOR_TIPO = 'N_RAT') then 'SAO JOSE'
	when
        r.RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PLANALTO' and VALIDADOR_TIPO = 'N_RAT') then 'PLANALTO'
	when
        r.RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'NITEROI' and VALIDADOR_TIPO = 'N_RAT') then 'NITEROI'
	when
        r.RATNUM_ATIVIDADE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'N_RAT') then 'PORTO VELHO'
	else -- case2
		case -- case 3
        when
			r.NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'HIPER CENTRO'and VALIDADOR_TIPO = 'BAIRRO')  then 'HIPER CENTRO'
		when
            r.NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'BOM PASTOR' and VALIDADOR_TIPO = 'BAIRRO')  then 'BOM PASTOR'
		when
            r.NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ALTO GOIAS' and VALIDADOR_TIPO = 'BAIRRO') then 'ALTO GOIAS'
		when
			r.NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SAO JOSE'and VALIDADOR_TIPO = 'BAIRRO')  then 'SAO JOSE'
		when
            r.NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PLANALTO' and VALIDADOR_TIPO = 'BAIRRO')  then 'PLANALTO'
		when
            r.NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'NITEROI' and VALIDADOR_TIPO = 'BAIRRO') then 'NITEROI'
		when
            r.NOME_BAIRRO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'BAIRRO') then 'PORTO VELHO'
            
            
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
					r.DES_ENDERECO  in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'HIPER CENTRO' and VALIDADOR_TIPO = 'LOGRADOURO') then 'HIPER CENTRO'
				when
					r.DES_ENDERECO  in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'BOM PASTOR' and VALIDADOR_TIPO = 'LOGRADOURO') then 'BOM PASTOR'
				when	
                    r.DES_ENDERECO  in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ALTO GOIAS' and VALIDADOR_TIPO = 'LOGRADOURO') then 'ALTO GOIAS'
				when
					r.DES_ENDERECO  in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SAO JOSE' and VALIDADOR_TIPO = 'LOGRADOURO') then 'SAO JOSE'
				when
					r.DES_ENDERECO  in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PLANALTO' and VALIDADOR_TIPO = 'LOGRADOURO') then 'PLANALTO'
				when	
                    r.DES_ENDERECO  in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'NITEROI' and VALIDADOR_TIPO = 'LOGRADOURO') then 'NITEROI'
				when	
                    r.DES_ENDERECO  in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'LOGRADOURO') then 'PORTO VELHO'
				else -- case 5
					case -- case 6
					when
						r.LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'HIPER CENTRO' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'HIPER CENTRO'
					when	
                        r.LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'BOM PASTOR' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'BOM PASTOR'
					when	
                        r.LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ALTO GOIAS' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'ALTO GOIAS'
					when
						r.LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SAO JOSE' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'SAO JOSE'
					when	
                        r.LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PLANALTO' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'PLANALTO'
					when	
                        r.LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'NITEROI' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'NITEROI'
					when	
                        r.LOGRADOURO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'PORTO VELHO'
		
					else -- case 6
						case -- case 7
						when
							r.DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'HIPER CENTRO' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'HIPER CENTRO'
						when	
                            r.DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'BOM PASTOR' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'BOM PASTOR'
						when	
                            r.DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ALTO GOIAS' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'ALTO GOIAS'
						when
							r.DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SAO JOSE' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'SAO JOSE'
						when	
                            r.DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PLANALTO' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'PLANALTO'
						when	
                            r.DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'NITEROI' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'NITEROI'
						when	
                            r.DES_ENDERECO2 in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'LOGRADOURO_NAO_CAD') then 'PORTO VELHO'
	
						else -- case 7
						
							case -- case 8
							when
								r.COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'HIPER CENTRO' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'HIPER CENTRO'
							when	
                                r.COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'BOM PASTOR' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'BOM PASTOR'
							when	
                                r.COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ALTO GOIAS' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'ALTO GOIAS'
							when
								r.COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SAO JOSE' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'SAO JOSE'
							when	
                                r.COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PLANALTO' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'PLANALTO'
							when	
                                r.COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'NITEROI' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'NITEROI'
							when	
                               r.COMPLEMENTO_ENDERECO in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'PORTO VELHO'
								
							else -- case 8
								case -- case 9
								when
									r.COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'HIPER CENTRO' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'HIPER CENTRO'
								when
                                    r.COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'BOM PASTOR' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'BOM PASTOR'
								when	
                                    r.COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ALTO GOIAS' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'ALTO GOIAS'
								when
									r.COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SAO JOSE' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'SAO JOSE'
								when
                                    r.COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PLANALTO' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'PLANALTO'
								when	
                                    r.COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'NITEROI' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'NITEROI'
								when	
                                    r.COMPLEMENTO_ALFA in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'COMPLEMENTO_END') then 'PORTO VELHO'
							                   
								else -- case 9
									case -- case 10
									when
										r.LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'HIPER CENTRO' and VALIDADOR_TIPO = 'PONTO_REF') then 'HIPER CENTRO'
									when	
                                        r.LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'BOM PASTOR' and VALIDADOR_TIPO = 'PONTO_REF') then 'BOM PASTOR'
									when	
                                        r.LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'ALTO GOIAS' and VALIDADOR_TIPO = 'PONTO_REF') then 'ALTO GOIAS'
									when
										r.LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'SAO JOSE' and VALIDADOR_TIPO = 'PONTO_REF') then 'SAO JOSE'
									when	
                                        r.LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PLANALTO' and VALIDADOR_TIPO = 'PONTO_REF') then 'PLANALTO'
									when	
                                        r.LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'NITEROI' and VALIDADOR_TIPO = 'PONTO_REF') then 'NITEROI'
									when	
                                        r.LATITUDE in (SELECT VALIDADOR FROM tbl_validadores WHERE SETOR = 'PORTO VELHO' and VALIDADOR_TIPO = 'PONTO_REF') then 'PORTO VELHO'

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


    FROM
	
    tbl_rat AS r
            
    LEFT OUTER JOIN tbl_rat_produtividade AS p
    ON p.RATNUM_ATIVIDADE = r.RATNUM_ATIVIDADE
    
    LEFT OUTER JOIN tbl_rat_efetivos AS e
	ON r.RATNUM_ATIVIDADE = e.NUM_ATIVIDADE
	
	LEFT OUTER JOIN tbl_rat_viaturas AS v
	ON v.NUM_ATIVIDADE = r.RATNUM_ATIVIDADE
                  
	WHERE r.municipio IN ('DIVINOPOLIS', 'CARMO DO CAJURU', 'CLAUDIO', 'SAO GONCALO DO PARA', 'ITAUNA', 'ITATIAIUCU')
    
    and DTA_INICIO between '2019-01-01' and '2019-12-31'
    AND NATCODIGO IN ('Y07001', 'Y07003', 'Y07004', 'Y07005')
    
    -- and r.RATNUM_ATIVIDADE IN ('2019-009792485-001')
    -- AND NOM_UNID_RESPONSAVEL NOT IN ('1 GP/1 PEL RV/7 CIA PM IND MAT/7 RPM','1 PEL RV/7 CIA PM IND MAT/7 RPM','1 GP/1 PEL RV/7 CIA PM RV/BPMRV/CPRV', '3 GP/1 PEL MAMB/7 CIA PM MAMB/BPM MAMB', 
-- '3 PEL MAMB/7 CIA PM IND MAT/7 RPM','1 PEL MAMB/7 CIA PM MAMB/BPM MAMB', 'NUCLEO DE APOIO ADMINISTRATIVO E DE FISCALIZACAO','3 GP/1 PEL MAMB/7 CIA PM MAMB/BPM MAMB', '10BBM/1CIA/3PEL (DIVINOPOLIS)', 
-- '1 GP/1 PEL MAMB/7 CIA PM MAMB/BPM MAMB', 'REGIONAL OLIVEIRA', '1 GP/2 PEL MAMB/7 CIA PM IND MAT/7 RPM', '1 PEL RV/7 CIA PM RV/BPMRV/CPRV', '7 CIA PM MAMB/BPM MAMB/CPMAMB', '7 CIA PM RV/BPMRV/CPRV',
-- 'NUCLEO ADMINISTRATIVO E DE FISCALIZACAO', '7 CIA PM IND MAT/7 RPM', '1 CIA ROTAM/BTL ROTAM/CPE', '7 CIA PM IND PE/7 RPM', 'COORDENADORIA OESTE - FORMIGA')
    
	GROUP BY RATNUM_ATIVIDADE;
;