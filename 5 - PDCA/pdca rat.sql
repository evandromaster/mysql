SELECT
			r.RATNUM_ATIVIDADE,
			r.NATCODIGO,
			r.NATDESCRICAO,
			r.DTA_HRA_INCLUSAO, 
			r.DTA_INICIO,
			r.HRA_INICIO,
			r.DTA_TERMINO,
			r.HRA_TERMINO,
			r.DES_ALVO_EVENTO,
			r.DES_LUGAR,
			r.NOM_OPERACAO,
			r.COD_UNIDADE_SERVICO,
			r.NOM_UNID_RESPONSAVEL,
			r.TIPO_LOGRADOURO,
			r.LOGRADOURO,
			r.DES_ENDERECO,
			r.NUM_ENDERECO,
			r.COMPLEMENTO_ALFA,
			r.COMPLEMENTO_ENDERECO,
			r.NUM_COMPLEMENTAR,
			r.COD_BAIRRO,
			r.NOME_BAIRRO,
			r.TIPO_LOGRADOURO2,
			r.LOGRADOURO2,
			r.DES_ENDERECO2,
			r.COD_MUNICIPIO,
			r.MUNICIPIO,
			r.LATITUDE,
			r.LONGITUDE,
			r.COD_UNIDADE_AREA,
			r.NOM_UNIDADE_AREA,
			r.DIGITADOR,
			#################################################################################
			(timediff(concat(r.DTA_TERMINO, ' ', r.HRA_TERMINO), concat(r.DTA_INICIO, ' ', r.HRA_INICIO))) as TEMPO_EXEC,
			count(distinct(e.num_matricula)) as EFETIVO,
            count(distinct(v.NUM_PREFIXO)) as VIATURAS,
            #################################################################################
            -- ------------------------------------------------------------------ INICIO PESSOAS ABORDADAS	
	SUM(DISTINCT(case
					when 
						p.DESCRICAO  = 'QDE DE PESSOAS QUE SOPRARAM O ETILOMETRO'
					then p.QUANTIDADE
						   
				else (0)
	end))	as 'PESSOAS_SOPRARAM_ETILOMETRO',

    
-- ----------------------------------------------------------------- FIM  PESSOAS ABORDADAS	  
	SUM(DISTINCT(case
					when 
						p.DESCRICAO  = 'QDE DE VEÍCULOS AUTUADOS'
					then p.QUANTIDADE
						   
				else (0)
	end))	as 'VEIC_AUTUADOS',

    
-- ----------------------------------------------------------------- FIM  PESSOAS ABORDADAS	             
	SUM(DISTINCT(case
					when 
						p.DESCRICAO  = 'QDE DE VEÍCULOS FISCALIZADOS'
					then p.QUANTIDADE
						   
				else (0)
	end))	as 'VEIC_FICALIZADOS',

    
-- ----------------------------------------------------------------- FIM  PESSOAS ABORDADAS	              
	SUM(DISTINCT(case
					when 
						p.DESCRICAO  = 'QDE DE AGENTES DE OUTROS ÓRGÃOS (QUAL ÓRGÃO CITAR NO HISTÓRICO)'

					then p.QUANTIDADE
						   
				else (0)
	end))	as AGENTES_OUTROS_ORGAOS,

    
-- ----------------------------------------------------------------- FIM  PESSOAS ABORDADAS	             
	SUM(DISTINCT(case
					when 
						p.DESCRICAO  = 'QDE DE AIT/AINA LAVRADAS'

					then p.QUANTIDADE
						   
				else (0)
	end))	as AIT_AINA_LAVRADAS,


    
-- ----------------------------------------------------------------- FIM  PESSOAS ABORDADAS

	
	SUM(DISTINCT(case
					when 
						p.DESCRICAO  = 'QDE DE VEÍCULOS PARA OS QUAIS FOI SOLICITADA REMOÇÃO'

					then p.QUANTIDADE
						   
				else (0)
	end))	as VEÍCULOS_SOLICITADA_REMOCAO,



    
-- ----------------------------------------------------------------- FIM  PESSOAS ABORDADAS	
SUM(DISTINCT(case
					when 
						p.DESCRICAO  = 'QDE DE VEÍCULOS LIBERADOS POR FALTA DE MEIOS'

					then p.QUANTIDADE
						   
				else (0)
	end))	as VEÍCULOS_LIBERADOS_FALTA_MEIOS,



    
-- ----------------------------------------------------------------- FIM  PESSOAS ABORDADAS 
SUM(DISTINCT(case
					when 
						p.DESCRICAO  = 'QDE DE VEÍCULOS REMOVIDOS POR OUTROS ÓRGÃOS'

					then p.QUANTIDADE
						   
				else (0)
	end))	as VEICULOS_REMOVIDOS_OUTROS_ORGAOS,



    
-- ----------------------------------------------------------------- FIM  PESSOAS ABORDADAS 
SUM(DISTINCT(case
					when 
						p.DESCRICAO  = 'QDE DE ETILÔMETROS UTILIZADOS'

					then p.QUANTIDADE
						   
				else (0)
	end))	as ETILOMETROS_UTILIZADOS,



    
-- ----------------------------------------------------------------- FIM  PESSOAS ABORDADAS 
SUM(DISTINCT(case
					when 
						p.DESCRICAO  = 'DAS PESSOAS QUE RECUSARAM SOPRAR ETILÔMETRO QUANTAS APRESENTARAM SINTOMAS'

					then p.QUANTIDADE
						   
				else (0)
	end))	as PESSOAS_RECUSARAM_SOPRAR_ETILOMETRO_APRES_SINTOMAS,



 
-- ----------------------------------------------------------------- FIM  PESSOAS ABORDADAS 
SUM(DISTINCT(case
					when 
						p.DESCRICAO  = 'DAS PESSOAS QUE RECUSARAM SOPRAR ETILÔMETRO QUANTAS NÃO APRESENTARAM SINTOMAS'

					then p.QUANTIDADE
						   
				else (0)
	end))	as PESSOAS_RECUSARAM_SOPRAR_ETILOMETRO_NAO_APRES_SINTOMAS,



    
-- ----------------------------------------------------------------- FIM  PESSOAS ABORDADAS 
SUM(DISTINCT(case
					when 
						p.DESCRICAO  = 'QDE DE PESSOAS QUE SOPRARAM  E RESULTOU EMBRIAGUEZ INFRAÇÃO'

					then p.QUANTIDADE
						   
				else (0)
	end))	as PESSOAS_SOPRARAM_RESULTOU_EMBRIAGUEZ_INFRACAO,


   
 
-- ----------------------------------------------------------------- FIM  PESSOAS ABORDADAS 
SUM(DISTINCT(case
					when 
						p.DESCRICAO  = 'QDE DE PESSOAS QUE SOPRARAM E RESULTOU EMBRIAGUEZ CRIME'

					then p.QUANTIDADE
						   
				else (0)
	end))	as PESSOAS_SOPRARAM_RESULTOU_EMBRIAGUEZ_CRIME,


    
 
-- ----------------------------------------------------------------- FIM  PESSOAS ABORDADAS 
SUM(DISTINCT(case
					when 
						p.DESCRICAO  = 'QDE DE ONIBUS / COLETIVOS FISCALIZADOS'

					then p.QUANTIDADE
						   
				else (0)
	end))	as ONIBUS_FISCALIZADOS,



 
-- ----------------------------------------------------------------- FIM  PESSOAS ABORDADAS 
SUM(DISTINCT(case
					when 
						p.DESCRICAO  = 'QDE DE ONIBUS / COLETIVOS AUTUADOS'

					then p.QUANTIDADE
						   
				else (0)
	end))	as ONIBUS_AUTUADOS,



    
-- ----------------------------------------------------------------- FIM  PESSOAS ABORDADAS 
SUM(DISTINCT(case
					when 
						p.DESCRICAO  = 'QDE DE INABILITADOS AUTUADOS'

					then p.QUANTIDADE
						   
				else (0)
	end))	as INABILITADOS_AUTUADOS,



    
 
-- ----------------------------------------------------------------- FIM  PESSOAS ABORDADAS 
SUM(DISTINCT(case
					when 
						p.DESCRICAO  = 'QDE DE LIMINARES REFERENTE A TRANSPORTE APRESENTADAS'

					then p.QUANTIDADE
						   
				else (0)
	end))	as LIMINARES_TRANSPORTE_APRESENTADAS,



    

-- ----------------------------------------------------------------- FIM  PESSOAS ABORDADAS 
SUM(DISTINCT(case
					when 
						p.DESCRICAO  = 'QDE DE VEÍCULOS RETIDOS POR INFRAÇÃO DE TRÂNSITO'

					then p.QUANTIDADE
						   
				else (0)
	end))	as VEICULOS_RETIDOS_INFRACAO,



    
-- ----------------------------------------------------------------- FIM  PESSOAS ABORDADAS 
-- ----------------------------------------------------------------- FIM  PESSOAS ABORDADAS 
SUM(DISTINCT(case
					when 
						p.DESCRICAO  = 'QDE DE VEÍCULOS AUTUADOS POR OUTROS ÓRGÃOS'

					then p.QUANTIDADE
						   
				else (0)
	end))	as VEICULOS_AUTUADOS_OUTROS_ORGAOS,



    

-- ----------------------------------------------------------------- FIM  PESSOAS ABORDADAS 
SUM(DISTINCT(case
					when 
						p.DESCRICAO  = 'QDE DE MOTOCILETAS FISCALIZADAS'

					then p.QUANTIDADE
						   
				else (0)
	end))	as MOTOCILETAS_FISCALIZADAS,



    

-- ----------------------------------------------------------------- FIM  PESSOAS ABORDADAS 
SUM(DISTINCT(case
					when 
						p.DESCRICAO  = 'QDE DE MOTOCILETAS AUTUADAS'

					then p.QUANTIDADE
						   
				else (0)
	end))	as MOTOCILETAS_AUTUADAS,



    

-- ----------------------------------------------------------------- FIM  PESSOAS ABORDADAS 
SUM(DISTINCT(case
					when 
						p.DESCRICAO  = 'QDE DE MOTOFRETES FISCALIZADOS'

					then p.QUANTIDADE
						   
				else (0)
	end))	as MOTOFRETES_FISCALIZADOS,



    

-- ----------------------------------------------------------------- FIM  PESSOAS ABORDADAS 
SUM(DISTINCT(case
					when 
						p.DESCRICAO  = 'QDE DE CAMINHÕES FISCALIZADOS'

					then p.QUANTIDADE
						   
				else (0)
	end))	as CAMINHÕES_FISCALIZADOS,


-- ----------------------------------------------------------------- FIM  PESSOAS ABORDADAS

SUM(DISTINCT(case
					when 
						p.DESCRICAO  = 'QDE DE CAMINHÕES AUTUADOS'

					then p.QUANTIDADE
						   
				else (0)
	end))	as CAMINHOES_AUTUADOS,



    
-- ----------------------------------------------------------------- FIM  PESSOAS ABORDADAS

SUM(DISTINCT(case
					when 
						p.DESCRICAO  = 'QDE DE CARROS FISCALIZADOS'

					then p.QUANTIDADE
						   
				else (0)
	end))	as CARROS_FISCALIZADOS,



    
-- ----------------------------------------------------------------- FIM  PESSOAS ABORDADAS
SUM(DISTINCT(case
					when 
						p.DESCRICAO  = 'QDE DE CARROS AUTUADOS'

					then p.QUANTIDADE
						   
				else (0)
	end))	as CARROS_AUTUADOS,



    
-- ----------------------------------------------------------------- FIM  PESSOAS ABORDADAS
SUM(DISTINCT(case
					when 
						p.DESCRICAO  = 'QDE DE TAXI FISCALIZADOS
'

					then p.QUANTIDADE
						   
				else (0)
	end))	as TAXI_FISCALIZADOS,



    
-- ----------------------------------------------------------------- FIM  PESSOAS ABORDADAS
SUM(DISTINCT(case
					when 
						p.DESCRICAO  = 'QDE DE TAXI AUTUADOS'

					then p.QUANTIDADE
						   
				else (0)
	end))	as TAXI_AUTUADOS,



    
-- ----------------------------------------------------------------- FIM  PESSOAS ABORDADAS
SUM(DISTINCT(case
					when 
						p.DESCRICAO  = 'QDE DE TRANSPORTE ESCOLAR  FISCALIZADOS'

					then p.QUANTIDADE
						   
				else (0)
	end))	as TRANSPORTE_ESCOLAR_FISCALIZADOS,



    
-- ----------------------------------------------------------------- FIM  PESSOAS ABORDADAS
SUM(DISTINCT(case
					when 
						p.DESCRICAO  = 'QTDE DE MOTOFRETES AUTUADOS'

					then p.QUANTIDADE
						   
				else (0)
	end))	as MOTOFRETES_AUTUADOS,



    
-- ----------------------------------------------------------------- FIM  PESSOAS ABORDADAS
SUM(DISTINCT(case
					when 
						p.DESCRICAO  = 'QDE DE TRANSPORTE ESCOLAR AUTUADOS'

					then p.QUANTIDADE
						   
				else (0)
	end))	as TRANSPORTE_ESCOLAR_AUTUADOS

FROM
			tbl_rat AS r
					
		LEFT OUTER JOIN
			tbl_rat_produtividade AS p
		ON p.RATNUM_ATIVIDADE = r.RATNUM_ATIVIDADE

		LEFT OUTER JOIN
			tbl_rat_efetivos AS e
		ON
			r.RATNUM_ATIVIDADE = e.NUM_ATIVIDADE
			
		LEFT OUTER JOIN
			tbl_rat_viaturas AS v
		ON
			v.NUM_ATIVIDADE = r.RATNUM_ATIVIDADE
						  
		WHERE r.municipio IN 
        
							('IGARATINGA',
							'MARAVILHAS',
							'ONCA DO PITANGUI',
							'PAPAGAIOS',
							'PARA DE MINAS',
							'PEQUI',
							'SAO JOSE DA VARGINHA',
							'CARMO DO CAJURU',
							'CLAUDIO',
							'DIVINOPOLIS',
							'ITATIAIUCU',
							'ITAUNA',
							'SAO GONCALO DO PARA',
							'ARAUJOS',
							'CONCEICAO DO PARA',
							'LEANDRO FERREIRA',
							'NOVA SERRANA',
							'PERDIGAO',
							'PITANGUI',
							'ARCOS',
							'BAMBUI',
							'CAMACHO',
							'CORREGO FUNDO',
							'FORMIGA',
							'IGUATAMA',
							'ITAPECERICA',
							'MEDEIROS',
							'PAINS',
							'PIMENTA',
							'SAO SEBASTIAO DO OESTE',
							'TAPIRAI',
							'ABAETE',
							'BIQUINHAS',
							'BOM DESPACHO',
							'CEDRO DO ABAETE',
							'CORREGO DANTA',
							'DORES DO INDAIA',
							'ESTRELA DO INDAIA',
							'JAPARAIBA',
							'LAGOA DA PRATA',
							'LUZ',
							'MARTINHO CAMPOS',
							'MOEMA',
							'MORADA NOVA DE MINAS',
							'PAINEIRAS',
							'PEDRA DO INDAIA',
							'POMPEU',
							'QUARTEL GERAL',
							'SANTO ANTONIO DO MONTE',
							'SERRA DA SAUDADE')
        
		AND r.DTA_INICIO between '2019-01-01' and '2019-12-31'
        -- AND r.NATCODIGO = 'Y01011'
        -- AND FNC_UEOP(MUNICIPIO) = '23º BPM'
		-- AND MUNICIPIO  = 'DIVINOPOLIS'
        GROUP BY r.RATNUM_ATIVIDADE